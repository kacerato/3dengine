.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;
.super Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/s;


# static fields
.field public static final f:Ljava/lang/String; = "RawGradient"

.field public static final g:I = 0x100


# instance fields
.field public transient c:LMb/n;

.field public transient d:I

.field public final e:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

.field public gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/p;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/q;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->d:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    const-string v1, "Gradient"

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->e:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->A()V

    const-string v0, "RawGradient"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final H()I
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    const/16 v1, 0x11

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->w()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->v(I)Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    move-result-object v4

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v4

    mul-int/lit8 v1, v1, 0x1f

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final I()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->c:LMb/n;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    new-instance v2, LMb/n;

    const/16 v3, 0x100

    invoke-direct {v2, v3, v1, v0, v1}, LMb/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->c:LMb/n;

    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sgp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^A-Za-z0-9_]"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final K()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->A()V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->I()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->H()I

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->d:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->d:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_2

    int-to-float v3, v2

    const/16 v4, 0xff

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->gradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v4, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->y(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    rsub-int v3, v2, 0xff

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->c:LMb/n;

    invoke-virtual {v4, v3, v1, v0}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->c:LMb/n;

    invoke-virtual {v0}, LMb/n;->apply()V

    return-void
.end method

.method public a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "engineMaterial"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->K()V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->c:LMb/n;

    invoke-static {p2}, LMb/p;->Y(LMb/p;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->c:LMb/n;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, LMb/n;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p2, LQb/b;->i:LMb/p;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "stage"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->J()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lxc/g;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-direct {v1, v2, v3, v4, v0}, Lxc/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->i(Lxc/g;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "materialParams_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p0

    move-object v6, p2

    invoke-interface/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    return-void
.end method

.method public q()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;->e:[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    return-object v0
.end method

.method public u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->BOTH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    return-object v0
.end method

.method public v(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const-string p1, "Color Gradient"

    return-object p1
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
