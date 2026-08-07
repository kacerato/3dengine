.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;
.super Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;
.source "SourceFile"


# annotations
.annotation runtime Lh9/o;
.end annotation


# instance fields
.field public baseColor:LJAVARuntime/Color;
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final baseColor_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public filmThickness:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final filmThickness_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public flakeColor:LJAVARuntime/Color;
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final flakeColor_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public flakeIntensity:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final flakeIntensity_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public iridescenceStrength:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final iridescenceStrength_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public metallic:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final metallic_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public normalStrength:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final normalStrength_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public roughness:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final roughness_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public shiftColorA:LJAVARuntime/Color;
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final shiftColorA_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public shiftColorB:LJAVARuntime/Color;
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final shiftColorB_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;-><init>()V

    new-instance v0, LJAVARuntime/Color;

    const/16 v1, 0x14

    const/16 v2, 0x17

    invoke-direct {v0, v1, v1, v2}, LJAVARuntime/Color;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->baseColor:LJAVARuntime/Color;

    new-instance v0, Lpc/m;

    invoke-direct {v0, p0}, Lpc/m;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->baseColor_OFCBRL:Lxc/d;

    new-instance v0, LJAVARuntime/Color;

    const/16 v1, 0x9c

    const/16 v2, 0xf2

    const/16 v3, 0x69

    invoke-direct {v0, v3, v1, v2}, LJAVARuntime/Color;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorA:LJAVARuntime/Color;

    new-instance v0, Lpc/n;

    invoke-direct {v0, p0}, Lpc/n;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorA_OFCBRL:Lxc/d;

    new-instance v0, LJAVARuntime/Color;

    const/16 v1, 0x58

    const/16 v2, 0xb6

    const/16 v3, 0x4e

    invoke-direct {v0, v3, v1, v2}, LJAVARuntime/Color;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorB:LJAVARuntime/Color;

    new-instance v0, Lpc/o;

    invoke-direct {v0, p0}, Lpc/o;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorB_OFCBRL:Lxc/d;

    new-instance v0, LJAVARuntime/Color;

    const/16 v1, 0xf6

    const/16 v2, 0xff

    const/16 v3, 0xf5

    invoke-direct {v0, v3, v1, v2}, LJAVARuntime/Color;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeColor:LJAVARuntime/Color;

    new-instance v0, Lpc/p;

    invoke-direct {v0, p0}, Lpc/p;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeColor_OFCBRL:Lxc/d;

    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->filmThickness:F

    new-instance v1, Lpc/q;

    invoke-direct {v1, p0}, Lpc/q;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->filmThickness_OFCBRL:Lxc/d;

    const v1, 0x3f0ccccd    # 0.55f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->iridescenceStrength:F

    new-instance v1, Lpc/r;

    invoke-direct {v1, p0}, Lpc/r;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->iridescenceStrength_OFCBRL:Lxc/d;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeIntensity:F

    new-instance v0, Lpc/s;

    invoke-direct {v0, p0}, Lpc/s;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeIntensity_OFCBRL:Lxc/d;

    const v0, 0x3e75c28f    # 0.24f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->roughness:F

    new-instance v0, Lpc/t;

    invoke-direct {v0, p0}, Lpc/t;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->roughness_OFCBRL:Lxc/d;

    const v0, 0x3f6147ae    # 0.88f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->metallic:F

    new-instance v0, Lpc/u;

    invoke-direct {v0, p0}, Lpc/u;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->metallic_OFCBRL:Lxc/d;

    const/high16 v0, 0x3fa00000    # 1.25f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->normalStrength:F

    new-instance v0, Lpc/v;

    invoke-direct {v0, p0}, Lpc/v;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->normalStrength_OFCBRL:Lxc/d;

    return-void
.end method

.method public static synthetic J0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->i1()V

    return-void
.end method

.method public static synthetic K0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->f1()V

    return-void
.end method

.method public static synthetic L0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->h1()V

    return-void
.end method

.method public static synthetic M0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->l1()V

    return-void
.end method

.method public static synthetic N0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->m1()V

    return-void
.end method

.method public static synthetic O0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->e1()V

    return-void
.end method

.method public static synthetic P0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->d1()V

    return-void
.end method

.method public static synthetic Q0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->j1()V

    return-void
.end method

.method public static synthetic R0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->g1()V

    return-void
.end method

.method public static synthetic S0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->k1()V

    return-void
.end method

.method private d1()V
    .locals 2

    const-string v0, "baseColor"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->baseColor:LJAVARuntime/Color;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->A0(Ljava/lang/String;LJAVARuntime/Color;)V

    return-void
.end method

.method private i1()V
    .locals 2

    const-string v0, "metallic"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->metallic:F

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->B0(Ljava/lang/String;F)V

    return-void
.end method

.method private j1()V
    .locals 2

    const-string v0, "normalStrength"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->normalStrength:F

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->B0(Ljava/lang/String;F)V

    return-void
.end method

.method private k1()V
    .locals 2

    const-string v0, "roughness"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->roughness:F

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->B0(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public C0()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->d1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->l1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->m1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->f1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->e1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->h1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->g1()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->k1()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->i1()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->j1()V

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

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->d()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$a;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    sget-object v4, LW5/b$a;->Color:LW5/b$a;

    const-string v5, "Base Color"

    invoke-direct {v2, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    const-string v5, "baseColor"

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v0, v3, v5, v6}, LW5/b;->f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$c;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v5, "Shift Color A"

    invoke-direct {v2, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    const-string v5, "shiftColorA"

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v0, v3, v5, v6}, LW5/b;->f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$d;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v5, "Shift Color B"

    invoke-direct {v2, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    const-string v5, "shiftColorB"

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v0, v3, v5, v6}, LW5/b;->f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$e;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v5, "Flake Color"

    invoke-direct {v2, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    const-string v3, "flakeColor"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v0, v1, v3, v4}, LW5/b;->f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$f;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    sget-object v2, LW5/b$a;->SLFloat:LW5/b$a;

    const-string v3, "Film Thickness"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$g;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v3, "Iridescence Strength"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$h;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$h;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v3, "Flake Intensity"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$i;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$i;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v3, "Roughness"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$j;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$j;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v3, "Metallic"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$b;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string p2, "Normal Strength"

    invoke-direct {v0, v1, p2, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public T0(LJAVARuntime/Color;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseColor"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->baseColor:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget-object v1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->baseColor:LJAVARuntime/Color;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->d1()V

    :cond_1
    return-void
.end method

.method public U0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filmThickness"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->filmThickness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->filmThickness:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->e1()V

    :cond_1
    return-void
.end method

.method public V0(LJAVARuntime/Color;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flakeColor"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeColor:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget-object v1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeColor:LJAVARuntime/Color;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->f1()V

    :cond_1
    return-void
.end method

.method public W0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flakeIntensity"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeIntensity:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->g1()V

    :cond_1
    return-void
.end method

.method public X0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iridescenceStrength"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->iridescenceStrength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->iridescenceStrength:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->h1()V

    :cond_1
    return-void
.end method

.method public Y0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metallic"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->metallic:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->metallic:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->i1()V

    :cond_1
    return-void
.end method

.method public Z0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalStrength"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->normalStrength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->normalStrength:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->j1()V

    :cond_1
    return-void
.end method

.method public a1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roughness"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->roughness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->roughness:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->k1()V

    :cond_1
    return-void
.end method

.method public b1(LJAVARuntime/Color;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shiftColorA"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorA:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget-object v1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorA:LJAVARuntime/Color;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->l1()V

    :cond_1
    return-void
.end method

.method public c1(LJAVARuntime/Color;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shiftColorB"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorB:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget-object v1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorB:LJAVARuntime/Color;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->m1()V

    :cond_1
    return-void
.end method

.method public final e1()V
    .locals 2

    const-string v0, "filmThickness"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->filmThickness:F

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->B0(Ljava/lang/String;F)V

    return-void
.end method

.method public final f1()V
    .locals 2

    const-string v0, "flakeColor"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeColor:LJAVARuntime/Color;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->A0(Ljava/lang/String;LJAVARuntime/Color;)V

    return-void
.end method

.method public final g1()V
    .locals 2

    const-string v0, "flakeIntensity"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeIntensity:F

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->B0(Ljava/lang/String;F)V

    return-void
.end method

.method public final h1()V
    .locals 2

    const-string v0, "iridescenceStrength"

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->iridescenceStrength:F

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->B0(Ljava/lang/String;F)V

    return-void
.end method

.method public l()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->baseColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->copy()LJAVARuntime/Color;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->baseColor:LJAVARuntime/Color;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorA:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->copy()LJAVARuntime/Color;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorA:LJAVARuntime/Color;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorB:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->copy()LJAVARuntime/Color;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorB:LJAVARuntime/Color;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeColor:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->copy()LJAVARuntime/Color;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeColor:LJAVARuntime/Color;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->filmThickness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->filmThickness:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->iridescenceStrength:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->iridescenceStrength:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeIntensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->flakeIntensity:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->roughness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->roughness:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->metallic:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->metallic:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->normalStrength:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->normalStrength:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->E0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;)V

    return-object v0
.end method

.method public final l1()V
    .locals 2

    const-string v0, "shiftColorA"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorA:LJAVARuntime/Color;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->A0(Ljava/lang/String;LJAVARuntime/Color;)V

    return-void
.end method

.method public final m1()V
    .locals 2

    const-string v0, "shiftColorB"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/IridescentBinder;->shiftColorB:LJAVARuntime/Color;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->A0(Ljava/lang/String;LJAVARuntime/Color;)V

    return-void
.end method
