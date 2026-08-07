.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;
    }
.end annotation


# static fields
.field public static final x:I = 0x80


# instance fields
.field public a:Lkc/c;

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public d:LR9/e;

.field public e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public f:Lkc/d;

.field public g:LMb/p;

.field public final h:[F

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

.field public w:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->h:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->j:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->k:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->l:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->m:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->n:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->o:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->p:F

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->q:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->r:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->s:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->t:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->u:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->w:Z

    return-void
.end method

.method public static synthetic a([FIII)F
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->i([FIII)F

    move-result p0

    return p0
.end method

.method public static synthetic i([FIII)F
    .locals 0

    mul-int/2addr p2, p1

    add-int/2addr p2, p3

    aget p0, p0, p2

    return p0
.end method


# virtual methods
.method public final b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lg9/a;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;IFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;Z)[F
    .locals 24
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
            "brush",
            "bounds",
            "resolution",
            "brushIntensity",
            "levelHeight",
            "viewMode",
            "lower"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p7

    mul-int v4, v2, v2

    new-array v4, v4, [F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()LR9/f;

    move-result-object v5

    if-nez v5, :cond_0

    return-object v4

    :cond_0
    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->c:I

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->a:I

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->d:I

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->b:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->resolution:I

    sub-int/2addr v9, v7

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v9

    const v9, 0x3dcccccd    # 0.1f

    mul-float v9, v9, p5

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v11, v11, p5

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    const/4 v13, 0x0

    cmpl-float v14, v12, v13

    if-lez v14, :cond_1

    div-float/2addr v9, v12

    goto :goto_0

    :cond_1
    move v9, v13

    :goto_0
    cmpl-float v14, v12, v13

    if-lez v14, :cond_2

    div-float v12, v11, v12

    goto :goto_1

    :cond_2
    move v12, v13

    :goto_1
    invoke-static {v12}, Lgd/b;->I(F)F

    move-result v12

    iget v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    cmpl-float v15, v14, v13

    if-lez v15, :cond_3

    div-float/2addr v11, v14

    goto :goto_2

    :cond_3
    move v11, v13

    :goto_2
    invoke-static {v11}, Lgd/b;->I(F)F

    move-result v11

    iget v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    cmpl-float v15, v14, v13

    if-lez v15, :cond_4

    div-float v14, p6, v14

    goto :goto_3

    :cond_4
    move v14, v13

    :goto_3
    invoke-static {v14}, Lgd/b;->I(F)F

    move-result v14

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->g:F

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    div-float/2addr v15, v13

    new-instance v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$a;

    move-object/from16 v7, p0

    invoke-direct {v13, v7, v0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/f;)V

    const/16 v16, 0x0

    move/from16 v7, v16

    :goto_4
    if-ge v7, v2, :cond_f

    move-object/from16 v17, v4

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    int-to-float v4, v7

    move/from16 p6, v7

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    div-float/2addr v4, v7

    goto :goto_5

    :cond_5
    move/from16 p6, v7

    const/4 v4, 0x0

    :goto_5
    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->a:I

    move/from16 v18, v14

    int-to-float v14, v6

    mul-float/2addr v4, v14

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v7, v4

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->a:I

    if-ge v7, v4, :cond_6

    move v7, v4

    :cond_6
    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->c:I

    add-int/lit8 v14, v4, -0x1

    if-le v7, v14, :cond_7

    add-int/lit8 v7, v4, -0x1

    :cond_7
    int-to-float v4, v7

    mul-float/2addr v4, v10

    iget v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    mul-float/2addr v14, v4

    move/from16 v19, v6

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->e:F

    sub-float/2addr v14, v6

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->g:F

    div-float/2addr v14, v6

    invoke-static {v14}, Lgd/b;->I(F)F

    move-result v6

    move/from16 v14, v16

    :goto_6
    if-ge v14, v2, :cond_e

    move/from16 v20, v11

    const/4 v11, 0x1

    if-le v2, v11, :cond_8

    int-to-float v11, v14

    move/from16 v21, v14

    add-int/lit8 v14, v2, -0x1

    int-to-float v14, v14

    div-float/2addr v11, v14

    goto :goto_7

    :cond_8
    move/from16 v21, v14

    const/4 v11, 0x0

    :goto_7
    iget v14, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->b:I

    int-to-float v2, v8

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v14, v2

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->b:I

    if-ge v14, v2, :cond_9

    move v14, v2

    :cond_9
    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->d:I

    add-int/lit8 v11, v2, -0x1

    if-le v14, v11, :cond_a

    add-int/lit8 v14, v2, -0x1

    :cond_a
    int-to-float v2, v14

    mul-float/2addr v2, v10

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    mul-float/2addr v11, v2

    iget v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->f:F

    sub-float/2addr v11, v0

    iget v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->g:F

    div-float/2addr v11, v0

    invoke-static {v11}, Lgd/b;->I(F)F

    move-result v0

    move-object/from16 v11, p2

    invoke-virtual {v11, v6, v0}, Lg9/a;->c(FF)F

    move-result v0

    invoke-virtual {v5, v7, v14}, LR9/f;->f(II)F

    move-result v14

    const/16 v22, 0x0

    cmpl-float v23, v0, v22

    if-lez v23, :cond_b

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Raise:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    if-ne v3, v1, :cond_c

    mul-float/2addr v0, v9

    add-float/2addr v14, v0

    invoke-static {v14}, Lgd/b;->I(F)F

    move-result v14

    :cond_b
    :goto_8
    move/from16 v1, v18

    goto :goto_9

    :cond_c
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Smooth:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    if-ne v3, v1, :cond_d

    invoke-static {v4, v2, v15, v13}, Lcd/b;->b(FFFLcd/a;)F

    move-result v1

    mul-float/2addr v0, v12

    invoke-static {v14, v1, v0}, Lgd/b;->z(FFF)F

    move-result v14

    goto :goto_8

    :cond_d
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Level:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    if-ne v3, v1, :cond_b

    mul-float v0, v0, v20

    move/from16 v1, v18

    invoke-static {v14, v1, v0}, Lgd/b;->z(FFF)F

    move-result v14

    :goto_9
    mul-int v0, p6, p4

    add-int v0, v0, v21

    invoke-static {v14}, Lgd/b;->I(F)F

    move-result v2

    aput v2, v17, v0

    add-int/lit8 v14, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v2, p4

    move/from16 v18, v1

    move/from16 v11, v20

    move-object/from16 v1, p3

    goto/16 :goto_6

    :cond_e
    move/from16 v20, v11

    move/from16 v1, v18

    const/16 v22, 0x0

    move-object/from16 v11, p2

    add-int/lit8 v7, p6, 0x1

    move-object/from16 v0, p1

    move/from16 v2, p4

    move v14, v1

    move-object/from16 v4, v17

    move/from16 v6, v19

    move/from16 v11, v20

    move-object/from16 v1, p3

    goto/16 :goto_4

    :cond_f
    move-object/from16 v17, v4

    return-object v17
.end method

.method public final c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v7, :cond_5

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    if-nez v7, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, LM9/b;->d()Lxc/e;

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    :cond_1
    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    invoke-virtual {v7}, LR9/e;->s()Z

    move-result v7

    if-nez v7, :cond_2

    return-void

    :cond_2
    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    invoke-virtual {v7}, LR9/e;->m()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v12

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    invoke-virtual {v7}, LR9/e;->i()Lkc/d;

    move-result-object v13

    if-eqz v12, :cond_5

    if-nez v13, :cond_3

    goto :goto_0

    :cond_3
    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    if-nez v7, :cond_4

    new-instance v7, Lkc/c;

    invoke-direct {v7}, Lkc/c;-><init>()V

    iput-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    :cond_4
    invoke-static {}, LM9/b;->d()Lxc/e;

    move-result-object v7

    invoke-virtual {v7}, Lxc/e;->u()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v7

    iput-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

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

    invoke-virtual {v2, v6}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/filament/RenderableManager$a;->v(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v9

    iget-object v10, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    sget-object v14, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lkc/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1, v6, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGlobalBlendOrderEnabledAt(IZ)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1, v6, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBlendOrderAt(II)V

    invoke-static {}, Ljc/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    invoke-virtual {v2}, Lkc/c;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/TransformManager;->b(I)I

    :cond_5
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->k:Z

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->f()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkc/c;->destroyImmediate()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    :cond_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->f:Lkc/d;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->g:LMb/p;

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LR9/e;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    :cond_0
    return-void
.end method

.method public final g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->j:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->w(Lkc/c;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->j:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->j:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->m:Z

    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LR9/e;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    invoke-virtual {v0}, LR9/e;->m()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    invoke-virtual {v1}, LR9/e;->i()Lkc/d;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->f:Lkc/d;

    if-eq v1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    sget-object v3, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGeometryAt(ILcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    invoke-virtual {v3}, LR9/e;->g()Lcom/google/android/filament/Box;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBounding(Lcom/google/android/filament/Box;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->f:Lkc/d;

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->l:Z

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->m:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->g:LMb/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LMb/p;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->g:LMb/p;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v2, "brushMap"

    invoke-virtual {v0, v1, v2}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lg9/a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;Z)V
    .locals 15
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
            "brush",
            "brushLocation",
            "brushSize",
            "brushIntensity",
            "levelHeight",
            "viewMode",
            "lower"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    move/from16 v2, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    const/4 v10, 0x0

    if-eqz v1, :cond_c

    if-eqz p2, :cond_c

    if-eqz v0, :cond_c

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()LR9/f;

    move-result-object v3

    if-nez v3, :cond_1

    iput-boolean v10, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->k:Z

    return-void

    :cond_1
    invoke-static {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;

    move-result-object v3

    if-nez v3, :cond_2

    iput-boolean v10, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->k:Z

    return-void

    :cond_2
    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v5, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->o:F

    cmpl-float v4, v4, v5

    const/4 v11, 0x1

    if-nez v4, :cond_3

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v5, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->p:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    move v4, v11

    goto :goto_0

    :cond_3
    move v4, v10

    :goto_0
    iget v5, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->q:F

    cmpl-float v5, v2, v5

    if-nez v5, :cond_4

    move v5, v11

    goto :goto_1

    :cond_4
    move v5, v10

    :goto_1
    iget v12, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->u:F

    cmpl-float v12, v6, v12

    if-nez v12, :cond_5

    move v12, v11

    goto :goto_2

    :cond_5
    move v12, v10

    :goto_2
    iget-object v13, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    if-ne v7, v13, :cond_6

    move v13, v11

    goto :goto_3

    :cond_6
    move v13, v10

    :goto_3
    iget-boolean v14, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->w:Z

    if-ne v8, v14, :cond_7

    move v14, v11

    goto :goto_4

    :cond_7
    move v14, v10

    :goto_4
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    if-eqz v14, :cond_8

    move/from16 v5, p5

    move v4, v11

    goto :goto_5

    :cond_8
    move/from16 v5, p5

    move v4, v10

    :goto_5
    iput v5, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->n:F

    invoke-virtual/range {p2 .. p2}, Lg9/a;->f()LMb/p;

    move-result-object v12

    iput-object v12, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->g:LMb/p;

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iput v12, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->o:F

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iput v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->p:F

    iput v2, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->q:F

    iget v0, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->e:F

    iput v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->r:F

    iget v0, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->f:F

    iput v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->s:F

    iget v0, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->g:F

    iput v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->t:F

    iput v6, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->u:F

    iput-object v7, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->v:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    iput-boolean v8, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->w:Z

    if-eqz v4, :cond_9

    iget-object v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    if-eqz v0, :cond_9

    iput-boolean v11, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->k:Z

    return-void

    :cond_9
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->b()I

    move-result v12

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v12

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lg9/a;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;IFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;Z)[F

    move-result-object v0

    new-instance v1, LM9/a;

    invoke-direct {v1, v0, v12}, LM9/a;-><init>([FI)V

    iget-object v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    if-eqz v0, :cond_a

    iget v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->i:I

    if-eq v0, v12, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->f()V

    new-instance v0, LR9/e;

    invoke-direct {v0, v12, v1, v10}, LR9/e;-><init>(ILR9/i;Z)V

    iput-object v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    iput v12, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->i:I

    iput-boolean v11, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->l:Z

    invoke-virtual {v0}, LR9/e;->m()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    iput-object v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    invoke-virtual {v0}, LR9/e;->i()Lkc/d;

    move-result-object v0

    iput-object v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->f:Lkc/d;

    :cond_b
    iget-object v0, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    invoke-virtual {v0, v1}, LR9/e;->y(LR9/i;)V

    iput-boolean v11, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->k:Z

    iput-boolean v11, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->m:Z

    return-void

    :cond_c
    :goto_6
    iput-boolean v10, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->k:Z

    return-void
.end method

.method public final n(F)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brushIntensity"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->w:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3de0e0e1

    if-eqz v0, :cond_1

    move v5, v1

    move v6, v2

    move v7, v6

    goto :goto_0

    :cond_1
    const v0, 0x3f028283

    move v6, v0

    move v7, v1

    move v5, v2

    :goto_0
    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p1, v0

    invoke-static {p1}, Lgd/b;->I(F)F

    move-result v8

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v4, "baseColor"

    invoke-virtual/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->Q(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, LR9/e;->s()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    invoke-virtual {v0}, LR9/e;->m()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-ne v0, v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->l:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->l:Z

    :cond_5
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->k()V

    :cond_6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->l()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->n:F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->n(F)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void

    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public final p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->h:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->h:[F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionX()F

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->r:F

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionZ()F

    move-result v4

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->s:F

    add-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->h:[F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->t:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    invoke-static {v0, v1, p1, v1}, Lgd/c;->p([FFFF)V

    invoke-static {}, Ljc/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->a:Lkc/c;

    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->h:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    return-void
.end method

.method public final q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;IF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bounds",
            "resolution",
            "terrainWidth"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->e:F

    div-float/2addr v0, p3

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->f:F

    div-float/2addr v1, p3

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a$b;->g:F

    div-float/2addr p1, p3

    add-int/lit8 p3, p2, -0x1

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/4 p3, 0x0

    move v2, p3

    :goto_0
    if-ge v2, p2, :cond_3

    mul-int v3, v2, p2

    move v4, p3

    move v5, v1

    :goto_1
    if-ge v4, p2, :cond_2

    add-int v6, v3, v4

    mul-int/lit8 v6, v6, 0x3

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    invoke-virtual {v7}, LR9/e;->o()LSc/a;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, LSc/a;->R(IF)V

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/a;->d:LR9/e;

    invoke-virtual {v7}, LR9/e;->o()LSc/a;

    move-result-object v7

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v7, v6, v5}, LSc/a;->R(IF)V

    add-float/2addr v5, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-float/2addr v0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
