.class public LN9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C:Z = false

.field public static final D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LN9/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:F

.field public B:F

.field public final a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

.field public final b:LP9/a;

.field public final c:I

.field public final d:I

.field public e:Z

.field public f:Z

.field public g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public h:Lkc/c;

.field public i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public volatile j:Z

.field public volatile k:Z

.field public volatile l:Z

.field public m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

.field public n:Ljava/nio/ByteBuffer;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public r:Z

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, LN9/c;->D:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(IILcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;LP9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureMapStartX",
            "textureMapStartY",
            "layer",
            "data"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LN9/c;->e:Z

    iput-boolean v0, p0, LN9/c;->f:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LN9/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LN9/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LN9/c;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p1, p0, LN9/c;->c:I

    iput p2, p0, LN9/c;->d:I

    iput-object p3, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    iput-object p4, p0, LN9/c;->b:LP9/a;

    return-void
.end method

.method public static synthetic a(LN9/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LN9/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b()Ljava/util/Set;
    .locals 1

    sget-object v0, LN9/c;->D:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic c(LN9/c;Z)Z
    .locals 0

    iput-boolean p1, p0, LN9/c;->l:Z

    return p1
.end method

.method public static synthetic d(LN9/c;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, LN9/c;->n:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic e(LN9/c;)I
    .locals 0

    iget p0, p0, LN9/c;->c:I

    return p0
.end method

.method public static synthetic f(LN9/c;)I
    .locals 0

    iget p0, p0, LN9/c;->d:I

    return p0
.end method

.method public static synthetic g(LN9/c;)LP9/a;
    .locals 0

    iget-object p0, p0, LN9/c;->b:LP9/a;

    return-object p0
.end method

.method public static synthetic h(LN9/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LN9/c;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic i(LN9/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LN9/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic j(LN9/c;Z)Z
    .locals 0

    iput-boolean p1, p0, LN9/c;->j:Z

    return p1
.end method

.method public static synthetic k(LN9/c;Z)Z
    .locals 0

    iput-boolean p1, p0, LN9/c;->k:Z

    return p1
.end method


# virtual methods
.method public l([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMatrix"
        }
    .end annotation

    iget-object v0, p0, LN9/c;->h:Lkc/c;

    if-eqz v0, :cond_0

    invoke-static {}, Ljc/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object v1, p0, LN9/c;->h:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    :cond_0
    return-void
.end method

.method public m(LN9/e;F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chunk",
            "maxHeight"
        }
    .end annotation

    invoke-virtual {p1}, LN9/e;->A()I

    move-result v0

    invoke-virtual {p1}, LN9/e;->x()F

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v0

    iget-boolean v3, p0, LN9/c;->r:Z

    if-eqz v3, :cond_0

    iget v3, p0, LN9/c;->s:F

    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v4, "uvStep"

    invoke-virtual {v3, v4, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput v0, p0, LN9/c;->s:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_1
    iget-boolean v0, p0, LN9/c;->r:Z

    if-eqz v0, :cond_2

    iget v0, p0, LN9/c;->t:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v3, "maxHeight"

    invoke-virtual {v0, v3, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput p2, p0, LN9/c;->t:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_3
    iget-object p2, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v0, "layer1Map"

    iget-object v3, p0, LN9/c;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {p2, v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->C(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    iget-object p2, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    const-string v0, "albedo1R"

    const-string v3, "nm1R"

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->c()LMb/g;

    move-result-object p2

    invoke-static {p2}, LMb/p;->Y(LMb/p;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v4, v0}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    const-string v0, "albedo"

    invoke-virtual {p0, p2, v1, v0}, LN9/c;->t(LMb/p;ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object p2, LQb/b;->g:LMb/p;

    iget-object v4, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v4, v0}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->n()LMb/g;

    move-result-object p2

    invoke-static {p2}, LMb/p;->Y(LMb/p;)Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "metallic1R"

    if-eqz v0, :cond_5

    iget-object v0, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v5}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    const-string v0, "metallic"

    invoke-virtual {p0, p2, v4, v0}, LN9/c;->t(LMb/p;ZLjava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object p2, LQb/b;->i:LMb/p;

    iget-object v0, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v5}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->i()LMb/g;

    move-result-object p2

    invoke-static {p2}, LMb/p;->Y(LMb/p;)Z

    move-result v0

    const-string v5, "enableHeight"

    const-string v6, "heightMap"

    const/4 v7, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->k()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_10

    iget-object v0, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v6}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    iget-boolean v0, p0, LN9/c;->r:Z

    if-eqz v0, :cond_6

    iget v0, p0, LN9/c;->u:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0, v5, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput v2, p0, LN9/c;->u:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_7
    iget-object v0, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->k()F

    move-result v0

    const v5, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v5

    iget-boolean v5, p0, LN9/c;->r:Z

    if-eqz v5, :cond_8

    iget v5, p0, LN9/c;->v:F

    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    iget-object v5, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v6, "heightIntensity"

    invoke-virtual {v5, v6, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput v0, p0, LN9/c;->v:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_9
    iget-object v0, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->l()F

    move-result v0

    iget-boolean v5, p0, LN9/c;->r:Z

    if-eqz v5, :cond_a

    iget v5, p0, LN9/c;->w:F

    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    iget-object v5, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v6, "heightNormalStrength"

    invoke-virtual {v5, v6, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput v0, p0, LN9/c;->w:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_b
    iget-object v0, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->m()F

    move-result v0

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v0, v5

    invoke-static {v0}, Lgd/b;->w0(F)F

    move-result v0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Lgd/b;->M(FF)F

    move-result v0

    iget-boolean v6, p0, LN9/c;->r:Z

    if-eqz v6, :cond_c

    iget v6, p0, LN9/c;->x:F

    invoke-static {v6, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    iget-object v6, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v7, "heightMinLayers"

    invoke-virtual {v6, v7, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput v0, p0, LN9/c;->x:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_d
    iget-object v0, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->m()F

    move-result v0

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v0, v6

    invoke-static {v0}, Lgd/b;->w0(F)F

    move-result v0

    invoke-static {v5, v0}, Lgd/b;->M(FF)F

    move-result v0

    iget-boolean v5, p0, LN9/c;->r:Z

    if-eqz v5, :cond_e

    iget v5, p0, LN9/c;->y:F

    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    iget-object v5, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v6, "heightMaxLayers"

    invoke-virtual {v5, v6, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput v0, p0, LN9/c;->y:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_f
    const-string v0, "height"

    invoke-virtual {p0, p2, v4, v0}, LN9/c;->t(LMb/p;ZLjava/lang/String;)V

    goto :goto_2

    :cond_10
    sget-object p2, LQb/b;->i:LMb/p;

    iget-object v0, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v6}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    iget-boolean p2, p0, LN9/c;->r:Z

    if-eqz p2, :cond_11

    iget p2, p0, LN9/c;->u:F

    invoke-static {p2, v7}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_12

    :cond_11
    iget-object p2, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v5, v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput v7, p0, LN9/c;->u:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_12
    :goto_2
    iget-object p2, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->f()LMb/p;

    move-result-object p2

    invoke-static {p2}, LMb/p;->Y(LMb/p;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v3}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    const-string v0, "normal map"

    invoke-virtual {p0, p2, v4, v0}, LN9/c;->t(LMb/p;ZLjava/lang/String;)V

    goto :goto_3

    :cond_13
    sget-object p2, LQb/b;->l:LMb/p;

    iget-object v0, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v3}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_3

    :cond_14
    sget-object p2, LQb/b;->k:LMb/p;

    iget-object v4, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v4, v0}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    sget-object p2, LQb/b;->l:LMb/p;

    iget-object v0, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, v3}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :goto_3
    iget-object p2, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    const-string v0, "layer1Specular"

    const-string v3, "layer1Roughness"

    const-string v4, "layer1Sizes"

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->s()F

    move-result p2

    div-float/2addr p1, p2

    iget-boolean p2, p0, LN9/c;->r:Z

    if-eqz p2, :cond_15

    iget p2, p0, LN9/c;->z:F

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_16

    :cond_15
    iget-object p2, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput p1, p0, LN9/c;->z:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_16
    iget-object p1, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->r()F

    move-result p1

    iget-boolean p2, p0, LN9/c;->r:Z

    if-eqz p2, :cond_17

    iget p2, p0, LN9/c;->A:F

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_18

    :cond_17
    iget-object p2, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput p1, p0, LN9/c;->A:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_18
    iget-object p1, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->t()F

    move-result p1

    iget-boolean p2, p0, LN9/c;->r:Z

    if-eqz p2, :cond_19

    iget p2, p0, LN9/c;->B:F

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_20

    :cond_19
    iget-object p2, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput p1, p0, LN9/c;->B:F

    iput-boolean v1, p0, LN9/c;->r:Z

    goto :goto_4

    :cond_1a
    div-float/2addr p1, v2

    iget-boolean p2, p0, LN9/c;->r:Z

    if-eqz p2, :cond_1b

    iget p2, p0, LN9/c;->z:F

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_1c

    :cond_1b
    iget-object p2, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p2, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput p1, p0, LN9/c;->z:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_1c
    iget-boolean p1, p0, LN9/c;->r:Z

    const p2, 0x3e99999a    # 0.3f

    if-eqz p1, :cond_1d

    iget p1, p0, LN9/c;->A:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_1e

    :cond_1d
    iget-object p1, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p1, v3, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput p2, p0, LN9/c;->A:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_1e
    iget-boolean p1, p0, LN9/c;->r:Z

    if-eqz p1, :cond_1f

    iget p1, p0, LN9/c;->B:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_20

    :cond_1f
    iget-object p1, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iput v2, p0, LN9/c;->B:F

    iput-boolean v1, p0, LN9/c;->r:Z

    :cond_20
    :goto_4
    return-void
.end method

.method public final n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/e;[F)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "vertex",
            "renderMatrix"
        }
    .end annotation

    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, v0, LN9/c;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v7, :cond_0

    new-instance v7, Lkc/c;

    invoke-direct {v7}, Lkc/c;-><init>()V

    iput-object v7, v0, LN9/c;->h:Lkc/c;

    invoke-virtual/range {p2 .. p2}, LR9/e;->g()Lcom/google/android/filament/Box;

    new-instance v15, Lcom/google/android/filament/Box;

    move-object/from16 v7, p1

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v7, v8

    new-array v10, v4, [F

    aput v3, v10, v6

    aput v9, v10, v5

    aput v3, v10, v2

    div-float/2addr v7, v8

    new-array v3, v4, [F

    aput v1, v3, v6

    aput v7, v3, v5

    aput v1, v3, v2

    invoke-direct {v15, v10, v3}, Lcom/google/android/filament/Box;-><init>([F[F)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v2, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v2, v5}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v2, v5}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/filament/RenderableManager$a;->v(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v9

    iget-object v10, v0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v11, v0, LN9/c;->h:Lkc/c;

    invoke-virtual/range {p2 .. p2}, LR9/e;->m()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, LR9/e;->i()Lkc/d;

    move-result-object v13

    sget-object v14, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lkc/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v1, v0, LN9/c;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    invoke-static {}, Ljc/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v1

    iget-object v2, v0, LN9/c;->h:Lkc/c;

    invoke-virtual {v2}, Lkc/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/TransformManager;->b(I)I

    iget-object v2, v0, LN9/c;->h:Lkc/c;

    invoke-virtual {v2}, Lkc/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v2

    move-object/from16 v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    :cond_0
    return-void
.end method

.method public final o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-boolean v0, p0, LN9/c;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LN9/c;->h:Lkc/c;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, LN9/c;->h:Lkc/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    iget-object p1, p0, LN9/c;->h:Lkc/c;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->z(Lkc/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, LN9/c;->h:Lkc/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, LN9/c;->f:Z

    :cond_0
    return-void
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, LN9/c;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, LN9/c;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    iget-object p1, p0, LN9/c;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, LN9/c;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object p1, p0, LN9/c;->h:Lkc/c;

    iput-object p1, p0, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 p1, 0x0

    iput-boolean p1, p0, LN9/c;->f:Z

    iput-boolean p1, p0, LN9/c;->r:Z

    return-void
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iget-object v0, p0, LN9/c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s()Z
    .locals 3

    iget-boolean v0, p0, LN9/c;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, LN9/c;->j:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, LN9/c;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, LN9/c;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->B()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, LN9/c;->l:Z

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, LN9/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, LN9/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, LN9/c;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public t(LMb/p;ZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "wantedGamma",
            "attached"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_2

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    if-eq v0, p2, :cond_2

    invoke-static {}, Ld5/d;->D1()V

    const-string v0, " Tap in file name here to open file in files panel!"

    const-string v1, " needs gamma correction toggle to be "

    const-string v2, " of terrain "

    const-string v3, "open:"

    const-string v4, " texture:"

    const-string v5, "41, 255, 8"

    const-string v6, "LINT: "

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v5}, Ld5/d;->G1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lmd/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ld5/d;->E1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ld5/d;->x2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lmd/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ld5/d;->p2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Ld5/d;->u2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld5/d;->t2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ld5/d;->x2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ld5/d;->x2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "activated"

    invoke-static {p1}, Ld5/d;->E1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in texture settings, gamma correction needs to be activated on albedo/emissive textures."

    invoke-static {p1}, Ld5/d;->x2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ld5/d;->x2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld5/d;->K1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v5}, Ld5/d;->G1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lmd/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ld5/d;->E1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ld5/d;->x2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lmd/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ld5/d;->p2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Ld5/d;->u2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld5/d;->t2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ld5/d;->x2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ld5/d;->x2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "deactivated"

    invoke-static {p1}, Ld5/d;->E1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in texture settings, only activate gamma correction to albedo/emissive textures."

    invoke-static {p1}, Ld5/d;->x2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ld5/d;->x2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ld5/d;->K1(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public u(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, LN9/c;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LN9/c;->e:Z

    return-void
.end method

.method public w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;[FLN9/e;ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "chunkSurface",
            "renderMatrix",
            "chunk",
            "layerIndex",
            "layerMapList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;",
            "LR9/n;",
            "LR9/e;",
            "[F",
            "LN9/e;",
            "I",
            "Ljava/util/List<",
            "LN9/c;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, LN9/c;->x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;[FLN9/e;ILjava/util/List;Z)V

    return-void
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;[FLN9/e;ILjava/util/List;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "chunkSurface",
            "renderMatrix",
            "chunk",
            "layerIndex",
            "layerMapList",
            "allowSceneAttach"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;",
            "LR9/n;",
            "LR9/e;",
            "[F",
            "LN9/e;",
            "I",
            "Ljava/util/List<",
            "LN9/c;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-static {}, LM9/b;->h()Lxc/e;

    move-result-object v4

    invoke-virtual {v4}, Lxc/e;->u()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    iput-object v4, v1, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-boolean v5, v1, LN9/c;->r:Z

    :cond_0
    iget-object v4, v1, LN9/c;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->getWidth()I

    move-result v4

    iget v7, v2, LR9/n;->c:I

    if-eq v4, v7, :cond_2

    :cond_1
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-boolean v5, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-virtual {v4, v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v14

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v10, v2, LR9/n;->c:I

    sget-object v11, Lcom/google/android/filament/Texture$e;->R:Lcom/google/android/filament/Texture$e;

    sget-object v12, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v2, Lcom/google/android/filament/Texture$b;

    invoke-direct {v2}, Lcom/google/android/filament/Texture$b;-><init>()V

    sget-object v7, Lcom/google/android/filament/Texture$f;->R8:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v2, v7}, Lcom/google/android/filament/Texture$b;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$b;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x8

    move-object v8, v4

    move v9, v10

    invoke-direct/range {v8 .. v16}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$b;Lcom/google/android/filament/TextureSampler;II)V

    iput-object v4, v1, LN9/c;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->getWidth()I

    move-result v2

    iget-object v4, v1, LN9/c;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->getWidth()I

    move-result v4

    mul-int/2addr v2, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, LN9/c;->n:Ljava/nio/ByteBuffer;

    iput-boolean v6, v1, LN9/c;->e:Z

    iput-boolean v5, v1, LN9/c;->k:Z

    iput-boolean v5, v1, LN9/c;->l:Z

    :cond_2
    iget-object v2, v1, LN9/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, LN9/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, LN9/c;->D:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    iget-object v4, v1, LN9/c;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, LN9/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, v1, LN9/c;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v7, v1, LN9/c;->n:Ljava/nio/ByteBuffer;

    new-instance v8, LN9/c$a;

    invoke-direct {v8, v1}, LN9/c$a;-><init>(LN9/c;)V

    invoke-virtual {v4, v7, v8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->v(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)V

    :cond_3
    iget-object v4, v1, LN9/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, v1, LN9/c;->e:Z

    if-eqz v4, :cond_4

    iget-object v4, v1, LN9/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v5, v1, LN9/c;->e:Z

    iget-object v4, v1, LN9/c;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->getWidth()I

    move-result v4

    iget-object v7, v1, LN9/c;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->getHeight()I

    move-result v7

    monitor-enter v2

    :try_start_1
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v2, LN9/c$b;

    invoke-direct {v2, v1, v7, v4}, LN9/c$b;-><init>(LN9/c;II)V

    invoke-static {v2}, Lga/b;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual/range {p3 .. p3}, LR9/e;->s()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v2, p4

    invoke-virtual {v1, v0, v3, v2}, LN9/c;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/e;[F)V

    :cond_5
    if-eqz p8, :cond_6

    iget-boolean v2, v1, LN9/c;->f:Z

    if-nez v2, :cond_6

    iget-object v2, v1, LN9/c;->h:Lkc/c;

    if-eqz v2, :cond_6

    iget-boolean v2, v1, LN9/c;->j:Z

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v2

    iget-object v3, v1, LN9/c;->h:Lkc/c;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->w(Lkc/c;)V

    iput-boolean v6, v1, LN9/c;->f:Z

    :cond_6
    iget-boolean v2, v1, LN9/c;->j:Z

    if-nez v2, :cond_7

    iget-boolean v2, v1, LN9/c;->f:Z

    if-eqz v2, :cond_7

    iget-object v2, v1, LN9/c;->h:Lkc/c;

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v2

    iget-object v3, v1, LN9/c;->h:Lkc/c;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V

    iput-boolean v5, v1, LN9/c;->f:Z

    :cond_7
    iget-boolean v2, v1, LN9/c;->j:Z

    if-eqz v2, :cond_a

    iget-object v2, v1, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v2, :cond_8

    iget-object v2, v1, LN9/c;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v2, :cond_8

    iget-object v2, v1, LN9/c;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->B()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    move-object/from16 v2, p5

    invoke-virtual {v1, v2, v0}, LN9/c;->m(LN9/e;F)V

    :cond_8
    iget-object v0, v1, LN9/c;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_9

    add-int/lit8 v2, p6, 0x1

    and-int/lit16 v2, v2, 0x7fff

    invoke-virtual {v0, v5, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGlobalBlendOrderEnabledAt(IZ)V

    iget-object v0, v1, LN9/c;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v0, v5, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBlendOrderAt(II)V

    :cond_9
    iget-object v0, v1, LN9/c;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v0, :cond_a

    add-int/lit8 v2, p6, 0x1

    int-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->W(FF)V

    :cond_a
    return-void
.end method

.method public y(LR9/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget-object v0, p0, LN9/c;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    invoke-virtual {p1}, LR9/e;->m()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v2

    invoke-virtual {p1}, LR9/e;->i()Lkc/d;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGeometryAt(ILcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;)V

    iget-object v0, p0, LN9/c;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p1}, LR9/e;->g()Lcom/google/android/filament/Box;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBounding(Lcom/google/android/filament/Box;)V

    :cond_0
    return-void
.end method
