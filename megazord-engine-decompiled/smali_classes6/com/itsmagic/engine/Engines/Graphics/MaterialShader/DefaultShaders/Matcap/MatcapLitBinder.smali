.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;
.super Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;
    }
.end annotation


# instance fields
.field private activePreset:Ljava/lang/String;

.field public blendingMode:Lxc/a;

.field public final blendingMode_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public diffuse:LJAVARuntime/Color;
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final diffuse_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private doubleSided:Z

.field public final doubleSided_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private drawInFront:Z

.field public final drawInFront_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private localWindIntensity:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final localWindIntensity_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public matcap:LJAVARuntime/Texture;
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private final matcapListener:LTb/h;

.field public metallic:LJAVARuntime/Texture;
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private final metallicFallback:LMb/n;

.field private final metallicListener:LTb/h;

.field private final normalListener:LTb/h;

.field public normalMap:LJAVARuntime/Texture;
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public roughness:LJAVARuntime/Texture;
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private final roughnessFallback:LMb/n;

.field private final roughnessListener:LTb/h;

.field private selectedPreset:Ljava/lang/String;

.field public uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private windVerticality:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final windVerticality_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapBinder;-><init>()V

    new-instance v0, LJAVARuntime/Color;

    const/16 v1, 0xff

    invoke-direct {v0, v1, v1, v1}, LJAVARuntime/Color;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse:LJAVARuntime/Color;

    new-instance v0, Lrc/b;

    invoke-direct {v0, p0}, Lrc/b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse_OFCBRL:Lxc/d;

    new-instance v0, Lrc/c;

    invoke-direct {v0, p0}, Lrc/c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->matcapListener:LTb/h;

    new-instance v0, Lrc/d;

    invoke-direct {v0, p0}, Lrc/d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->normalListener:LTb/h;

    new-instance v0, Lrc/e;

    invoke-direct {v0, p0}, Lrc/e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessListener:LTb/h;

    new-instance v1, LMb/n;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v2, v2, v3}, LMb/n;-><init>(IIZZ)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessFallback:LMb/n;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const v5, 0x3f19999a    # 0.6f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    invoke-virtual {v1, v3, v3, v4}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v1, v0}, LMb/p;->r(LTb/h;)V

    new-instance v0, Lrc/f;

    invoke-direct {v0, p0}, Lrc/f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicListener:LTb/h;

    new-instance v1, LMb/n;

    invoke-direct {v1, v2, v2, v2, v3}, LMb/n;-><init>(IIZZ)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicFallback:LMb/n;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const v4, 0x3d4ccccd    # 0.05f

    invoke-direct {v2, v4, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    invoke-virtual {v1, v3, v3, v2}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v1, v0}, LMb/p;->r(LTb/h;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    sget-object v0, Lxc/a;->OPAQUE:Lxc/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->blendingMode:Lxc/a;

    new-instance v0, Lrc/g;

    invoke-direct {v0, p0}, Lrc/g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->blendingMode_OFCBRL:Lxc/d;

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->doubleSided:Z

    new-instance v0, Lrc/g;

    invoke-direct {v0, p0}, Lrc/g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->doubleSided_OFCBRL:Lxc/d;

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->drawInFront:Z

    new-instance v0, Lrc/g;

    invoke-direct {v0, p0}, Lrc/g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->drawInFront_OFCBRL:Lxc/d;

    iput v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->localWindIntensity:F

    new-instance v0, Lrc/h;

    invoke-direct {v0, p0}, Lrc/h;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->localWindIntensity_OFCBRL:Lxc/d;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->windVerticality:F

    new-instance v0, Lrc/i;

    invoke-direct {v0, p0}, Lrc/i;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->windVerticality_OFCBRL:Lxc/d;

    const-string v0, "763C39_431510_210504_55241C-256px.jpg"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->selectedPreset:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->activePreset:Ljava/lang/String;

    return-void
.end method

.method public static synthetic B0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->h1()V

    return-void
.end method

.method public static synthetic C0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->j1()V

    return-void
.end method

.method public static synthetic D0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->S0()V

    return-void
.end method

.method public static synthetic E0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->T0()V

    return-void
.end method

.method public static synthetic F0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->i1()V

    return-void
.end method

.method public static synthetic G0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->g1()V

    return-void
.end method

.method public static synthetic H0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->l1()V

    return-void
.end method

.method public static synthetic I0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->selectedPreset:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic J0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)LMb/n;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessFallback:LMb/n;

    return-object p0
.end method

.method public static synthetic K0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->U0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)LMb/n;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicFallback:LMb/n;

    return-object p0
.end method

.method public static synthetic M0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->doubleSided:Z

    return p0
.end method

.method public static synthetic N0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->drawInFront:Z

    return p0
.end method

.method public static synthetic O0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->localWindIntensity:F

    return p0
.end method

.method public static synthetic P0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->windVerticality:F

    return p0
.end method

.method public static synthetic Q0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->m1()V

    return-void
.end method

.method public static synthetic R0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->k1()V

    return-void
.end method

.method private S0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()LGc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->localWindIntensity:F

    invoke-virtual {v0, v1}, LGc/h;->v(F)V

    :cond_0
    return-void
.end method

.method private T0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()LGc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->windVerticality:F

    invoke-virtual {v0, v1}, LGc/h;->w(F)V

    :cond_0
    return-void
.end method

.method private U0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "var",
            "reset"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p3, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, LW5/b;

    sget-object v3, LW5/b$a;->Vector:LW5/b$a;

    new-array v1, v1, [LW5/b;

    invoke-direct {v2, p1, v3, v1}, LW5/b;-><init>(Ljava/lang/String;LW5/b$a;[LW5/b;)V

    iget-object p1, v2, LW5/b;->p:[LW5/b;

    new-instance v1, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$d;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    sget-object v4, LW5/b$a;->SLFloatWrap:LW5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p1, v3

    iget-object p1, v2, LW5/b;->p:[LW5/b;

    new-instance v1, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$e;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p1, v3

    if-eqz p3, :cond_1

    iget-object p1, v2, LW5/b;->p:[LW5/b;

    new-instance v1, LW5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$f;

    invoke-direct {v4, p0, p2, p3, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LW5/b;)V

    const-string p2, "R"

    sget-object p3, LW5/b$a;->Button:LW5/b$a;

    invoke-direct {v1, v4, p2, p3}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-virtual {v1, v3}, LW5/b;->n(Z)LW5/b;

    move-result-object p2

    aput-object p2, p1, v0

    :cond_1
    return-object v2
.end method

.method private g1()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v6

    const-string v2, "baseColor"

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->Q(Ljava/lang/String;FFFF)V

    return-void
.end method

.method private i1()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallic:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "metallic"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallic:LJAVARuntime/Texture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicFallback:LMb/n;

    const-string v2, "metallicMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    return-void
.end method

.method private j1()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->normalMap:LJAVARuntime/Texture;

    sget-object v1, LQb/b;->l:LMb/p;

    const-string v2, "normalMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    return-void
.end method

.method private k1()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->selectedPreset:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->activePreset:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->selectedPreset:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->activePreset:Ljava/lang/String;

    invoke-static {v0}, Lg4/f;->C1(Ljava/lang/String;)LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->z0(LJAVARuntime/Texture;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->activePreset:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method private l1()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughness:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "roughness"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughness:LJAVARuntime/Texture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessFallback:LMb/n;

    const-string v2, "roughnessMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    return-void
.end method

.method private m1()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->normalTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "normalTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->normalOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "normalOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->roughnessTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "roughnessTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->roughnessOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "roughnessOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->metallicTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "metallicTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->metallicOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "metallicOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->b(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->A(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public A0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedPreset"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->selectedPreset:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$g;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;",
            ")",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->d()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->blendingMode:Lxc/a;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$a;

    invoke-direct {v4, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v5, "blend"

    const-class v6, Lxc/a;

    invoke-static {v5, v6, v3, v4}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LW5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$h;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$h;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLOR:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LW5/b$a;->Color:LW5/b$a;

    invoke-direct {v3, v4, v5, v6}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v4

    const-string v5, "diffuse"

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v3, v1, v4, v5, v6}, LW5/b;->f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LW5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$i;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$i;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    const-string v5, "Matcap"

    sget-object v6, LW5/b$a;->Matcap:LW5/b$a;

    invoke-direct {v3, v4, v5, v6, p1}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LW5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$j;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$j;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    const-string v5, "Normal map"

    sget-object v6, LW5/b$a;->Texture:LW5/b$a;

    invoke-direct {v3, v4, v5, v6, p1}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, La6/a;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v4, "roughness"

    invoke-direct {p1, v4, v3}, La6/a;-><init>(Ljava/lang/String;La6/a$k;)V

    invoke-virtual {p1, v0}, La6/a;->C(Ljava/util/List;)V

    new-instance p1, La6/a;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v4, "metallic"

    invoke-direct {p1, v4, v3}, La6/a;-><init>(Ljava/lang/String;La6/a$k;)V

    invoke-virtual {p1, v0}, La6/a;->C(Ljava/util/List;)V

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$m;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$m;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    const-string v3, "UV"

    invoke-static {v3, p1}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$n;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$n;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    sget-object v4, LW5/b$a;->SLBoolean:LW5/b$a;

    const-string v5, "Double sided"

    invoke-direct {p1, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$o;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$o;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    const-string v5, "Draw in front"

    invoke-direct {p1, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$b;

    invoke-direct {p1, p0, v1, v2, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string p2, "Wind effect"

    invoke-static {p2, p1}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$c;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)V

    const-string p2, "Others"

    invoke-static {p2, p1}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->drawInFront:Z

    return v0
.end method

.method public V0()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->localWindIntensity:F

    return v0
.end method

.method public W()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->z0(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->d1(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->e1(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->c1(LJAVARuntime/Texture;)V

    return-void
.end method

.method public W0()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->windVerticality:F

    return v0
.end method

.method public X0(Lxc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendingMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->blendingMode:Lxc/a;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->blendingMode:Lxc/a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public Y0(LJAVARuntime/Color;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diffuse"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse:LJAVARuntime/Color;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse:LJAVARuntime/Color;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->g1()V

    :cond_1
    return-void
.end method

.method public Z0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doubleSided"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->doubleSided:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->doubleSided:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public a0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "diffuse"

    const-string v1, "Color"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->c(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->Y0(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_0
    const-string v0, "color"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->c(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->Y0(LJAVARuntime/Color;)V

    :cond_1
    :goto_0
    const-string v0, "matcap"

    const-string v1, "Texture"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->z0(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_2
    const-string v0, "environment"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->z0(LJAVARuntime/Texture;)V

    :cond_3
    :goto_1
    const-string v0, "normalMap"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->d1(LJAVARuntime/Texture;)V

    goto :goto_2

    :cond_4
    const-string v0, "normal"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->d1(LJAVARuntime/Texture;)V

    :cond_5
    :goto_2
    const-string v0, "roughnessFallback"

    const-string v2, "Float"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessFallback:LMb/n;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {v4, v3, v3, v0}, LMb/n;->p0(IIF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessFallback:LMb/n;

    invoke-virtual {v0}, LMb/n;->apply()V

    :cond_6
    const-string v0, "metallicFallback"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicFallback:LMb/n;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {v4, v3, v3, v0}, LMb/n;->p0(IIF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicFallback:LMb/n;

    invoke-virtual {v0}, LMb/n;->apply()V

    :cond_7
    const-string v0, "roughnessMap"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->e1(LJAVARuntime/Texture;)V

    :cond_8
    const-string v0, "metallicMap"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->c1(LJAVARuntime/Texture;)V

    :cond_9
    const-string v0, "blendingMode"

    const-string v1, "String"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxc/a;->valueOf(Ljava/lang/String;)Lxc/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->X0(Lxc/a;)V

    :cond_a
    const-string v0, "doubleSided"

    const-string v1, "Boolean"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->Z0(Z)V

    :cond_b
    const-string v0, "drawInFront"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->a1(Z)V

    :cond_c
    const-string v0, "localWindIntensity"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->b1(F)V

    :cond_d
    const-string v0, "windVerticality"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->f1(F)V

    :cond_e
    const-string v0, "materialID"

    const-string v1, "Int"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m0(I)V

    :cond_f
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->c(Ljava/util/List;)V

    return-void
.end method

.method public a1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawInFront"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->drawInFront:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->drawInFront:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public b0(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "diffuse"

    const-string v2, "Color"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse:LJAVARuntime/Color;

    iget-object v2, v2, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->m(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const-string v1, "matcap"

    const-string v2, "Texture"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->matcap:LJAVARuntime/Texture;

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "normalMap"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->normalMap:LJAVARuntime/Texture;

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "roughnessFallback"

    const-string v3, "Float"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessFallback:LMb/n;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, LMb/n;->B(II)F

    move-result v4

    invoke-static {v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "metallicFallback"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicFallback:LMb/n;

    invoke-virtual {v4, v5, v5}, LMb/n;->B(II)F

    move-result v4

    invoke-static {v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "roughnessMap"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughness:LJAVARuntime/Texture;

    invoke-static {v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "metallicMap"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallic:LJAVARuntime/Texture;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "blendingMode"

    const-string v2, "String"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->blendingMode:Lxc/a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    const-string v1, "doubleSided"

    const-string v2, "Boolean"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->doubleSided:Z

    invoke-static {v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "drawInFront"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->drawInFront:Z

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "localWindIntensity"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->localWindIntensity:F

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "windVerticality"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->windVerticality:F

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "materialID"

    const-string v2, "Int"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->K()I

    move-result v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    invoke-virtual {v1, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->d(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localWindIntensity"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->localWindIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->localWindIntensity:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->S0()V

    :cond_1
    return-void
.end method

.method public c1(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metallic"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallic:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallic:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->i1()V

    :cond_3
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse:LJAVARuntime/Color;

    invoke-virtual {v0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->d()Z

    move-result v0

    return v0
.end method

.method public d1(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalMap"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->normalMap:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->normalListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->normalMap:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->normalListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->j1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_3
    return-void
.end method

.method public e1(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roughness"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughness:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughness:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->l1()V

    :cond_3
    return-void
.end method

.method public f1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windVerticality"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->windVerticality:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->windVerticality:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->T0()V

    :cond_1
    return-void
.end method

.method public g0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filamentMaterial",
            "material"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->g0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->g1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->h1()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->j1()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->l1()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->i1()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->S0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->T0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->m1()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->k1()V

    return-void
.end method

.method public h0(Ljava/lang/String;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    const-string v0, "roughness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessFallback:LMb/n;

    invoke-virtual {p1, v1, v1, p2}, LMb/n;->p0(IIF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessFallback:LMb/n;

    invoke-virtual {p1}, LMb/n;->apply()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    return-void

    :cond_0
    const-string v0, "metallic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicFallback:LMb/n;

    invoke-virtual {p1, v1, v1, p2}, LMb/n;->p0(IIF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicFallback:LMb/n;

    invoke-virtual {p1}, LMb/n;->apply()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    return-void

    :cond_1
    const-string v0, "windeffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->b1(F)V

    return-void

    :cond_2
    const-string v0, "windVerticality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->f1(F)V

    return-void

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->h0(Ljava/lang/String;F)V

    return-void
.end method

.method public final h1()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->matcap:LJAVARuntime/Texture;

    sget-object v1, LQb/b;->g:LMb/p;

    const-string v2, "matcap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    return-void
.end method

.method public j0(LGc/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalShaderEntity"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j0(LGc/h;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->S0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->T0()V

    return-void
.end method

.method public k(Lvc/b;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderPass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/b;",
            ")",
            "Ljava/util/List<",
            "Lxc/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Z

    fill-array-data v3, :array_0

    invoke-static {}, Lxc/a;->values()[Lxc/a;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_2

    aget-boolean v17, v3, v8

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v2, :cond_1

    aget-boolean v18, v3, v15

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v2, :cond_0

    aget-boolean v13, v3, v14

    new-instance v12, Lxc/i;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v10

    sget-object v16, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    xor-int/lit8 v19, v18, 0x1

    xor-int/lit8 v20, v18, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/16 v21, 0x0

    move-object v9, v12

    move-object v1, v12

    move-object/from16 v12, v16

    move v2, v13

    move/from16 v13, v17

    move/from16 v22, v14

    move-object/from16 v14, v21

    move/from16 v21, v15

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-direct/range {v9 .. v16}, Lxc/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    const-string v9, "hasNormal"

    invoke-virtual {v1, v9, v2}, Lxc/i;->j(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v22, 0x1

    move/from16 v15, v21

    const/4 v2, 0x2

    goto :goto_3

    :cond_0
    move/from16 v21, v15

    add-int/lit8 v15, v21, 0x1

    const/4 v2, 0x2

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method public l()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->copy()LJAVARuntime/Color;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->matcap:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->matcap:LJAVARuntime/Texture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->normalMap:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->normalMap:LJAVARuntime/Texture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughness:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughness:LJAVARuntime/Texture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallic:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallic:LJAVARuntime/Texture;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessFallback:LMb/n;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessFallback:LMb/n;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, LMb/n;->B(II)F

    move-result v2

    invoke-virtual {v1, v3, v3, v2}, LMb/n;->p0(IIF)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughnessFallback:LMb/n;

    invoke-virtual {v1}, LMb/n;->apply()V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicFallback:LMb/n;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicFallback:LMb/n;

    invoke-virtual {v2, v3, v3}, LMb/n;->B(II)F

    move-result v2

    invoke-virtual {v1, v3, v3, v2}, LMb/n;->p0(IIF)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallicFallback:LMb/n;

    invoke-virtual {v1}, LMb/n;->apply()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->a()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->blendingMode:Lxc/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->blendingMode:Lxc/a;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->doubleSided:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->doubleSided:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->drawInFront:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->drawInFront:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->localWindIntensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->localWindIntensity:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->windVerticality:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->windVerticality:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->K()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m0(I)V

    return-object v0
.end method

.method public q0(Ljava/lang/String;LMb/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "texture"
        }
    .end annotation

    const-string v0, "matcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    const-string v0, "environment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_6

    :cond_0
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "normalMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    const-string v0, "roughness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "roughnessMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "metallic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "metallicMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->q0(Ljava/lang/String;LMb/p;)V

    return-void

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->c1(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->c1(LJAVARuntime/Texture;)V

    :goto_1
    return-void

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->e1(LJAVARuntime/Texture;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->e1(LJAVARuntime/Texture;)V

    :goto_3
    return-void

    :cond_8
    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->d1(LJAVARuntime/Texture;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->d1(LJAVARuntime/Texture;)V

    :goto_5
    return-void

    :cond_a
    :goto_6
    if-eqz p2, :cond_b

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->z0(LJAVARuntime/Texture;)V

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->z0(LJAVARuntime/Texture;)V

    :goto_7
    return-void
.end method

.method public r0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "file"
        }
    .end annotation

    const-string v0, "matcap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const-string v0, "environment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "normalMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v0, "roughness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "roughnessMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "metallic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "metallicMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->r0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallic:LJAVARuntime/Texture;

    if-eqz p1, :cond_5

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_5

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->c1(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->c1(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->c1(LJAVARuntime/Texture;)V

    :goto_1
    return-void

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->roughness:LJAVARuntime/Texture;

    if-eqz p1, :cond_9

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_9

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->e1(LJAVARuntime/Texture;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->e1(LJAVARuntime/Texture;)V

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->e1(LJAVARuntime/Texture;)V

    :goto_3
    return-void

    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->normalMap:LJAVARuntime/Texture;

    if-eqz p1, :cond_d

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_d

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    :cond_d
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->d1(LJAVARuntime/Texture;)V

    goto :goto_5

    :cond_e
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->d1(LJAVARuntime/Texture;)V

    goto :goto_5

    :cond_f
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->d1(LJAVARuntime/Texture;)V

    :goto_5
    return-void

    :cond_10
    :goto_6
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->matcap:LJAVARuntime/Texture;

    if-eqz p1, :cond_11

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_11

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    :cond_11
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->z0(LJAVARuntime/Texture;)V

    goto :goto_7

    :cond_12
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->z0(LJAVARuntime/Texture;)V

    goto :goto_7

    :cond_13
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->z0(LJAVARuntime/Texture;)V

    :goto_7
    return-void
.end method

.method public u(Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    const-string v0, "windeffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->localWindIntensity:F

    return p1

    :cond_0
    const-string v0, "windVerticality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->windVerticality:F

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->u(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public v0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "vector2"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->e(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->m1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->v0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :goto_0
    return-void
.end method

.method public x0(Lxc/i;Lvc/b;)Lxc/i;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variance",
            "renderPass"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->normalMap:LJAVARuntime/Texture;

    invoke-static {v0}, LJAVARuntime/Texture;->isRenderable(LJAVARuntime/Texture;)Z

    move-result v0

    const-string v1, "hasNormal"

    invoke-virtual {p2, v1, v0}, Lvc/b;->m(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lxc/i;->a()Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->blendingMode:Lxc/a;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    invoke-virtual {p1}, Lxc/i;->i()Z

    move-result v3

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->doubleSided:Z

    if-eq v3, v4, :cond_0

    move p2, v2

    :cond_0
    invoke-virtual {p1}, Lxc/i;->g()Z

    move-result v3

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->drawInFront:Z

    if-ne v3, v4, :cond_1

    move p2, v2

    :cond_1
    invoke-virtual {p1, v1}, Lxc/i;->b(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v0, :cond_2

    move p2, v2

    :cond_2
    if-eqz p2, :cond_3

    new-instance p1, Lxc/i;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->blendingMode:Lxc/a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v4

    sget-object v6, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    iget-boolean v7, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->doubleSided:Z

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->drawInFront:Z

    xor-int/lit8 v9, p2, 0x1

    xor-int/lit8 v10, p2, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lxc/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    invoke-virtual {p1, v1, v0}, Lxc/i;->j(Ljava/lang/String;Z)V

    :cond_3
    return-object p1
.end method

.method public y0(Ljava/lang/String;LMb/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matcapName",
            "texture"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->A0(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->z0(LJAVARuntime/Texture;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->z0(LJAVARuntime/Texture;)V

    :goto_0
    return-void
.end method

.method public z0(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matcap"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->matcap:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->matcapListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->matcap:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->matcapListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->h1()V

    :cond_3
    return-void
.end method
