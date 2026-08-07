.class public final Ldf/B1$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/B1;
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
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final g:J = -0x4e3906c454cf527fL


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

.field public d:Z

.field public e:LCi/d;

.field public f:J


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

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Ldf/B1$a;->b:LCi/c;

    iput-wide p2, p0, Ldf/B1$a;->c:J

    iput-wide p2, p0, Ldf/B1$a;->f:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Ldf/B1$a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/B1$a;->d:Z

    iget-object v0, p0, Ldf/B1$a;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Ldf/B1$a;->e:LCi/d;

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

    iget-boolean v0, p0, Ldf/B1$a;->d:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Ldf/B1$a;->f:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Ldf/B1$a;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldf/B1$a;->b:LCi/c;

    invoke-interface {v1, p1}, LCi/c;->g(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    iget-object p1, p0, Ldf/B1$a;->e:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    invoke-virtual {p0}, Ldf/B1$a;->a()V

    :cond_1
    return-void
.end method

.method public h(LCi/d;)V
    .locals 4

    iget-object v0, p0, Ldf/B1$a;->e:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Ldf/B1$a;->e:LCi/d;

    iget-wide v0, p0, Ldf/B1$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-interface {p1}, LCi/d;->cancel()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldf/B1$a;->d:Z

    iget-object p1, p0, Ldf/B1$a;->b:LCi/c;

    invoke-static {p1}, Lmf/g;->a(LCi/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldf/B1$a;->b:LCi/c;

    invoke-interface {p1, p0}, LCi/c;->h(LCi/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(J)V
    .locals 2

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ldf/B1$a;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget-object p1, p0, Ldf/B1$a;->e:LCi/d;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    return-void

    :cond_1
    iget-object v0, p0, Ldf/B1$a;->e:LCi/d;

    invoke-interface {v0, p1, p2}, LCi/d;->i(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Ldf/B1$a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/B1$a;->d:Z

    iget-object v0, p0, Ldf/B1$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    iget-object v0, p0, Ldf/B1$a;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
