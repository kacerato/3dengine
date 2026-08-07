.class public abstract Lbf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements Laf/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/I<",
        "TT;>;",
        "Laf/j<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public c:LVe/c;

.field public d:Laf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(LTe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbf/a;->b:LTe/I;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lbf/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/a;->e:Z

    iget-object v0, p0, Lbf/a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

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

.method public clear()V
    .locals 1

    iget-object v0, p0, Lbf/a;->d:Laf/j;

    invoke-interface {v0}, Laf/o;->clear()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lbf/a;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lbf/a;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public final e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lbf/a;->c:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lbf/a;->c:LVe/c;

    instance-of v0, p1, Laf/j;

    if-eqz v0, :cond_0

    check-cast p1, Laf/j;

    iput-object p1, p0, Lbf/a;->d:Laf/j;

    :cond_0
    invoke-virtual {p0}, Lbf/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbf/a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    invoke-virtual {p0}, Lbf/a;->b()V

    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lbf/a;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0, p1}, Lbf/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final h(I)I
    .locals 2

    iget-object v0, p0, Lbf/a;->d:Laf/j;

    if-eqz v0, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Laf/k;->m(I)I

    move-result p1

    if-eqz p1, :cond_0

    iput p1, p0, Lbf/a;->f:I

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lbf/a;->d:Laf/j;

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

    iget-boolean v0, p0, Lbf/a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/a;->e:Z

    iget-object v0, p0, Lbf/a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

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
