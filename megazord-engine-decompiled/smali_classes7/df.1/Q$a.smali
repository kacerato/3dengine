.class public final Ldf/Q$a;
.super Lmf/c;
.source "SourceFile"

# interfaces
.implements Laf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/Q;
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
        "Laf/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final h:J = 0x3907ba0b13897e3dL


# instance fields
.field public final c:Laf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/a<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:LXe/a;

.field public e:LCi/d;

.field public f:Laf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Laf/a;LXe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laf/a<",
            "-TT;>;",
            "LXe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lmf/c;-><init>()V

    iput-object p1, p0, Ldf/Q$a;->c:Laf/a;

    iput-object p2, p0, Ldf/Q$a;->d:LXe/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldf/Q$a;->c:Laf/a;

    invoke-interface {v0}, LCi/c;->a()V

    invoke-virtual {p0}, Ldf/Q$a;->d()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Ldf/Q$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-virtual {p0}, Ldf/Q$a;->d()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Ldf/Q$a;->f:Laf/l;

    invoke-interface {v0}, Laf/o;->clear()V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ldf/Q$a;->d:LXe/a;

    invoke-interface {v0}, LXe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/Q$a;->c:Laf/a;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 1

    iget-object v0, p0, Ldf/Q$a;->e:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Ldf/Q$a;->e:LCi/d;

    instance-of v0, p1, Laf/l;

    if-eqz v0, :cond_0

    check-cast p1, Laf/l;

    iput-object p1, p0, Ldf/Q$a;->f:Laf/l;

    :cond_0
    iget-object p1, p0, Ldf/Q$a;->c:Laf/a;

    invoke-interface {p1, p0}, LTe/q;->h(LCi/d;)V

    :cond_1
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, Ldf/Q$a;->e:LCi/d;

    invoke-interface {v0, p1, p2}, LCi/d;->i(J)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Ldf/Q$a;->f:Laf/l;

    invoke-interface {v0}, Laf/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public m(I)I
    .locals 3

    iget-object v0, p0, Ldf/Q$a;->f:Laf/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    and-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_2

    invoke-interface {v0, p1}, Laf/k;->m(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Ldf/Q$a;->g:Z

    :cond_1
    return p1

    :cond_2
    return v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/Q$a;->c:Laf/a;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/Q$a;->d()V

    return-void
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Ldf/Q$a;->c:Laf/a;

    invoke-interface {v0, p1}, Laf/a;->p(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
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

    iget-object v0, p0, Ldf/Q$a;->f:Laf/l;

    invoke-interface {v0}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Ldf/Q$a;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ldf/Q$a;->d()V

    :cond_0
    return-object v0
.end method
