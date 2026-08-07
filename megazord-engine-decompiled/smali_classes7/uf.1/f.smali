.class public Luf/f;
.super Lof/a;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luf/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lof/a<",
        "TT;",
        "Luf/f<",
        "TT;>;>;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final l:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public volatile m:Z

.field public final n:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/concurrent/atomic/AtomicLong;

.field public p:Laf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Luf/f$a;->INSTANCE:Luf/f$a;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, v2}, Luf/f;-><init>(LCi/c;J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 2
    sget-object v0, Luf/f$a;->INSTANCE:Luf/f$a;

    invoke-direct {p0, v0, p1, p2}, Luf/f;-><init>(LCi/c;J)V

    return-void
.end method

.method public constructor <init>(LCi/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 3
    invoke-direct {p0, p1, v0, v1}, Luf/f;-><init>(LCi/c;J)V

    return-void
.end method

.method public constructor <init>(LCi/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lof/a;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 5
    iput-object p1, p0, Luf/f;->l:LCi/c;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Luf/f;->n:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Luf/f;->o:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative initial request not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static p0()Luf/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Luf/f;

    invoke-direct {v0}, Luf/f;-><init>()V

    return-object v0
.end method

.method public static q0(J)Luf/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Luf/f;

    invoke-direct {v0, p0, p1}, Luf/f;-><init>(J)V

    return-object v0
.end method

.method public static r0(LCi/c;)Luf/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/c<",
            "-TT;>;)",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Luf/f;

    invoke-direct {v0, p0}, Luf/f;-><init>(LCi/c;)V

    return-object v0
.end method

.method public static s0(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ASYNC"

    return-object p0

    :cond_1
    const-string p0, "SYNC"

    return-object p0

    :cond_2
    const-string p0, "NONE"

    return-object p0
.end method


# virtual methods
.method public bridge synthetic A()Lof/a;
    .locals 1

    invoke-virtual {p0}, Luf/f;->o0()Luf/f;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    iget-boolean v0, p0, Lof/a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lof/a;->g:Z

    iget-object v0, p0, Luf/f;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lof/a;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lof/a;->f:Ljava/lang/Thread;

    iget-wide v0, p0, Lof/a;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lof/a;->e:J

    iget-object v0, p0, Luf/f;->l:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lof/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lof/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Luf/f;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Luf/f;->m:Z

    iget-object v0, p0, Luf/f;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Luf/f;->m:Z

    return v0
.end method

.method public final dispose()V
    .locals 0

    invoke-virtual {p0}, Luf/f;->cancel()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lof/a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lof/a;->g:Z

    iget-object v0, p0, Luf/f;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lof/a;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lof/a;->f:Ljava/lang/Thread;

    iget v0, p0, Lof/a;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :goto_0
    :try_start_0
    iget-object p1, p0, Luf/f;->p:Laf/l;

    invoke-interface {p1}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lof/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lof/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Luf/f;->p:Laf/l;

    invoke-interface {p1}, LCi/d;->cancel()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lof/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_3

    iget-object v0, p0, Lof/a;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext received a null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Luf/f;->l:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lof/a;->f:Ljava/lang/Thread;

    if-nez p1, :cond_0

    iget-object p1, p0, Lof/a;->d:Ljava/util/List;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onSubscribe received a null Subscription"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Luf/f;->n:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, LCi/d;->cancel()V

    iget-object v0, p0, Luf/f;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lof/a;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscribe received multiple subscriptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lof/a;->h:I

    if-eqz v0, :cond_4

    instance-of v1, p1, Laf/l;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Laf/l;

    iput-object v1, p0, Luf/f;->p:Laf/l;

    invoke-interface {v1, v0}, Laf/k;->m(I)I

    move-result v0

    iput v0, p0, Lof/a;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iput-boolean v1, p0, Lof/a;->g:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lof/a;->f:Ljava/lang/Thread;

    :goto_0
    :try_start_0
    iget-object p1, p0, Luf/f;->p:Laf/l;

    invoke-interface {p1}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lof/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lof/a;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lof/a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lof/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Luf/f;->l:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->h(LCi/d;)V

    iget-object v0, p0, Luf/f;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    invoke-interface {p1, v3, v4}, LCi/d;->i(J)V

    :cond_5
    invoke-virtual {p0}, Luf/f;->v0()V

    return-void
.end method

.method public final i(J)V
    .locals 2

    iget-object v0, p0, Luf/f;->n:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Luf/f;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lmf/j;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method public final j0()Luf/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Luf/f;->p:Laf/l;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Upstream is not fuseable."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final k0(I)Luf/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Lof/a;->i:I

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Luf/f;->p:Laf/l;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fusion mode different. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Luf/f;->s0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", actual: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Luf/f;->s0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    const-string p1, "Upstream is not fuseable"

    invoke-virtual {p0, p1}, Lof/a;->a0(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    :cond_1
    return-object p0
.end method

.method public final l0()Luf/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Luf/f;->p:Laf/l;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Upstream is fuseable."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final m0()Luf/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Luf/f;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lof/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "Not subscribed but errors found"

    invoke-virtual {p0, v0}, Lof/a;->a0(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    :cond_1
    const-string v0, "Subscribed!"

    invoke-virtual {p0, v0}, Lof/a;->a0(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final n0(LXe/g;)Luf/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-",
            "Luf/f<",
            "TT;>;>;)",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p0}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final o0()Luf/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Luf/f;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "Not subscribed!"

    invoke-virtual {p0, v0}, Lof/a;->a0(Ljava/lang/String;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, Lof/a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lof/a;->g:Z

    iget-object v0, p0, Luf/f;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lof/a;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onSubscribe not called in proper order"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lof/a;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lof/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lof/a;->d:Ljava/util/List;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onError received a null Throwable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Luf/f;->l:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lof/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_1
    iget-object v0, p0, Lof/a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public final t0()Z
    .locals 1

    iget-object v0, p0, Luf/f;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u0()Z
    .locals 1

    iget-boolean v0, p0, Luf/f;->m:Z

    return v0
.end method

.method public v0()V
    .locals 0

    return-void
.end method

.method public final w0(J)Luf/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Luf/f;->i(J)V

    return-object p0
.end method

.method public bridge synthetic x()Lof/a;
    .locals 1

    invoke-virtual {p0}, Luf/f;->m0()Luf/f;

    move-result-object v0

    return-object v0
.end method

.method public final x0(I)Luf/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lof/a;->h:I

    return-object p0
.end method
