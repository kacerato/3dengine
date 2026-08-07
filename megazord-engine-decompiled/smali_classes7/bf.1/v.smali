.class public abstract Lbf/v;
.super Lbf/x;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements Lio/reactivex/internal/util/q;


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
        "Lbf/x;",
        "LTe/I<",
        "TT;>;",
        "Lio/reactivex/internal/util/q<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field public final G:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TV;>;"
        }
    .end annotation
.end field

.field public final H:Laf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/n<",
            "TU;>;"
        }
    .end annotation
.end field

.field public volatile I:Z

.field public volatile J:Z

.field public K:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LTe/I;Laf/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TV;>;",
            "Laf/n<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lbf/x;-><init>()V

    iput-object p1, p0, Lbf/v;->G:LTe/I;

    iput-object p2, p0, Lbf/v;->H:Laf/n;

    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 1

    iget-object v0, p0, Lbf/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    return p1
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lbf/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

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

    iget-boolean v0, p0, Lbf/v;->J:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lbf/v;->I:Z

    return v0
.end method

.method public final h()Z
    .locals 3

    iget-object v0, p0, Lbf/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbf/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public final i(Ljava/lang/Object;ZLVe/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "LVe/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lbf/v;->G:LTe/I;

    iget-object v1, p0, Lbf/v;->H:Laf/n;

    iget-object v2, p0, Lbf/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lbf/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lbf/v;->m(LTe/I;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lbf/v;->b(I)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_0
    invoke-interface {v1, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/u;->d(Laf/n;LTe/I;ZLVe/c;Lio/reactivex/internal/util/q;)V

    return-void
.end method

.method public final k(Ljava/lang/Object;ZLVe/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;Z",
            "LVe/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lbf/v;->G:LTe/I;

    iget-object v1, p0, Lbf/v;->H:Laf/n;

    iget-object v2, p0, Lbf/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lbf/y;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Laf/o;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lbf/v;->m(LTe/I;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lbf/v;->b(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_0
    invoke-interface {v1, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/internal/util/u;->d(Laf/n;LTe/I;ZLVe/c;Lio/reactivex/internal/util/q;)V

    return-void
.end method

.method public final l()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lbf/v;->K:Ljava/lang/Throwable;

    return-object v0
.end method

.method public m(LTe/I;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TV;>;TU;)V"
        }
    .end annotation

    return-void
.end method
