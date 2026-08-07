.class public final Ldf/q$b;
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
    name = "b"
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

.field public final Y0:LTe/J;

.field public Z0:LCi/d;

.field public a1:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public final b1:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final v0:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCi/c;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    invoke-direct {p0, p1, v0}, Llf/n;-><init>(LCi/c;Laf/n;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/q$b;->b1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Ldf/q$b;->v0:Ljava/util/concurrent/Callable;

    iput-wide p3, p0, Ldf/q$b;->D0:J

    iput-object p5, p0, Ldf/q$b;->X0:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Ldf/q$b;->Y0:LTe/J;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Ldf/q$b;->b1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldf/q$b;->a1:Ljava/util/Collection;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ldf/q$b;->a1:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Llf/n;->X:Laf/n;

    invoke-interface {v2, v0}, Laf/o;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/n;->Z:Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llf/n;->X:Laf/n;

    iget-object v2, p0, Llf/n;->W:LCi/c;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p0}, Lio/reactivex/internal/util/u;->e(Laf/n;LCi/c;ZLVe/c;Lio/reactivex/internal/util/t;)V

    :cond_1
    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/n;->Y:Z

    iget-object v0, p0, Ldf/q$b;->Z0:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    iget-object v0, p0, Ldf/q$b;->b1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Ldf/q$b;->b1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Ldf/q$b;->cancel()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldf/q$b;->a1:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(LCi/d;)V
    .locals 9

    iget-object v0, p0, Ldf/q$b;->Z0:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/q$b;->Z0:LCi/d;

    :try_start_0
    iget-object v0, p0, Ldf/q$b;->v0:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The supplied buffer is null"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Ldf/q$b;->a1:Ljava/util/Collection;

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    iget-boolean v0, p0, Llf/n;->Y:Z

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    iget-object v2, p0, Ldf/q$b;->Y0:LTe/J;

    iget-wide v6, p0, Ldf/q$b;->D0:J

    iget-object v8, p0, Ldf/q$b;->X0:Ljava/util/concurrent/TimeUnit;

    move-object v3, p0

    move-wide v4, v6

    invoke-virtual/range {v2 .. v8}, LTe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    iget-object v0, p0, Ldf/q$b;->b1:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, LVe/c;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/q$b;->cancel()V

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-static {p1, v0}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    :cond_0
    :goto_0
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

    invoke-virtual {p0, p1, p2}, Ldf/q$b;->s(LCi/c;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/q$b;->b1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ldf/q$b;->a1:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

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
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldf/q$b;->v0:Ljava/util/concurrent/Callable;

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
    iget-object v1, p0, Ldf/q$b;->a1:Ljava/util/Collection;

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Ldf/q$b;->a1:Ljava/util/Collection;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p0}, Llf/n;->o(Ljava/lang/Object;ZLVe/c;)V

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/q$b;->cancel()V

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

    iget-object p1, p0, Llf/n;->W:LCi/c;

    invoke-interface {p1, p2}, LCi/c;->g(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
