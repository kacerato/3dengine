plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.android)
    alias(libs.plugins.kotlin.compose)
}

android {
    namespace = "com.mobilegamestudio.app"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.mobilegamestudio.app"
        minSdk = 26
        targetSdk = 35
        versionCode = 3
        versionName = "0.3.0-web-editor"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        vectorDrawables.useSupportLibrary = true
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro",
            )
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    buildFeatures {
        compose = true
    }

    packaging {
        resources.excludes += "/META-INF/{AL2.0,LGPL2.1}"
    }
}

kotlin {
    jvmToolchain(17)
}

val webEditorDirectory = rootProject.layout.projectDirectory.dir("web-editor")
val npmExecutable = if (System.getProperty("os.name").lowercase().contains("windows")) "npm.cmd" else "npm"

val installWebEditor by tasks.registering(Exec::class) {
    workingDir(webEditorDirectory)
    commandLine(npmExecutable, "install", "--no-audit", "--no-fund")
    inputs.file(webEditorDirectory.file("package.json"))
    outputs.dir(webEditorDirectory.dir("node_modules"))
}

val buildWebEditor by tasks.registering(Exec::class) {
    dependsOn(installWebEditor)
    workingDir(webEditorDirectory)
    commandLine(npmExecutable, "run", "build")
    inputs.dir(webEditorDirectory.dir("src"))
    inputs.file(webEditorDirectory.file("index.html"))
    inputs.file(webEditorDirectory.file("tsconfig.json"))
    inputs.file(webEditorDirectory.file("vite.config.ts"))
    outputs.dir(layout.projectDirectory.dir("src/main/assets/editor"))
}

tasks.named("preBuild").configure {
    dependsOn(buildWebEditor)
}

dependencies {
    implementation(project(":core:model"))
    implementation(project(":core:contracts"))
    implementation(project(":core:common"))
    implementation(project(":projects"))
    implementation(project(":editor"))

    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.activity.compose)
    implementation(libs.androidx.navigation.compose)
    implementation(libs.androidx.lifecycle.runtime.compose)
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.ui.tooling.preview)
    implementation(libs.androidx.compose.material3)
    implementation(libs.androidx.tracing)
    implementation(libs.kotlinx.coroutines.android)

    debugImplementation(libs.androidx.compose.ui.tooling)
    debugImplementation(libs.androidx.compose.ui.test.manifest)

    testImplementation(libs.junit)
    androidTestImplementation(platform(libs.androidx.compose.bom))
    androidTestImplementation(libs.androidx.test.ext.junit)
    androidTestImplementation(libs.androidx.test.espresso.core)
    androidTestImplementation(libs.androidx.compose.ui.test.junit4)
}
