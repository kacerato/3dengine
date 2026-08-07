.class public final Lgf/p$b;
.super Lbf/v;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/p;
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
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Lbf/v<",
        "TT;TU;TU;>;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final L:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final M:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TB;>;"
        }
    .end annotation
.end field

.field public N:LVe/c;

.field public O:LVe/c;

.field public P:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/I;Ljava/util/concurrent/Callable;LTe/G;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "LTe/G<",
            "TB;>;)V"
        }
    .end annotation

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lbf/v;-><init>(LTe/I;Laf/n;)V

    iput-object p2, p0, Lgf/p$b;->L:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lgf/p$b;->M:LTe/G;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgf/p$b;->P:Ljava/util/Collection;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lgf/p$b;->P:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbf/v;->H:Laf/n;

    invoke-interface {v1, v0}, Laf/o;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/v;->J:Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbf/v;->H:Laf/n;

    iget-object v1, p0, Lbf/v;->G:LTe/I;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/internal/util/u;->d(Laf/n;LTe/I;ZLVe/c;Lio/reactivex/internal/util/q;)V

    :cond_1
    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lbf/v;->I:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lbf/v;->I:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/v;->I:Z

    iget-object v0, p0, Lgf/p$b;->O:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/p$b;->N:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf/v;->H:Laf/n;

    invoke-interface {v0}, Laf/o;->clear()V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 2

    iget-object v0, p0, Lgf/p$b;->N:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/p$b;->N:LVe/c;

    :try_start_0
    iget-object v0, p0, Lgf/p$b;->L:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lgf/p$b;->P:Ljava/util/Collection;

    new-instance p1, Lgf/p$a;

    invoke-direct {p1, p0}, Lgf/p$a;-><init>(Lgf/p$b;)V

    iput-object p1, p0, Lgf/p$b;->O:LVe/c;

    iget-object v0, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v0, p0}, LTe/I;->e(LVe/c;)V

    iget-boolean v0, p0, Lbf/v;->I:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/p$b;->M:LTe/G;

    invoke-interface {v0, p1}, LTe/G;->b(LTe/I;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbf/v;->I:Z

    invoke-interface {p1}, LVe/c;->dispose()V

    iget-object p1, p0, Lbf/v;->G:LTe/I;

    invoke-static {v0, p1}, LYe/e;->h(Ljava/lang/Throwable;LTe/I;)V

    :cond_0
    :goto_0
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
    iget-object v0, p0, Lgf/p$b;->P:Ljava/util/Collection;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic m(LTe/I;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lgf/p$b;->n(LTe/I;Ljava/util/Collection;)V

    return-void
.end method

.method public n(LTe/I;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;TU;)V"
        }
    .end annotation

    iget-object p1, p0, Lbf/v;->G:LTe/I;

    invoke-interface {p1, p2}, LTe/I;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public o()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lgf/p$b;->L:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lgf/p$b;->P:Ljava/util/Collection;

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lgf/p$b;->P:Ljava/util/Collection;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p0}, Lbf/v;->i(Ljava/lang/Object;ZLVe/c;)V

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

    invoke-virtual {p0}, Lgf/p$b;->dispose()V

    iget-object v1, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v1, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lgf/p$b;->dispose()V

    iget-object v0, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
