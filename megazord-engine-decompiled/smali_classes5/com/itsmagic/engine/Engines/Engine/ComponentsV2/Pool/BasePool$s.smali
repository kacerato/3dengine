.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->runAddBrush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->d1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v3

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->d1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getSelectedBrush()Lg9/a;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :goto_0
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    :try_start_1
    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushSize:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-gtz v7, :cond_1

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    div-float v7, v5, v4

    :try_start_2
    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->H0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v8

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->q(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v7

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)F

    move-result v0

    const v9, 0x3f19999a    # 0.6f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Lgd/d;->h(FF)F

    move-result v9

    mul-float/2addr v0, v9

    iget-object v9, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget v9, v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushSize:F

    const v11, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v11

    invoke-static {v0, v9}, Lgd/b;->J(FF)F

    move-result v9

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushPlaceObjectsPerMeter:F

    invoke-static {v0}, Lgd/b;->G(F)F

    move-result v11

    cmpg-float v0, v11, v6

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushObjectSpacing:F

    invoke-static {v0}, Lgd/b;->G(F)F

    move-result v12

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lg9/a;)F

    move-result v0

    cmpg-float v13, v0, v6

    if-gtz v13, :cond_3

    goto :goto_0

    :cond_3
    mul-float/2addr v5, v5

    mul-float/2addr v5, v0

    mul-float/2addr v5, v11

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v5, v13

    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v13, v8, v7, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lg9/a;)I

    move-result v13

    sub-int/2addr v5, v13

    if-gtz v5, :cond_4

    goto :goto_0

    :cond_4
    int-to-float v13, v5

    const v14, 0x3c23d70a    # 0.01f

    invoke-static {v14, v0}, Lgd/b;->M(FF)F

    move-result v0

    div-float/2addr v13, v0

    move/from16 v16, v11

    float-to-double v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    const/4 v10, 0x1

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v0, v2

    move v13, v0

    :goto_2
    if-ge v13, v5, :cond_17

    if-ge v0, v11, :cond_17

    add-int/lit8 v17, v0, 0x1

    iget v0, v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v10, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-static {v0, v10}, Lgd/d;->h(FF)F

    move-result v0

    iget v10, v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v15, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-static {v10, v15}, Lgd/d;->h(FF)F

    move-result v10

    neg-float v15, v9

    div-float/2addr v15, v4

    div-float v2, v9, v4

    invoke-static {v15, v2}, Lgd/d;->h(FF)F

    move-result v18

    add-float v4, v0, v18

    invoke-static {v15, v2}, Lgd/d;->h(FF)F

    move-result v0

    add-float/2addr v10, v0

    iget v0, v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpg-float v2, v4, v0

    if-ltz v2, :cond_16

    iget v2, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpl-float v15, v4, v2

    if-gtz v15, :cond_16

    iget v15, v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpg-float v18, v10, v15

    if-ltz v18, :cond_16

    iget v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpl-float v19, v10, v6

    if-lez v19, :cond_6

    :goto_3
    move-object/from16 v21, v3

    move/from16 v20, v16

    :cond_5
    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_6
    sub-float v19, v4, v0

    sub-float/2addr v2, v0

    div-float v0, v19, v2

    sub-float v2, v10, v15

    sub-float/2addr v6, v15

    div-float/2addr v2, v6

    invoke-virtual {v3, v0, v2}, Lg9/a;->c(FF)F

    move-result v0

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushIntensity:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Lgd/b;->I(F)F

    move-result v0

    cmpg-float v2, v0, v14

    if-gtz v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v6}, Lgd/d;->h(FF)F

    move-result v15

    cmpl-float v0, v15, v0

    if-ltz v0, :cond_8

    goto :goto_3

    :cond_8
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move/from16 v2, v16

    invoke-static {v0, v4, v10, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;FFF)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_5
    move/from16 v20, v2

    move-object/from16 v21, v3

    goto :goto_4

    :cond_9
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0, v4, v10, v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;FFF)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v15, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v15}, Lj9/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v15

    const/4 v6, 0x0

    :goto_6
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_c

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v19

    if-eqz v19, :cond_b

    check-cast v14, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_14

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :cond_b
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    const v6, -0x800001

    move/from16 v20, v2

    move v14, v6

    const/4 v15, 0x0

    const/16 v19, 0x0

    :goto_8
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_f

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v2, v4, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->isInsideTerrain(FF)Z

    move-result v21
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v21, :cond_e

    :try_start_4
    invoke-virtual {v2, v4, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getWorldY(FF)F

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmpl-float v19, v2, v6

    if-lez v19, :cond_d

    move v6, v2

    move v14, v6

    :cond_d
    const/16 v19, 0x1

    goto :goto_9

    :catch_1
    move-exception v0

    const/16 v19, 0x1

    goto :goto_a

    :cond_e
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_a
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_f
    if-nez v19, :cond_10

    :try_start_6
    new-instance v0, Lsa/e;

    invoke-direct {v0}, Lsa/e;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lsa/e;->B(Z)V

    invoke-virtual {v0, v2}, Lsa/e;->A(Z)V

    new-instance v2, Lsa/c;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v15, 0x47c34f80    # 99999.0f

    invoke-direct {v6, v4, v15, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->A0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v21, v3

    const/4 v3, 0x0

    :try_start_7
    invoke-direct {v2, v6, v15, v3}, Lsa/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    invoke-virtual {v0, v2}, Lsa/e;->K(Lsa/c;)Lsa/a;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    cmpl-float v2, v2, v14

    if-ltz v2, :cond_11

    invoke-virtual {v0}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v19, 0x1

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v21, v3

    :goto_b
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :cond_10
    move-object/from16 v21, v3

    :cond_11
    :goto_c
    if-nez v19, :cond_12

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$F;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$F;->None:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$F;

    if-ne v0, v2, :cond_5

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->d1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v14

    :cond_12
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    invoke-virtual {v0, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    invoke-virtual {v0, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v0

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->minScale:F

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->maxScale:F

    invoke-static {v3, v2}, Lgd/d;->h(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->setScale(F)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->randomizeRotationX:Z

    const/high16 v4, 0x43b40000    # 360.0f

    if-eqz v3, :cond_13

    move v6, v4

    const/4 v3, 0x0

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_d
    invoke-static {v3, v6}, Lgd/d;->h(FF)F

    move-result v6

    iget-object v10, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-boolean v10, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->randomizeRotationY:Z

    if-eqz v10, :cond_14

    move v10, v4

    goto :goto_e

    :cond_14
    move v10, v3

    :goto_e
    invoke-static {v3, v10}, Lgd/d;->h(FF)F

    move-result v10

    iget-object v14, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-boolean v14, v14, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->randomizeRotationZ:Z

    if-eqz v14, :cond_15

    goto :goto_f

    :cond_15
    move v4, v3

    :goto_f
    invoke-static {v3, v4}, Lgd/d;->h(FF)F

    move-result v4

    invoke-direct {v2, v6, v10, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFF)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->C(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/lit8 v13, v13, 0x1

    :goto_10
    move v6, v3

    move/from16 v0, v17

    move/from16 v16, v20

    move-object/from16 v3, v21

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v10, 0x1

    const v14, 0x3c23d70a    # 0.01f

    goto/16 :goto_2

    :cond_16
    move-object/from16 v21, v3

    move v3, v6

    move/from16 v20, v16

    goto :goto_10

    :cond_17
    :goto_11
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_13

    :goto_12
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_11

    :goto_13
    return-void

    :goto_14
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$s;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
