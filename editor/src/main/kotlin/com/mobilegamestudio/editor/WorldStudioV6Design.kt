package com.mobilegamestudio.editor

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.ButtonDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

internal object WorldStudioV6Design {
    val background = Color(0xFF0F1115)
    val header = Color(0xFF13161B)
    val surface = Color(0xFF171A20)
    val surfaceRaised = Color(0xFF1D2128)
    val surfacePressed = Color(0xFF242A33)
    val viewport = Color(0xFF050607)
    val border = Color(0xFF303640)
    val borderStrong = Color(0xFF424A57)
    val text = Color(0xFFF2F4F7)
    val textMuted = Color(0xFFA4ACB8)
    val textFaint = Color(0xFF727B88)
    val accent = Color(0xFF9A76D8)
    val accentContainer = Color(0xFF302640)
    val positive = Color(0xFF70C49B)
    val warning = Color(0xFFD7AA5F)
    val danger = Color(0xFFD8757C)
    val scrim = Color(0xB3000000)

    val smallShape = RoundedCornerShape(6.dp)
    val mediumShape = RoundedCornerShape(8.dp)
    val paneShape = RoundedCornerShape(10.dp)

    val paneBorder = BorderStroke(1.dp, border)
    val strongBorder = BorderStroke(1.dp, borderStrong)

    val compactPadding = PaddingValues(horizontal = 10.dp, vertical = 7.dp)
    val controlPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp)
}

@Composable
internal fun worldStudioV6ButtonColors(
    selected: Boolean = false,
    danger: Boolean = false,
) = ButtonDefaults.textButtonColors(
    containerColor = when {
        danger -> WorldStudioV6Design.danger.copy(alpha = 0.14f)
        selected -> WorldStudioV6Design.accentContainer
        else -> WorldStudioV6Design.surfaceRaised
    },
    contentColor = when {
        danger -> WorldStudioV6Design.danger
        selected -> WorldStudioV6Design.text
        else -> WorldStudioV6Design.textMuted
    },
    disabledContainerColor = WorldStudioV6Design.surface.copy(alpha = 0.5f),
    disabledContentColor = WorldStudioV6Design.textFaint.copy(alpha = 0.55f),
)
