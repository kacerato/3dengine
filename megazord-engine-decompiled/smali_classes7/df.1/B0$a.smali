.class public final Ldf/B0$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/B0;
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
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final e:J = 0x1fc17b9fa19967edL


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public c:J

.field public d:LCi/d;


# direct methods
.method public constructor <init>(LCi/c;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/B0$a;->b:LCi/c;

    iput-wide p2, p0, Ldf/B0$a;->c:J

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-wide v0, p0, Ldf/B0$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iput-wide v2, p0, Ldf/B0$a;->c:J

    iget-object v0, p0, Ldf/B0$a;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Ldf/B0$a;->d:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Ldf/B0$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    iput-wide v0, p0, Ldf/B0$a;->c:J

    iget-object v4, p0, Ldf/B0$a;->b:LCi/c;

    invoke-interface {v4, p1}, LCi/c;->g(Ljava/lang/Object;)V

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iget-object p1, p0, Ldf/B0$a;->d:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    iget-object p1, p0, Ldf/B0$a;->b:LCi/c;

    invoke-interface {p1}, LCi/c;->a()V

    :cond_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 4

    iget-object v0, p0, Ldf/B0$a;->d:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ldf/B0$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-interface {p1}, LCi/d;->cancel()V

    iget-object p1, p0, Ldf/B0$a;->b:LCi/c;

    invoke-static {p1}, Lmf/g;->a(LCi/c;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ldf/B0$a;->d:LCi/d;

    iget-object p1, p0, Ldf/B0$a;->b:LCi/c;

    invoke-interface {p1, p0}, LCi/c;->h(LCi/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(J)V
    .locals 6

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v2, v0, p1

    if-gtz v2, :cond_2

    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v2, p1

    :goto_0
    sub-long v4, v0, v2

    invoke-virtual {p0, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ldf/B0$a;->d:LCi/d;

    invoke-interface {p1, v2, v3}, LCi/d;->i(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    iget-wide v0, p0, Ldf/B0$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iput-wide v2, p0, Ldf/B0$a;->c:J

    iget-object v0, p0, Ldf/B0$a;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
