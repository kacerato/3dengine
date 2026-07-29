package com.mobilegamestudio.app.ui

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Typography
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

private val LightColors = lightColorScheme(
    primary = Color(0xFF2F5D50),
    onPrimary = Color.White,
    primaryContainer = Color(0xFFD7E8E0),
    onPrimaryContainer = Color(0xFF17372F),
    secondary = Color(0xFF8A4B2B),
    onSecondary = Color.White,
    background = Color(0xFFF6F6F2),
    onBackground = Color(0xFF1C201E),
    surface = Color(0xFFFFFFFF),
    onSurface = Color(0xFF1C201E),
    surfaceVariant = Color(0xFFE9ECE7),
    onSurfaceVariant = Color(0xFF555C58),
    error = Color(0xFFB3261E),
)

private val DarkColors = darkColorScheme(
    primary = Color(0xFFA95CFF),
    onPrimary = Color(0xFF170622),
    primaryContainer = Color(0xFF33204D),
    onPrimaryContainer = Color(0xFFF1DEFF),
    secondary = Color(0xFFD99BFF),
    onSecondary = Color(0xFF24102E),
    background = Color(0xFF090811),
    onBackground = Color(0xFFF5F1FF),
    surface = Color(0xFF11101B),
    onSurface = Color(0xFFF5F1FF),
    surfaceVariant = Color(0xFF19172A),
    onSurfaceVariant = Color(0xFFA69DBA),
)

@Composable
fun MobileGameStudioTheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    content: @Composable () -> Unit,
) {
    MaterialTheme(
        colorScheme = if (darkTheme) DarkColors else LightColors,
        typography = Typography(),
        content = content,
    )
}
