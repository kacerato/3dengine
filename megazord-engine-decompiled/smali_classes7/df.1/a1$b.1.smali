.class public final Ldf/a1$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/a1;
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
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final f:J = -0x66f7ddf0554a95a7L


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ldf/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/a1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ldf/a1$a;

.field public e:LCi/d;


# direct methods
.method public constructor <init>(LCi/c;Ldf/a1;Ldf/a1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "Ldf/a1<",
            "TT;>;",
            "Ldf/a1$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Ldf/a1$b;->b:LCi/c;

    iput-object p2, p0, Ldf/a1$b;->c:Ldf/a1;

    iput-object p3, p0, Ldf/a1$b;->d:Ldf/a1$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/a1$b;->c:Ldf/a1;

    iget-object v1, p0, Ldf/a1$b;->d:Ldf/a1$a;

    invoke-virtual {v0, v1}, Ldf/a1;->P8(Ldf/a1$a;)V

    iget-object v0, p0, Ldf/a1$b;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Ldf/a1$b;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/a1$b;->c:Ldf/a1;

    iget-object v1, p0, Ldf/a1$b;->d:Ldf/a1$a;

    invoke-virtual {v0, v1}, Ldf/a1;->O8(Ldf/a1$a;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a1$b;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 1

    iget-object v0, p0, Ldf/a1$b;->e:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/a1$b;->e:LCi/d;

    iget-object p1, p0, Ldf/a1$b;->b:LCi/c;

    invoke-interface {p1, p0}, LCi/c;->h(LCi/d;)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, Ldf/a1$b;->e:LCi/d;

    invoke-interface {v0, p1, p2}, LCi/d;->i(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/a1$b;->c:Ldf/a1;

    iget-object v1, p0, Ldf/a1$b;->d:Ldf/a1$a;

    invoke-virtual {v0, v1}, Ldf/a1;->P8(Ldf/a1$a;)V

    iget-object v0, p0, Ldf/a1$b;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
