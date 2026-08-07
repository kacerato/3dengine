.class public LN9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public c:Lkc/c;

.field public d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LN9/d;->a:Z

    return-void
.end method

.method public static synthetic a(LN9/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0

    invoke-virtual {p0, p1}, LN9/d;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public static synthetic b(LN9/d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
    .locals 0

    iget-object p0, p0, LN9/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    return-object p0
.end method

.method public static synthetic c(LN9/d;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
    .locals 0

    iput-object p1, p0, LN9/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    return-object p1
.end method

.method public static synthetic d(LN9/d;Lkc/c;)Lkc/c;
    .locals 0

    iput-object p1, p0, LN9/d;->c:Lkc/c;

    return-object p1
.end method

.method public static synthetic e(LN9/d;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 0

    iput-object p1, p0, LN9/d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object p1
.end method

.method public static synthetic f(LN9/d;Z)Z
    .locals 0

    iput-boolean p1, p0, LN9/d;->a:Z

    return p1
.end method


# virtual methods
.method public g([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMatrix"
        }
    .end annotation

    iget-object v0, p0, LN9/d;->c:Lkc/c;

    if-eqz v0, :cond_0

    invoke-static {}, Ljc/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object v1, p0, LN9/d;->c:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    :cond_0
    return-void
.end method

.method public final h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/e;[F)V
    .locals 15
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

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v6, v0, LN9/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v6, :cond_0

    new-instance v6, Lkc/c;

    invoke-direct {v6}, Lkc/c;-><init>()V

    iput-object v6, v0, LN9/d;->c:Lkc/c;

    invoke-virtual/range {p2 .. p2}, LR9/e;->g()Lcom/google/android/filament/Box;

    move-result-object v6

    new-instance v14, Lcom/google/android/filament/Box;

    invoke-virtual {v6}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v7

    aget v7, v7, v5

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v6}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v10

    aget v10, v10, v4

    new-array v11, v2, [F

    aput v7, v11, v5

    aput v8, v11, v3

    aput v10, v11, v4

    invoke-virtual {v6}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v7

    aget v7, v7, v5

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    div-float/2addr v1, v9

    invoke-virtual {v6}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v6

    aget v6, v6, v4

    new-array v2, v2, [F

    aput v7, v2, v5

    aput v1, v2, v3

    aput v6, v2, v4

    invoke-direct {v14, v11, v2}, Lcom/google/android/filament/Box;-><init>([F[F)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v2, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v2, v3}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/filament/RenderableManager$a;->v(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v8

    iget-object v9, v0, LN9/d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v10, v0, LN9/d;->c:Lkc/c;

    invoke-virtual/range {p2 .. p2}, LR9/e;->m()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, LR9/e;->i()Lkc/d;

    move-result-object v12

    sget-object v13, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lkc/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v1, v0, LN9/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-static {}, Ljc/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v1

    iget-object v2, v0, LN9/d;->c:Lkc/c;

    invoke-virtual {v2}, Lkc/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/TransformManager;->b(I)I

    iget-object v2, v0, LN9/d;->c:Lkc/c;

    invoke-virtual {v2}, Lkc/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v2

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v4}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    iget-object v1, v0, LN9/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGlobalBlendOrderEnabledAt(IZ)V

    iget-object v1, v0, LN9/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1, v5, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBlendOrderAt(II)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-boolean v0, p0, LN9/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LN9/d;->c:Lkc/c;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, LN9/d;->c:Lkc/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    iget-object p1, p0, LN9/d;->c:Lkc/c;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->z(Lkc/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, LN9/d;->c:Lkc/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, LN9/d;->a:Z

    :cond_0
    return-void
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, LN9/d;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    new-instance v0, LN9/d$a;

    invoke-direct {v0, p0, p1}, LN9/d$a;-><init>(LN9/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, LN9/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, LN9/d;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;[FLN9/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "chunk"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, LN9/d;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;[FLN9/e;Z)V

    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;[FLN9/e;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "allowSceneAttach"
        }
    .end annotation

    iget-object p2, p0, LN9/d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez p2, :cond_0

    invoke-static {}, LM9/b;->f()Lxc/e;

    move-result-object p2

    invoke-virtual {p2}, Lxc/e;->u()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object p2

    iput-object p2, p0, LN9/d;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/high16 p5, -0x40800000    # -1.0f

    const/4 v0, 0x0

    int-to-float v0, v0

    mul-float/2addr v0, p5

    const/4 p5, 0x0

    invoke-virtual {p2, p5, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->W(FF)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, LR9/e;->s()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p3, p4}, LN9/d;->h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/e;[F)V

    :cond_1
    if-eqz p6, :cond_2

    iget-boolean p2, p0, LN9/d;->a:Z

    if-nez p2, :cond_2

    iget-object p2, p0, LN9/d;->c:Lkc/c;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object p2, p0, LN9/d;->c:Lkc/c;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->w(Lkc/c;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LN9/d;->a:Z

    :cond_2
    return-void
.end method

.method public p(LR9/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget-object v0, p0, LN9/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    invoke-virtual {p1}, LR9/e;->m()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v2

    invoke-virtual {p1}, LR9/e;->i()Lkc/d;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGeometryAt(ILcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;)V

    iget-object v0, p0, LN9/d;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p1}, LR9/e;->g()Lcom/google/android/filament/Box;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBounding(Lcom/google/android/filament/Box;)V

    :cond_0
    return-void
.end method
