.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:LUc/b;

.field public static final B:LUc/b;

.field public static final C:LUc/b;

.field public static final D:LUc/b;

.field public static final E:LUc/b;

.field public static final F:LUc/b;

.field public static final G:LUc/b;

.field public static final a:F = 64.0f

.field public static b:Z = false

.field public static final c:Ljava/lang/String; = "cameraImage"

.field public static final d:I = 0x40

.field public static final e:Z = true

.field public static final f:J = 0x1c2L

.field public static final g:J = 0xfaL

.field public static final h:I = 0xa

.field public static final i:I = 0x2

.field public static final j:I = 0x8

.field public static final k:F = 0.1f

.field public static final l:F = 1.6f

.field public static final m:J = 0x12cL

.field public static final n:I = -0x2

.field public static final o:I = -0x2

.field public static final p:I = 0x4

.field public static final q:I = 0x40

.field public static final r:I = 0xa

.field public static final s:I = 0x0

.field public static final t:I = 0x1e

.field public static final u:I = 0x0

.field public static final v:I = 0xc

.field public static final w:I = 0x18

.field public static final x:I = 0x8c

.field public static final y:I = 0x18

.field public static final z:LUc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->b:Z

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_NUMBER_COLOR:LUc/b;

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->z:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_TYPE_COLOR:LUc/b;

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->A:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_VECTOR_COLOR:LUc/b;

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->B:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_DYNAMIC_COLOR:LUc/b;

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->C:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_TEXTURE_COLOR:LUc/b;

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->D:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_CUBEMAP_COLOR:LUc/b;

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->E:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_BRANCH_COLOR:LUc/b;

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->F:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_SELECTED_BORDER:LUc/b;

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->G:LUc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->z:LUc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->z:LUc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result p0

    return p0

    :pswitch_0
    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->C:LUc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result p0

    return p0

    :pswitch_1
    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->B:LUc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result p0

    return p0

    :pswitch_2
    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->F:LUc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result p0

    return p0

    :pswitch_3
    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->E:LUc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result p0

    return p0

    :pswitch_4
    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->D:LUc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()I
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->z:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v0

    return v0
.end method

.method public static c()I
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/i;->G:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v0

    return v0
.end method

.method public static d()I
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v0

    return v0
.end method
