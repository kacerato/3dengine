.class public final Ldf/b$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements Ljava/util/Iterator;
.implements Ljava/lang/Runnable;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/b;
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
        "LCi/d;",
        ">;",
        "LTe/q<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final j:J = 0x5cea3901b29dcb72L


# instance fields
.field public final b:Ljf/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljf/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:J

.field public final e:Ljava/util/concurrent/locks/Lock;

.field public final f:Ljava/util/concurrent/locks/Condition;

.field public g:J

.field public volatile h:Z

.field public i:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljf/b;

    invoke-direct {v0, p1}, Ljf/b;-><init>(I)V

    iput-object v0, p0, Ldf/b$a;->b:Ljf/b;

    int-to-long v0, p1

    iput-wide v0, p0, Ldf/b$a;->c:J

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Ldf/b$a;->d:J

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Ldf/b$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Ldf/b$a;->f:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/b$a;->h:Z

    invoke-virtual {p0}, Ldf/b$a;->b()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Ldf/b$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ldf/b$a;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldf/b$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldf/b$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

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
    .locals 0

    invoke-static {p0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/b$a;->b:Ljf/b;

    invoke-virtual {v0, p1}, Ljf/b;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ldf/b$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ldf/b$a;->b()V

    :goto_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-wide v0, p0, Ldf/b$a;->c:J

    invoke-static {p0, p1, v0, v1}, Lmf/j;->k(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;J)Z

    return-void
.end method

.method public hasNext()Z
    .locals 2

    :goto_0
    iget-boolean v0, p0, Ldf/b$a;->h:Z

    iget-object v1, p0, Ldf/b$a;->b:Ljf/b;

    invoke-virtual {v1}, Ljf/b;->isEmpty()Z

    move-result v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldf/b$a;->i:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    if-eqz v1, :cond_3

    invoke-static {}, Lio/reactivex/internal/util/e;->b()V

    iget-object v0, p0, Ldf/b$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_1
    :try_start_0
    iget-boolean v0, p0, Ldf/b$a;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ldf/b$a;->b:Ljf/b;

    invoke-virtual {v0}, Ljf/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldf/b$a;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ldf/b$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ldf/b$a;->run()V

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-object v1, p0, Ldf/b$a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ldf/b$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldf/b$a;->b:Ljf/b;

    invoke-virtual {v0}, Ljf/b;->poll()Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Ldf/b$a;->g:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-wide v3, p0, Ldf/b$a;->d:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Ldf/b$a;->g:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LCi/d;

    invoke-interface {v3, v1, v2}, LCi/d;->i(J)V

    goto :goto_0

    :cond_0
    iput-wide v1, p0, Ldf/b$a;->g:J

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Ldf/b$a;->i:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldf/b$a;->h:Z

    invoke-virtual {p0}, Ldf/b$a;->b()V

    return-void
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 0

    invoke-static {p0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, Ldf/b$a;->b()V

    return-void
.end method
