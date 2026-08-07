.class public final Ldf/s0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/s0;
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
.field public final b:LTe/f;

.field public c:LCi/d;


# direct methods
.method public constructor <init>(LTe/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/s0$a;->b:LTe/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/s0$a;->c:LCi/d;

    iget-object v0, p0, Ldf/s0$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Ldf/s0$a;->c:LCi/d;

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

    iget-object v0, p0, Ldf/s0$a;->c:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/s0$a;->c:LCi/d;

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/s0$a;->c:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/s0$a;->c:LCi/d;

    iget-object v0, p0, Ldf/s0$a;->b:LTe/f;

    invoke-interface {v0, p0}, LTe/f;->e(LVe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/s0$a;->c:LCi/d;

    iget-object v0, p0, Ldf/s0$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
