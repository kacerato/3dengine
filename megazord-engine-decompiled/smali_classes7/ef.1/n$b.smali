.class public final Lef/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/n;
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
        "Ljava/lang/Object;",
        "LTe/q<",
        "Ljava/lang/Object;",
        ">;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:Lef/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef/n$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/y<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:LCi/d;


# direct methods
.method public constructor <init>(LTe/v;LTe/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;",
            "LTe/y<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lef/n$a;

    invoke-direct {v0, p1}, Lef/n$a;-><init>(LTe/v;)V

    iput-object v0, p0, Lef/n$b;->b:Lef/n$a;

    iput-object p2, p0, Lef/n$b;->c:LTe/y;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lef/n$b;->d:LCi/d;

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lef/n$b;->d:LCi/d;

    invoke-virtual {p0}, Lef/n$b;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lef/n$b;->c:LTe/y;

    const/4 v1, 0x0

    iput-object v1, p0, Lef/n$b;->c:LTe/y;

    iget-object v1, p0, Lef/n$b;->b:Lef/n$a;

    invoke-interface {v0, v1}, LTe/y;->d(LTe/v;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lef/n$b;->b:Lef/n$a;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lef/n$b;->d:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Lef/n$b;->d:LCi/d;

    iget-object v0, p0, Lef/n$b;->b:Lef/n$a;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lef/n$b;->d:LCi/d;

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    if-eq p1, v0, :cond_0

    invoke-interface {p1}, LCi/d;->cancel()V

    iput-object v0, p0, Lef/n$b;->d:LCi/d;

    invoke-virtual {p0}, Lef/n$b;->b()V

    :cond_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Lef/n$b;->d:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lef/n$b;->d:LCi/d;

    iget-object v0, p0, Lef/n$b;->b:Lef/n$a;

    iget-object v0, v0, Lef/n$a;->b:LTe/v;

    invoke-interface {v0, p0}, LTe/v;->e(LVe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lef/n$b;->d:LCi/d;

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lef/n$b;->d:LCi/d;

    iget-object v0, p0, Lef/n$b;->b:Lef/n$a;

    iget-object v0, v0, Lef/n$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
