.class public Lua/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lua/c;->a()LDb/e;

    move-result-object v1

    invoke-virtual {v1}, LDb/e;->n()V

    invoke-static {}, Lua/c;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lua/c;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lua/c;->e()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lua/c;->g()I

    invoke-static {}, Lua/c;->e()I

    move-result v1

    invoke-static {}, Lua/c;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-static {v0}, Lua/c;->f(I)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_10

    :catch_0
    move-exception v1

    goto/16 :goto_e

    :cond_0
    invoke-static {v0}, Lua/c;->f(I)I

    :cond_1
    :goto_0
    invoke-static {}, Ly9/a;->c()V

    invoke-static {}, Lzb/c;->c()V

    invoke-static {}, LYb/b;->b()V

    invoke-static {}, Lva/g;->n()V

    invoke-static {}, LYb/c;->w()V

    invoke-static {}, LKc/a;->s()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->lpUpdate()V

    invoke-static {}, Lsb/c;->n()V

    invoke-static {}, Loc/a;->H()V

    invoke-static {}, Lad/c;->t()V

    invoke-static {}, LXb/b;->b()V

    invoke-static {}, LWb/b;->b()V

    invoke-static {}, LHc/a;->o()V

    invoke-static {}, Lua/c;->h()Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lua/c;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lua/c;->i()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lua/c;->h()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lua/c;->j(Ljava/util/List;Ljava/util/List;)V

    invoke-static {}, Lua/c;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1

    :catchall_1
    move-exception v2

    goto/16 :goto_d

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lua/c;->k()Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lua/c;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lua/c;->i()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lua/c;->k()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lua/c;->l(Ljava/util/List;Ljava/util/List;)V

    invoke-static {}, Lua/c;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_2

    :catchall_2
    move-exception v2

    goto/16 :goto_c

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {}, Lua/c;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_4

    invoke-static {}, Lua/c;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/a;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v3}, Lua/a;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-static {}, Lua/c;->m()Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lua/c;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :goto_5
    if-eqz v2, :cond_6

    :try_start_8
    invoke-static {}, Lua/c;->m()Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {}, Lua/c;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    monitor-exit v1

    goto :goto_8

    :catchall_3
    move-exception v2

    goto :goto_7

    :cond_5
    invoke-static {}, Lua/c;->m()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lua/c;->m()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v1

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    invoke-static {}, Lua/c;->m()Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-static {}, Lua/c;->m()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    monitor-exit v1

    goto :goto_5

    :catchall_4
    move-exception v2

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v2
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_7
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v2

    :cond_6
    :goto_8
    move v1, v0

    :goto_9
    invoke-static {}, Lua/c;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-static {}, Lua/c;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d1()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v3

    goto :goto_a

    :cond_7
    move v5, v0

    :goto_a
    invoke-virtual {v2, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_8
    invoke-static {}, Lua/c;->a()LDb/e;

    move-result-object v1

    invoke-virtual {v1}, LDb/e;->g()V

    invoke-static {}, Lua/c;->c()LJAVARuntime/AtomicFloat;

    move-result-object v1

    invoke-static {}, Lua/c;->a()LDb/e;

    move-result-object v2

    invoke-virtual {v2}, LDb/e;->k()F

    move-result v2

    invoke-virtual {v1, v2}, LJAVARuntime/AtomicFloat;->set(F)V
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_b
    invoke-static {}, Lua/c;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_f

    :catchall_5
    move-exception v2

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    throw v2
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_c
    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v2
    :try_end_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :goto_d
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :try_start_15
    throw v2
    :try_end_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :goto_e
    :try_start_16
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_b

    :goto_f
    return-void

    :goto_10
    invoke-static {}, Lua/c;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
