.class public LE9/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGb/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LE9/c;


# direct methods
.method public constructor <init>(LE9/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LE9/c$b;->a:LE9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 14

    invoke-static {}, LL6/j;->I1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "MaterialObject - scheduler"

    invoke-static {v0}, LL6/j;->R1(Ljava/lang/String;)LL6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/16 v2, 0x32

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v5}, LE9/c;->b(LE9/c;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_5

    :try_start_1
    const-string v5, "MaterialObject - scheduler destroy"

    invoke-static {v5}, LE9/c;->l(Ljava/lang/String;)LL6/e;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v6, v4

    :cond_1
    :try_start_2
    iget-object v7, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v7}, LE9/c;->b(LE9/c;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v7}, LE9/c;->b(LE9/c;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v8}, LE9/c;->b(LE9/c;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LE9/b;

    iget-object v8, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v8}, LE9/c;->m(LE9/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v9

    invoke-static {v8, v9, v7}, LE9/c;->n(LE9/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;LE9/b;)V

    iget-object v8, v7, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    if-eqz v8, :cond_2

    iget-object v8, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v8}, LE9/c;->o(LE9/c;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, v7, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v7, :cond_2

    iget-object v8, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v8}, LE9/c;->o(LE9/c;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, v7, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_10

    :catch_0
    move-exception v7

    move v8, v3

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v8, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v8}, LE9/c;->a(LE9/c;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v8}, LE9/c;->a(LE9/c;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v2, :cond_1

    :cond_4
    move v7, v3

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto/16 :goto_10

    :catch_1
    move-exception v7

    move-object v5, v1

    move v8, v3

    move v6, v4

    goto :goto_3

    :cond_5
    move-object v5, v1

    move v6, v4

    move v7, v6

    :goto_2
    :try_start_3
    invoke-static {v5}, LE9/c;->p(LL6/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    goto/16 :goto_11

    :catch_2
    move-exception v7

    move-object v5, v1

    move v6, v4

    move v8, v6

    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v5}, LE9/c;->p(LL6/e;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v7, v8

    :goto_4
    if-ge v6, v2, :cond_b

    :try_start_6
    iget-object v5, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v5}, LE9/c;->q(LE9/c;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "MaterialObject - scheduler impostor"

    invoke-static {v5}, LE9/c;->l(Ljava/lang/String;)LL6/e;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    iget-object v8, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v8}, LE9/c;->m(LE9/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v8

    const-string v9, "MaterialObject - impostor resources"

    invoke-static {v9}, LE9/c;->l(Ljava/lang/String;)LL6/e;

    move-result-object v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v8, :cond_6

    :try_start_8
    iget-object v10, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v10}, LE9/c;->r(LE9/c;)Z

    move-result v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v10, :cond_6

    move v10, v3

    goto :goto_5

    :catchall_3
    move-exception v8

    :try_start_9
    invoke-static {v9}, LE9/c;->p(LL6/e;)V

    throw v8

    :catchall_4
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v8

    goto :goto_8

    :cond_6
    move v10, v4

    :goto_5
    invoke-static {v9}, LE9/c;->p(LL6/e;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v10, :cond_a

    :cond_7
    :goto_6
    if-ge v6, v2, :cond_a

    :try_start_a
    iget-object v7, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v7}, LE9/c;->s(LE9/c;)LE9/b;

    move-result-object v7

    if-nez v7, :cond_8

    goto :goto_7

    :cond_8
    iget-object v9, v7, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    if-eqz v9, :cond_7

    iget-object v9, v7, LE9/b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v9, :cond_7

    iget-object v9, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v9}, LE9/c;->o(LE9/c;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, v7, LE9/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v7, :cond_9

    goto :goto_6

    :cond_9
    iget-object v9, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v9}, LE9/c;->c(LE9/c;)Z

    move-result v10

    invoke-static {v9, v7, v8, v10}, LE9/c;->d(LE9/c;LE9/b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :catch_4
    move-exception v8

    move v7, v3

    goto :goto_8

    :cond_a
    :goto_7
    move v7, v3

    goto :goto_9

    :catchall_5
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto :goto_a

    :catch_5
    move-exception v8

    move-object v5, v1

    :goto_8
    :try_start_b
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_9
    :try_start_c
    invoke-static {v5}, LE9/c;->p(LL6/e;)V

    goto :goto_b

    :goto_a
    invoke-static {v5}, LE9/c;->p(LL6/e;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_b
    move-object v5, v1

    goto :goto_9

    :goto_b
    :try_start_d
    iget-object v5, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v5}, LE9/c;->e(LE9/c;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    if-ge v6, v2, :cond_e

    const-string v5, "MaterialObject - scheduler create"

    invoke-static {v5}, LE9/c;->l(Ljava/lang/String;)LL6/e;

    move-result-object v1

    iget-object v5, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v5}, LE9/c;->f(LE9/c;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v5

    iget-object v8, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v8, v5}, LE9/c;->g(LE9/c;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    move-result v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v7, :cond_f

    :cond_c
    :try_start_e
    iget-object v7, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v7}, LE9/c;->e(LE9/c;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v7}, LE9/c;->e(LE9/c;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v8}, LE9/c;->e(LE9/c;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget-object v8, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v8}, LE9/c;->m(LE9/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v10

    iget-object v9, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v9}, LE9/c;->h(LE9/c;)Z

    move-result v11

    iget-object v9, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v9}, LE9/c;->i(LE9/c;)Z

    move-result v12

    move-object v9, v7

    move-object v13, v5

    invoke-static/range {v8 .. v13}, LE9/c;->j(LE9/c;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZLcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LE9/b;

    move-result-object v8

    if-nez v8, :cond_d

    iget-object v2, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v2}, LE9/c;->e(LE9/c;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :catchall_6
    move-exception v2

    goto :goto_f

    :catch_6
    move-exception v2

    goto :goto_d

    :cond_d
    iget-object v9, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v9}, LE9/c;->a(LE9/c;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v9}, LE9/c;->o(LE9/c;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    add-int/2addr v6, v3

    if-lt v6, v2, :cond_c

    goto :goto_c

    :catch_7
    move-exception v2

    move v3, v7

    goto :goto_d

    :cond_e
    move v3, v7

    :cond_f
    :goto_c
    :try_start_f
    invoke-static {v1}, LE9/c;->p(LL6/e;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_e

    :goto_d
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_c

    :goto_e
    if-nez v3, :cond_10

    :try_start_11
    iget-object v1, p0, LE9/c$b;->a:LE9/c;

    invoke-static {v1, v4}, LE9/c;->k(LE9/c;Z)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :cond_10
    invoke-static {v0}, LL6/j;->O1(LL6/e;)V

    return v3

    :goto_f
    :try_start_12
    invoke-static {v1}, LE9/c;->p(LL6/e;)V

    throw v2

    :goto_10
    invoke-static {v5}, LE9/c;->p(LL6/e;)V

    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :goto_11
    invoke-static {v0}, LL6/j;->O1(LL6/e;)V

    throw v1
.end method
