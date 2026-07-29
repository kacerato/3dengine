package com.mobilegamestudio.editor

import androidx.compose.foundation.clickable
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.Image
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TextField
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.mobilegamestudio.core.model.ProjectId
import com.mobilegamestudio.core.model.ProjectNameRules
import com.mobilegamestudio.core.model.ProjectSummary
import com.mobilegamestudio.editor.R
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HomeRoute(
    viewModel: HomeViewModel,
    onOpenProject: (ProjectId) -> Unit,
) {
    val state by viewModel.state.collectAsStateWithLifecycle()
    val snackbarHostState = remember { SnackbarHostState() }

    LaunchedEffect(viewModel) {
        viewModel.events.collect { event ->
            when (event) {
                is HomeEvent.OpenProject -> onOpenProject(event.id)
            }
        }
    }

    LaunchedEffect(state.message) {
        state.message?.let {
            snackbarHostState.showSnackbar(it)
            viewModel.clearMessage()
        }
    }

    Scaffold(
        contentWindowInsets = WindowInsets.safeDrawing,
        topBar = {
            TopAppBar(
                title = {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Image(
                            painter = painterResource(R.drawable.magic_ghost_logo),
                            contentDescription = "Logo do Mobile Game Studio",
                            modifier = Modifier
                                .size(38.dp),
                        )
                        Spacer(Modifier.width(11.dp))
                        Column {
                            Text("Mobile Game Studio", fontWeight = FontWeight.SemiBold)
                            Text(
                                "ENGINE 3D · NOCODE · LUA · ANDROID",
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                            )
                        }
                    }
                },
                actions = {
                    OutlinedButton(onClick = viewModel::openMountainDemo) {
                    Text("Open World Starter")
                    }
                    Spacer(Modifier.width(8.dp))
                    Button(onClick = viewModel::showCreateProject) {
                        Icon(painterResource(R.drawable.ic_add), contentDescription = null)
                        Spacer(Modifier.width(6.dp))
                        Text("Novo projeto")
                    }
                    Spacer(Modifier.width(12.dp))
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = WorkspaceBackground,
                ),
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) },
        containerColor = WorkspaceBackground,
    ) { padding ->
        when {
            state.isLoading -> LoadingProjects(Modifier.padding(padding))
            state.projects.isEmpty() -> EmptyProjects(
                onCreate = viewModel::showCreateProject,
                onCreateMountainDemo = viewModel::openMountainDemo,
                modifier = Modifier.padding(padding),
            )
            else -> ProjectList(
                projects = state.projects,
                openingProjectId = state.openingProjectId,
                onOpen = viewModel::openProject,
                onOpenMountainDemo = viewModel::openMountainDemo,
                isOpeningDemo = state.isCreating,
                modifier = Modifier.padding(padding),
            )
        }
    }

    if (state.showCreateSheet) {
        ModalBottomSheet(
            onDismissRequest = viewModel::dismissCreateProject,
            modifier = Modifier.navigationBarsPadding(),
        ) {
            CreateProjectSheet(
                name = state.projectName,
                error = state.projectNameError,
                isCreating = state.isCreating,
                onNameChange = viewModel::updateProjectName,
                onCreate = viewModel::createProject,
                onCancel = viewModel::dismissCreateProject,
            )
        }
    }
}

@Composable
private fun LoadingProjects(modifier: Modifier = Modifier) {
    Box(modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        CircularProgressIndicator()
    }
}

@Composable
private fun EmptyProjects(
    onCreate: () -> Unit,
    onCreateMountainDemo: () -> Unit,
    modifier: Modifier = Modifier,
) {
    Row(
        modifier = modifier
            .fillMaxSize()
            .padding(horizontal = 28.dp, vertical = 20.dp),
        horizontalArrangement = Arrangement.spacedBy(24.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Column(Modifier.weight(1f)) {
            Icon(
                painter = painterResource(R.drawable.ic_folder_open),
                contentDescription = null,
                modifier = Modifier.size(38.dp),
                tint = MaterialTheme.colorScheme.primary,
            )
            Spacer(Modifier.height(14.dp))
            Text(
                "Comece pelo primeiro projeto",
                style = MaterialTheme.typography.headlineMedium,
                fontWeight = FontWeight.SemiBold,
            )
            Spacer(Modifier.height(8.dp))
            Text(
                "Crie uma estrutura versionada no dispositivo e abra o workspace landscape.",
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
            Spacer(Modifier.height(20.dp))
            Row(horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                Button(
                    onClick = onCreateMountainDemo,
                    contentPadding = PaddingValues(horizontal = 20.dp, vertical = 12.dp),
                ) {
                    Text("Abrir Open World")
                }
                OutlinedButton(
                    onClick = onCreate,
                    contentPadding = PaddingValues(horizontal = 20.dp, vertical = 12.dp),
                ) {
                    Icon(painterResource(R.drawable.ic_add), contentDescription = null)
                    Spacer(Modifier.width(7.dp))
                    Text("Criar projeto")
                }
            }
        }
        Card(
            modifier = Modifier
                .weight(0.72f)
                .fillMaxHeight(),
            colors = CardDefaults.cardColors(containerColor = PanelBackground),
            shape = RoundedCornerShape(7.dp),
            border = androidx.compose.foundation.BorderStroke(1.dp, WorkspaceBorder),
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(22.dp),
                verticalArrangement = Arrangement.SpaceBetween,
            ) {
                Column {
                    Text("OPEN WORLD STARTER", style = MaterialTheme.typography.labelLarge)
                    Spacer(Modifier.height(10.dp))
                    Text(
                        "Mundo aberto em primeira pessoa",
                        style = MaterialTheme.typography.headlineSmall,
                        fontWeight = FontWeight.SemiBold,
                    )
                    Spacer(Modifier.height(8.dp))
                    Text(
                        "Terreno contínuo de 180 m, carro configurável, personagem animado, câmera FPS, joystick, Lua e NoCode.",
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
                Text(
                    "FILAMENT 3D · LUA SANDBOX · GRAFO VISUAL",
                    style = MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.primary,
                )
            }
        }
    }
}

@Composable
private fun ProjectList(
    projects: List<ProjectSummary>,
    openingProjectId: ProjectId?,
    onOpen: (ProjectId) -> Unit,
    onOpenMountainDemo: () -> Unit,
    isOpeningDemo: Boolean,
    modifier: Modifier = Modifier,
) {
    Row(
        modifier = modifier
            .fillMaxSize()
            .padding(18.dp),
        horizontalArrangement = Arrangement.spacedBy(18.dp),
    ) {
        Column(
            modifier = Modifier
                .width(260.dp)
                .fillMaxHeight()
                .background(PanelBackground)
                .border(1.dp, WorkspaceBorder)
                .padding(18.dp),
        ) {
            Text(
                "PROJETOS LOCAIS",
                style = MaterialTheme.typography.labelMedium,
                color = Accent,
            )
            Spacer(Modifier.height(12.dp))
            Text(
                "${projects.size} ${if (projects.size == 1) "projeto" else "projetos"}",
                style = MaterialTheme.typography.headlineSmall,
                fontWeight = FontWeight.SemiBold,
                color = PrimaryText,
            )
            Spacer(Modifier.height(8.dp))
            Text(
                "Um workspace completo para criar, programar e testar jogos no próprio dispositivo.",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
            Spacer(Modifier.height(10.dp))
            Row(Modifier.fillMaxWidth()) {
                HomeCapability("3D", "Cena 3D", Modifier.weight(1f))
                HomeCapability("LU", "Lua", Modifier.weight(1f))
            }
            Row(Modifier.fillMaxWidth()) {
                HomeCapability("⤳", "NoCode", Modifier.weight(1f))
                HomeCapability("▶", "Play", Modifier.weight(1f))
            }
            Spacer(Modifier.weight(1f))
            OutlinedButton(
                onClick = onOpenMountainDemo,
                enabled = !isOpeningDemo,
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text(
                    if (isOpeningDemo) "Abrindo mundo…" else "Abrir Open World Starter",
                )
            }
        }
        Column(Modifier.weight(1f).fillMaxHeight()) {
            Text(
                "RECENTES",
                modifier = Modifier.padding(horizontal = 4.dp, vertical = 8.dp),
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
            LazyColumn(
                modifier = Modifier.fillMaxSize(),
                contentPadding = PaddingValues(bottom = 16.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                items(projects, key = { it.id.value }) { project ->
                    ProjectCard(
                        project = project,
                        isOpening = openingProjectId == project.id,
                        enabled = openingProjectId == null,
                        onClick = { onOpen(project.id) },
                    )
                }
            }
        }
    }
}

@Composable
private fun HomeCapability(icon: String, label: String, modifier: Modifier = Modifier) {
    Row(
        modifier = modifier.padding(vertical = 2.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(icon, modifier = Modifier.width(24.dp), color = AccentBright, fontSize = 13.sp)
        Text(label, color = PrimaryText, fontSize = 9.sp, maxLines = 1)
    }
}

@Composable
private fun ProjectCard(
    project: ProjectSummary,
    isOpening: Boolean,
    enabled: Boolean,
    onClick: () -> Unit,
) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(enabled = enabled, onClick = onClick),
        colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surface),
        shape = RoundedCornerShape(6.dp),
        border = androidx.compose.foundation.BorderStroke(1.dp, WorkspaceBorder),
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 18.dp, vertical = 18.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            Column(Modifier.weight(1f)) {
                Text(
                    project.name,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
                Spacer(Modifier.height(5.dp))
                Text(
                    "Atualizado ${formatTimestamp(project.updatedAtEpochMillis)} · formato v${project.schemaVersion}",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
            Spacer(Modifier.width(12.dp))
            if (isOpening) {
                CircularProgressIndicator(Modifier.size(24.dp), strokeWidth = 2.dp)
            } else {
                Icon(
                    painterResource(R.drawable.ic_arrow_forward),
                    contentDescription = "Abrir ${project.name}",
                )
            }
        }
    }
}

@Composable
private fun CreateProjectSheet(
    name: String,
    error: String?,
    isCreating: Boolean,
    onNameChange: (String) -> Unit,
    onCreate: () -> Unit,
    onCancel: () -> Unit,
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 24.dp)
            .padding(bottom = 24.dp),
    ) {
        Text(
            "Novo projeto",
            style = MaterialTheme.typography.headlineSmall,
            fontWeight = FontWeight.SemiBold,
        )
        Spacer(Modifier.height(8.dp))
        Text(
            "Uma pasta versionada será criada no armazenamento privado do aplicativo.",
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )
        Spacer(Modifier.height(22.dp))
        TextField(
            value = name,
            onValueChange = onNameChange,
            modifier = Modifier.fillMaxWidth(),
            label = { Text("Nome do projeto") },
            singleLine = true,
            isError = error != null,
            supportingText = {
                Text(error ?: "${name.trim().length}/${ProjectNameRules.MAX_LENGTH}")
            },
            enabled = !isCreating,
        )
        Spacer(Modifier.height(18.dp))
        HorizontalDivider()
        Spacer(Modifier.height(14.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.End,
            verticalAlignment = Alignment.CenterVertically,
        ) {
            TextButton(onClick = onCancel, enabled = !isCreating) {
                Text("Cancelar")
            }
            Spacer(Modifier.width(8.dp))
            Button(onClick = onCreate, enabled = !isCreating) {
                if (isCreating) {
                    CircularProgressIndicator(Modifier.size(18.dp), strokeWidth = 2.dp)
                    Spacer(Modifier.width(8.dp))
                }
                Text(if (isCreating) "Criando…" else "Criar projeto")
            }
        }
    }
}

private val timestampFormatter: DateTimeFormatter =
    DateTimeFormatter.ofPattern("dd/MM/yyyy 'às' HH:mm")

private fun formatTimestamp(epochMillis: Long): String =
    Instant.ofEpochMilli(epochMillis)
        .atZone(ZoneId.systemDefault())
        .format(timestampFormatter)
