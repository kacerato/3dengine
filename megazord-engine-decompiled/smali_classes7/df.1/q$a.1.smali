.class public final Ldf/q$a;
.super Llf/n;
.source "SourceFile"

# interfaces
.implements LCi/d;
.implements Ljava/lang/Runnable;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Llf/n<",
        "TT;TU;TU;>;",
        "LCi/d;",
        "Ljava/lang/Runnable;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final D0:J

.field public final X0:Ljava/util/concurrent/TimeUnit;

.field public final Y0:I

.field public final Z0:Z

.field public final a1:LTe/J$c;

.field public b1:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public c1:LVe/c;

.field public d1:LCi/d;

.field public e1:J

.field public f1:J

.field public final v0:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCi/c;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLTe/J$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "IZ",
            "LTe/J$c;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    invoke-direct {p0, p1, v0}, Llf/n;-><init>(LCi/c;Laf/n;)V

    iput-object p2, p0, Ldf/q$a;->v0:Ljava/util/concurrent/Callable;

    iput-wide p3, p0, Ldf/q$a;->D0:J

    iput-object p5, p0, Ldf/q$a;->X0:Ljava/util/concurrent/TimeUnit;

    iput p6, p0, Ldf/q$a;->Y0:I

    iput-boolean p7, p0, Ldf/q$a;->Z0:Z

    iput-object p8, p0, Ldf/q$a;->a1:LTe/J$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldf/q$a;->b1:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-object v1, p0, Ldf/q$a;->b1:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Llf/n;->X:Laf/n;

    invoke-interface {v1, v0}, Laf/o;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/n;->Z:Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llf/n;->X:Laf/n;

    iget-object v1, p0, Llf/n;->W:LCi/c;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/u;->e(Laf/n;LCi/c;ZLVe/c;Lio/reactivex/internal/util/t;)V

    :cond_0
    iget-object v0, p0, Ldf/q$a;->a1:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Llf/n;->Y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/n;->Y:Z

    invoke-virtual {p0}, Ldf/q$a;->dispose()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Ldf/q$a;->a1:LTe/J$c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ldf/q$a;->b1:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldf/q$a;->d1:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    iget-object v0, p0, Ldf/q$a;->a1:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldf/q$a;->b1:Ljava/util/Collection;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    iget v1, p0, Ldf/q$a;->Y0:I

    if-ge p1, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Ldf/q$a;->b1:Ljava/util/Collection;

    iget-wide v1, p0, Ldf/q$a;->e1:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ldf/q$a;->e1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Ldf/q$a;->Z0:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldf/q$a;->c1:LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p0}, Llf/n;->q(Ljava/lang/Object;ZLVe/c;)V

    :try_start_1
    iget-object p1, p0, Ldf/q$a;->v0:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The supplied buffer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-enter p0

    :try_start_2
    iput-object p1, p0, Ldf/q$a;->b1:Ljava/util/Collection;

    iget-wide v0, p0, Ldf/q$a;->f1:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Ldf/q$a;->f1:J

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean p1, p0, Ldf/q$a;->Z0:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Ldf/q$a;->a1:LTe/J$c;

    iget-wide v4, p0, Ldf/q$a;->D0:J

    iget-object v6, p0, Ldf/q$a;->X0:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, LTe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    iput-object p1, p0, Ldf/q$a;->c1:LVe/c;

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/q$a;->cancel()V

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public h(LCi/d;)V
    .locals 8

    iget-object v0, p0, Ldf/q$a;->d1:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Ldf/q$a;->d1:LCi/d;

    :try_start_0
    iget-object v0, p0, Ldf/q$a;->v0:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The supplied buffer is null"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Ldf/q$a;->b1:Ljava/util/Collection;

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    iget-object v1, p0, Ldf/q$a;->a1:LTe/J$c;

    iget-wide v5, p0, Ldf/q$a;->D0:J

    iget-object v7, p0, Ldf/q$a;->X0:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, LTe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object v0

    iput-object v0, p0, Ldf/q$a;->c1:LVe/c;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ldf/q$a;->a1:LTe/J$c;

    invoke-interface {v1}, LVe/c;->dispose()V

    invoke-interface {p1}, LCi/d;->cancel()V

    iget-object p1, p0, Llf/n;->W:LCi/c;

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void
.end method

.method public i(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Llf/n;->r(J)V

    return-void
.end method

.method public bridge synthetic m(LCi/c;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Ldf/q$a;->s(LCi/c;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ldf/q$a;->b1:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, Ldf/q$a;->a1:LTe/J$c;

    invoke-interface {p1}, LVe/c;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Ldf/q$a;->v0:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The supplied buffer is null"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ldf/q$a;->b1:Ljava/util/Collection;

    if-eqz v1, :cond_1

    iget-wide v2, p0, Ldf/q$a;->e1:J

    iget-wide v4, p0, Ldf/q$a;->f1:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Ldf/q$a;->b1:Ljava/util/Collection;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p0}, Llf/n;->q(Ljava/lang/Object;ZLVe/c;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/q$a;->cancel()V

    iget-object v1, p0, Llf/n;->W:LCi/c;

    invoke-interface {v1, v0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public s(LCi/c;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TU;>;TU;)Z"
        }
    .end annotation

    invoke-interface {p1, p2}, LCi/c;->g(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
