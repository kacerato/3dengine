.class public LOb/i;
.super LOb/b;
.source "SourceFile"


# static fields
.field public static final A:I = 0x4

.field public static final B:I = 0x5

.field public static final C:[[F

.field public static final D:[[F

.field public static final E:[Lcom/google/android/filament/Texture$d;

.field public static final w:I = 0x0

.field public static final x:I = 0x1

.field public static final y:I = 0x2

.field public static final z:I = 0x3


# instance fields
.field public final b:I

.field public final c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

.field public final d:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

.field public final e:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

.field public final f:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

.field public final g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public k:Lkc/d;

.field public l:Lkc/c;

.field public m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxc/f;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxc/g;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Z

.field public final q:Ljava/lang/String;

.field public final r:I

.field public volatile s:Z

.field public volatile t:Z

.field public volatile u:Z

.field public v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v4, v0, [F

    fill-array-data v4, :array_3

    new-array v5, v0, [F

    fill-array-data v5, :array_4

    new-array v6, v0, [F

    fill-array-data v6, :array_5

    filled-new-array/range {v1 .. v6}, [[F

    move-result-object v1

    sput-object v1, LOb/i;->C:[[F

    new-array v2, v0, [F

    fill-array-data v2, :array_6

    new-array v3, v0, [F

    fill-array-data v3, :array_7

    new-array v4, v0, [F

    fill-array-data v4, :array_8

    new-array v5, v0, [F

    fill-array-data v5, :array_9

    new-array v6, v0, [F

    fill-array-data v6, :array_a

    new-array v7, v0, [F

    fill-array-data v7, :array_b

    filled-new-array/range {v2 .. v7}, [[F

    move-result-object v0

    sput-object v0, LOb/i;->D:[[F

    sget-object v1, Lcom/google/android/filament/Texture$d;->POSITIVE_X:Lcom/google/android/filament/Texture$d;

    sget-object v2, Lcom/google/android/filament/Texture$d;->NEGATIVE_X:Lcom/google/android/filament/Texture$d;

    sget-object v3, Lcom/google/android/filament/Texture$d;->POSITIVE_Y:Lcom/google/android/filament/Texture$d;

    sget-object v4, Lcom/google/android/filament/Texture$d;->NEGATIVE_Y:Lcom/google/android/filament/Texture$d;

    sget-object v5, Lcom/google/android/filament/Texture$d;->POSITIVE_Z:Lcom/google/android/filament/Texture$d;

    sget-object v6, Lcom/google/android/filament/Texture$d;->NEGATIVE_Z:Lcom/google/android/filament/Texture$d;

    filled-new-array/range {v1 .. v6}, [Lcom/google/android/filament/Texture$d;

    move-result-object v0

    sput-object v0, LOb/i;->E:[Lcom/google/android/filament/Texture$d;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "faceSize",
            "materialCode",
            "params",
            "samples",
            "gammaCorrection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lxc/f;",
            ">;",
            "Ljava/util/List<",
            "Lxc/g;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LOb/b;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    iput-object v1, p0, LOb/i;->d:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    new-array v1, v0, [Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    iput-object v1, p0, LOb/i;->e:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iput-object v0, p0, LOb/i;->f:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOb/i;->n:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LOb/i;->o:Ljava/util/List;

    iput p1, p0, LOb/i;->b:I

    iput-object p2, p0, LOb/i;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shadercubemap-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    iput p2, p0, LOb/i;->r:I

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean p5, p0, LOb/i;->p:Z

    new-instance p2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;-><init>()V

    iput-object p2, p0, LOb/i;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    if-eqz p5, :cond_0

    sget-object p2, Lcom/google/android/filament/Texture$f;->SRGB8_A8:Lcom/google/android/filament/Texture$f;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    :goto_0
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 p4, 0x0

    iput-boolean p4, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iput p4, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    sget-object p4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->G0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v6

    new-instance p3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    sget-object v3, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v4, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance p4, Lcom/google/android/filament/Texture$b;

    invoke-direct {p4}, Lcom/google/android/filament/Texture$b;-><init>()V

    invoke-virtual {p4, p2}, Lcom/google/android/filament/Texture$b;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$b;

    move-result-object v5

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/filament/Texture$i;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$i;

    const/4 v7, 0x0

    move-object v0, p3

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$b;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;)V

    iput-object p3, p0, LOb/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {p0, p3}, LOb/b;->b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    invoke-virtual {p0}, LOb/i;->e()V

    invoke-virtual {p0}, LOb/i;->g()V

    invoke-virtual {p0}, LOb/i;->j()V

    invoke-virtual {p0}, LOb/i;->i()V

    return-void
.end method

.method public static synthetic c(LOb/i;Z)Z
    .locals 0

    iput-boolean p1, p0, LOb/i;->u:Z

    return p1
.end method

.method public static synthetic d(LOb/i;)V
    .locals 0

    invoke-virtual {p0}, LOb/i;->j()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;-><init>()V

    iget-object v3, p0, LOb/i;->e:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    aput-object v2, v3, v1

    const/high16 v7, 0x40000000    # 2.0f

    sget-object v8, Lcom/google/android/filament/Camera$a;->VERTICAL:Lcom/google/android/filament/Camera$a;

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3dcccccd    # 0.1f

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->z(FFFFLcom/google/android/filament/Camera$a;)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>()V

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->J(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    iget-object v2, p0, LOb/i;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->O(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget v2, p0, LOb/i;->b:I

    invoke-virtual {v3, v0, v0, v2, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->P(IIII)V

    iget-object v2, p0, LOb/i;->f:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 6

    new-instance v0, Llc/b;

    invoke-direct {v0}, Llc/b;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShaderCubemapMaterial-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmd/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->u(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->w(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$u;->OBJECT:Lcom/google/android/filament/filamat/MaterialBuilder$u;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->U(Lcom/google/android/filament/filamat/MaterialBuilder$u;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    check-cast v0, Llc/b;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LOb/i;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, LOb/i;->n:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxc/f;

    invoke-virtual {v3}, Lxc/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v4

    invoke-virtual {v3}, Lxc/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v5

    invoke-virtual {v3}, Lxc/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v5, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->N(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, LOb/i;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LOb/i;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxc/g;

    invoke-virtual {v2}, Lxc/g;->d()Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v3

    invoke-virtual {v2}, Lxc/g;->a()Lcom/google/android/filament/filamat/MaterialBuilder$l;

    move-result-object v4

    invoke-virtual {v2}, Lxc/g;->c()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v5

    invoke-virtual {v2}, Lxc/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, LOb/i;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->q(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {v0}, Llc/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/filament/filamat/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, LOb/i;->r:I

    invoke-static {v1, v0}, Lxc/b;->l(ILjava/nio/ByteBuffer;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Falha ao compilar material do ShaderCubemap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/google/android/filament/RenderTarget$b;

    invoke-direct {v2}, Lcom/google/android/filament/RenderTarget$b;-><init>()V

    sget-object v3, Lcom/google/android/filament/RenderTarget$a;->COLOR:Lcom/google/android/filament/RenderTarget$a;

    iget-object v4, p0, LOb/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->A()Lcom/google/android/filament/Texture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lcom/google/android/filament/RenderTarget$b;->e(Lcom/google/android/filament/RenderTarget$a;I)Lcom/google/android/filament/RenderTarget$b;

    move-result-object v2

    sget-object v4, LOb/i;->E:[Lcom/google/android/filament/Texture$d;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/RenderTarget$b;->c(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture$d;)Lcom/google/android/filament/RenderTarget$b;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    iget-object v4, p0, LOb/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;-><init>(Lcom/google/android/filament/RenderTarget$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    iget-object v2, p0, LOb/i;->d:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    aput-object v3, v2, v1

    iget-object v2, p0, LOb/i;->f:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->M(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()V
    .locals 5

    iget-boolean v0, p0, LOb/i;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->F()V

    invoke-static {}, Ljc/a;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LOb/i;->v:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LOb/i;->f:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->R()V

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->J(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->O(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, LOb/i;->e:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v3, p0, LOb/i;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->s()Lkc/c;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, LOb/i;->l:Lkc/c;

    if-eqz v1, :cond_5

    :try_start_1
    iget-object v2, p0, LOb/i;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_5
    iget-object v1, p0, LOb/i;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    :cond_6
    iget-object v1, p0, LOb/i;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->destroyImmediate()V

    iput-object v4, p0, LOb/i;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    :cond_7
    iget-object v1, p0, LOb/i;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->destroyImmediate()V

    iput-object v4, p0, LOb/i;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    :cond_8
    iget-object v1, p0, LOb/i;->k:Lkc/d;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lkc/d;->destroyImmediate()V

    iput-object v4, p0, LOb/i;->k:Lkc/d;

    :cond_9
    move v1, v0

    :goto_2
    iget-object v2, p0, LOb/i;->e:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    array-length v3, v2

    if-ge v1, v3, :cond_b

    aget-object v2, v2, v1

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->destroyImmediate()V

    iget-object v2, p0, LOb/i;->e:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    aput-object v4, v2, v1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    move v1, v0

    :goto_3
    iget-object v2, p0, LOb/i;->d:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    array-length v3, v2

    if-ge v1, v3, :cond_d

    aget-object v2, v2, v1

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->destroyImmediate()V

    iget-object v2, p0, LOb/i;->d:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    aput-object v4, v2, v1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    move v1, v0

    :goto_4
    iget-object v2, p0, LOb/i;->f:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    array-length v3, v2

    if-ge v1, v3, :cond_f

    aget-object v2, v2, v1

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->destroyImmediate()V

    iget-object v2, p0, LOb/i;->f:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    aput-object v4, v2, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    iget-object v1, p0, LOb/i;->l:Lkc/c;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lkc/c;->destroyImmediate()V

    iput-object v4, p0, LOb/i;->l:Lkc/c;

    :cond_10
    :try_start_2
    iget-object v1, p0, LOb/i;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->destroyImmediate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    iget-object v1, p0, LOb/i;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->destroyImmediate()V

    iput-object v4, p0, LOb/i;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    iput-boolean v0, p0, LOb/i;->t:Z

    iput-boolean v0, p0, LOb/i;->s:Z

    return-void
.end method

.method public final i()V
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0x24

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, v0, LOb/i;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, LOb/i;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v4, :cond_1

    return-void

    :cond_1
    const/16 v4, 0x18

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    new-array v5, v1, [S

    fill-array-data v5, :array_1

    new-instance v6, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    new-instance v7, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v7}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v8

    sget-object v9, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v11, Lcom/google/android/filament/VertexBuffer$a;->FLOAT3:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v12, 0x0

    const/16 v13, 0xc

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    iput-object v6, v0, LOb/i;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    const/16 v6, 0x60

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, v0, LOb/i;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-virtual {v4, v3, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->s(ILjava/nio/ByteBuffer;)V

    new-instance v4, Lkc/d;

    new-instance v6, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v6}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    invoke-virtual {v6, v1}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v1

    sget-object v6, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    invoke-virtual {v1, v6}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v1

    invoke-direct {v4, v1}, Lkc/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    iput-object v4, v0, LOb/i;->k:Lkc/d;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    iget-object v4, v0, LOb/i;->k:Lkc/d;

    invoke-virtual {v4, v1}, Lkc/d;->s(Ljava/nio/ByteBuffer;)V

    new-instance v1, Lkc/c;

    invoke-direct {v1}, Lkc/c;-><init>()V

    iput-object v1, v0, LOb/i;->l:Lkc/c;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v4, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v4, v2}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v4, v3}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v5

    iget-object v6, v0, LOb/i;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v7, v0, LOb/i;->l:Lkc/c;

    iget-object v8, v0, LOb/i;->j:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v9, v0, LOb/i;->k:Lkc/d;

    sget-object v10, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    new-instance v2, Lcom/google/android/filament/Box;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lkc/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v1, v0, LOb/i;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v1, v0, LOb/i;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v2, v0, LOb/i;->l:Lkc/c;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->w(Lkc/c;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x4s
        0x6s
        0x7s
        0x0s
        0x3s
        0x7s
        0x0s
        0x7s
        0x4s
        0x1s
        0x5s
        0x6s
        0x1s
        0x6s
        0x2s
        0x0s
        0x1s
        0x5s
        0x0s
        0x5s
        0x4s
        0x3s
        0x2s
        0x6s
        0x3s
        0x6s
        0x7s
    .end array-data
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, LOb/i;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, LOb/i;->t:Z

    return-void

    :cond_0
    iget v0, p0, LOb/i;->r:I

    invoke-static {v0}, Lxc/b;->g(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance v3, Lcom/google/android/filament/Material$b;

    invoke-direct {v3}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    iput-object v2, p0, LOb/i;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;->r()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iput-object v0, p0, LOb/i;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-boolean v1, p0, LOb/i;->t:Z

    invoke-virtual {p0}, LOb/i;->i()V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
    .locals 1

    iget-object v0, p0, LOb/i;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    return-object v0
.end method

.method public l()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 1

    invoke-virtual {p0}, LOb/i;->j()V

    iget-object v0, p0, LOb/i;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, LOb/i;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LOb/i;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 1

    iget-boolean v0, p0, LOb/i;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LOb/i;->s:Z

    if-nez v0, :cond_3

    iget v0, p0, LOb/i;->r:I

    invoke-static {v0}, Lxc/b;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, LOb/i;->r:I

    invoke-static {v0}, Lxc/b;->j(I)Z

    :cond_1
    iget v0, p0, LOb/i;->r:I

    invoke-static {v0}, Lxc/b;->h(I)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, LOb/i;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_2
    :goto_0
    iget v0, p0, LOb/i;->r:I

    invoke-static {v0}, Lxc/b;->h(I)Z

    move-result v0

    iput-boolean v0, p0, LOb/i;->s:Z

    :cond_3
    iget-boolean v0, p0, LOb/i;->s:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LOb/i;->t:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, LOb/i;->u:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, LOb/i;->u:Z

    new-instance v0, LOb/i$a;

    invoke-direct {v0, p0}, LOb/i$a;-><init>(LOb/i;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public o()V
    .locals 6

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LOb/i;->q(FFFFF)V

    return-void
.end method

.method public p(FFF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cx",
            "cy",
            "cz"
        }
    .end annotation

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x40000000    # 2.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, LOb/i;->q(FFFFF)V

    return-void
.end method

.method public q(FFFFF)V
    .locals 32
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cx",
            "cy",
            "cz",
            "near",
            "far"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, LOb/i;->m()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    move v5, v3

    :goto_0
    const/4 v6, 0x6

    if-ge v5, v6, :cond_1

    iget-object v6, v0, LOb/i;->e:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    aget-object v7, v6, v5

    const/high16 v9, 0x3f800000    # 1.0f

    sget-object v12, Lcom/google/android/filament/Camera$a;->VERTICAL:Lcom/google/android/filament/Camera$a;

    const/high16 v8, 0x42b40000    # 90.0f

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v7 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->z(FFFFLcom/google/android/filament/Camera$a;)V

    add-int/2addr v5, v4

    goto :goto_0

    :cond_1
    new-array v5, v1, [F

    aput p1, v5, v3

    aput p2, v5, v4

    aput p3, v5, v2

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    sget-object v8, LOb/i;->C:[[F

    aget-object v8, v8, v7

    sget-object v9, LOb/i;->D:[[F

    aget-object v9, v9, v7

    aget v10, v8, v3

    add-float v10, p1, v10

    aget v11, v8, v4

    add-float v11, p2, v11

    aget v8, v8, v2

    add-float v8, p3, v8

    new-array v12, v1, [F

    aput v10, v12, v3

    aput v11, v12, v4

    aput v8, v12, v2

    iget-object v8, v0, LOb/i;->e:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    aget-object v13, v8, v7

    aget v8, v5, v3

    float-to-double v14, v8

    aget v8, v5, v4

    float-to-double v10, v8

    move-wide/from16 v16, v10

    aget v8, v5, v2

    float-to-double v10, v8

    move-wide/from16 v18, v10

    aget v8, v12, v3

    float-to-double v10, v8

    move-wide/from16 v20, v10

    aget v8, v12, v4

    float-to-double v10, v8

    move-wide/from16 v22, v10

    aget v8, v12, v2

    float-to-double v10, v8

    move-wide/from16 v24, v10

    aget v8, v9, v3

    float-to-double v10, v8

    move-wide/from16 v26, v10

    aget v8, v9, v4

    float-to-double v10, v8

    move-wide/from16 v28, v10

    aget v8, v9, v2

    float-to-double v8, v8

    move-wide/from16 v30, v8

    invoke-virtual/range {v13 .. v31}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->v(DDDDDDDDD)V

    iget-object v8, v0, LOb/i;->f:[Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    aget-object v8, v8, v7

    invoke-static {v8}, Ljc/a;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    add-int/2addr v7, v4

    goto :goto_1

    :cond_2
    return-void
.end method
