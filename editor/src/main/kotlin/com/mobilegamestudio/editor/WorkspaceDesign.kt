package com.mobilegamestudio.editor

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.layout.width
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

internal val WorkspaceBackground = Color(0xFF090811)
internal val PanelBackground = Color(0xFF11101B)
internal val RaisedBackground = Color(0xFF19172A)
internal val WorkspaceBorder = Color(0xFF302A49)
internal val PrimaryText = Color(0xFFF5F1FF)
internal val SecondaryText = Color(0xFFA69DBA)
internal val Accent = Color(0xFFA95CFF)
internal val AccentBright = Color(0xFFD99BFF)
internal val AccentMuted = Color(0xFF33204D)
internal val Positive = Color(0xFF5ED6A2)
internal val ErrorText = Color(0xFFFFB4AB)
internal val ViewportBackground = Color(0xFF0D0B16)
internal val PlayStopBackground = Color(0xFF672E45)
internal val PlayStopText = Color(0xFFFFC7C0)
internal val AxisX = Color(0xFFFF5D68)
internal val AxisY = Color(0xFF55D687)
internal val AxisZ = Color(0xFF579DFF)

internal object EditorSpacing {
    val Tiny = 4.dp
    val Small = 8.dp
    val Medium = 12.dp
    val Large = 16.dp
}

internal object EditorTouchTargets {
    val Primary = 48.dp
}

internal object EditorPanelSizes {
    val TopBarHeight = 50.dp
    val ViewportToolBarHeight = 44.dp
    val BottomNavigationHeight = 46.dp
    val PanelHeaderHeight = 42.dp
    val CompactPanelMaxHeight = 220.dp
    val ExpandedMinWidth = 1100.dp
    val ExpandedMinHeight = 600.dp
    val HierarchyMinWidth = 164.dp
    val HierarchyMaxWidth = 224.dp
    val InspectorMinWidth = 196.dp
    val InspectorMaxWidth = 268.dp
    val ExpandedBottomPanelHeight = 220.dp
}

internal object EditorBorders {
    val Hairline = 1.dp
    val ControlRadius = 4.dp
}

@Composable
internal fun WorkspacePanel(
    title: String,
    subtitle: String,
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit,
) {
    Column(
        modifier = modifier
            .background(PanelBackground)
            .border(1.dp, WorkspaceBorder),
    ) {
        WorkspacePanelHeader(title, subtitle)
        content()
    }
}

@Composable
internal fun WorkspacePanelHeader(title: String, subtitle: String) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(34.dp)
            .background(RaisedBackground)
            .padding(horizontal = 10.dp),
        verticalAlignment = Alignment.CenterVertically,
    ) {
        Text(
            title,
            color = PrimaryText,
            fontSize = 10.sp,
            fontWeight = androidx.compose.ui.text.font.FontWeight.Bold,
            letterSpacing = 0.6.sp,
        )
        Spacer(Modifier.weight(1f))
        Text(subtitle, color = SecondaryText, fontSize = 9.sp)
    }
}

@Composable
internal fun StudioTextButton(
    label: String,
    onClick: () -> Unit,
    enabled: Boolean = true,
) {
    TextButton(
        onClick = onClick,
        enabled = enabled,
        modifier = Modifier
            .heightIn(min = EditorTouchTargets.Primary)
            .widthIn(min = EditorTouchTargets.Primary),
        contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
        colors = ButtonDefaults.textButtonColors(
            contentColor = if (enabled) PrimaryText else SecondaryText.copy(alpha = 0.35f),
        ),
    ) {
        Text(
            label,
            modifier = Modifier.padding(horizontal = EditorSpacing.Small),
            fontSize = if (label.length <= 2) 16.sp else 10.sp,
            maxLines = 1,
        )
    }
}

internal fun objectGlyph(type: EditorObjectType): String = when (type) {
    EditorObjectType.ENVIRONMENT -> "ENV"
    EditorObjectType.LIGHT -> "LT"
    EditorObjectType.CAMERA -> "CAM"
    EditorObjectType.MESH -> "OBJ"
    EditorObjectType.PLAYER -> "CHR"
    EditorObjectType.PLAYER_FIRST_PERSON -> "FPS"
    EditorObjectType.PLAYER_TOP_DOWN -> "TOP"
    EditorObjectType.TERRAIN -> "TRN"
    EditorObjectType.JOYSTICK -> "JOY"
    EditorObjectType.UI_BUTTON -> "BTN"
    EditorObjectType.VEHICLE -> "CAR"
}
