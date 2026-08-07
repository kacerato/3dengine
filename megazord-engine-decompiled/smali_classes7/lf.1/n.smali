.class public abstract Llf/n;
.super Llf/r;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements Lio/reactivex/internal/util/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Llf/r;",
        "LTe/q<",
        "TT;>;",
        "Lio/reactivex/internal/util/t<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field public final W:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TV;>;"
        }
    .end annotation
.end field

.field public final X:Laf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/n<",
            "TU;>;"
        }
    .end annotation
.end field

.field public volatile Y:Z

.field public volatile Z:Z

.field public q0:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LCi/c;Laf/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TV;>;",
            "Laf/n<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Llf/r;-><init>()V

    iput-object p1, p0, Llf/n;->W:LCi/c;

    iput-object p2, p0, Llf/n;->X:Laf/n;

    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 1

    iget-object v0, p0, Llf/s;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Llf/s;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final done()Z
    .locals 1

    iget-boolean v0, p0, Llf/n;->Z:Z

    return v0
.end method

.method public final e(J)J
    .locals 1

    iget-object v0, p0, Llf/q;->G:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long p1, p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Llf/n;->Y:Z

    return v0
.end method

.method public final k()J
    .locals 2

    iget-object v0, p0, Llf/q;->G:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Llf/n;->q0:Ljava/lang/Throwable;

    return-object v0
.end method

.method public m(LCi/c;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TV;>;TU;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final n()Z
    .locals 3

    iget-object v0, p0, Llf/s;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Llf/s;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final o(Ljava/lang/Object;ZLVe/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "LVe/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Llf/n;->W:LCi/c;

    iget-object v1, p0, Llf/n;->X:Laf/n;

    invoke-virtual {p0}, Llf/n;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Llf/q;->G:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, p1}, Llf/n;->m(LCi/c;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Llf/n;->e(J)J

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Llf/n;->b(I)I

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_1
    invoke-interface {p3}, LVe/c;->dispose()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p2, "Could not emit buffer due to lack of requests"

    invoke-direct {p1, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {v1, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/u;->e(Laf/n;LCi/c;ZLVe/c;Lio/reactivex/internal/util/t;)V

    return-void
.end method

.method public final q(Ljava/lang/Object;ZLVe/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "LVe/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Llf/n;->W:LCi/c;

    iget-object v1, p0, Llf/n;->X:Laf/n;

    invoke-virtual {p0}, Llf/n;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Llf/q;->G:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Laf/o;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, p1}, Llf/n;->m(LCi/c;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Llf/n;->e(J)J

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Llf/n;->b(I)I

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_1
    invoke-interface {v1, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Llf/n;->Y:Z

    invoke-interface {p3}, LVe/c;->dispose()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p2, "Could not emit buffer due to lack of requests"

    invoke-direct {p1, p2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-interface {v1, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/u;->e(Laf/n;LCi/c;ZLVe/c;Lio/reactivex/internal/util/t;)V

    return-void
.end method

.method public final r(J)V
    .locals 1

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llf/q;->G:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
