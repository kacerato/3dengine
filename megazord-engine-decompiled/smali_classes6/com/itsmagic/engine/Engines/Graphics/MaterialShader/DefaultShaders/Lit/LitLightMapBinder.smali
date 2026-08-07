.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;
.super Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;
    }
.end annotation

.annotation runtime Lh9/o;
.end annotation


# instance fields
.field public albedo:LJAVARuntime/Texture;

.field private albedoAlphaMap:LMb/n;

.field private final albedoListener:LTb/h;

.field public alpha:LJAVARuntime/Texture;

.field public alphaCutout:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public ao:LJAVARuntime/Texture;

.field private final aoListener:LTb/h;

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

.field public emissive:LJAVARuntime/Texture;

.field private final emissiveFallback:LMb/n;

.field private final emissiveListener:LTb/h;

.field public emissiveNits:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final emissiveNits_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private emitWritableAlert:Z

.field private lastAI:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private lastAlbedo:LJAVARuntime/Texture;

.field private lastAlpha:LJAVARuntime/Texture;

.field private lightIntensity:F

.field public lightMap:LJAVARuntime/Texture;

.field private final lightMapListener:LTb/h;

.field private localWindIntensity:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final localWindIntensity_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public metallic:LJAVARuntime/Texture;

.field private final metallicFallback:LMb/n;

.field private final metallicListener:LTb/h;

.field public minimalAlphaIntensity:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private final noiseRefList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqc/O1;",
            ">;"
        }
    .end annotation
.end field

.field public normal:LJAVARuntime/Texture;

.field private final normalListener:LTb/h;

.field private normalStrength:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private final properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/Property;",
            ">;"
        }
    .end annotation
.end field

.field public roughness:LJAVARuntime/Texture;

.field private final roughnessFallback:LMb/n;

.field private final roughnessListener:LTb/h;

.field private textureSourceOpen:Z

.field public uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

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
    .locals 8

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->properties:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->textureSourceOpen:Z

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->alphaCutout:F

    new-instance v2, LJAVARuntime/Color;

    const/16 v3, 0xe0

    invoke-direct {v2, v3, v3, v3}, LJAVARuntime/Color;-><init>(III)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    new-instance v2, Lqc/v;

    invoke-direct {v2, p0}, Lqc/v;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse_OFCBRL:Lxc/d;

    new-instance v2, Lqc/z;

    invoke-direct {v2, p0}, Lqc/z;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedoListener:LTb/h;

    new-instance v2, Lqc/A;

    invoke-direct {v2, p0}, Lqc/A;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalListener:LTb/h;

    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalStrength:F

    new-instance v2, Lqc/d;

    invoke-direct {v2, p0}, Lqc/d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessListener:LTb/h;

    new-instance v3, LMb/n;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v4, v4, v0}, LMb/n;-><init>(IIZZ)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessFallback:LMb/n;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const v6, 0x3f19999a    # 0.6f

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    invoke-virtual {v3, v0, v0, v5}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v3, v2}, LMb/p;->r(LTb/h;)V

    new-instance v2, Lqc/e;

    invoke-direct {v2, p0}, Lqc/e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicListener:LTb/h;

    new-instance v3, LMb/n;

    invoke-direct {v3, v4, v4, v4, v0}, LMb/n;-><init>(IIZZ)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicFallback:LMb/n;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const v6, 0x3d4ccccd    # 0.05f

    invoke-direct {v5, v6, v7, v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    invoke-virtual {v3, v0, v0, v5}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v3, v2}, LMb/p;->r(LTb/h;)V

    new-instance v2, Lqc/f;

    invoke-direct {v2, p0}, Lqc/f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->aoListener:LTb/h;

    new-instance v2, Lqc/g;

    invoke-direct {v2, p0}, Lqc/g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightMapListener:LTb/h;

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightIntensity:F

    new-instance v2, Lqc/h;

    invoke-direct {v2, p0}, Lqc/h;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveListener:LTb/h;

    new-instance v3, LMb/n;

    invoke-direct {v3, v4, v4, v4, v0}, LMb/n;-><init>(IIZZ)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveFallback:LMb/n;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4, v0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-virtual {v3, v0, v0, v4}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v3, v2}, LMb/p;->r(LTb/h;)V

    const/high16 v2, 0x43480000    # 200.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveNits:F

    new-instance v2, Lqc/i;

    invoke-direct {v2, p0}, Lqc/i;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveNits_OFCBRL:Lxc/d;

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->minimalAlphaIntensity:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    sget-object v1, Lxc/a;->MASKED:Lxc/a;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->blendingMode:Lxc/a;

    new-instance v1, Lqc/w;

    invoke-direct {v1, p0}, Lqc/w;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->blendingMode_OFCBRL:Lxc/d;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->doubleSided:Z

    new-instance v1, Lqc/w;

    invoke-direct {v1, p0}, Lqc/w;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->doubleSided_OFCBRL:Lxc/d;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->drawInFront:Z

    new-instance v1, Lqc/w;

    invoke-direct {v1, p0}, Lqc/w;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->drawInFront_OFCBRL:Lxc/d;

    iput v7, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->localWindIntensity:F

    new-instance v1, Lqc/x;

    invoke-direct {v1, p0}, Lqc/x;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->localWindIntensity_OFCBRL:Lxc/d;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->windVerticality:F

    new-instance v1, Lqc/y;

    invoke-direct {v1, p0}, Lqc/y;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->windVerticality_OFCBRL:Lxc/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->noiseRefList:Ljava/util/List;

    new-instance v2, Lqc/O1;

    const-string v3, "albedo"

    invoke-direct {v2, v3}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lqc/O1;

    const-string v3, "normal"

    invoke-direct {v2, v3}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lqc/O1;

    const-string v3, "roughness"

    invoke-direct {v2, v3}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lqc/O1;

    const-string v3, "metallic"

    invoke-direct {v2, v3}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lqc/O1;

    const-string v3, "ao"

    invoke-direct {v2, v3}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lqc/O1;

    const-string v3, "emissive"

    invoke-direct {v2, v3}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lqc/O1;

    const-string v3, "height"

    invoke-direct {v2, v3}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedoAlphaMap:LMb/n;

    iput v7, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lastAI:F

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emitWritableAlert:Z

    return-void
.end method

.method public static synthetic H0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->c2()V

    return-void
.end method

.method public static synthetic I0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->q1()V

    return-void
.end method

.method public static synthetic J0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->F1()V

    return-void
.end method

.method public static synthetic K0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->y1()V

    return-void
.end method

.method public static synthetic L0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->f2()V

    return-void
.end method

.method public static synthetic M0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->z1()V

    return-void
.end method

.method public static synthetic N0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->x1()V

    return-void
.end method

.method public static synthetic O0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->a2()V

    return-void
.end method

.method public static synthetic P0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->d2()V

    return-void
.end method

.method public static synthetic Q0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->g2()V

    return-void
.end method

.method public static synthetic R0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->A1()V

    return-void
.end method

.method public static synthetic S0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->w1()V

    return-void
.end method

.method public static synthetic T0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->D1()V

    return-void
.end method

.method public static synthetic U0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->b2()V

    return-void
.end method

.method public static synthetic V0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->Z1()V

    return-void
.end method

.method public static synthetic W0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->r1()V

    return-void
.end method

.method public static synthetic X0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->H1()V

    return-void
.end method

.method public static synthetic Y0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->k2()V

    return-void
.end method

.method public static synthetic Z0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->C1()V

    return-void
.end method

.method public static synthetic a1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->G1()V

    return-void
.end method

.method public static synthetic b1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->B1()V

    return-void
.end method

.method public static synthetic c1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->E1()V

    return-void
.end method

.method public static synthetic d1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->i2()V

    return-void
.end method

.method public static synthetic e1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->s1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->h2()V

    return-void
.end method

.method public static synthetic g1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->windVerticality:F

    return p0
.end method

.method public static synthetic h1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->l2()V

    return-void
.end method

.method public static synthetic i1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)LMb/n;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessFallback:LMb/n;

    return-object p0
.end method

.method public static synthetic j1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)LMb/n;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicFallback:LMb/n;

    return-object p0
.end method

.method public static synthetic k1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)LMb/n;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveFallback:LMb/n;

    return-object p0
.end method

.method public static synthetic l1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightIntensity:F

    return p0
.end method

.method public static synthetic m1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalStrength:F

    return p0
.end method

.method public static synthetic n1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->doubleSided:Z

    return p0
.end method

.method public static synthetic o1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->drawInFront:Z

    return p0
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->localWindIntensity:F

    return p0
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
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->b(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

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

.method public final synthetic A1()V
    .locals 6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissive:LJAVARuntime/Texture;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveFallback:LMb/n;

    sget-object v3, LQb/b;->i:LMb/p;

    const-string v4, "emissive"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->y0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    return-void
.end method

.method public final synthetic B1()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "emissiveNits"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveNits:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    return-void
.end method

.method public final synthetic C1()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightIntensity:F

    invoke-static {v1}, Lgd/b;->I(F)F

    move-result v1

    const-string v2, "lightIntensity"

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    return-void
.end method

.method public D0()LJAVARuntime/Texture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedo:LJAVARuntime/Texture;

    return-object v0
.end method

.method public final synthetic D1()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightMap:LJAVARuntime/Texture;

    sget-object v1, LQb/b;->i:LMb/p;

    const-string v2, "lightMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    return-void
.end method

.method public final synthetic E1()V
    .locals 6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallic:LJAVARuntime/Texture;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicFallback:LMb/n;

    sget-object v3, LQb/b;->i:LMb/p;

    const-string v4, "metallicMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->y0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    return-void
.end method

.method public F0()LJAVARuntime/Texture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normal:LJAVARuntime/Texture;

    return-object v0
.end method

.method public final synthetic F1()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->G0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->E0()LMb/p;

    move-result-object v0

    sget-object v1, LQb/b;->l:LMb/p;

    const-string v2, "normalMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->A0(LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->j2()V

    return-void
.end method

.method public final synthetic G1()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "normalStrength"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalStrength:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    return-void
.end method

.method public H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;
    .locals 6
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
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->blendingMode:Lxc/a;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$a;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v4, "blend"

    const-class v5, Lxc/a;

    invoke-static {v4, v5, v2, v3}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$g;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLOR:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LW5/b$a;->Color:LW5/b$a;

    invoke-direct {v2, v3, v4, v5}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    const-string v4, "diffuse"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v0, v3, v4, v5}, LW5/b;->f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, La6/a;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$h;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$h;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v4, "albedo"

    invoke-direct {v2, v4, v3}, La6/a;-><init>(Ljava/lang/String;La6/a$k;)V

    invoke-virtual {v2, p1}, La6/a;->C(Ljava/util/List;)V

    new-instance v2, La6/a;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$i;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$i;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v4, "normal"

    invoke-direct {v2, v4, v3}, La6/a;-><init>(Ljava/lang/String;La6/a$k;)V

    invoke-virtual {v2, p1}, La6/a;->C(Ljava/util/List;)V

    new-instance v2, La6/a;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$j;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$j;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v4, "roughness"

    invoke-direct {v2, v4, v3}, La6/a;-><init>(Ljava/lang/String;La6/a$k;)V

    invoke-virtual {v2, p1}, La6/a;->C(Ljava/util/List;)V

    new-instance v2, La6/a;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$k;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$k;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v4, "metallic"

    invoke-direct {v2, v4, v3}, La6/a;-><init>(Ljava/lang/String;La6/a$k;)V

    invoke-virtual {v2, p1}, La6/a;->C(Ljava/util/List;)V

    new-instance v2, La6/a;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$l;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$l;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v4, "ao"

    invoke-direct {v2, v4, v3}, La6/a;-><init>(Ljava/lang/String;La6/a$k;)V

    invoke-virtual {v2, p1}, La6/a;->C(Ljava/util/List;)V

    new-instance v2, La6/a;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$m;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$m;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v4, "emissive"

    invoke-direct {v2, v4, v3}, La6/a;-><init>(Ljava/lang/String;La6/a$k;)V

    invoke-virtual {v2, p1}, La6/a;->C(Ljava/util/List;)V

    new-instance v2, La6/a;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;

    invoke-direct {v3, p0, v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v4, "Light map"

    invoke-direct {v2, v4, v3}, La6/a;-><init>(Ljava/lang/String;La6/a$k;)V

    invoke-virtual {v2, p1}, La6/a;->C(Ljava/util/List;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$b;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string p2, "Emissive"

    invoke-static {p2, v2}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$c;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    const-string v0, "Others"

    invoke-static {v0, p2}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emitWritableAlert:Z

    if-eqz p2, :cond_3

    new-instance p2, LW5/b;

    const-string v0, "Please allow albedo and alpha textures modifications, in order to allow alpha texture to work"

    const/16 v1, 0xc

    invoke-direct {p2, v0, v1}, LW5/b;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    return-object p1
.end method

.method public final synthetic H1()V
    .locals 6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughness:LJAVARuntime/Texture;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessFallback:LMb/n;

    sget-object v3, LQb/b;->i:LMb/p;

    const-string v4, "roughnessMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->y0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    return-void
.end method

.method public final I1(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;Ljava/lang/String;)LJAVARuntime/Texture;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "noiseData",
            "fileName"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-static {p1}, Lmd/b;->z(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, LMb/j;

    invoke-direct {v0, p2}, LMb/j;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V

    invoke-virtual {v0}, LMb/j;->d1()V

    invoke-virtual {v0}, LMb/p;->getWidth()I

    move-result v1

    invoke-virtual {v0}, LMb/p;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, LMb/p;->getWidth()I

    move-result v2

    invoke-virtual {v0}, LMb/p;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_0

    invoke-virtual {v0, v5, v6}, LMb/n;->v(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->r()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".texture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".png.config"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->H0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lbd/o;->e(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {}, Lod/e;->f()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Lqc/q;

    invoke-direct {p2, p1}, Lqc/q;-><init>(LMb/g;)V

    invoke-static {p2}, Lc9/a;->I(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public J1(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "albedo"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedo:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedoListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedo:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedoListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->Z1()V

    invoke-static {}, Lc9/a;->q()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->C0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->G0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->i2()V

    goto :goto_1

    :cond_3
    new-instance p1, Lqc/m;

    invoke-direct {p1, p0}, Lqc/m;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public K1(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ao"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->ao:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->aoListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->ao:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->aoListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->a2()V

    :cond_3
    return-void
.end method

.method public L1(Lxc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendingMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->blendingMode:Lxc/a;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->blendingMode:Lxc/a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public M1(LJAVARuntime/Color;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diffuse"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

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
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->b2()V

    :cond_1
    return-void
.end method

.method public N1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doubleSided"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->doubleSided:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->doubleSided:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public O1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawInFront"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->drawInFront:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->drawInFront:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->drawInFront:Z

    return v0
.end method

.method public P1(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissive"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissive:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissive:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->c2()V

    :cond_3
    return-void
.end method

.method public Q1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissiveNits"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveNits:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveNits:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->d2()V

    :cond_1
    return-void
.end method

.method public R1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightIntensity"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightIntensity:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->e2()V

    :cond_1
    return-void
.end method

.method public S1(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightMap"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightMap:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightMapListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightMap:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightMapListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->f2()V

    :cond_3
    return-void
.end method

.method public T1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localWindIntensity"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->localWindIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->localWindIntensity:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->q1()V

    :cond_1
    return-void
.end method

.method public U1(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metallic"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallic:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallic:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->g2()V

    :cond_3
    return-void
.end method

.method public V1(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normal:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normal:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->i2()V

    :cond_3
    return-void
.end method

.method public W()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->J1(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->V1(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->X1(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->U1(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->K1(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->S1(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->P1(LJAVARuntime/Texture;)V

    return-void
.end method

.method public W1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalStrength"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalStrength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalStrength:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->j2()V

    :cond_1
    return-void
.end method

.method public X1(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roughness"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughness:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughness:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->k2()V

    :cond_3
    return-void
.end method

.method public Y1(F)V
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->windVerticality:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->windVerticality:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->r1()V

    :cond_1
    return-void
.end method

.method public Z()Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->E0()LMb/p;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughness:LJAVARuntime/Texture;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final Z1()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedo:LJAVARuntime/Texture;

    const/4 v1, 0x1

    const-string v2, "albedo"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedo:LJAVARuntime/Texture;

    sget-object v1, LQb/b;->g:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/t;

    invoke-direct {v0, p0}, Lqc/t;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
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

    const-string v0, "textureSourceOpen"

    const-string v1, "Boolean"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->textureSourceOpen:Z

    :cond_0
    const-string v0, "doubleSided"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->N1(Z)V

    :cond_1
    const-string v0, "drawInFront"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->O1(Z)V

    :cond_2
    const-string v0, "alphaCutout"

    const-string v1, "Float"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->alphaCutout:F

    :cond_3
    const-string v0, "emissiveNits"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->Q1(F)V

    :cond_4
    const-string v0, "emissiveColor"

    const-string v2, "Color"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->c(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveFallback:LMb/n;

    invoke-virtual {v4, v3, v3, v0}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveFallback:LMb/n;

    invoke-virtual {v0}, LMb/n;->apply()V

    :cond_5
    const-string v0, "minimalAlphaIntensity"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->minimalAlphaIntensity:F

    :cond_6
    const-string v0, "lightIntensity"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightIntensity:F

    :cond_7
    const-string v0, "roughnessFallback"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessFallback:LMb/n;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {v4, v3, v3, v0}, LMb/n;->p0(IIF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessFallback:LMb/n;

    invoke-virtual {v0}, LMb/n;->apply()V

    :cond_8
    const-string v0, "metallicFallback"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicFallback:LMb/n;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {v4, v3, v3, v0}, LMb/n;->p0(IIF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicFallback:LMb/n;

    invoke-virtual {v0}, LMb/n;->apply()V

    :cond_9
    const-string v0, "diffuse"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->c(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->M1(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_a
    const-string v0, "color"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->c(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->M1(LJAVARuntime/Color;)V

    :cond_b
    :goto_0
    const-string v0, "albedo"

    const-string v2, "Texture"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->J1(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_c
    const-string v0, "texture"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->J1(LJAVARuntime/Texture;)V

    :cond_d
    :goto_1
    const-string v0, "normalMap"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->V1(LJAVARuntime/Texture;)V

    :cond_e
    const-string v0, "normalStrength"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalStrength:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->j2()V

    :cond_f
    const-string v0, "lightMap"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->S1(LJAVARuntime/Texture;)V

    :cond_10
    const-string v0, "roughnessMap"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->X1(LJAVARuntime/Texture;)V

    :cond_11
    const-string v0, "aoMap"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->K1(LJAVARuntime/Texture;)V

    goto :goto_2

    :cond_12
    const-string v0, "ao"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->K1(LJAVARuntime/Texture;)V

    :cond_13
    :goto_2
    const-string v0, "metallicMap"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->U1(LJAVARuntime/Texture;)V

    :cond_14
    const-string v0, "alphaMap"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->alpha:LJAVARuntime/Texture;

    :cond_15
    const-string v0, "emissive"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->P1(LJAVARuntime/Texture;)V

    :cond_16
    const-string v0, "blendingMode"

    const-string v2, "String"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxc/a;->valueOf(Ljava/lang/String;)Lxc/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->L1(Lxc/a;)V

    :cond_17
    const-string v0, "localWindIntensity"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->T1(F)V

    :cond_18
    const-string v0, "windVerticality"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->Y1(F)V

    :cond_19
    const-string v0, "materialID"

    const-string v1, "Int"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m0(I)V

    :cond_1a
    :goto_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->noiseRefList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1c

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->noiseRefList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqc/O1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lqc/O1;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ND"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->fromJson(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    move-result-object v1

    iput-object v1, v0, Lqc/O1;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    iput-boolean v1, v0, Lqc/O1;->a:Z

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1c
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->h2()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->c(Ljava/util/List;)V

    return-void
.end method

.method public final a2()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->ao:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "ao"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->ao:LJAVARuntime/Texture;

    sget-object v1, LQb/b;->g:LMb/p;

    const-string v2, "aoMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/c;

    invoke-direct {v0, p0}, Lqc/c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
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

    const-string v1, "textureSourceOpen"

    const-string v2, "Boolean"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->textureSourceOpen:Z

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "doubleSided"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->doubleSided:Z

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "drawInFront"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->drawInFront:Z

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "alphaCutout"

    const-string v2, "Float"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->alphaCutout:F

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "minimalAlphaIntensity"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->minimalAlphaIntensity:F

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "lightIntensity"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightIntensity:F

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "roughnessFallback"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessFallback:LMb/n;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, LMb/n;->B(II)F

    move-result v3

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "metallicFallback"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicFallback:LMb/n;

    invoke-virtual {v3, v4, v4}, LMb/n;->B(II)F

    move-result v3

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "diffuse"

    const-string v3, "Color"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    iget-object v5, v5, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->m(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const-string v1, "emissiveColor"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveFallback:LMb/n;

    invoke-virtual {v3, v4, v4}, LMb/n;->v(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->m(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const-string v1, "albedo"

    const-string v3, "Texture"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedo:LJAVARuntime/Texture;

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "normalMap"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normal:LJAVARuntime/Texture;

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "normalStrength"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalStrength:F

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "lightMap"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightMap:LJAVARuntime/Texture;

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "roughnessMap"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughness:LJAVARuntime/Texture;

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "aoMap"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->ao:LJAVARuntime/Texture;

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "emissiveNits"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveNits:F

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "metallicMap"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallic:LJAVARuntime/Texture;

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "emissive"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissive:LJAVARuntime/Texture;

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "alphaMap"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->alpha:LJAVARuntime/Texture;

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "blendingMode"

    const-string v3, "String"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->blendingMode:Lxc/a;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    const-string v1, "localWindIntensity"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->localWindIntensity:F

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "windVerticality"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->windVerticality:F

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "materialID"

    const-string v2, "Int"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->K()I

    move-result v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->noiseRefList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->noiseRefList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqc/O1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lqc/O1;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ND"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lqc/O1;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    if-eqz v5, :cond_0

    iget-boolean v1, v1, Lqc/O1;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    invoke-virtual {v1, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->d(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final b2()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v6

    const-string v2, "baseColor"

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->Q(Ljava/lang/String;FFFF)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/u;

    invoke-direct {v0, p0}, Lqc/u;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final c2()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissive:LJAVARuntime/Texture;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveFallback:LMb/n;

    sget-object v4, LQb/b;->i:LMb/p;

    const-string v5, "emissive"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->y0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/s;

    invoke-direct {v0, p0}, Lqc/s;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->alphaCutout:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    invoke-virtual {v0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->d()Z

    move-result v0

    return v0
.end method

.method public final d2()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "emissiveNits"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveNits:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/j;

    invoke-direct {v0, p0}, Lqc/j;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final e2()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightIntensity:F

    invoke-static {v1}, Lgd/b;->I(F)F

    move-result v1

    const-string v2, "lightIntensity"

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/l;

    invoke-direct {v0, p0}, Lqc/l;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final f2()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightMap:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "lightMap"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightMap:LJAVARuntime/Texture;

    sget-object v1, LQb/b;->i:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/o;

    invoke-direct {v0, p0}, Lqc/o;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->b2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->Z1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->i2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->k2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->g2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->a2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->f2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->e2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->c2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->d2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->l2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->q1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->r1()V

    return-void
.end method

.method public final g2()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallic:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "metallic"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallic:LJAVARuntime/Texture;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicFallback:LMb/n;

    sget-object v4, LQb/b;->i:LMb/p;

    const-string v5, "metallicMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->y0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/n;

    invoke-direct {v0, p0}, Lqc/n;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessFallback:LMb/n;

    invoke-virtual {p1, v1, v1, p2}, LMb/n;->p0(IIF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessFallback:LMb/n;

    invoke-virtual {p1}, LMb/n;->apply()V

    return-void

    :cond_0
    const-string v0, "metallic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicFallback:LMb/n;

    invoke-virtual {p1, v1, v1, p2}, LMb/n;->p0(IIF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallicFallback:LMb/n;

    invoke-virtual {p1}, LMb/n;->apply()V

    return-void

    :cond_1
    const-string v0, "windeffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->T1(F)V

    return-void

    :cond_2
    const-string v0, "windVerticality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->Y1(F)V

    return-void

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->h0(Ljava/lang/String;F)V

    return-void
.end method

.method public final h2()V
    .locals 0

    return-void
.end method

.method public final i2()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normal:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "normal map"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->G0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->E0()LMb/p;

    move-result-object v0

    sget-object v1, LQb/b;->l:LMb/p;

    const-string v2, "normalMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->A0(LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->j2()V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/k;

    invoke-direct {v0, p0}, Lqc/k;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->q1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->r1()V

    return-void
.end method

.method public final j2()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "normalStrength"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalStrength:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/p;

    invoke-direct {v0, p0}, Lqc/p;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public k(Lvc/b;)Ljava/util/List;
    .locals 20
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
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_1

    aget-boolean v17, v3, v8

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v2, :cond_0

    aget-boolean v9, v3, v15

    new-instance v14, Lxc/i;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v10

    sget-object v12, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    xor-int/lit8 v16, v9, 0x1

    xor-int/lit8 v18, v9, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/16 v19, 0x0

    move-object v9, v14

    move/from16 v13, v17

    move-object v1, v14

    move-object/from16 v14, v19

    move/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v9 .. v16}, Lxc/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v19, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method public final k2()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughness:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "roughness"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughness:LJAVARuntime/Texture;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessFallback:LMb/n;

    sget-object v4, LQb/b;->i:LMb/p;

    const-string v5, "roughnessMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->y0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/r;

    invoke-direct {v0, p0}, Lqc/r;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public l()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedo:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedo:LJAVARuntime/Texture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->copy()LJAVARuntime/Color;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normal:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normal:LJAVARuntime/Texture;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalStrength:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normalStrength:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughness:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughness:LJAVARuntime/Texture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallic:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallic:LJAVARuntime/Texture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->ao:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->ao:LJAVARuntime/Texture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->alpha:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->alpha:LJAVARuntime/Texture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissive:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissive:LJAVARuntime/Texture;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveNits:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveNits:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->minimalAlphaIntensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->minimalAlphaIntensity:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->alphaCutout:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->alphaCutout:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->a()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->doubleSided:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->doubleSided:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->windVerticality:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->windVerticality:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->K()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m0(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->blendingMode:Lxc/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->blendingMode:Lxc/a;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->drawInFront:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->drawInFront:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->localWindIntensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->localWindIntensity:F

    return-object v0
.end method

.method public final l2()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->albedoTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "albedoTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->albedoOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "albedoOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->normalTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "normalTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->normalOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "normalOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->roughnessTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "roughnessTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->roughnessOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "roughnessOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->metallicTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "metallicTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->metallicOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "metallicOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->aoTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "aoTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->aoOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "aoOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->heightTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "heightTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->heightOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "heightOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->emissiveTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "emissiveTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->emissiveOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "emissiveOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    return-void
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

    const-string v0, "albedo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string v0, "texture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->V1(LJAVARuntime/Texture;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->V1(LJAVARuntime/Texture;)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "roughness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->X1(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->X1(LJAVARuntime/Texture;)V

    :goto_1
    return-void

    :cond_4
    const-string v0, "metallic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->U1(LJAVARuntime/Texture;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->U1(LJAVARuntime/Texture;)V

    :goto_2
    return-void

    :cond_6
    const-string v0, "ao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->K1(LJAVARuntime/Texture;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->K1(LJAVARuntime/Texture;)V

    :goto_3
    return-void

    :cond_8
    const-string v0, "lightMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_9

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->S1(LJAVARuntime/Texture;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->S1(LJAVARuntime/Texture;)V

    :goto_4
    return-void

    :cond_a
    const-string v0, "emissive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_b

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->P1(LJAVARuntime/Texture;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->P1(LJAVARuntime/Texture;)V

    :goto_5
    return-void

    :cond_c
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->q0(Ljava/lang/String;LMb/p;)V

    return-void

    :cond_d
    :goto_6
    if-eqz p2, :cond_e

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->J1(LJAVARuntime/Texture;)V

    goto :goto_7

    :cond_e
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->J1(LJAVARuntime/Texture;)V

    :goto_7
    return-void
.end method

.method public final q1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()LGc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->localWindIntensity:F

    invoke-virtual {v0, v1}, LGc/h;->v(F)V

    :cond_0
    return-void
.end method

.method public r(Ljava/lang/String;)LMb/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "normalMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

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
    const-string v0, "ao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "aoMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "heightMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "emissive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissiveFallback:LMb/n;

    return-object p1

    :cond_5
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->r(Ljava/lang/String;)LMb/p;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    sget-object p1, LQb/b;->i:LMb/p;

    return-object p1

    :cond_7
    :goto_1
    sget-object p1, LQb/b;->g:LMb/p;

    return-object p1

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughnessFallback:LMb/n;

    return-object p1

    :cond_9
    :goto_3
    sget-object p1, LQb/b;->l:LMb/p;

    return-object p1
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

    const-string v0, "albedo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    const-string v0, "texture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->normal:LJAVARuntime/Texture;

    if-eqz p1, :cond_1

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_1

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->V1(LJAVARuntime/Texture;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->V1(LJAVARuntime/Texture;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->V1(LJAVARuntime/Texture;)V

    :goto_0
    return-void

    :cond_4
    const-string v0, "roughness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->roughness:LJAVARuntime/Texture;

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->X1(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->X1(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->X1(LJAVARuntime/Texture;)V

    :goto_1
    return-void

    :cond_8
    const-string v0, "metallic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->metallic:LJAVARuntime/Texture;

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->U1(LJAVARuntime/Texture;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->U1(LJAVARuntime/Texture;)V

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->U1(LJAVARuntime/Texture;)V

    :goto_2
    return-void

    :cond_c
    const-string v0, "ao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->ao:LJAVARuntime/Texture;

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->K1(LJAVARuntime/Texture;)V

    goto :goto_3

    :cond_e
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->K1(LJAVARuntime/Texture;)V

    goto :goto_3

    :cond_f
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->K1(LJAVARuntime/Texture;)V

    :goto_3
    return-void

    :cond_10
    const-string v0, "lightMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->ao:LJAVARuntime/Texture;

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->S1(LJAVARuntime/Texture;)V

    goto :goto_4

    :cond_12
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->S1(LJAVARuntime/Texture;)V

    goto :goto_4

    :cond_13
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->S1(LJAVARuntime/Texture;)V

    :goto_4
    return-void

    :cond_14
    const-string v0, "emissive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->emissive:LJAVARuntime/Texture;

    if-eqz p1, :cond_15

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_15

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    return-void

    :cond_15
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->P1(LJAVARuntime/Texture;)V

    goto :goto_5

    :cond_16
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->P1(LJAVARuntime/Texture;)V

    goto :goto_5

    :cond_17
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->P1(LJAVARuntime/Texture;)V

    :goto_5
    return-void

    :cond_18
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->r0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    :goto_6
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedo:LJAVARuntime/Texture;

    if-eqz p1, :cond_1a

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_1a

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return-void

    :cond_1a
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1c

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->J1(LJAVARuntime/Texture;)V

    goto :goto_7

    :cond_1b
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->J1(LJAVARuntime/Texture;)V

    goto :goto_7

    :cond_1c
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->J1(LJAVARuntime/Texture;)V

    :goto_7
    return-void
.end method

.method public final r1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()LGc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->windVerticality:F

    invoke-virtual {v0, v1}, LGc/h;->w(F)V

    :cond_0
    return-void
.end method

.method public final s1(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;
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

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$d;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    sget-object v4, LW5/b$a;->SLFloatWrap:LW5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p1, v3

    iget-object p1, v2, LW5/b;->p:[LW5/b;

    new-instance v1, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$e;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p1, v3

    if-eqz p3, :cond_1

    iget-object p1, v2, LW5/b;->p:[LW5/b;

    new-instance v1, LW5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$f;

    invoke-direct {v4, p0, p2, p3, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LW5/b;)V

    const-string p2, "R"

    sget-object p3, LW5/b$a;->Button:LW5/b$a;

    invoke-direct {v1, v4, p2, p3}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-virtual {v1, v3}, LW5/b;->n(Z)LW5/b;

    move-result-object p2

    aput-object p2, p1, v0

    :cond_1
    return-object v2
.end method

.method public t1(Ljava/lang/String;)Lqc/O1;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldName"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->noiseRefList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->noiseRefList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqc/O1;

    iget-object v2, v1, Lqc/O1;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
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

    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->localWindIntensity:F

    return p1

    :cond_0
    const-string v0, "windVerticality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->windVerticality:F

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->u(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public u1()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->localWindIntensity:F

    return v0
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
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$UVs;->e(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->l2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->v0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :goto_0
    return-void
.end method

.method public v1()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->windVerticality:F

    return v0
.end method

.method public final synthetic w1()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->C0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->G0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->i2()V

    return-void
.end method

.method public x0(Lxc/i;Lvc/b;)Lxc/i;
    .locals 10
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

    invoke-virtual {p1}, Lxc/i;->a()Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->blendingMode:Lxc/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lxc/i;->i()Z

    move-result v0

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->doubleSided:Z

    if-eq v0, v2, :cond_1

    move p2, v1

    :cond_1
    invoke-virtual {p1}, Lxc/i;->g()Z

    move-result v0

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->drawInFront:Z

    if-ne v0, v2, :cond_2

    move p2, v1

    :cond_2
    if-eqz p2, :cond_3

    new-instance p1, Lxc/i;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->blendingMode:Lxc/a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v3

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->doubleSided:Z

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->drawInFront:Z

    xor-int/lit8 v8, p2, 0x1

    xor-int/lit8 v9, p2, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lxc/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    :cond_3
    return-object p1
.end method

.method public final synthetic x1()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->albedo:LJAVARuntime/Texture;

    sget-object v1, LQb/b;->g:LMb/p;

    const-string v2, "albedo"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    return-void
.end method

.method public final synthetic y1()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->ao:LJAVARuntime/Texture;

    sget-object v1, LQb/b;->g:LMb/p;

    const-string v2, "aoMap"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->i(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Z

    return-void
.end method

.method public final synthetic z1()V
    .locals 6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, v1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, v1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, v1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, v1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v5

    const-string v1, "baseColor"

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->Q(Ljava/lang/String;FFFF)V

    return-void
.end method
