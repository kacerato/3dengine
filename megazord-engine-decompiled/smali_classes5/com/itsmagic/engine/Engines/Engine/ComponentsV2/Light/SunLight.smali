.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/BaseLightComponent;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final K:Ljava/lang/String; = "SunLight"

.field public static final L:Ljava/lang/Class;


# instance fields
.field public E:Z

.field public F:Z

.field public G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

.field public H:Z

.field public final I:LAb/h;

.field public J:LJAVARuntime/Component;

.field private allowShadow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private cascadeFarHint:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final cascadeFarHint_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private cascadeNearHint:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final cascadeNearHint_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final color_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private lux:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final lux_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private shadowBias:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final shadowBias_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private shadowCascades:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final shadowCascades_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private shadowFarDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final shadowFarDistance_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private shadowNormalBias:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final shadowNormalBias_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private shadowResolutionID:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final shadowResolutionID_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private stableCascades:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->L:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$g;-><init>()V

    invoke-static {v0}, Lxb/a;->b(Lxb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "SunLight"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/BaseLightComponent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->lux:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$h;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->lux_OFCBRL:Lxc/d;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xff

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->color_OFCBRL:Lxc/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->allowShadow:Z

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowBias:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowBias_OFCBRL:Lxc/d;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowNormalBias:F

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$k;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowNormalBias_OFCBRL:Lxc/d;

    const/16 v2, 0xc

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowResolutionID:I

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$l;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowResolutionID_OFCBRL:Lxc/d;

    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowFarDistance:F

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$m;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowFarDistance_OFCBRL:Lxc/d;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$n;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades_OFCBRL:Lxc/d;

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeNearHint:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$o;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeNearHint_OFCBRL:Lxc/d;

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeFarHint:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeFarHint_OFCBRL:Lxc/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->stableCascades:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->F:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->I:LAb/h;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->ensureLuxCurve()V

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)F
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getFinalIntensity()F

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeNearHint:F

    return p0
.end method

.method public static synthetic access$1200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeFarHint:F

    return p0
.end method

.method public static synthetic access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->stableCascades:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->lux:F

    return p0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->allowShadow:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowResolutionID:I

    return p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowBias:F

    return p0
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowNormalBias:F

    return p0
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowFarDistance:F

    return p0
.end method

.method private ensureLuxCurve()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->s(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->s(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->s(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->s(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;->ClampToBorder:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->S(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    return-void
.end method

.method private getFinalIntensity()F
    .locals 5

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->ensureLuxCurve()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->lux:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->lux:F

    mul-float/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v2, :cond_1

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    invoke-static {v3}, Lgd/b;->I(F)F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->C(F)F

    move-result v3

    invoke-static {v3}, Lgd/b;->I(F)F

    move-result v3

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    mul-float/2addr v0, v3

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lgd/b;->M(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public canDrawShadows()Z
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->allowShadow:Z

    return v0
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->lux:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->lux:F

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->x(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 6
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->allowShadow:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->allowShadow:Z

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowBias:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowBias:F

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowNormalBias:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowNormalBias:F

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowResolutionID:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowResolutionID:I

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowFarDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowFarDistance:F

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    .line 12
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeNearHint:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeNearHint:F

    .line 13
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeFarHint:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeFarHint:F

    .line 14
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->stableCascades:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->stableCascades:Z

    .line 15
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->F:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->F:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->removeFromGraphics()V

    return-void
.end method

.method public getCascadeFarHint()F
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeFarHint:F

    return v0
.end method

.method public getCascadeNearHint()F
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeNearHint:F

    return v0
.end method

.method public getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070268

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f05009a

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    const-string v4, "Lux"

    sget-object v5, LW5/b$a;->SLFloat:LW5/b$a;

    invoke-direct {v2, v3, v4, v5}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    const-string v3, "lux"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, v3, v4}, LW5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->ensureLuxCurve()V

    const-string v2, "Lux curve"

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->luxCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {v2, v3, p1}, Lba/c;->a(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;Landroid/content/Context;)LW5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$d;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLOR:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LW5/b$a;->Color:LW5/b$a;

    invoke-direct {v2, v3, v4, v5, p1}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    const-string p1, "color"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, p1, v3}, LW5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADOW:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e;

    invoke-direct {v4, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {p1, v3, v4}, LZ5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Cascades"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f;

    invoke-direct {v3, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {p1, v2, v3}, LZ5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getLux()F
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->lux:F

    return v0
.end method

.method public getShadowBias()F
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowBias:F

    return v0
.end method

.method public getShadowCascades()I
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    return v0
.end method

.method public getShadowFarDistance()F
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowFarDistance:F

    return v0
.end method

.method public getShadowNormalBias()F
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowNormalBias:F

    return v0
.end method

.method public getShadowResolutionID()I
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowResolutionID:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SunLight"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isAllowShadow()Z
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->allowShadow:Z

    return v0
.end method

.method public isStableCascades()Z
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->stableCascades:Z

    return v0
.end method

.method public isSuppressRender()Z
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->F:Z

    return v0
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->I:LAb/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G(LAb/h;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->I:LAb/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->X2(LAb/h;)V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->removeFromGraphics()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-static {p1}, Lyb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->F:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->removeFromGraphics()V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    if-eqz v1, :cond_a

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->r()Lkc/c;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->destroyImmediate()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->E:Z

    :cond_3
    const-class p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    new-instance v2, Lcom/google/android/filament/LightManager$a;

    sget-object v3, Lcom/google/android/filament/LightManager$d;->SUN:Lcom/google/android/filament/LightManager$d;

    invoke-direct {v2, v3}, Lcom/google/android/filament/LightManager$a;-><init>(Lcom/google/android/filament/LightManager$d;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/android/filament/LightManager$a;->e(FFF)Lcom/google/android/filament/LightManager$a;

    move-result-object p1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getFinalIntensity()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/filament/LightManager$a;->g(F)Lcom/google/android/filament/LightManager$a;

    move-result-object p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/filament/LightManager$a;->d(FFF)Lcom/google/android/filament/LightManager$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->canDrawShadows()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->canDrawShadows()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/filament/LightManager$a;->c(Z)Lcom/google/android/filament/LightManager$a;

    new-instance v1, Lcom/google/android/filament/LightManager$c;

    invoke-direct {v1}, Lcom/google/android/filament/LightManager$c;-><init>()V

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowBias:F

    iput v2, v1, Lcom/google/android/filament/LightManager$c;->d:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowNormalBias:F

    iput v2, v1, Lcom/google/android/filament/LightManager$c;->e:F

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowResolutionID:I

    aget v2, v2, v3

    iput v2, v1, Lcom/google/android/filament/LightManager$c;->a:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeNearHint:F

    iput v2, v1, Lcom/google/android/filament/LightManager$c;->g:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeFarHint:F

    iput v2, v1, Lcom/google/android/filament/LightManager$c;->h:F

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->stableCascades:Z

    iput-boolean v2, v1, Lcom/google/android/filament/LightManager$c;->i:Z

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    if-ge v2, v0, :cond_4

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    :cond_4
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_5

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    :cond_5
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    iput v2, v1, Lcom/google/android/filament/LightManager$c;->b:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowFarDistance:F

    iput v2, v1, Lcom/google/android/filament/LightManager$c;->f:F

    goto :goto_0

    :cond_6
    iput v0, v1, Lcom/google/android/filament/LightManager$c;->b:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowFarDistance:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, v1, Lcom/google/android/filament/LightManager$c;->f:F

    :goto_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    if-le v2, v0, :cond_7

    :try_start_0
    new-array v3, v2, [F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeNearHint:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeFarHint:F

    invoke-static {v3, v2, v4, v5}, Lcom/google/android/filament/LightManager$b;->a([FIFF)V

    iput-object v3, v1, Lcom/google/android/filament/LightManager$c;->c:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    invoke-virtual {p1, v1}, Lcom/google/android/filament/LightManager$a;->l(Lcom/google/android/filament/LightManager$c;)Lcom/google/android/filament/LightManager$a;

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Lcom/google/android/filament/LightManager$a;->c(Z)Lcom/google/android/filament/LightManager$a;

    new-instance v2, Lcom/google/android/filament/LightManager$c;

    invoke-direct {v2}, Lcom/google/android/filament/LightManager$c;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/google/android/filament/LightManager$c;->d:F

    iput v3, v2, Lcom/google/android/filament/LightManager$c;->e:F

    const/16 v4, 0x10

    iput v4, v2, Lcom/google/android/filament/LightManager$c;->a:I

    const v4, 0x3f8ccccd    # 1.1f

    iput v4, v2, Lcom/google/android/filament/LightManager$c;->f:F

    iput v3, v2, Lcom/google/android/filament/LightManager$c;->g:F

    iput v4, v2, Lcom/google/android/filament/LightManager$c;->h:F

    iput-boolean v1, v2, Lcom/google/android/filament/LightManager$c;->i:Z

    iput v0, v2, Lcom/google/android/filament/LightManager$c;->b:I

    invoke-virtual {p1, v2}, Lcom/google/android/filament/LightManager$a;->l(Lcom/google/android/filament/LightManager$c;)Lcom/google/android/filament/LightManager$a;

    goto :goto_1

    :cond_9
    invoke-virtual {p1, v1}, Lcom/google/android/filament/LightManager$a;->c(Z)Lcom/google/android/filament/LightManager$a;

    :goto_1
    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;-><init>(Lcom/google/android/filament/LightManager$a;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    :cond_a
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getFinalIntensity()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->setIntensity(F)V

    :cond_b
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->E:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->r()Lkc/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->w(Lkc/c;)V

    :cond_c
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->E:Z

    :cond_d
    return-void
.end method

.method public receiveEvent(Lec/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(Lec/c;)V

    instance-of p1, p1, Lbd/C;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    :cond_0
    return-void
.end method

.method public removeFromGraphics()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->E:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->r()Lkc/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->E:Z

    :cond_1
    return-void
.end method

.method public setAllowShadow(Z)V
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowShadow"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->allowShadow:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->allowShadow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->w(Z)V

    :cond_1
    return-void
.end method

.method public setCascadeFarHint(F)V
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cascadeFarHint"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeFarHint:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeFarHint:F

    return-void
.end method

.method public setCascadeNearHint(F)V
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cascadeNearHint"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeNearHint:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->cascadeNearHint:F

    return-void
.end method

.method public setColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->setColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_0
    return-void
.end method

.method public setLux(F)V
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lux"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->lux:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->lux:F

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->G:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->getFinalIntensity()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->setIntensity(F)V

    :cond_1
    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->J:LJAVARuntime/Component;

    return-void
.end method

.method public setShadowBias(F)V
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowBias"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowBias:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowBias:F

    return-void
.end method

.method public setShadowCascades(I)V
    .locals 2
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowCascades"
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    if-eq v1, p1, :cond_2

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    :cond_2
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowCascades:I

    return-void
.end method

.method public setShadowFarDistance(F)V
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowFarDistance"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowFarDistance:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowFarDistance:F

    return-void
.end method

.method public setShadowNormalBias(F)V
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowNormalBias"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowNormalBias:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowNormalBias:F

    return-void
.end method

.method public setShadowResolutionID(I)V
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowResolutionID"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowResolutionID:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->shadowResolutionID:I

    return-void
.end method

.method public setStableCascades(Z)V
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stableCascades"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->stableCascades:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->stableCascades:Z

    return-void
.end method

.method public setSuppressRender(Z)V
    .locals 1
    .annotation runtime LK8/a;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suppressRender"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->F:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->F:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->removeFromGraphics()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->H:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->J:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/SunLight;

    invoke-direct {v0, p0}, LJAVARuntime/SunLight;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->J:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
