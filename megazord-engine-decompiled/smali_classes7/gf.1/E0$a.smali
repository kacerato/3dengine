.class public final Lgf/E0$a;
.super Lbf/b;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/E0;
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
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final n:J = 0x5b45d4a143741ca0L


# instance fields
.field public final c:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:LTe/J$c;

.field public final e:Z

.field public final f:I

.field public g:Laf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:LVe/c;

.field public i:Ljava/lang/Throwable;

.field public volatile j:Z

.field public volatile k:Z

.field public l:I

.field public m:Z


# direct methods
.method public constructor <init>(LTe/I;LTe/J$c;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "LTe/J$c;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Lbf/b;-><init>()V

    iput-object p1, p0, Lgf/E0$a;->c:LTe/I;

    iput-object p2, p0, Lgf/E0$a;->d:LTe/J$c;

    iput-boolean p3, p0, Lgf/E0$a;->e:Z

    iput p4, p0, Lgf/E0$a;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lgf/E0$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/E0$a;->j:Z

    invoke-virtual {p0}, Lgf/E0$a;->i()V

    return-void
.end method

.method public c(ZZLTe/I;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "LTe/I<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/E0$a;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lgf/E0$a;->g:Laf/o;

    invoke-interface {p1}, Laf/o;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lgf/E0$a;->i:Ljava/lang/Throwable;

    iget-boolean v0, p0, Lgf/E0$a;->e:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    iput-boolean v1, p0, Lgf/E0$a;->k:Z

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, LTe/I;->a()V

    :goto_0
    iget-object p1, p0, Lgf/E0$a;->d:LTe/J$c;

    invoke-interface {p1}, LVe/c;->dispose()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lgf/E0$a;->k:Z

    iget-object p2, p0, Lgf/E0$a;->g:Laf/o;

    invoke-interface {p2}, Laf/o;->clear()V

    invoke-interface {p3, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lgf/E0$a;->d:LTe/J$c;

    invoke-interface {p1}, LVe/c;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    iput-boolean v1, p0, Lgf/E0$a;->k:Z

    invoke-interface {p3}, LTe/I;->a()V

    iget-object p1, p0, Lgf/E0$a;->d:LTe/J$c;

    invoke-interface {p1}, LVe/c;->dispose()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lgf/E0$a;->g:Laf/o;

    invoke-interface {v0}, Laf/o;->clear()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lgf/E0$a;->k:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lgf/E0$a;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/E0$a;->k:Z

    iget-object v0, p0, Lgf/E0$a;->h:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/E0$a;->d:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/E0$a;->g:Laf/o;

    invoke-interface {v0}, Laf/o;->clear()V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 2

    iget-object v0, p0, Lgf/E0$a;->h:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lgf/E0$a;->h:LVe/c;

    instance-of v0, p1, Laf/j;

    if-eqz v0, :cond_1

    check-cast p1, Laf/j;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Laf/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lgf/E0$a;->l:I

    iput-object p1, p0, Lgf/E0$a;->g:Laf/o;

    iput-boolean v1, p0, Lgf/E0$a;->j:Z

    iget-object p1, p0, Lgf/E0$a;->c:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    invoke-virtual {p0}, Lgf/E0$a;->i()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lgf/E0$a;->l:I

    iput-object p1, p0, Lgf/E0$a;->g:Laf/o;

    iget-object p1, p0, Lgf/E0$a;->c:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    return-void

    :cond_1
    new-instance p1, Ljf/c;

    iget v0, p0, Lgf/E0$a;->f:I

    invoke-direct {p1, v0}, Ljf/c;-><init>(I)V

    iput-object p1, p0, Lgf/E0$a;->g:Laf/o;

    iget-object p1, p0, Lgf/E0$a;->c:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    iget-boolean v2, p0, Lgf/E0$a;->k:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-boolean v2, p0, Lgf/E0$a;->j:Z

    iget-object v3, p0, Lgf/E0$a;->i:Ljava/lang/Throwable;

    iget-boolean v4, p0, Lgf/E0$a;->e:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iput-boolean v0, p0, Lgf/E0$a;->k:Z

    iget-object v0, p0, Lgf/E0$a;->c:LTe/I;

    iget-object v1, p0, Lgf/E0$a;->i:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lgf/E0$a;->d:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void

    :cond_2
    iget-object v3, p0, Lgf/E0$a;->c:LTe/I;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, LTe/I;->g(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lgf/E0$a;->k:Z

    iget-object v0, p0, Lgf/E0$a;->i:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lgf/E0$a;->c:LTe/I;

    invoke-interface {v1, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgf/E0$a;->c:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    :goto_0
    iget-object v0, p0, Lgf/E0$a;->d:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void

    :cond_4
    neg-int v1, v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/E0$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lgf/E0$a;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lgf/E0$a;->g:Laf/o;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lgf/E0$a;->i()V

    return-void
.end method

.method public h()V
    .locals 7

    iget-object v0, p0, Lgf/E0$a;->g:Laf/o;

    iget-object v1, p0, Lgf/E0$a;->c:LTe/I;

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    iget-boolean v4, p0, Lgf/E0$a;->j:Z

    invoke-interface {v0}, Laf/o;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Lgf/E0$a;->c(ZZLTe/I;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lgf/E0$a;->j:Z

    :try_start_0
    invoke-interface {v0}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p0, v4, v6, v1}, Lgf/E0$a;->c(ZZLTe/I;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    if-eqz v6, :cond_4

    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_4
    invoke-interface {v1, v5}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lgf/E0$a;->k:Z

    iget-object v2, p0, Lgf/E0$a;->h:LVe/c;

    invoke-interface {v2}, LVe/c;->dispose()V

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-interface {v1, v3}, LTe/I;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lgf/E0$a;->d:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/E0$a;->d:LTe/J$c;

    invoke-virtual {v0, p0}, LTe/J$c;->b(Ljava/lang/Runnable;)LVe/c;

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lgf/E0$a;->g:Laf/o;

    invoke-interface {v0}, Laf/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public m(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/E0$a;->m:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lgf/E0$a;->j:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Lgf/E0$a;->i:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/E0$a;->j:Z

    invoke-virtual {p0}, Lgf/E0$a;->i()V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lgf/E0$a;->g:Laf/o;

    invoke-interface {v0}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lgf/E0$a;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgf/E0$a;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgf/E0$a;->h()V

    :goto_0
    return-void
.end method
