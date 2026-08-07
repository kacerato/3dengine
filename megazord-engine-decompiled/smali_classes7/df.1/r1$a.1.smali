.class public final Ldf/r1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/r1;
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
        "Ljava/lang/Object;",
        "LTe/q<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/v<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public c:LCi/d;

.field public d:Z

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/r1$a;->b:LTe/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Ldf/r1$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/r1$a;->d:Z

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/r1$a;->c:LCi/d;

    iget-object v0, p0, Ldf/r1$a;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Ldf/r1$a;->e:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Ldf/r1$a;->b:LTe/v;

    invoke-interface {v0}, LTe/v;->a()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldf/r1$a;->b:LTe/v;

    invoke-interface {v1, v0}, LTe/v;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Ldf/r1$a;->c:LCi/d;

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Ldf/r1$a;->c:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/r1$a;->c:LCi/d;

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/r1$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldf/r1$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldf/r1$a;->d:Z

    iget-object p1, p0, Ldf/r1$a;->c:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    sget-object p1, Lmf/j;->CANCELLED:Lmf/j;

    iput-object p1, p0, Ldf/r1$a;->c:LCi/d;

    iget-object p1, p0, Ldf/r1$a;->b:LTe/v;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iput-object p1, p0, Ldf/r1$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/r1$a;->c:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/r1$a;->c:LCi/d;

    iget-object v0, p0, Ldf/r1$a;->b:LTe/v;

    invoke-interface {v0, p0}, LTe/v;->e(LVe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Ldf/r1$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/r1$a;->d:Z

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/r1$a;->c:LCi/d;

    iget-object v0, p0, Ldf/r1$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
