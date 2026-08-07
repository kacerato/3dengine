.class public abstract Llf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf/a;
.implements Laf/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Laf/a<",
        "TT;>;",
        "Laf/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Laf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/a<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public c:LCi/d;

.field public d:Laf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Laf/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laf/a<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llf/a;->b:Laf/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Llf/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/a;->e:Z

    iget-object v0, p0, Llf/a;->b:Laf/a;

    invoke-interface {v0}, LCi/c;->a()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Llf/a;->c:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Llf/a;->d:Laf/l;

    invoke-interface {v0}, Laf/o;->clear()V

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Llf/a;->c:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-virtual {p0, p1}, Llf/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(I)I
    .locals 2

    iget-object v0, p0, Llf/a;->d:Laf/l;

    if-eqz v0, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Laf/k;->m(I)I

    move-result p1

    if-eqz p1, :cond_0

    iput p1, p0, Llf/a;->f:I

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final h(LCi/d;)V
    .locals 1

    iget-object v0, p0, Llf/a;->c:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Llf/a;->c:LCi/d;

    instance-of v0, p1, Laf/l;

    if-eqz v0, :cond_0

    check-cast p1, Laf/l;

    iput-object p1, p0, Llf/a;->d:Laf/l;

    :cond_0
    invoke-virtual {p0}, Llf/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Llf/a;->b:Laf/a;

    invoke-interface {p1, p0}, LTe/q;->h(LCi/d;)V

    invoke-virtual {p0}, Llf/a;->b()V

    :cond_1
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, Llf/a;->c:LCi/d;

    invoke-interface {v0, p1, p2}, LCi/d;->i(J)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Llf/a;->d:Laf/l;

    invoke-interface {v0}, Laf/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Llf/a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/a;->e:Z

    iget-object v0, p0, Llf/a;->b:Laf/a;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final r(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
