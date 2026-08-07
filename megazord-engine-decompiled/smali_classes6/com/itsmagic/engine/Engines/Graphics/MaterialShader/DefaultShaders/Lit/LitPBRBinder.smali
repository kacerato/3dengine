.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;
.super Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;
    }
.end annotation

.annotation runtime Lh9/o;
.end annotation


# instance fields
.field private activePreset:Ljava/lang/String;

.field public albedo:LJAVARuntime/Texture;

.field private final albedoListener:LTb/h;

.field private albedoSpriteIndex:I

.field public alphaCutout:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public ao:LJAVARuntime/Texture;

.field private final aoListener:LTb/h;

.field private aoSpriteIndex:I

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

.field public discardEdges:Z
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0xa
        }
    .end annotation
.end field

.field public final discardEdges_OFCBRL:Lxc/d;
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

.field private emissiveSpriteIndex:I

.field public height:LJAVARuntime/Texture;

.field private heightActiveInShader:Z

.field private heightIntensity:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private final heightListener:LTb/h;

.field private heightNormalStrength:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private heightQuality:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field private heightSpriteIndex:I

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

.field private metallicSpriteIndex:I

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

.field private normalSpriteIndex:I

.field private normalStrength:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public opacity:LJAVARuntime/Texture;

.field private final opacityListener:LTb/h;

.field private opacitySpriteIndex:I

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

.field private roughnessSpriteIndex:I

.field private selectedPreset:Ljava/lang/String;

.field private textureSourceOpen:Z

.field public uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

.field public uvSource:Lvc/e;

.field public final uvSource_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
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

.field public worldUVSize:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final worldUVSize_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->properties:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->textureSourceOpen:Z

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->alphaCutout:F

    new-instance v1, LJAVARuntime/Color;

    const/16 v2, 0xe0

    invoke-direct {v1, v2, v2, v2}, LJAVARuntime/Color;-><init>(III)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    new-instance v1, Lqc/e0;

    invoke-direct {v1, p0}, Lqc/e0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse_OFCBRL:Lxc/d;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    new-instance v1, Lqc/j0;

    invoke-direct {v1, p0}, Lqc/j0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoListener:LTb/h;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacitySpriteIndex:I

    new-instance v1, Lqc/k0;

    invoke-direct {v1, p0}, Lqc/k0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacityListener:LTb/h;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalSpriteIndex:I

    new-instance v1, Lqc/l0;

    invoke-direct {v1, p0}, Lqc/l0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalListener:LTb/h;

    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalStrength:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessSpriteIndex:I

    new-instance v1, Lqc/m0;

    invoke-direct {v1, p0}, Lqc/m0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessListener:LTb/h;

    new-instance v2, LMb/n;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3, v3, v0}, LMb/n;-><init>(IIZZ)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessFallback:LMb/n;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const v5, 0x3f19999a    # 0.6f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    invoke-virtual {v2, v0, v0, v4}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v2, v1}, LMb/p;->r(LTb/h;)V

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicSpriteIndex:I

    new-instance v1, Lqc/o0;

    invoke-direct {v1, p0}, Lqc/o0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicListener:LTb/h;

    new-instance v2, LMb/n;

    invoke-direct {v2, v3, v3, v3, v0}, LMb/n;-><init>(IIZZ)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicFallback:LMb/n;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const v5, 0x3d4ccccd    # 0.05f

    invoke-direct {v4, v5, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFF)V

    invoke-virtual {v2, v0, v0, v4}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v2, v1}, LMb/p;->r(LTb/h;)V

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoSpriteIndex:I

    new-instance v1, Lqc/p0;

    invoke-direct {v1, p0}, Lqc/p0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoListener:LTb/h;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveSpriteIndex:I

    new-instance v1, Lqc/q0;

    invoke-direct {v1, p0}, Lqc/q0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveListener:LTb/h;

    new-instance v2, LMb/n;

    invoke-direct {v2, v3, v3, v3, v0}, LMb/n;-><init>(IIZZ)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveFallback:LMb/n;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4, v0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-virtual {v2, v0, v0, v4}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v2, v1}, LMb/p;->r(LTb/h;)V

    const/high16 v1, 0x43480000    # 200.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveNits:F

    new-instance v1, Lqc/r0;

    invoke-direct {v1, p0}, Lqc/r0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveNits_OFCBRL:Lxc/d;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightSpriteIndex:I

    new-instance v1, Lqc/s0;

    invoke-direct {v1, p0}, Lqc/s0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightListener:LTb/h;

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    const v1, 0x3ecccccd    # 0.4f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightNormalStrength:F

    const v1, 0x3eaaaaab

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->discardEdges:Z

    new-instance v1, Lqc/f0;

    invoke-direct {v1, p0}, Lqc/f0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->discardEdges_OFCBRL:Lxc/d;

    sget-object v1, Lvc/e;->Vertex:Lvc/e;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uvSource:Lvc/e;

    new-instance v1, Lqc/f0;

    invoke-direct {v1, p0}, Lqc/f0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uvSource_OFCBRL:Lxc/d;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->worldUVSize:F

    new-instance v2, Lqc/g0;

    invoke-direct {v2, p0}, Lqc/g0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->worldUVSize_OFCBRL:Lxc/d;

    iput v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->localWindIntensity:F

    new-instance v2, Lqc/h0;

    invoke-direct {v2, p0}, Lqc/h0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->localWindIntensity_OFCBRL:Lxc/d;

    iput v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->windVerticality:F

    new-instance v1, Lqc/i0;

    invoke-direct {v1, p0}, Lqc/i0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->windVerticality_OFCBRL:Lxc/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    sget-object v1, Lxc/a;->MASKED:Lxc/a;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->blendingMode:Lxc/a;

    new-instance v1, Lqc/f0;

    invoke-direct {v1, p0}, Lqc/f0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->blendingMode_OFCBRL:Lxc/d;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->doubleSided:Z

    new-instance v1, Lqc/f0;

    invoke-direct {v1, p0}, Lqc/f0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->doubleSided_OFCBRL:Lxc/d;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->drawInFront:Z

    new-instance v0, Lqc/f0;

    invoke-direct {v0, p0}, Lqc/f0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->drawInFront_OFCBRL:Lxc/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->noiseRefList:Ljava/util/List;

    new-instance v1, Lqc/O1;

    const-string v2, "albedo"

    invoke-direct {v1, v2}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lqc/O1;

    const-string v2, "opacity"

    invoke-direct {v1, v2}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lqc/O1;

    const-string v2, "normal"

    invoke-direct {v1, v2}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lqc/O1;

    const-string v2, "roughness"

    invoke-direct {v1, v2}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lqc/O1;

    const-string v2, "metallic"

    invoke-direct {v1, v2}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lqc/O1;

    const-string v2, "ao"

    invoke-direct {v1, v2}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lqc/O1;

    const-string v2, "emissive"

    invoke-direct {v1, v2}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lqc/O1;

    const-string v2, "height"

    invoke-direct {v1, v2}, Lqc/O1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->activePreset:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveSpriteIndex:I

    return p1
.end method

.method public static synthetic B1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->c2(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Z2()V

    return-void
.end method

.method public static synthetic D1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacitySpriteIndex:I

    return p0
.end method

.method public static synthetic E1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacitySpriteIndex:I

    return p1
.end method

.method public static synthetic F1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->j3()V

    return-void
.end method

.method public static synthetic G1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    return p0
.end method

.method public static synthetic H0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->X2()V

    return-void
.end method

.method public static synthetic H1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightNormalStrength:F

    return p0
.end method

.method public static synthetic I0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->p2()V

    return-void
.end method

.method public static synthetic I1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    return p0
.end method

.method public static synthetic J0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->n2()V

    return-void
.end method

.method public static synthetic J1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->localWindIntensity:F

    return p0
.end method

.method public static synthetic K0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->l2()V

    return-void
.end method

.method public static synthetic K1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->windVerticality:F

    return p0
.end method

.method public static synthetic L0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->a3()V

    return-void
.end method

.method public static synthetic L1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalStrength:F

    return p0
.end method

.method public static synthetic M0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->W2()V

    return-void
.end method

.method public static synthetic M1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->doubleSided:Z

    return p0
.end method

.method public static synthetic N0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->f3()V

    return-void
.end method

.method public static synthetic N1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    return p0
.end method

.method public static synthetic O0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->n3()V

    return-void
.end method

.method public static synthetic O1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->drawInFront:Z

    return p0
.end method

.method public static synthetic P0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->o2()V

    return-void
.end method

.method public static synthetic P1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    return p1
.end method

.method public static synthetic Q0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->h2()V

    return-void
.end method

.method public static synthetic Q1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->m3()V

    return-void
.end method

.method public static synthetic R0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->k2()V

    return-void
.end method

.method public static synthetic R1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->k3()V

    return-void
.end method

.method public static synthetic S0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->m2()V

    return-void
.end method

.method public static synthetic S1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->W2()V

    return-void
.end method

.method public static synthetic T0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->v2()V

    return-void
.end method

.method public static synthetic T1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->g3()V

    return-void
.end method

.method public static synthetic U0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->s2()V

    return-void
.end method

.method public static synthetic U1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalSpriteIndex:I

    return p0
.end method

.method public static synthetic V0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->b3()V

    return-void
.end method

.method public static synthetic V1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalSpriteIndex:I

    return p1
.end method

.method public static synthetic W0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Z2()V

    return-void
.end method

.method public static synthetic W1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->h3()V

    return-void
.end method

.method private W2()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedo:LJAVARuntime/Texture;

    const/4 v1, 0x1

    const-string v2, "albedo"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedo:LJAVARuntime/Texture;

    sget-object v3, LQb/b;->g:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    const-string v4, "albedo"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/C0;

    invoke-direct {v0, p0}, Lqc/C0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic X0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->j3()V

    return-void
.end method

.method public static synthetic X1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)LMb/n;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessFallback:LMb/n;

    return-object p0
.end method

.method private X2()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->ao:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "ao"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->ao:LJAVARuntime/Texture;

    sget-object v3, LQb/b;->g:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoSpriteIndex:I

    const-string v4, "aoMap"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/y0;

    invoke-direct {v0, p0}, Lqc/y0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic Y0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->w2()V

    return-void
.end method

.method public static synthetic Y1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessSpriteIndex:I

    return p0
.end method

.method private Y2()V
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v6

    const-string v2, "baseColor"

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->Q(Ljava/lang/String;FFFF)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/w0;

    invoke-direct {v0, p0}, Lqc/w0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic Z0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->u2()V

    return-void
.end method

.method public static synthetic Z1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessSpriteIndex:I

    return p1
.end method

.method private Z2()V
    .locals 8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissive:LJAVARuntime/Texture;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveFallback:LMb/n;

    sget-object v4, LQb/b;->i:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v6

    iget v7, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveSpriteIndex:I

    const-string v5, "emissive"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->z0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/v0;

    invoke-direct {v0, p0}, Lqc/v0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic a1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->l3()V

    return-void
.end method

.method private a2()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()LGc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->localWindIntensity:F

    invoke-virtual {v0, v1}, LGc/h;->v(F)V

    :cond_0
    return-void
.end method

.method private a3()V
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

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveNits:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/x0;

    invoke-direct {v0, p0}, Lqc/x0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic b1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Y2()V

    return-void
.end method

.method private b2()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()LGc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->windVerticality:F

    invoke-virtual {v0, v1}, LGc/h;->w(F)V

    :cond_0
    return-void
.end method

.method private b3()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->height:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "height"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightActiveInShader:Z

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->height:LJAVARuntime/Texture;

    sget-object v3, LQb/b;->i:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightSpriteIndex:I

    const-string v4, "heightMap"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->d3()V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/d0;

    invoke-direct {v0, p0}, Lqc/d0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic c1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->b2()V

    return-void
.end method

.method private c2(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;
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

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$j;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$j;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    sget-object v4, LW5/b$a;->SLFloatWrap:LW5/b$a;

    const-string v5, "X"

    invoke-direct {v1, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    const/4 v3, 0x0

    aput-object v1, p1, v3

    iget-object p1, v2, LW5/b;->p:[LW5/b;

    new-instance v1, LW5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$k;

    invoke-direct {v3, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$k;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    const-string v5, "Y"

    invoke-direct {v1, v3, v5, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    const/4 v3, 0x1

    aput-object v1, p1, v3

    if-eqz p3, :cond_1

    iget-object p1, v2, LW5/b;->p:[LW5/b;

    new-instance v1, LW5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$b;

    invoke-direct {v4, p0, p2, p3, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LW5/b;)V

    const-string p2, "R"

    sget-object p3, LW5/b$a;->Button:LW5/b$a;

    invoke-direct {v1, v4, p2, p3}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-virtual {v1, v3}, LW5/b;->n(Z)LW5/b;

    move-result-object p2

    aput-object p2, p1, v0

    :cond_1
    return-object v2
.end method

.method private c3()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightActiveInShader:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const-string v2, "heightIntensity"

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/B0;

    invoke-direct {v0, p0}, Lqc/B0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic d1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->j2()V

    return-void
.end method

.method private d3()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightActiveInShader:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "heightNormalStrength"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightNormalStrength:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/F0;

    invoke-direct {v0, p0}, Lqc/F0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic e1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->i2()V

    return-void
.end method

.method private e3()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightActiveInShader:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Lgd/b;->w0(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Lgd/b;->M(FF)F

    move-result v1

    const-string v2, "heightMinLayers"

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    const/high16 v2, 0x42c00000    # 96.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Lgd/b;->w0(F)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2, v1}, Lgd/b;->M(FF)F

    move-result v1

    const-string v2, "heightMaxLayers"

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/c0;

    invoke-direct {v0, p0}, Lqc/c0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic f1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->h3()V

    return-void
.end method

.method private f3()V
    .locals 8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallic:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "metallic"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallic:LJAVARuntime/Texture;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicFallback:LMb/n;

    sget-object v4, LQb/b;->i:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v6

    iget v7, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicSpriteIndex:I

    const-string v5, "metallicMap"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->z0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/z0;

    invoke-direct {v0, p0}, Lqc/z0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic g1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->a2()V

    return-void
.end method

.method private g3()V
    .locals 0

    return-void
.end method

.method public static synthetic h1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->t2()V

    return-void
.end method

.method private h3()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normal:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "normal map"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->G0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->E0()LMb/p;

    move-result-object v2

    sget-object v3, LQb/b;->l:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalSpriteIndex:I

    const-string v4, "normalMap"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->B0(LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->i3()V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/D0;

    invoke-direct {v0, p0}, Lqc/D0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic i1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->q2()V

    return-void
.end method

.method private synthetic i2()V
    .locals 6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedo:LJAVARuntime/Texture;

    sget-object v2, LQb/b;->g:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    iget v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    const-string v3, "albedo"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    return-void
.end method

.method private i3()V
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

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalStrength:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/E0;

    invoke-direct {v0, p0}, Lqc/E0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic j1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->r2()V

    return-void
.end method

.method private j3()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacity:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "opacity"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacity:LJAVARuntime/Texture;

    sget-object v3, LQb/b;->g:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacitySpriteIndex:I

    const-string v4, "opacity"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/n0;

    invoke-direct {v0, p0}, Lqc/n0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic k1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->textureSourceOpen:Z

    return p0
.end method

.method private synthetic k2()V
    .locals 6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, v1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, v1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, v1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, v1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v5

    const-string v1, "baseColor"

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->Q(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public static synthetic l1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->textureSourceOpen:Z

    return p1
.end method

.method private synthetic l2()V
    .locals 7

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissive:LJAVARuntime/Texture;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveFallback:LMb/n;

    sget-object v3, LQb/b;->i:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveSpriteIndex:I

    const-string v4, "emissive"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->z0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    return-void
.end method

.method private l3()V
    .locals 8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughness:LJAVARuntime/Texture;

    const/4 v1, 0x0

    const-string v2, "roughness"

    invoke-super {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->S(LJAVARuntime/Texture;ZLjava/lang/String;)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughness:LJAVARuntime/Texture;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessFallback:LMb/n;

    sget-object v4, LQb/b;->i:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v6

    iget v7, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessSpriteIndex:I

    const-string v5, "roughnessMap"

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->z0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/A0;

    invoke-direct {v0, p0}, Lqc/A0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic m1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    return-object p0
.end method

.method private m3()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->albedoTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "albedoTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->albedoOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "albedoOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->normalTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "normalTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->normalOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "normalOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->roughnessTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "roughnessTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->roughnessOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "roughnessOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->metallicTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "metallicTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->metallicOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "metallicOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->aoTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "aoTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->aoOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "aoOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->heightTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "heightTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->heightOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "heightOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->emissiveTilling:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "emissiveTilling"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->emissiveOffset:LJAVARuntime/Vector2;

    iget-object v1, v1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const-string v3, "emissiveOffset"

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    return-void
.end method

.method public static synthetic n1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->l3()V

    return-void
.end method

.method private n3()V
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

    const-string v1, "worldUVScale"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->worldUVSize:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    new-instance v0, Lqc/u0;

    invoke-direct {v0, p0}, Lqc/u0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic o1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)LMb/n;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicFallback:LMb/n;

    return-object p0
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicSpriteIndex:I

    return p0
.end method

.method public static synthetic q1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicSpriteIndex:I

    return p1
.end method

.method public static synthetic r1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->f3()V

    return-void
.end method

.method public static synthetic s1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoSpriteIndex:I

    return p0
.end method

.method private synthetic s2()V
    .locals 6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->G0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->E0()LMb/p;

    move-result-object v1

    sget-object v2, LQb/b;->l:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    iget v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalSpriteIndex:I

    const-string v3, "normalMap"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->B0(LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->i3()V

    return-void
.end method

.method public static synthetic t1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoSpriteIndex:I

    return p1
.end method

.method private synthetic t2()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "normalStrength"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalStrength:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    return-void
.end method

.method public static synthetic u1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->X2()V

    return-void
.end method

.method private synthetic u2()V
    .locals 6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacity:LJAVARuntime/Texture;

    sget-object v2, LQb/b;->g:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    iget v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacitySpriteIndex:I

    const-string v3, "opacity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    return-void
.end method

.method public static synthetic v1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightSpriteIndex:I

    return p0
.end method

.method public static synthetic w1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightSpriteIndex:I

    return p1
.end method

.method public static synthetic x1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->b3()V

    return-void
.end method

.method private x2(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;Ljava/lang/String;)LJAVARuntime/Texture;
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

.method public static synthetic y1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)LMb/n;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveFallback:LMb/n;

    return-object p0
.end method

.method public static synthetic z1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveSpriteIndex:I

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
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->b(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

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

.method public A2(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ao"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->ao:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->ao:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->X2()V

    :cond_3
    return-void
.end method

.method public B2(Lxc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendingMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->blendingMode:Lxc/a;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->blendingMode:Lxc/a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public C2(LJAVARuntime/Color;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diffuse"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

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
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Y2()V

    :cond_1
    return-void
.end method

.method public D0()LJAVARuntime/Texture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedo:LJAVARuntime/Texture;

    return-object v0
.end method

.method public D2(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discardEdges"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->discardEdges:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->discardEdges:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public E2(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doubleSided"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->doubleSided:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->doubleSided:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public F0()LJAVARuntime/Texture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normal:LJAVARuntime/Texture;

    return-object v0
.end method

.method public F2(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawInFront"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->drawInFront:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->drawInFront:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public G2(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissive"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissive:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissive:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Z2()V

    :cond_3
    return-void
.end method

.method public H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;
    .locals 8
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

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->blendingMode:Lxc/a;

    new-instance v5, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$a;

    invoke-direct {v5, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v6, "blend"

    const-class v7, Lxc/a;

    invoke-static {v6, v7, v4, v5}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, LW5/b;

    new-instance v5, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$d;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLOR:LUc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, LW5/b$a;->Color:LW5/b$a;

    invoke-direct {v4, v5, v6, v7}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v5

    const-string v6, "diffuse"

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v4, v3, v5, v6, v7}, LW5/b;->f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, LW5/b;

    new-instance v5, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$e;

    invoke-direct {v5, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const p1, 0x7f0c00e2

    invoke-direct {v4, v5, p1, v1}, LW5/b;-><init>(LX5/e;ILjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$f;

    invoke-direct {p1, p0, v3, v2, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v1, "Height"

    invoke-static {v1, p1}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$g;

    invoke-direct {p1, p0, v3, v2, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v1, "Emissive"

    invoke-static {v1, p1}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$h;

    invoke-direct {p1, p0, v3, v2, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$h;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string p2, "Wind effect"

    invoke-static {p2, p1}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$i;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$i;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    const-string p2, "Others"

    invoke-static {p2, p1}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public H2(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissiveNits"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveNits:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveNits:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->a3()V

    :cond_1
    return-void
.end method

.method public I2(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->height:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->height:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->b3()V

    :cond_3
    return-void
.end method

.method public J2(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heightIntensity"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    cmpl-float v1, v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eq v0, v4, :cond_3

    move v2, v3

    :cond_3
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_4
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->c3()V

    :cond_5
    return-void
.end method

.method public K2(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heightNormalStrength"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightNormalStrength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightNormalStrength:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->d3()V

    :cond_1
    return-void
.end method

.method public L2(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heightQuality"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->e3()V

    :cond_1
    return-void
.end method

.method public M2(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localWindIntensity"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->localWindIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->localWindIntensity:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->a2()V

    :cond_1
    return-void
.end method

.method public N2(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metallic"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallic:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallic:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->f3()V

    :cond_3
    return-void
.end method

.method public O2(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normal:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normal:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->h3()V

    :cond_3
    return-void
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->drawInFront:Z

    return v0
.end method

.method public P2(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalStrength"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalStrength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalStrength:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->i3()V

    :cond_1
    return-void
.end method

.method public Q2(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opacity"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacity:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacityListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacity:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacityListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->j3()V

    :cond_3
    return-void
.end method

.method public R2(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roughness"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughness:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughness:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->l3()V

    :cond_3
    return-void
.end method

.method public S2(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedPreset"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$c;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public T2(Lvc/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uvSource"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uvSource:Lvc/e;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uvSource:Lvc/e;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public U2(F)V
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->windVerticality:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->windVerticality:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->b2()V

    :cond_1
    return-void
.end method

.method public V2(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "worldUVSize"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->worldUVSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->worldUVSize:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->n3()V

    :cond_1
    return-void
.end method

.method public W()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->y2(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Q2(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->O2(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->R2(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->A2(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->I2(LJAVARuntime/Texture;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->G2(LJAVARuntime/Texture;)V

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
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughness:LJAVARuntime/Texture;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->height:LJAVARuntime/Texture;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
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

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->textureSourceOpen:Z

    :cond_0
    const-string v0, "discardEdges"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->discardEdges:Z

    :cond_1
    const-string v0, "doubleSided"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->E2(Z)V

    :cond_2
    const-string v0, "drawInFront"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->F2(Z)V

    :cond_3
    const-string v0, "alphaCutout"

    const-string v1, "Float"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->alphaCutout:F

    :cond_4
    const-string v0, "emissiveNits"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->H2(F)V

    :cond_5
    const-string v0, "emissiveColor"

    const-string v2, "Color"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->c(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveFallback:LMb/n;

    invoke-virtual {v4, v3, v3, v0}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveFallback:LMb/n;

    invoke-virtual {v0}, LMb/n;->apply()V

    :cond_6
    const-string v0, "roughnessFallback"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessFallback:LMb/n;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {v4, v3, v3, v0}, LMb/n;->p0(IIF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessFallback:LMb/n;

    invoke-virtual {v0}, LMb/n;->apply()V

    :cond_7
    const-string v0, "metallicFallback"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicFallback:LMb/n;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {v4, v3, v3, v0}, LMb/n;->p0(IIF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicFallback:LMb/n;

    invoke-virtual {v0}, LMb/n;->apply()V

    :cond_8
    const-string v0, "diffuse"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->c(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->C2(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_9
    const-string v0, "color"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->c(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->C2(LJAVARuntime/Color;)V

    :cond_a
    :goto_0
    const-string v0, "albedo"

    const-string v2, "Texture"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->y2(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_b
    const-string v0, "texture"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->y2(LJAVARuntime/Texture;)V

    :cond_c
    :goto_1
    const-string v0, "albedoSpriteIndex"

    const-string v4, "Int"

    invoke-static {v0, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->W2()V

    :cond_d
    const-string v0, "opacity"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Q2(LJAVARuntime/Texture;)V

    :cond_e
    const-string v0, "opacitySpriteIndex"

    invoke-static {v0, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacitySpriteIndex:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->j3()V

    :cond_f
    const-string v0, "normalMap"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->O2(LJAVARuntime/Texture;)V

    :cond_10
    const-string v0, "normalSpriteIndex"

    invoke-static {v0, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalSpriteIndex:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->h3()V

    :cond_11
    const-string v0, "normalStrength"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalStrength:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->i3()V

    :cond_12
    const-string v0, "roughnessMap"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->R2(LJAVARuntime/Texture;)V

    :cond_13
    const-string v0, "roughnessSpriteIndex"

    invoke-static {v0, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessSpriteIndex:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->l3()V

    :cond_14
    const-string v0, "aoMap"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->A2(LJAVARuntime/Texture;)V

    goto :goto_2

    :cond_15
    const-string v0, "ao"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->A2(LJAVARuntime/Texture;)V

    :cond_16
    :goto_2
    const-string v0, "aoSpriteIndex"

    invoke-static {v0, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoSpriteIndex:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->X2()V

    :cond_17
    const-string v0, "metallicMap"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    :cond_18
    const-string v0, "metallicSpriteIndex"

    invoke-static {v0, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicSpriteIndex:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->f3()V

    :cond_19
    const-string v0, "heightMap"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->I2(LJAVARuntime/Texture;)V

    :cond_1a
    const-string v0, "heightSpriteIndex"

    invoke-static {v0, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightSpriteIndex:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->b3()V

    :cond_1b
    const-string v0, "emissive"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->G2(LJAVARuntime/Texture;)V

    :cond_1c
    const-string v0, "emissiveSpriteIndex"

    invoke-static {v0, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveSpriteIndex:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Z2()V

    :cond_1d
    const-string v0, "heightIntensity"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    :cond_1e
    const-string v0, "heightNormalStrength"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightNormalStrength:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->d3()V

    :cond_1f
    const-string v0, "heightQuality"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    :cond_20
    const-string v0, "localWindIntensity"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->M2(F)V

    :cond_21
    const-string v0, "windVerticality"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->U2(F)V

    :cond_22
    const-string v0, "materialID"

    invoke-static {v0, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m0(I)V

    :cond_23
    const-string v0, "uvSource"

    const-string v2, "String"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvc/e;->valueOf(Ljava/lang/String;)Lvc/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->T2(Lvc/e;)V

    :cond_24
    const-string v0, "blendingMode"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxc/a;->valueOf(Ljava/lang/String;)Lxc/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->B2(Lxc/a;)V

    :cond_25
    const-string v0, "uvSize"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->V2(F)V

    :cond_26
    const-string v0, "pbr-preset"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v1, "pbr-preset:"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@null@"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->S2(Ljava/lang/String;)V

    goto :goto_3

    :cond_27
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->S2(Ljava/lang/String;)V

    :cond_28
    :goto_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->noiseRefList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2a

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->noiseRefList:Ljava/util/List;

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

    if-eqz v1, :cond_29

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->fromJson(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    move-result-object v1

    iput-object v1, v0, Lqc/O1;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    iput-boolean v1, v0, Lqc/O1;->a:Z

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2a
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->g3()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->c(Ljava/util/List;)V

    return-void
.end method

.method public b0(Ljava/util/List;)V
    .locals 7
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

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->textureSourceOpen:Z

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "discardEdges"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->discardEdges:Z

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "doubleSided"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->doubleSided:Z

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "drawInFront"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->drawInFront:Z

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "alphaCutout"

    const-string v2, "Float"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->alphaCutout:F

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "roughnessFallback"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessFallback:LMb/n;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, LMb/n;->B(II)F

    move-result v3

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "metallicFallback"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicFallback:LMb/n;

    invoke-virtual {v3, v4, v4}, LMb/n;->B(II)F

    move-result v3

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "diffuse"

    const-string v3, "Color"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    iget-object v5, v5, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->m(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const-string v1, "emissiveColor"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveFallback:LMb/n;

    invoke-virtual {v3, v4, v4}, LMb/n;->v(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->m(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const-string v1, "albedo"

    const-string v3, "Texture"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedo:LJAVARuntime/Texture;

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "albedoSpriteIndex"

    const-string v5, "Int"

    invoke-static {v1, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    const-string v1, "opacity"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacity:LJAVARuntime/Texture;

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "opacitySpriteIndex"

    invoke-static {v1, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacitySpriteIndex:I

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    const-string v1, "normalMap"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normal:LJAVARuntime/Texture;

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "normalSpriteIndex"

    invoke-static {v1, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalSpriteIndex:I

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    const-string v1, "normalStrength"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalStrength:F

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "roughnessMap"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughness:LJAVARuntime/Texture;

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "roughnessSpriteIndex"

    invoke-static {v1, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessSpriteIndex:I

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    const-string v1, "aoMap"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->ao:LJAVARuntime/Texture;

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "aoSpriteIndex"

    invoke-static {v1, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoSpriteIndex:I

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    const-string v1, "emissiveNits"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveNits:F

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "metallicMap"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallic:LJAVARuntime/Texture;

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "metallicSpriteIndex"

    invoke-static {v1, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicSpriteIndex:I

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    const-string v1, "heightMap"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->height:LJAVARuntime/Texture;

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "heightSpriteIndex"

    invoke-static {v1, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightSpriteIndex:I

    invoke-static {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    const-string v1, "emissive"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissive:LJAVARuntime/Texture;

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "emissiveSpriteIndex"

    invoke-static {v1, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveSpriteIndex:I

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    const-string v1, "heightIntensity"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "heightNormalStrength"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightNormalStrength:F

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "heightQuality"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "localWindIntensity"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->localWindIntensity:F

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "windVerticality"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->windVerticality:F

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "materialID"

    invoke-static {v1, v5, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->K()I

    move-result v3

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    const-string v1, "uvSource"

    const-string v3, "String"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uvSource:Lvc/e;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    const-string v1, "blendingMode"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->blendingMode:Lxc/a;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    const-string v1, "uvSize"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->worldUVSize:F

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "pbr-preset"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pbr-preset:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "pbr-preset:@null@"

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->noiseRefList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->noiseRefList:Ljava/util/List;

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

    if-eqz v5, :cond_2

    iget-boolean v1, v1, Lqc/O1;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    invoke-virtual {v1, p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->d(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public d()Z
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->alphaCutout:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

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

.method public d2(Ljava/lang/String;)Lqc/O1;
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
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->noiseRefList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->noiseRefList:Ljava/util/List;

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

.method public e2()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    return v0
.end method

.method public f2()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->localWindIntensity:F

    return v0
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Y2()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->W2()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->j3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->h3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->l3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->f3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->X2()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Z2()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->a3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->b3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->c3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->e3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->n3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->a2()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->b2()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->m3()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->k3()V

    return-void
.end method

.method public g2()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->windVerticality:F

    return v0
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

    const-string v0, "windeffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->M2(F)V

    return-void

    :cond_0
    const-string v0, "windVerticality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->U2(F)V

    return-void

    :cond_1
    const-string v0, "roughness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessFallback:LMb/n;

    invoke-virtual {p1, v1, v1, p2}, LMb/n;->p0(IIF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessFallback:LMb/n;

    invoke-virtual {p1}, LMb/n;->apply()V

    return-void

    :cond_2
    const-string v0, "metallic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicFallback:LMb/n;

    invoke-virtual {p1, v1, v1, p2}, LMb/n;->p0(IIF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicFallback:LMb/n;

    invoke-virtual {p1}, LMb/n;->apply()V

    return-void

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->h0(Ljava/lang/String;F)V

    return-void
.end method

.method public final synthetic h2()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->C0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->G0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->h3()V

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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->a2()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->b2()V

    return-void
.end method

.method public final synthetic j2()V
    .locals 6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->ao:LJAVARuntime/Texture;

    sget-object v2, LQb/b;->g:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    iget v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoSpriteIndex:I

    const-string v3, "aoMap"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    return-void
.end method

.method public k(Lvc/b;)Ljava/util/List;
    .locals 30
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

    const/4 v1, 0x2

    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v4

    invoke-static {}, Lxc/a;->values()[Lxc/a;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    move v9, v3

    :goto_1
    if-ge v9, v1, :cond_5

    aget-boolean v18, v2, v9

    move v15, v3

    :goto_2
    if-ge v15, v1, :cond_4

    aget-boolean v19, v2, v15

    move v14, v3

    :goto_3
    if-ge v14, v1, :cond_3

    aget-boolean v13, v2, v14

    move v12, v3

    :goto_4
    if-ge v12, v1, :cond_2

    aget-boolean v11, v2, v12

    if-eqz v13, :cond_0

    new-array v10, v4, [Z

    aput-boolean v3, v10, v3

    goto :goto_5

    :cond_0
    move-object v10, v2

    :goto_5
    array-length v1, v10

    :goto_6
    if-ge v3, v1, :cond_1

    aget-boolean v4, v10, v3

    move/from16 v16, v15

    new-instance v15, Lxc/i;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v17

    sget-object v20, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    xor-int/lit8 v21, v19, 0x1

    xor-int/lit8 v22, v19, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    const/16 v24, 0x0

    move-object/from16 v25, v10

    move-object v10, v15

    move/from16 v26, v11

    move-object/from16 v11, v17

    move/from16 v27, v12

    move/from16 v12, v23

    move/from16 v28, v13

    move-object/from16 v13, v20

    move/from16 v20, v14

    move/from16 v14, v18

    move-object/from16 v29, v15

    move/from16 v23, v16

    move-object/from16 v15, v24

    move/from16 v16, v21

    move/from16 v17, v22

    invoke-direct/range {v10 .. v17}, Lxc/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    const-string v10, "hasHeight"

    move/from16 v11, v26

    move-object/from16 v12, v29

    invoke-virtual {v12, v10, v11}, Lxc/i;->j(Ljava/lang/String;Z)V

    const-string v10, "useWorldUV"

    move/from16 v13, v28

    invoke-virtual {v12, v10, v13}, Lxc/i;->j(Ljava/lang/String;Z)V

    const-string v10, "discardEdges"

    invoke-virtual {v12, v10, v4}, Lxc/i;->j(Ljava/lang/String;Z)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v14, v20

    move/from16 v15, v23

    move-object/from16 v10, v25

    move/from16 v12, v27

    const/4 v4, 0x1

    goto :goto_6

    :cond_1
    move/from16 v27, v12

    move/from16 v20, v14

    move/from16 v23, v15

    add-int/lit8 v12, v27, 0x1

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_4

    :cond_2
    move/from16 v20, v14

    move/from16 v23, v15

    add-int/lit8 v14, v20, 0x1

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_3
    move/from16 v23, v15

    add-int/lit8 v15, v23, 0x1

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public final k3()V
    .locals 10

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->activePreset:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->activePreset:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->C0()V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/_PROJECT/Gallery/Textures/PBR/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    const-string v2, "Albedo.jpg"

    const-string v3, "color.jpg"

    const-string v4, "BaseColor.jpg"

    const-string v5, "Color.jpg"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lg4/g;->D1(Ljava/lang/String;Z[Ljava/lang/String;)LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->y2(LJAVARuntime/Texture;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    const-string v8, "alpha.jpg"

    const-string v9, "alpha.png"

    const-string v2, "Opacity.jpg"

    const-string v3, "Opacity.png"

    const-string v4, "opacity.jpg"

    const-string v5, "opacity.png"

    const-string v6, "Alpha.jpg"

    const-string v7, "Alpha.png"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lg4/g;->D1(Ljava/lang/String;Z[Ljava/lang/String;)LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Q2(LJAVARuntime/Texture;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    const-string v2, "NormalGL.jpg"

    const-string v4, "normal.jpg"

    const-string v5, "Normal.jpg"

    filled-new-array {v5, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lg4/g;->D1(Ljava/lang/String;Z[Ljava/lang/String;)LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->O2(LJAVARuntime/Texture;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    const-string v2, "Roughness.jpg"

    const-string v4, "bmp.jpg"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lg4/g;->D1(Ljava/lang/String;Z[Ljava/lang/String;)LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->R2(LJAVARuntime/Texture;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    const-string v2, "AmbientOcclusion.jpg"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lg4/g;->D1(Ljava/lang/String;Z[Ljava/lang/String;)LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->A2(LJAVARuntime/Texture;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    const-string v2, "metalness.jpg"

    const-string v4, "metalness.png"

    const-string v5, "Metalness.jpg"

    const-string v6, "Metalness.png"

    filled-new-array {v5, v6, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lg4/g;->D1(Ljava/lang/String;Z[Ljava/lang/String;)LJAVARuntime/Texture;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    const-string v4, "metallic.jpg"

    const-string v5, "metallic.png"

    const-string v6, "Metallic.jpg"

    const-string v7, "Metallic.png"

    filled-new-array {v6, v7, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lg4/g;->D1(Ljava/lang/String;Z[Ljava/lang/String;)LJAVARuntime/Texture;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    const-string v2, "Emissive.jpg"

    const-string v4, "Emission.jpg"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lg4/g;->D1(Ljava/lang/String;Z[Ljava/lang/String;)LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->G2(LJAVARuntime/Texture;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->selectedPreset:Ljava/lang/String;

    const-string v2, "height.jpg"

    const-string v4, "displacement.jpg"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lg4/g;->D1(Ljava/lang/String;Z[Ljava/lang/String;)LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->I2(LJAVARuntime/Texture;)V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->C0()V

    move v0, v3

    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->noiseRefList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->noiseRefList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqc/O1;

    iput-boolean v3, v2, Lqc/O1;->a:Z

    iput-object v1, v2, Lqc/O1;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->c3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->e3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->n3()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->g3()V

    goto :goto_2

    :cond_4
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->activePreset:Ljava/lang/String;

    :cond_5
    :goto_2
    return-void
.end method

.method public l()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedo:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedo:LJAVARuntime/Texture;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacity:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacity:LJAVARuntime/Texture;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacitySpriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacitySpriteIndex:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->copy()LJAVARuntime/Color;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normal:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normal:LJAVARuntime/Texture;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalSpriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalSpriteIndex:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalStrength:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normalStrength:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughness:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughness:LJAVARuntime/Texture;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessSpriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessSpriteIndex:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallic:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallic:LJAVARuntime/Texture;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicSpriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicSpriteIndex:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->ao:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->ao:LJAVARuntime/Texture;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoSpriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->aoSpriteIndex:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissive:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissive:LJAVARuntime/Texture;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveSpriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveSpriteIndex:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveNits:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveNits:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->height:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->height:LJAVARuntime/Texture;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightSpriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightSpriteIndex:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->alphaCutout:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->alphaCutout:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightNormalStrength:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightNormalStrength:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->localWindIntensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->localWindIntensity:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->windVerticality:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->windVerticality:F

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->discardEdges:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->discardEdges:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->a()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->worldUVSize:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->worldUVSize:F

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->doubleSided:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->doubleSided:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->blendingMode:Lxc/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->blendingMode:Lxc/a;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->drawInFront:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->drawInFront:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->K()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m0(I)V

    return-object v0
.end method

.method public final synthetic m2()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "emissiveNits"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveNits:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    return-void
.end method

.method public final synthetic n2()V
    .locals 7

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightActiveInShader:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->height:LJAVARuntime/Texture;

    sget-object v3, LQb/b;->i:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightSpriteIndex:I

    const-string v4, "heightMap"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->d3()V

    :cond_0
    return-void
.end method

.method public final synthetic o2()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightActiveInShader:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "heightIntensity"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public final synthetic p2()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightActiveInShader:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "heightNormalStrength"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightNormalStrength:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    :cond_0
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

    if-nez v0, :cond_19

    const-string v0, "albedoMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "baseColorMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "texture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_10

    :cond_0
    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "opacityMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "alphaMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_e

    :cond_1
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "normalMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_c

    :cond_2
    const-string v0, "roughness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "roughnessMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_a

    :cond_3
    const-string v0, "metallic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "metallicMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_8

    :cond_4
    const-string v0, "metalness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "metalnessMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    const-string v0, "ao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "aoMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "heightMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "emissive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "emissiveMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->q0(Ljava/lang/String;LMb/p;)V

    return-void

    :cond_9
    :goto_0
    if-eqz p2, :cond_a

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->G2(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->G2(LJAVARuntime/Texture;)V

    :goto_1
    return-void

    :cond_b
    :goto_2
    if-eqz p2, :cond_c

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->I2(LJAVARuntime/Texture;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->I2(LJAVARuntime/Texture;)V

    :goto_3
    return-void

    :cond_d
    :goto_4
    if-eqz p2, :cond_e

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->A2(LJAVARuntime/Texture;)V

    goto :goto_5

    :cond_e
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->A2(LJAVARuntime/Texture;)V

    :goto_5
    return-void

    :cond_f
    :goto_6
    if-eqz p2, :cond_10

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    goto :goto_7

    :cond_10
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    :goto_7
    return-void

    :cond_11
    :goto_8
    if-eqz p2, :cond_12

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    goto :goto_9

    :cond_12
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    :goto_9
    return-void

    :cond_13
    :goto_a
    if-eqz p2, :cond_14

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->R2(LJAVARuntime/Texture;)V

    goto :goto_b

    :cond_14
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->R2(LJAVARuntime/Texture;)V

    :goto_b
    return-void

    :cond_15
    :goto_c
    if-eqz p2, :cond_16

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->O2(LJAVARuntime/Texture;)V

    goto :goto_d

    :cond_16
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->O2(LJAVARuntime/Texture;)V

    :goto_d
    return-void

    :cond_17
    :goto_e
    if-eqz p2, :cond_18

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Q2(LJAVARuntime/Texture;)V

    goto :goto_f

    :cond_18
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Q2(LJAVARuntime/Texture;)V

    :goto_f
    return-void

    :cond_19
    :goto_10
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->y2(LJAVARuntime/Texture;)V

    goto :goto_11

    :cond_1a
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->y2(LJAVARuntime/Texture;)V

    :goto_11
    return-void
.end method

.method public final synthetic q2()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightActiveInShader:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Lgd/b;->w0(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Lgd/b;->M(FF)F

    move-result v1

    const-string v2, "heightMinLayers"

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightQuality:F

    const/high16 v2, 0x42c00000    # 96.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Lgd/b;->w0(F)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2, v1}, Lgd/b;->M(FF)F

    move-result v1

    const-string v2, "heightMaxLayers"

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

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

    if-nez v0, :cond_a

    const-string v0, "normalMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "roughness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "roughnessMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, LQb/b;->g:LMb/p;

    return-object p1

    :cond_3
    const-string v0, "ao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "aoMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "heightMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "emissive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissiveFallback:LMb/n;

    return-object p1

    :cond_6
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->r(Ljava/lang/String;)LMb/p;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_0
    sget-object p1, LQb/b;->i:LMb/p;

    return-object p1

    :cond_8
    :goto_1
    sget-object p1, LQb/b;->g:LMb/p;

    return-object p1

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessFallback:LMb/n;

    return-object p1

    :cond_a
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

    if-nez v0, :cond_29

    const-string v0, "albedoMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "baseColorMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "texture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_10

    :cond_0
    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "opacityMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "alphaMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_e

    :cond_1
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "normalMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_c

    :cond_2
    const-string v0, "roughness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "roughnessMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_a

    :cond_3
    const-string v0, "metallic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "metallicMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_8

    :cond_4
    const-string v0, "metalness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "metalnessMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_6

    :cond_5
    const-string v0, "ao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "aoMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "heightMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "emissive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "emissiveMap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->r0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->emissive:LJAVARuntime/Texture;

    if-eqz p1, :cond_a

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_a

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->G2(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_b
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->G2(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_c
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->G2(LJAVARuntime/Texture;)V

    :goto_1
    return-void

    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->height:LJAVARuntime/Texture;

    if-eqz p1, :cond_e

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_e

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    :cond_e
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->I2(LJAVARuntime/Texture;)V

    goto :goto_3

    :cond_f
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->I2(LJAVARuntime/Texture;)V

    goto :goto_3

    :cond_10
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->I2(LJAVARuntime/Texture;)V

    :goto_3
    return-void

    :cond_11
    :goto_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->ao:LJAVARuntime/Texture;

    if-eqz p1, :cond_12

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_12

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    return-void

    :cond_12
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->A2(LJAVARuntime/Texture;)V

    goto :goto_5

    :cond_13
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->A2(LJAVARuntime/Texture;)V

    goto :goto_5

    :cond_14
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->A2(LJAVARuntime/Texture;)V

    :goto_5
    return-void

    :cond_15
    :goto_6
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallic:LJAVARuntime/Texture;

    if-eqz p1, :cond_16

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_16

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    return-void

    :cond_16
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    goto :goto_7

    :cond_17
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    goto :goto_7

    :cond_18
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    :goto_7
    return-void

    :cond_19
    :goto_8
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallic:LJAVARuntime/Texture;

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    goto :goto_9

    :cond_1b
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    goto :goto_9

    :cond_1c
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->N2(LJAVARuntime/Texture;)V

    :goto_9
    return-void

    :cond_1d
    :goto_a
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughness:LJAVARuntime/Texture;

    if-eqz p1, :cond_1e

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_1e

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    return-void

    :cond_1e
    if-eqz p2, :cond_20

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_20

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->R2(LJAVARuntime/Texture;)V

    goto :goto_b

    :cond_1f
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->R2(LJAVARuntime/Texture;)V

    goto :goto_b

    :cond_20
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->R2(LJAVARuntime/Texture;)V

    :goto_b
    return-void

    :cond_21
    :goto_c
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->normal:LJAVARuntime/Texture;

    if-eqz p1, :cond_22

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_22

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    return-void

    :cond_22
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_24

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->O2(LJAVARuntime/Texture;)V

    goto :goto_d

    :cond_23
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->O2(LJAVARuntime/Texture;)V

    goto :goto_d

    :cond_24
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->O2(LJAVARuntime/Texture;)V

    :goto_d
    return-void

    :cond_25
    :goto_e
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->opacity:LJAVARuntime/Texture;

    if-eqz p1, :cond_26

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_26

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    return-void

    :cond_26
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_28

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Q2(LJAVARuntime/Texture;)V

    goto :goto_f

    :cond_27
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Q2(LJAVARuntime/Texture;)V

    goto :goto_f

    :cond_28
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->Q2(LJAVARuntime/Texture;)V

    :goto_f
    return-void

    :cond_29
    :goto_10
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedo:LJAVARuntime/Texture;

    if-eqz p1, :cond_2a

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_2a

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    return-void

    :cond_2a
    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->y2(LJAVARuntime/Texture;)V

    goto :goto_11

    :cond_2b
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->y2(LJAVARuntime/Texture;)V

    goto :goto_11

    :cond_2c
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->y2(LJAVARuntime/Texture;)V

    :goto_11
    return-void
.end method

.method public final synthetic r2()V
    .locals 7

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallic:LJAVARuntime/Texture;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicFallback:LMb/n;

    sget-object v3, LQb/b;->i:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->metallicSpriteIndex:I

    const-string v4, "metallicMap"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->z0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

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

    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->localWindIntensity:F

    return p1

    :cond_0
    const-string v0, "windVerticality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->windVerticality:F

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
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder$UVs;->e(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->m3()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->v0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :goto_0
    return-void
.end method

.method public final synthetic v2()V
    .locals 7

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughness:LJAVARuntime/Texture;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessFallback:LMb/n;

    sget-object v3, LQb/b;->i:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->roughnessSpriteIndex:I

    const-string v4, "roughnessMap"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->z0(LJAVARuntime/Texture;LMb/p;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    return-void
.end method

.method public final synthetic w2()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "worldUVScale"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->worldUVSize:F

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    return-void
.end method

.method public x0(Lxc/i;Lvc/b;)Lxc/i;
    .locals 19
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->height:LJAVARuntime/Texture;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightIntensity:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->heightActiveInShader:Z

    iget-boolean v6, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->discardEdges:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uvSource:Lvc/e;

    sget-object v7, Lvc/e;->Vertex:Lvc/e;

    if-ne v6, v7, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uvSource:Lvc/e;

    sget-object v8, Lvc/e;->World:Lvc/e;

    if-ne v7, v8, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    const-string v9, "useWorldUV"

    invoke-virtual {v2, v9, v7}, Lvc/b;->m(Ljava/lang/String;Z)V

    const-string v7, "hasHeight"

    invoke-virtual {v2, v7, v3}, Lvc/b;->m(Ljava/lang/String;Z)V

    const-string v10, "discardEdges"

    invoke-virtual {v2, v10, v6}, Lvc/b;->m(Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Lxc/i;->a()Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->blendingMode:Lxc/a;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eq v2, v11, :cond_3

    move v2, v5

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lxc/i;->i()Z

    move-result v11

    iget-boolean v12, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->doubleSided:Z

    if-eq v11, v12, :cond_4

    move v2, v5

    :cond_4
    invoke-virtual {v1, v7}, Lxc/i;->b(Ljava/lang/String;)Z

    move-result v11

    if-eq v11, v3, :cond_5

    move v2, v5

    :cond_5
    invoke-virtual {v1, v9}, Lxc/i;->b(Ljava/lang/String;)Z

    move-result v11

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uvSource:Lvc/e;

    if-ne v12, v8, :cond_6

    move v12, v5

    goto :goto_4

    :cond_6
    move v12, v4

    :goto_4
    if-eq v11, v12, :cond_7

    move v2, v5

    :cond_7
    invoke-virtual {v1, v10}, Lxc/i;->b(Ljava/lang/String;)Z

    move-result v11

    if-eq v11, v6, :cond_8

    move v2, v5

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lxc/i;->g()Z

    move-result v11

    iget-boolean v12, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->drawInFront:Z

    if-ne v11, v12, :cond_9

    move v2, v5

    :cond_9
    if-eqz v2, :cond_b

    new-instance v1, Lxc/i;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->blendingMode:Lxc/a;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v12

    sget-object v14, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    iget-boolean v15, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->doubleSided:Z

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->drawInFront:Z

    xor-int/lit8 v17, v2, 0x1

    xor-int/lit8 v18, v2, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lxc/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    invoke-virtual {v1, v7, v3}, Lxc/i;->j(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->uvSource:Lvc/e;

    if-ne v2, v8, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {v1, v9, v4}, Lxc/i;->j(Ljava/lang/String;Z)V

    invoke-virtual {v1, v10, v6}, Lxc/i;->j(Ljava/lang/String;Z)V

    :cond_b
    return-object v1
.end method

.method public y2(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "albedo"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedo:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedo:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->W2()V

    invoke-static {}, Lc9/a;->q()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->C0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/BaseGeneratedTexturesShaderBinder;->G0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->h3()V

    goto :goto_1

    :cond_3
    new-instance p1, Lqc/t0;

    invoke-direct {p1, p0}, Lqc/t0;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public z2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "albedoSpriteIndex"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->albedoSpriteIndex:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRBinder;->W2()V

    :cond_1
    return-void
.end method
