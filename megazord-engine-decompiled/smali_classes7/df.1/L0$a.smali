.class public final Ldf/L0$a;
.super Lmf/c;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/L0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmf/c<",
        "TT;>;",
        "LTe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final m:J = -0x22e56f1b1faaa1c2L


# instance fields
.field public final c:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:Laf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:LXe/a;

.field public g:LCi/d;

.field public volatile h:Z

.field public volatile i:Z

.field public j:Ljava/lang/Throwable;

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public l:Z


# direct methods
.method public constructor <init>(LCi/c;IZZLXe/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;IZZ",
            "LXe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lmf/c;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Ldf/L0$a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Ldf/L0$a;->c:LCi/c;

    iput-object p5, p0, Ldf/L0$a;->f:LXe/a;

    iput-boolean p4, p0, Ldf/L0$a;->e:Z

    if-eqz p3, :cond_0

    new-instance p1, Ljf/c;

    invoke-direct {p1, p2}, Ljf/c;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljf/b;

    invoke-direct {p1, p2}, Ljf/b;-><init>(I)V

    :goto_0
    iput-object p1, p0, Ldf/L0$a;->d:Laf/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/L0$a;->i:Z

    iget-boolean v0, p0, Ldf/L0$a;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/L0$a;->c:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ldf/L0$a;->f()V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Ldf/L0$a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/L0$a;->h:Z

    iget-object v0, p0, Ldf/L0$a;->g:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldf/L0$a;->d:Laf/n;

    invoke-interface {v0}, Laf/o;->clear()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Ldf/L0$a;->d:Laf/n;

    invoke-interface {v0}, Laf/o;->clear()V

    return-void
.end method

.method public d(ZZLCi/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "LCi/c<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/L0$a;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Ldf/L0$a;->d:Laf/n;

    invoke-interface {p1}, Laf/o;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    iget-boolean p1, p0, Ldf/L0$a;->e:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    iget-object p1, p0, Ldf/L0$a;->j:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, LCi/c;->a()V

    :goto_0
    return v1

    :cond_2
    iget-object p1, p0, Ldf/L0$a;->j:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    iget-object p2, p0, Ldf/L0$a;->d:Laf/n;

    invoke-interface {p2}, Laf/o;->clear()V

    invoke-interface {p3, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p3}, LCi/c;->a()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public f()V
    .locals 14

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Ldf/L0$a;->d:Laf/n;

    iget-object v1, p0, Ldf/L0$a;->c:LCi/c;

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    iget-boolean v4, p0, Ldf/L0$a;->i:Z

    invoke-interface {v0}, Laf/o;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Ldf/L0$a;->d(ZZLCi/c;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Ldf/L0$a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_5

    iget-boolean v11, p0, Ldf/L0$a;->i:Z

    invoke-interface {v0}, Laf/n;->poll()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    move v13, v2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {p0, v11, v13, v1}, Ldf/L0$a;->d(ZZLCi/c;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-void

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1, v12}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v10, :cond_6

    iget-boolean v10, p0, Ldf/L0$a;->i:Z

    invoke-interface {v0}, Laf/o;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v1}, Ldf/L0$a;->d(ZZLCi/c;)Z

    move-result v10

    if-eqz v10, :cond_6

    return-void

    :cond_6
    cmp-long v6, v8, v6

    if-eqz v6, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    iget-object v4, p0, Ldf/L0$a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_7
    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/L0$a;->d:Laf/n;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldf/L0$a;->g:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Buffer is full"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Ldf/L0$a;->f:LXe/a;

    invoke-interface {v0}, LXe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :goto_0
    invoke-virtual {p0, p1}, Ldf/L0$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Ldf/L0$a;->l:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldf/L0$a;->c:LCi/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LCi/c;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ldf/L0$a;->f()V

    :goto_1
    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/L0$a;->g:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/L0$a;->g:LCi/d;

    iget-object v0, p0, Ldf/L0$a;->c:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-boolean v0, p0, Ldf/L0$a;->l:Z

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/L0$a;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Ldf/L0$a;->f()V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Ldf/L0$a;->d:Laf/n;

    invoke-interface {v0}, Laf/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public m(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldf/L0$a;->l:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, Ldf/L0$a;->j:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/L0$a;->i:Z

    iget-boolean v0, p0, Ldf/L0$a;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/L0$a;->c:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ldf/L0$a;->f()V

    :goto_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation build LUe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ldf/L0$a;->d:Laf/n;

    invoke-interface {v0}, Laf/n;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
