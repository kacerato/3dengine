.class public final Lkf/d$c;
.super LTe/J$c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkf/d$c$b;,
        Lkf/d$c$c;,
        Lkf/d$c$a;
    }
.end annotation


# instance fields
.field public final b:Z

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljf/a<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:LVe/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    invoke-direct {p0}, LTe/J$c;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lkf/d$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, LVe/b;

    invoke-direct {v0}, LVe/b;-><init>()V

    iput-object v0, p0, Lkf/d$c;->g:LVe/b;

    iput-object p1, p0, Lkf/d$c;->c:Ljava/util/concurrent/Executor;

    new-instance p1, Ljf/a;

    invoke-direct {p1}, Ljf/a;-><init>()V

    iput-object p1, p0, Lkf/d$c;->d:Ljf/a;

    iput-boolean p2, p0, Lkf/d$c;->b:Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)LVe/c;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    iget-boolean v0, p0, Lkf/d$c;->e:Z

    if-eqz v0, :cond_0

    sget-object p1, LYe/e;->INSTANCE:LYe/e;

    return-object p1

    :cond_0
    invoke-static {p1}, Lqf/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iget-boolean v0, p0, Lkf/d$c;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Lkf/d$c$b;

    iget-object v1, p0, Lkf/d$c;->g:LVe/b;

    invoke-direct {v0, p1, v1}, Lkf/d$c$b;-><init>(Ljava/lang/Runnable;LYe/c;)V

    iget-object p1, p0, Lkf/d$c;->g:LVe/b;

    invoke-virtual {p1, v0}, LVe/b;->b(LVe/c;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lkf/d$c$a;

    invoke-direct {v0, p1}, Lkf/d$c$a;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    iget-object p1, p0, Lkf/d$c;->d:Ljf/a;

    invoke-virtual {p1, v0}, Ljf/a;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkf/d$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lkf/d$c;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkf/d$c;->e:Z

    iget-object v0, p0, Lkf/d$c;->d:Ljf/a;

    invoke-virtual {v0}, Ljf/a;->clear()V

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LYe/e;->INSTANCE:LYe/e;

    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p1}, Lkf/d$c;->b(Ljava/lang/Runnable;)LVe/c;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lkf/d$c;->e:Z

    if-eqz v0, :cond_1

    sget-object p1, LYe/e;->INSTANCE:LYe/e;

    return-object p1

    :cond_1
    new-instance v0, LYe/h;

    invoke-direct {v0}, LYe/h;-><init>()V

    new-instance v1, LYe/h;

    invoke-direct {v1, v0}, LYe/h;-><init>(LVe/c;)V

    invoke-static {p1}, Lqf/a;->b0(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v2, Lkf/n;

    new-instance v3, Lkf/d$c$c;

    invoke-direct {v3, p0, v1, p1}, Lkf/d$c$c;-><init>(Lkf/d$c;LYe/h;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lkf/d$c;->g:LVe/b;

    invoke-direct {v2, v3, p1}, Lkf/n;-><init>(Ljava/lang/Runnable;LYe/c;)V

    iget-object p1, p0, Lkf/d$c;->g:LVe/b;

    invoke-virtual {p1, v2}, LVe/b;->b(LVe/c;)Z

    iget-object p1, p0, Lkf/d$c;->c:Ljava/util/concurrent/Executor;

    instance-of v3, p1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_2

    :try_start_0
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v2, p1}, Lkf/n;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lkf/d$c;->e:Z

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LYe/e;->INSTANCE:LYe/e;

    return-object p1

    :cond_2
    sget-object p1, Lkf/d;->e:LTe/J;

    invoke-virtual {p1, v2, p2, p3, p4}, LTe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    new-instance p2, Lkf/c;

    invoke-direct {p2, p1}, Lkf/c;-><init>(LVe/c;)V

    invoke-virtual {v2, p2}, Lkf/n;->a(Ljava/util/concurrent/Future;)V

    :goto_0
    invoke-virtual {v0, v2}, LYe/h;->a(LVe/c;)Z

    return-object v1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lkf/d$c;->e:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lkf/d$c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkf/d$c;->e:Z

    iget-object v0, p0, Lkf/d$c;->g:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lkf/d$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkf/d$c;->d:Ljf/a;

    invoke-virtual {v0}, Ljf/a;->clear()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lkf/d$c;->d:Ljf/a;

    const/4 v1, 0x1

    :cond_0
    iget-boolean v2, p0, Lkf/d$c;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljf/a;->clear()V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljf/a;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lkf/d$c;->e:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljf/a;->clear()V

    return-void

    :cond_2
    iget-object v2, p0, Lkf/d$c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_3
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-boolean v2, p0, Lkf/d$c;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljf/a;->clear()V

    return-void
.end method
