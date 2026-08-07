.class public LZ9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZ9/a;
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

    :cond_0
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, LZ9/a;->a()LDb/e;

    move-result-object v3

    invoke-virtual {v3}, LDb/e;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto/16 :goto_c

    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, LZ9/a;->b()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {}, LZ9/a;->c()Z

    move-result v4

    if-nez v4, :cond_7

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, LZ9/a;->a()LDb/e;

    move-result-object v2

    invoke-virtual {v2}, LDb/e;->g()V

    invoke-static {}, LZ9/a;->a()LDb/e;

    move-result-object v2

    invoke-virtual {v2}, LDb/e;->k()F

    move-result v2

    invoke-static {v2}, LZ9/a;->e(F)F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    invoke-static {}, LZ9/a;->b()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_4
    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-static {}, LZ9/a;->f()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, LZ9/a;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_2
    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LZ9/a$b;

    invoke-interface {v4}, LZ9/a$b;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_3
    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :cond_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_6

    invoke-static {}, LZ9/a;->g()V

    :cond_6
    return-void

    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v2

    goto/16 :goto_a

    :cond_7
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v2, v1

    move v3, v2

    :goto_5
    :try_start_7
    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LZ9/a$b;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v4}, LZ9/a$b;->b()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4}, LZ9/a;->k(LZ9/a$b;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v2

    goto/16 :goto_b

    :cond_9
    :try_start_8
    invoke-interface {v4}, LZ9/a$b;->a()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-interface {v4}, LZ9/a$b;->b()Z

    move-result v5

    if-eqz v5, :cond_a

    move v3, v0

    goto :goto_6

    :cond_a
    invoke-static {v4}, LZ9/a;->k(LZ9/a$b;)V

    goto :goto_6

    :catchall_4
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v4}, LZ9/a;->k(LZ9/a$b;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    if-nez v3, :cond_11

    :try_start_a
    sget-object v2, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, LZ9/a;->a()LDb/e;

    move-result-object v2

    invoke-virtual {v2}, LDb/e;->g()V

    invoke-static {}, LZ9/a;->a()LDb/e;

    move-result-object v2

    invoke-virtual {v2}, LDb/e;->k()F

    move-result v2

    invoke-static {v2}, LZ9/a;->e(F)F
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_c
    invoke-static {}, LZ9/a;->b()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_b
    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-static {}, LZ9/a;->f()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, LZ9/a;->c()Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v1

    :goto_7
    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LZ9/a$b;

    invoke-interface {v4}, LZ9/a$b;->b()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_9

    :cond_e
    move v0, v1

    :goto_8
    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :cond_f
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v1, :cond_10

    invoke-static {}, LZ9/a;->g()V

    :cond_10
    return-void

    :goto_9
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :cond_11
    :try_start_d
    sget-object v2, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, LZ9/a;->a()LDb/e;

    move-result-object v2

    invoke-virtual {v2}, LDb/e;->g()V

    invoke-static {}, LZ9/a;->a()LDb/e;

    move-result-object v2

    invoke-virtual {v2}, LDb/e;->k()F

    move-result v2

    invoke-static {v2}, LZ9/a;->e(F)F
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :goto_a
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :goto_b
    :try_start_10
    sget-object v3, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {}, LZ9/a;->a()LDb/e;

    move-result-object v3

    invoke-virtual {v3}, LDb/e;->g()V

    invoke-static {}, LZ9/a;->a()LDb/e;

    move-result-object v3

    invoke-virtual {v3}, LDb/e;->k()F

    move-result v3

    invoke-static {v3}, LZ9/a;->e(F)F

    :cond_12
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_c
    invoke-static {}, LZ9/a;->b()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_11
    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-static {}, LZ9/a;->f()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, LZ9/a;->c()Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v1

    :goto_d
    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_14

    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LZ9/a$b;

    invoke-interface {v5}, LZ9/a$b;->b()Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_e

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :catchall_6
    move-exception v0

    goto :goto_f

    :cond_14
    move v0, v1

    :goto_e
    invoke-static {}, LZ9/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :cond_15
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v1, :cond_16

    invoke-static {}, LZ9/a;->g()V

    :cond_16
    throw v2

    :goto_f
    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v0
.end method
