.class public final Lgf/O0$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/O0;
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
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final f:J = -0x66f7ddf0554a95a7L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lgf/O0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/O0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lgf/O0$a;

.field public e:LVe/c;


# direct methods
.method public constructor <init>(LTe/I;Lgf/O0;Lgf/O0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "Lgf/O0<",
            "TT;>;",
            "Lgf/O0$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lgf/O0$b;->b:LTe/I;

    iput-object p2, p0, Lgf/O0$b;->c:Lgf/O0;

    iput-object p3, p0, Lgf/O0$b;->d:Lgf/O0$a;

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

    iget-object v0, p0, Lgf/O0$b;->c:Lgf/O0;

    iget-object v1, p0, Lgf/O0$b;->d:Lgf/O0$a;

    invoke-virtual {v0, v1}, Lgf/O0;->k8(Lgf/O0$a;)V

    iget-object v0, p0, Lgf/O0$b;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/O0$b;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lgf/O0$b;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/O0$b;->c:Lgf/O0;

    iget-object v1, p0, Lgf/O0$b;->d:Lgf/O0$a;

    invoke-virtual {v0, v1}, Lgf/O0;->j8(Lgf/O0$a;)V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/O0$b;->e:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/O0$b;->e:LVe/c;

    iget-object p1, p0, Lgf/O0$b;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

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

    iget-object v0, p0, Lgf/O0$b;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/O0$b;->c:Lgf/O0;

    iget-object v1, p0, Lgf/O0$b;->d:Lgf/O0$a;

    invoke-virtual {v0, v1}, Lgf/O0;->k8(Lgf/O0$a;)V

    iget-object v0, p0, Lgf/O0$b;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
