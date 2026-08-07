.class public final Ldf/H$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/H;
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
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final j:J = -0x7e5310a1f6e139dcL


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J$c;

.field public f:LCi/d;

.field public g:LVe/c;

.field public volatile h:J

.field public i:Z


# direct methods
.method public constructor <init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/H$b;->b:LCi/c;

    iput-wide p2, p0, Ldf/H$b;->c:J

    iput-object p4, p0, Ldf/H$b;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ldf/H$b;->e:LTe/J$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Ldf/H$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/H$b;->i:Z

    iget-object v0, p0, Ldf/H$b;->g:LVe/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_1
    check-cast v0, Ldf/H$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ldf/H$a;->a()V

    :cond_2
    iget-object v0, p0, Ldf/H$b;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    iget-object v0, p0, Ldf/H$b;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public b(JLjava/lang/Object;Ldf/H$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Ldf/H$a<",
            "TT;>;)V"
        }
    .end annotation

    iget-wide v0, p0, Ldf/H$b;->h:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldf/H$b;->b:LCi/c;

    invoke-interface {p1, p3}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide/16 p1, 0x1

    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p4}, Ldf/H$a;->dispose()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ldf/H$b;->cancel()V

    iget-object p1, p0, Ldf/H$b;->b:LCi/c;

    new-instance p2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p3, "Could not deliver value due to lack of requests"

    invoke-direct {p2, p3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, LCi/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Ldf/H$b;->f:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    iget-object v0, p0, Ldf/H$b;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/H$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Ldf/H$b;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldf/H$b;->h:J

    iget-object v2, p0, Ldf/H$b;->g:LVe/c;

    if-eqz v2, :cond_1

    invoke-interface {v2}, LVe/c;->dispose()V

    :cond_1
    new-instance v2, Ldf/H$a;

    invoke-direct {v2, p1, v0, v1, p0}, Ldf/H$a;-><init>(Ljava/lang/Object;JLdf/H$b;)V

    iput-object v2, p0, Ldf/H$b;->g:LVe/c;

    iget-object p1, p0, Ldf/H$b;->e:LTe/J$c;

    iget-wide v0, p0, Ldf/H$b;->c:J

    iget-object v3, p0, Ldf/H$b;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v2, p1}, Ldf/H$a;->b(LVe/c;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/H$b;->f:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/H$b;->f:LCi/d;

    iget-object v0, p0, Ldf/H$b;->b:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Ldf/H$b;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/H$b;->i:Z

    iget-object v0, p0, Ldf/H$b;->g:LVe/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_1
    iget-object v0, p0, Ldf/H$b;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, Ldf/H$b;->e:LTe/J$c;

    invoke-interface {p1}, LVe/c;->dispose()V

    return-void
.end method
