.class public final Lif/i$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/q<",
        "TU;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final f:J = -0x76ddf7e9b08d21a8L


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:LCi/d;


# direct methods
.method public constructor <init>(LTe/N;LTe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;",
            "LTe/Q<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lif/i$a;->b:LTe/N;

    iput-object p2, p0, Lif/i$a;->c:LTe/Q;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lif/i$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lif/i$a;->d:Z

    iget-object v0, p0, Lif/i$a;->c:LTe/Q;

    new-instance v1, Lbf/z;

    iget-object v2, p0, Lif/i$a;->b:LTe/N;

    invoke-direct {v1, p0, v2}, Lbf/z;-><init>(Ljava/util/concurrent/atomic/AtomicReference;LTe/N;)V

    invoke-interface {v0, v1}, LTe/Q;->a(LTe/N;)V

    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lif/i$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget-object p1, p0, Lif/i$a;->e:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    invoke-virtual {p0}, Lif/i$a;->a()V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Lif/i$a;->e:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lif/i$a;->e:LCi/d;

    iget-object v0, p0, Lif/i$a;->b:LTe/N;

    invoke-interface {v0, p0}, LTe/N;->e(LVe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lif/i$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lif/i$a;->d:Z

    iget-object v0, p0, Lif/i$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
