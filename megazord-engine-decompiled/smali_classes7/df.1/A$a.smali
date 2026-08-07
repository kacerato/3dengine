.class public final Ldf/A$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LTe/f;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/A;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/q<",
        "TT;>;",
        "LTe/f;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final f:J = -0x65f39aa804f9be51L


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public c:LCi/d;

.field public d:LTe/i;

.field public e:Z


# direct methods
.method public constructor <init>(LCi/c;LTe/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "LTe/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/A$a;->b:LCi/c;

    iput-object p2, p0, Ldf/A$a;->d:LTe/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Ldf/A$a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/A$a;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/A$a;->e:Z

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/A$a;->c:LCi/d;

    iget-object v0, p0, Ldf/A$a;->d:LTe/i;

    const/4 v1, 0x0

    iput-object v1, p0, Ldf/A$a;->d:LTe/i;

    invoke-interface {v0, p0}, LTe/i;->b(LTe/f;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Ldf/A$a;->c:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/A$a;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 1

    iget-object v0, p0, Ldf/A$a;->c:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/A$a;->c:LCi/d;

    iget-object p1, p0, Ldf/A$a;->b:LCi/c;

    invoke-interface {p1, p0}, LCi/c;->h(LCi/d;)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, Ldf/A$a;->c:LCi/d;

    invoke-interface {v0, p1, p2}, LCi/d;->i(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/A$a;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
