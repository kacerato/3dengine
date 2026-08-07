.class public final Lgf/N$a;
.super Lbf/b;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/N;
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
        "Lbf/b<",
        "TT;>;",
        "LTe/I<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final h:J = 0x3907ba0b13897e3dL


# instance fields
.field public final c:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:LXe/a;

.field public e:LVe/c;

.field public f:Laf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(LTe/I;LXe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "LXe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lbf/b;-><init>()V

    iput-object p1, p0, Lgf/N$a;->c:LTe/I;

    iput-object p2, p0, Lgf/N$a;->d:LXe/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lgf/N$a;->c:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    invoke-virtual {p0}, Lgf/N$a;->c()V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lgf/N$a;->d:LXe/a;

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

.method public clear()V
    .locals 1

    iget-object v0, p0, Lgf/N$a;->f:Laf/j;

    invoke-interface {v0}, Laf/o;->clear()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/N$a;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/N$a;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0}, Lgf/N$a;->c()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/N$a;->e:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lgf/N$a;->e:LVe/c;

    instance-of v0, p1, Laf/j;

    if-eqz v0, :cond_0

    check-cast p1, Laf/j;

    iput-object p1, p0, Lgf/N$a;->f:Laf/j;

    :cond_0
    iget-object p1, p0, Lgf/N$a;->c:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/N$a;->c:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lgf/N$a;->f:Laf/j;

    invoke-interface {v0}, Laf/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public m(I)I
    .locals 3

    iget-object v0, p0, Lgf/N$a;->f:Laf/j;

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
    iput-boolean v1, p0, Lgf/N$a;->g:Z

    :cond_1
    return p1

    :cond_2
    return v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/N$a;->c:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lgf/N$a;->c()V

    return-void
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

    iget-object v0, p0, Lgf/N$a;->f:Laf/j;

    invoke-interface {v0}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lgf/N$a;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgf/N$a;->c()V

    :cond_0
    return-object v0
.end method
