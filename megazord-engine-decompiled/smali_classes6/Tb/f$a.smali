.class public LTb/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGb/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTb/f;->q(LTb/f$d;)V
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
.method public run()Z
    .locals 7

    invoke-static {}, LTb/f;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    return v1

    :cond_1
    invoke-static {}, LTb/f;->b()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-static {}, LTb/f;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, LTb/f;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static {}, LTb/f;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, LTb/f;->e()Lye/O;

    move-result-object v1

    invoke-virtual {v1}, Lye/O;->clear()V

    invoke-static {}, LTb/f;->f()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, LTb/f;->g()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, LTb/f;->h()Lu7/c;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, LTb/f;->h()Lu7/c;

    move-result-object v1

    invoke-virtual {v1}, Lu7/c;->destroy()V

    const/4 v1, 0x0

    invoke-static {v1}, LTb/f;->i(Lu7/c;)Lu7/c;

    :cond_3
    monitor-exit v3

    return v0

    :cond_4
    invoke-static {}, LTb/f;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LTb/f$d;

    invoke-static {}, LTb/f;->j()[Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    add-int/lit8 v2, v2, 0x1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, LTb/f;->h()Lu7/c;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance v3, Lu7/c;

    new-instance v6, LTb/f$a$a;

    invoke-direct {v6, p0}, LTb/f$a$a;-><init>(LTb/f$a;)V

    invoke-direct {v3, v6}, Lu7/c;-><init>(Lu7/b;)V

    invoke-static {v3}, LTb/f;->i(Lu7/c;)Lu7/c;

    :cond_5
    :try_start_1
    invoke-static {v4}, LTb/f$d;->a(LTb/f$d;)LTb/f$c;

    move-result-object v3

    new-instance v4, LTb/f$a$b;

    invoke-direct {v4, p0, v5}, LTb/f$a$b;-><init>(LTb/f$a;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v3, v4}, LTb/f$c;->a(LTb/f$b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, LTb/f;->b()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_2
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
