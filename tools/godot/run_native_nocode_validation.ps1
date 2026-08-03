param(
    [string]$Godot = ".work/godot/bin/godot.windows.editor.dev.x86_64.console.exe"
)

$ErrorActionPreference = "Stop"
$repository = (Resolve-Path (Join-Path $PSScriptRoot "../..")).Path
$godotPath = (Resolve-Path (Join-Path $repository $Godot)).Path
$fixture = Join-Path $repository "godot-fixtures/native-nocode-validation"
$artifactDirectory = Join-Path $repository "artifacts"
New-Item -ItemType Directory -Path $artifactDirectory -Force | Out-Null

$mainOutput = & $godotPath --headless --path $fixture --quit-after 600 2>&1
$mainOutput | Set-Content -Path (Join-Path $artifactDirectory "native-nocode-execution.log") -Encoding utf8
if ($LASTEXITCODE -ne 0 -or ($mainOutput -join "`n") -notmatch "NATIVE_NOCODE_EXECUTION_OK=955 EXECUTION_FAILED=0 SKIPPED=6") {
    $mainOutput | Out-Host
    throw "A validação principal dos NoCodes falhou."
}

$passed = 955
$specialOutput = [System.Collections.Generic.List[string]]::new()
foreach ($caseName in @("load", "reload", "set_active", "warning", "error", "quit")) {
    $output = & $godotPath --headless --path $fixture --script "res://special.gd" -- "--case=$caseName" 2>&1
    foreach ($line in $output) { $specialOutput.Add([string]$line) }
    if ($LASTEXITCODE -ne 0 -or ($output -join "`n") -notmatch "NATIVE_NOCODE_SPECIAL_PASS $caseName") {
        $output | Out-Host
        throw "O caso especial '$caseName' falhou."
    }
    $passed++
}
$specialOutput | Set-Content -Path (Join-Path $artifactDirectory "native-nocode-special.log") -Encoding utf8

if ($passed -ne 961) { throw "Contagem inválida: $passed de 961." }
Write-Output "NATIVE_NOCODE_EXECUTION_PASS_961"
