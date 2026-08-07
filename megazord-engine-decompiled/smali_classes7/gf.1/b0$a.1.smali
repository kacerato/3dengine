.class public final Lgf/b0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/b0$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final k:J = 0x775a28d5b42d01b7L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:LVe/b;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Lio/reactivex/internal/util/c;

.field public final g:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljf/c<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public i:LVe/c;

.field public volatile j:Z


# direct methods
.method public constructor <init>(LTe/I;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/b0$a;->b:LTe/I;

    iput-object p2, p0, Lgf/b0$a;->g:LXe/o;

    iput-boolean p3, p0, Lgf/b0$a;->c:Z

    new-instance p1, LVe/b;

    invoke-direct {p1}, LVe/b;-><init>()V

    iput-object p1, p0, Lgf/b0$a;->d:LVe/b;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lgf/b0$a;->f:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lgf/b0$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/b0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lgf/b0$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lgf/b0$a;->c()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lgf/b0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljf/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljf/c;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgf/b0$a;->f()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lgf/b0$a;->j:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/b0$a;->j:Z

    iget-object v0, p0, Lgf/b0$a;->i:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/b0$a;->d:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/b0$a;->i:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/b0$a;->i:LVe/c;

    iget-object p1, p0, Lgf/b0$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 8

    iget-object v0, p0, Lgf/b0$a;->b:LTe/I;

    iget-object v1, p0, Lgf/b0$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lgf/b0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lgf/b0$a;->j:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lgf/b0$a;->b()V

    return-void

    :cond_1
    iget-boolean v5, p0, Lgf/b0$a;->c:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lgf/b0$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    iget-object v1, p0, Lgf/b0$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0}, Lgf/b0$a;->b()V

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljf/c;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljf/c;->poll()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_5

    move v6, v3

    :cond_5
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    iget-object v1, p0, Lgf/b0$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v0}, LTe/I;->a()V

    :goto_3
    return-void

    :cond_7
    if-eqz v6, :cond_8

    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_8
    invoke-interface {v0, v7}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lgf/b0$a;->g:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null SingleSource"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lgf/b0$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, Lgf/b0$a$a;

    invoke-direct {v0, p0}, Lgf/b0$a$a;-><init>(Lgf/b0$a;)V

    iget-boolean v1, p0, Lgf/b0$a;->j:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lgf/b0$a;->d:LVe/b;

    invoke-virtual {v1, v0}, LVe/b;->b(LVe/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, LTe/Q;->a(LTe/N;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lgf/b0$a;->i:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0, p1}, Lgf/b0$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public h()Ljf/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljf/c<",
            "TR;>;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lgf/b0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljf/c;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljf/c;

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-direct {v0, v1}, Ljf/c;-><init>(I)V

    iget-object v1, p0, Lgf/b0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public i(Lgf/b0$a$a;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/b0$a<",
            "TT;TR;>.a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lgf/b0$a;->d:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    iget-object p1, p0, Lgf/b0$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lgf/b0$a;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lgf/b0$a;->i:LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    iget-object p1, p0, Lgf/b0$a;->d:LVe/b;

    invoke-virtual {p1}, LVe/b;->dispose()V

    :cond_0
    iget-object p1, p0, Lgf/b0$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lgf/b0$a;->c()V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public j(Lgf/b0$a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/b0$a<",
            "TT;TR;>.a;TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/b0$a;->d:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lgf/b0$a;->b:LTe/I;

    invoke-interface {v1, p2}, LTe/I;->g(Ljava/lang/Object;)V

    iget-object p2, p0, Lgf/b0$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_0

    move p1, v0

    :cond_0
    iget-object p2, p0, Lgf/b0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljf/c;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljf/c;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, Lgf/b0$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lgf/b0$a;->b:LTe/I;

    invoke-interface {p2, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lgf/b0$a;->b:LTe/I;

    invoke-interface {p1}, LTe/I;->a()V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_4
    invoke-virtual {p0}, Lgf/b0$a;->h()Ljf/c;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p2}, Ljf/c;->offer(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lgf/b0$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lgf/b0$a;->f()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/b0$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lgf/b0$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lgf/b0$a;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lgf/b0$a;->d:LVe/b;

    invoke-virtual {p1}, LVe/b;->dispose()V

    :cond_0
    invoke-virtual {p0}, Lgf/b0$a;->c()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
