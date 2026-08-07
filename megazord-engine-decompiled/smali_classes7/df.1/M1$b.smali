.class public final Ldf/M1$b;
.super Lmf/i;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements Ldf/M1$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/M1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmf/i;",
        "LTe/q<",
        "TT;>;",
        "Ldf/M1$c;"
    }
.end annotation


# static fields
.field public static final r:J = 0x343e2a2afd6bc01eL


# instance fields
.field public final k:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final l:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final m:LYe/h;

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

.field public p:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public q:J


# direct methods
.method public constructor <init>(LCi/c;LXe/o;LCi/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "*>;>;",
            "LCi/b<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/i;-><init>(Z)V

    iput-object p1, p0, Ldf/M1$b;->k:LCi/c;

    iput-object p2, p0, Ldf/M1$b;->l:LXe/o;

    new-instance p1, LYe/h;

    invoke-direct {p1}, LYe/h;-><init>()V

    iput-object p1, p0, Ldf/M1$b;->m:LYe/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/M1$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Ldf/M1$b;->p:LCi/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Ldf/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/M1$b;->m:LYe/h;

    invoke-virtual {v0}, LYe/h;->dispose()V

    iget-object v0, p0, Ldf/M1$b;->k:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    iget-object v0, p0, Ldf/M1$b;->m:LYe/h;

    invoke-virtual {v0}, LYe/h;->dispose()V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 4

    iget-object v0, p0, Ldf/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldf/M1$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, Ldf/M1$b;->p:LCi/b;

    const/4 p2, 0x0

    iput-object p2, p0, Ldf/M1$b;->p:LCi/b;

    iget-wide v0, p0, Ldf/M1$b;->q:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0, v1}, Lmf/i;->k(J)V

    :cond_0
    new-instance p2, Ldf/N1$a;

    iget-object v0, p0, Ldf/M1$b;->k:LCi/c;

    invoke-direct {p2, v0, p0}, Ldf/N1$a;-><init>(LCi/c;Lmf/i;)V

    invoke-interface {p1, p2}, LCi/b;->l(LCi/c;)V

    :cond_1
    return-void
.end method

.method public c(JLjava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Ldf/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldf/M1$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, Ldf/M1$b;->k:LCi/c;

    invoke-interface {p1, p3}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, Lmf/i;->cancel()V

    iget-object v0, p0, Ldf/M1$b;->m:LYe/h;

    invoke-virtual {v0}, LYe/h;->dispose()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-object v4, p0, Ldf/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x1

    add-long v7, v0, v5

    invoke-virtual {v4, v0, v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldf/M1$b;->m:LYe/h;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_1
    iget-wide v0, p0, Ldf/M1$b;->q:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Ldf/M1$b;->q:J

    iget-object v0, p0, Ldf/M1$b;->k:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Ldf/M1$b;->l:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The itemTimeoutIndicator returned a null Publisher."

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCi/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ldf/M1$a;

    invoke-direct {v0, v7, v8, p0}, Ldf/M1$a;-><init>(JLdf/M1$c;)V

    iget-object v1, p0, Ldf/M1$b;->m:LYe/h;

    invoke-virtual {v1, v0}, LYe/h;->a(LVe/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, LCi/b;->l(LCi/c;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ldf/M1$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    iget-object v0, p0, Ldf/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    iget-object v0, p0, Ldf/M1$b;->k:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 1

    iget-object v0, p0, Ldf/M1$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lmf/j;->j(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/i;->l(LCi/d;)V

    :cond_0
    return-void
.end method

.method public m(LCi/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ldf/M1$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0}, Ldf/M1$a;-><init>(JLdf/M1$c;)V

    iget-object v1, p0, Ldf/M1$b;->m:LYe/h;

    invoke-virtual {v1, v0}, LYe/h;->a(LVe/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, LCi/b;->l(LCi/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Ldf/M1$b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/M1$b;->m:LYe/h;

    invoke-virtual {v0}, LYe/h;->dispose()V

    iget-object v0, p0, Ldf/M1$b;->k:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, Ldf/M1$b;->m:LYe/h;

    invoke-virtual {p1}, LYe/h;->dispose()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
