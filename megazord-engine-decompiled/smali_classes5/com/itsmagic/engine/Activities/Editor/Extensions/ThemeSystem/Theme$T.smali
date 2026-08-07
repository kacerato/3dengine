.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbd/q;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T"
.end annotation


# static fields
.field public static final ACCENT:LUc/b;

.field public static final ACCENT_GREEN:LUc/b;

.field public static final ACCENT_GREEN_DARK:LUc/b;

.field public static final ATL_BACKGROUND:LUc/b;

.field public static final ATL_KEY:LUc/b;

.field public static final ATL_SELECTED_KEYFRAME:LUc/b;

.field public static final ATL_UNSELECTED_KEYFRAME:LUc/b;

.field public static final BACKGROUND:LUc/b;

.field public static final BUTTON_OUTLINE:LUc/b;

.field public static final CARD:LUc/b;

.field public static final CHECKBOX_BACKGROUND:LUc/b;

.field public static final CHECKBOX_CHECKMARK:LUc/b;

.field public static final CHECKBOX_OUTLINE:LUc/b;

.field public static final DROP_LOCATION:LUc/b;

.field public static final ERROR:LUc/b;

.field public static final GENERIC_BUTTON:LUc/b;

.field public static final GENERIC_BUTTON_OUTLINE:LUc/b;

.field public static final HIGH_ICON_TINT:LUc/b;

.field public static final HIGH_TEXT_COLOR:LUc/b;

.field public static final INPUT_BACKGROUND:LUc/b;

.field public static final INPUT_OUTLINE:LUc/b;

.field public static final MID_ICON_TINT:LUc/b;

.field public static final MID_TEXT_COLOR:LUc/b;

.field public static final NODEGRAPH_BRANCH_COLOR:LUc/b;

.field public static final NODEGRAPH_BREAK_TOPBAR:LUc/b;

.field public static final NODEGRAPH_CUBEMAP_COLOR:LUc/b;

.field public static final NODEGRAPH_DYNAMIC_COLOR:LUc/b;

.field public static final NODEGRAPH_EVENT_TOPBAR:LUc/b;

.field public static final NODEGRAPH_GRID:LUc/b;

.field public static final NODEGRAPH_LIST_COLOR:LUc/b;

.field public static final NODEGRAPH_NUMBER_COLOR:LUc/b;

.field public static final NODEGRAPH_SELECTED_BORDER:LUc/b;

.field public static final NODEGRAPH_SEMAPHORE_TOPBAR:LUc/b;

.field public static final NODEGRAPH_STRING_COLOR:LUc/b;

.field public static final NODEGRAPH_TEXTURE_COLOR:LUc/b;

.field public static final NODEGRAPH_TYPE_COLOR:LUc/b;

.field public static final NODEGRAPH_VECTOR_COLOR:LUc/b;

.field public static final PANEL:LUc/b;

.field public static final PANELS_SPACING:LUc/b;

.field public static final PANEL_TOPBAR:LUc/b;

.field public static final POPUP_MENU_SEPARATOR:LUc/b;

.field public static final PRIMARY:LUc/b;

.field public static final PRIMARY_DARK:LUc/b;

.field public static final SELECTED_ELEMENTS:LUc/b;

.field public static final SEMI_CARD:LUc/b;

.field public static final TERMINAL_BACKGROUND:LUc/b;

.field public static final TERMINAL_TEXT_COLOR:LUc/b;

.field public static final TREE_LIST_ROW1:LUc/b;

.field public static final TREE_LIST_ROW2:LUc/b;

.field public static final UI_EDITOR_BACKGROUND_COLOR:LUc/b;

.field public static final UI_EDITOR_BUTTONS_COLOR:LUc/b;

.field public static final UI_EDITOR_BUTTONS_OUTLINE_COLOR:LUc/b;

.field public static final UI_EDITOR_BUTTONS_TEXT_COLOR:LUc/b;

.field public static final UI_EDITOR_GRID_BACKGROUND:LUc/b;

.field public static final UI_EDITOR_GRID_COLOR:LUc/b;

.field public static final UI_EDITOR_PRESSED_BUTTONS_COLOR:LUc/b;

.field public static final UI_EDITOR_PRESSED_BUTTONS_OUTLINE_COLOR:LUc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "drop_location"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->DROP_LOCATION:LUc/b;

    const-string v0, "panel"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LUc/b;

    const-string v0, "semi_card"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->SEMI_CARD:LUc/b;

    const-string v0, "card"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LUc/b;

    const-string v0, "panel_topbar"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LUc/b;

    const-string v0, "background"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LUc/b;

    const-string v0, "primary"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LUc/b;

    const-string v0, "primary_dark"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LUc/b;

    const-string v0, "accent"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LUc/b;

    const-string v0, "accent_green"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN:LUc/b;

    const-string v0, "accent_green_dark"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT_GREEN_DARK:LUc/b;

    const-string v0, "tree_list_row1"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW1:LUc/b;

    const-string v0, "tree_list_row2"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW2:LUc/b;

    const-string v0, "high_text_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LUc/b;

    const-string v0, "mid_text_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LUc/b;

    const-string v0, "checkbox_background"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CHECKBOX_BACKGROUND:LUc/b;

    const-string v0, "checkbox_outline"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CHECKBOX_OUTLINE:LUc/b;

    const-string v0, "checkbox_checkmark"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CHECKBOX_CHECKMARK:LUc/b;

    const-string v0, "panels_spacing"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANELS_SPACING:LUc/b;

    const-string v0, "terminal_background"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TERMINAL_BACKGROUND:LUc/b;

    const-string v0, "terminal_text_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TERMINAL_TEXT_COLOR:LUc/b;

    const-string v0, "input_background"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->INPUT_BACKGROUND:LUc/b;

    const-string v0, "input_outline"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->INPUT_OUTLINE:LUc/b;

    const-string v0, "high_icon_tint"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LUc/b;

    const-string v0, "mid_icon_tint"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_ICON_TINT:LUc/b;

    const-string v0, "selected_elements"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->SELECTED_ELEMENTS:LUc/b;

    const-string v0, "popup_menu_separator"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->POPUP_MENU_SEPARATOR:LUc/b;

    const-string v0, "button_outline"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LUc/b;

    const-string v0, "generic_button"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->GENERIC_BUTTON:LUc/b;

    const-string v0, "generic_button_outline"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->GENERIC_BUTTON_OUTLINE:LUc/b;

    const-string v0, "error"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ERROR:LUc/b;

    const-string v0, "ui_editor_buttons_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_COLOR:LUc/b;

    const-string v0, "ui_editor_pressed_buttons_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_PRESSED_BUTTONS_COLOR:LUc/b;

    const-string v0, "ui_editor_buttons_text_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_TEXT_COLOR:LUc/b;

    const-string v0, "ui_editor_buttons_outline_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_OUTLINE_COLOR:LUc/b;

    const-string v0, "ui_editor_pressed_buttons_outline_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_PRESSED_BUTTONS_OUTLINE_COLOR:LUc/b;

    const-string v0, "ui_editor_background_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BACKGROUND_COLOR:LUc/b;

    const-string v0, "ui_editor_grid_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_GRID_COLOR:LUc/b;

    const-string v0, "ui_editor_grid_background"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_GRID_BACKGROUND:LUc/b;

    const-string v0, "nodegraph_number_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_NUMBER_COLOR:LUc/b;

    const-string v0, "nodegraph_string_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_STRING_COLOR:LUc/b;

    const-string v0, "nodegraph_type_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_TYPE_COLOR:LUc/b;

    const-string v0, "nodegraph_vector_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_VECTOR_COLOR:LUc/b;

    const-string v0, "nodegraph_list_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_LIST_COLOR:LUc/b;

    const-string v0, "nodegraph_dynamic_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_DYNAMIC_COLOR:LUc/b;

    const-string v0, "nodegraph_texture_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_TEXTURE_COLOR:LUc/b;

    const-string v0, "nodegraph_cubemap_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_CUBEMAP_COLOR:LUc/b;

    const-string v0, "nodegraph_branch_color"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_BRANCH_COLOR:LUc/b;

    const-string v0, "nodegraph_selected_border"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_SELECTED_BORDER:LUc/b;

    const-string v0, "nodegraph_grid"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_GRID:LUc/b;

    const-string v0, "nodegraph_event_topbar"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_EVENT_TOPBAR:LUc/b;

    const-string v0, "nodegraph_semaphore_topbar"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_SEMAPHORE_TOPBAR:LUc/b;

    const-string v0, "nodegraph_break_topbar"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_BREAK_TOPBAR:LUc/b;

    const-string v0, "atl_unselected_keyframe"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ATL_UNSELECTED_KEYFRAME:LUc/b;

    const-string v0, "atl_selected_keyframe"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ATL_SELECTED_KEYFRAME:LUc/b;

    const-string v0, "atl_key"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ATL_KEY:LUc/b;

    const-string v0, "atl_background"

    invoke-static {v0}, LUc/c;->a(Ljava/lang/String;)LUc/b;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ATL_BACKGROUND:LUc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
