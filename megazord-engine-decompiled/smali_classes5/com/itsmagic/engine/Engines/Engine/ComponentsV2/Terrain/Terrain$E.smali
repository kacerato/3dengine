.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->regenLevelTable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LR9/f;

.field public final synthetic c:I

.field public final synthetic d:LUb/f;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public final synthetic g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/f;ILUb/f;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$table",
            "val$r",
            "val$terrainMatrix",
            "val$terrainLevelComponents",
            "val$terrain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->b:LR9/f;

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->c:I

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->d:LUb/f;

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->b:LR9/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LR9/f;->b(F)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Leveling terrain start"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, LDb/e;

    invoke-direct {v2}, LDb/e;-><init>()V

    invoke-virtual {v2}, LDb/e;->n()V

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;-><init>()V

    const/4 v12, 0x0

    :goto_0
    iget v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->c:I

    if-ge v12, v0, :cond_5

    const/4 v13, 0x0

    :goto_1
    iget v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->c:I

    if-ge v13, v0, :cond_4

    int-to-float v3, v12

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v13

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr v4, v0

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    mul-float/2addr v3, v0

    mul-float/2addr v0, v4

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->d:LUb/f;

    invoke-virtual {v4}, LUb/f;->O1()F

    move-result v4

    add-float v14, v3, v4

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->d:LUb/f;

    invoke-virtual {v3}, LUb/f;->Q1()F

    move-result v3

    add-float v15, v0, v3

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->d:LUb/f;

    invoke-virtual {v0}, LUb/f;->P1()F

    move-result v16

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    add-float v17, v16, v0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0, v14, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    move v9, v0

    const/4 v8, 0x0

    const/16 v18, 0x0

    :goto_2
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v8, v0, :cond_2

    :try_start_1
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b;

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-interface {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b;->allowLeveling(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;->a()V

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v19, v8

    move/from16 v8, v17

    move v11, v9

    move-object v9, v10

    :try_start_3
    invoke-interface/range {v3 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b;->getWorldY(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;FFFFLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;)V

    iget-boolean v0, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;->b:Z

    if-eqz v0, :cond_1

    iget v0, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/b$a;->a:F

    invoke-static {v0, v11}, Lgd/b;->X0(FF)F

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v18, 0x1

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v19, v8

    move v11, v9

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_0
    move/from16 v19, v8

    move v11, v9

    goto :goto_5

    :catch_3
    move-exception v0

    move/from16 v19, v8

    move v11, v9

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_5
    move v9, v11

    :goto_6
    add-int/lit8 v8, v19, 0x1

    goto :goto_2

    :cond_2
    move v11, v9

    if-eqz v18, :cond_3

    sub-float v9, v11, v16

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    div-float/2addr v9, v0

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;->b:LR9/f;

    invoke-virtual {v0, v12, v13, v9}, LR9/f;->h(IIF)V

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, LDb/e;->g()V

    const-string v0, "Leveling terrain"

    invoke-virtual {v2, v0}, LDb/e;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E$a;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void

    :goto_7
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E$a;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$E;)V

    invoke-static {v2}, Lc9/a;->I(Ljava/lang/Runnable;)V

    throw v0
.end method
