.class public final Lgf/q$c;
.super Lbf/v;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/q$c$b;,
        Lgf/q$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lbf/v<",
        "TT;TU;TU;>;",
        "Ljava/lang/Runnable;",
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

.field public final M:J

.field public final N:J

.field public final O:Ljava/util/concurrent/TimeUnit;

.field public final P:LTe/J$c;

.field public final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end field

.field public R:LVe/c;


# direct methods
.method public constructor <init>(LTe/I;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;LTe/J$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J$c;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lbf/v;-><init>(LTe/I;Laf/n;)V

    iput-object p2, p0, Lgf/q$c;->L:Ljava/util/concurrent/Callable;

    iput-wide p3, p0, Lgf/q$c;->M:J

    iput-wide p5, p0, Lgf/q$c;->N:J

    iput-object p7, p0, Lgf/q$c;->O:Ljava/util/concurrent/TimeUnit;

    iput-object p8, p0, Lgf/q$c;->P:LTe/J$c;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lgf/q$c;->Q:Ljava/util/List;

    return-void
.end method

.method public static synthetic o(Lgf/q$c;Ljava/lang/Object;ZLVe/c;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lbf/v;->k(Ljava/lang/Object;ZLVe/c;)V

    return-void
.end method

.method public static synthetic p(Lgf/q$c;Ljava/lang/Object;ZLVe/c;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lbf/v;->k(Ljava/lang/Object;ZLVe/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lgf/q$c;->Q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lgf/q$c;->Q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lbf/v;->H:Laf/n;

    invoke-interface {v2, v1}, Laf/o;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/v;->J:Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbf/v;->H:Laf/n;

    iget-object v1, p0, Lbf/v;->G:LTe/I;

    const/4 v2, 0x0

    iget-object v3, p0, Lgf/q$c;->P:LTe/J$c;

    invoke-static {v0, v1, v2, v3, p0}, Lio/reactivex/internal/util/u;->d(Laf/n;LTe/I;ZLVe/c;Lio/reactivex/internal/util/q;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

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

    invoke-virtual {p0}, Lgf/q$c;->q()V

    iget-object v0, p0, Lgf/q$c;->R:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/q$c;->P:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 8

    iget-object v0, p0, Lgf/q$c;->R:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/q$c;->R:LVe/c;

    :try_start_0
    iget-object v0, p0, Lgf/q$c;->L:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The buffer supplied is null"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lgf/q$c;->Q:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lbf/v;->G:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    iget-object v1, p0, Lgf/q$c;->P:LTe/J$c;

    iget-wide v5, p0, Lgf/q$c;->N:J

    iget-object v7, p0, Lgf/q$c;->O:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, LTe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    iget-object p1, p0, Lgf/q$c;->P:LTe/J$c;

    new-instance v1, Lgf/q$c$b;

    invoke-direct {v1, p0, v0}, Lgf/q$c$b;-><init>(Lgf/q$c;Ljava/util/Collection;)V

    iget-wide v2, p0, Lgf/q$c;->M:J

    iget-object v0, p0, Lgf/q$c;->O:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3, v0}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1}, LVe/c;->dispose()V

    iget-object p1, p0, Lbf/v;->G:LTe/I;

    invoke-static {v0, p1}, LYe/e;->h(Ljava/lang/Throwable;LTe/I;)V

    iget-object p1, p0, Lgf/q$c;->P:LTe/J$c;

    invoke-interface {p1}, LVe/c;->dispose()V

    :cond_0
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgf/q$c;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic m(LTe/I;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lgf/q$c;->n(LTe/I;Ljava/util/Collection;)V

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

    invoke-interface {p1, p2}, LTe/I;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/v;->J:Z

    invoke-virtual {p0}, Lgf/q$c;->q()V

    iget-object v0, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lgf/q$c;->P:LTe/J$c;

    invoke-interface {p1}, LVe/c;->dispose()V

    return-void
.end method

.method public q()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgf/q$c;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 5

    iget-boolean v0, p0, Lbf/v;->I:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lgf/q$c;->L:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lbf/v;->I:Z

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgf/q$c;->Q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lgf/q$c;->P:LTe/J$c;

    new-instance v2, Lgf/q$c$a;

    invoke-direct {v2, p0, v0}, Lgf/q$c$a;-><init>(Lgf/q$c;Ljava/util/Collection;)V

    iget-wide v3, p0, Lgf/q$c;->M:J

    iget-object v0, p0, Lgf/q$c;->O:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v0}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

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

    iget-object v1, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v1, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lgf/q$c;->dispose()V

    return-void
.end method
