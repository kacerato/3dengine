.class public final LG/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LG/a$a;,
        LG/a$b;,
        LG/a$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "source"

.field public static final d:Ljava/lang/String; = "disk-cache"

.field public static final e:I = 0x1

.field public static final f:Ljava/lang/String; = "GlideExecutor"

.field public static final g:Ljava/lang/String; = "source-unlimited"

.field public static final h:Ljava/lang/String; = "animation"

.field public static final i:J

.field public static final j:I = 0x4

.field public static volatile k:I


# instance fields
.field public final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, LG/a;->i:J

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static c()I
    .locals 2

    sget v0, LG/a;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {}, LG/b;->a()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, LG/a;->k:I

    :cond_0
    sget v0, LG/a;->k:I

    return v0
.end method

.method public static d()LG/a$a;
    .locals 3

    invoke-static {}, LG/a;->c()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v1, LG/a$a;

    invoke-direct {v1, v2}, LG/a$a;-><init>(Z)V

    invoke-virtual {v1, v0}, LG/a$a;->c(I)LG/a$a;

    move-result-object v0

    const-string v1, "animation"

    invoke-virtual {v0, v1}, LG/a$a;->b(Ljava/lang/String;)LG/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static e()LG/a;
    .locals 1

    invoke-static {}, LG/a;->d()LG/a$a;

    move-result-object v0

    invoke-virtual {v0}, LG/a$a;->a()LG/a;

    move-result-object v0

    return-object v0
.end method

.method public static f(ILG/a$c;)LG/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LG/a;->d()LG/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, LG/a$a;->c(I)LG/a$a;

    move-result-object p0

    invoke-virtual {p0, p1}, LG/a$a;->e(LG/a$c;)LG/a$a;

    move-result-object p0

    invoke-virtual {p0}, LG/a$a;->a()LG/a;

    move-result-object p0

    return-object p0
.end method

.method public static g()LG/a$a;
    .locals 2

    new-instance v0, LG/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LG/a$a;-><init>(Z)V

    invoke-virtual {v0, v1}, LG/a$a;->c(I)LG/a$a;

    move-result-object v0

    const-string v1, "disk-cache"

    invoke-virtual {v0, v1}, LG/a$a;->b(Ljava/lang/String;)LG/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static h()LG/a;
    .locals 1

    invoke-static {}, LG/a;->g()LG/a$a;

    move-result-object v0

    invoke-virtual {v0}, LG/a$a;->a()LG/a;

    move-result-object v0

    return-object v0
.end method

.method public static j(ILjava/lang/String;LG/a$c;)LG/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LG/a;->g()LG/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, LG/a$a;->c(I)LG/a$a;

    move-result-object p0

    invoke-virtual {p0, p1}, LG/a$a;->b(Ljava/lang/String;)LG/a$a;

    move-result-object p0

    invoke-virtual {p0, p2}, LG/a$a;->e(LG/a$c;)LG/a$a;

    move-result-object p0

    invoke-virtual {p0}, LG/a$a;->a()LG/a;

    move-result-object p0

    return-object p0
.end method

.method public static k(LG/a$c;)LG/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LG/a;->g()LG/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, LG/a$a;->e(LG/a$c;)LG/a$a;

    move-result-object p0

    invoke-virtual {p0}, LG/a$a;->a()LG/a;

    move-result-object p0

    return-object p0
.end method

.method public static l()LG/a$a;
    .locals 2

    new-instance v0, LG/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LG/a$a;-><init>(Z)V

    invoke-static {}, LG/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, LG/a$a;->c(I)LG/a$a;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, LG/a$a;->b(Ljava/lang/String;)LG/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static n()LG/a;
    .locals 1

    invoke-static {}, LG/a;->l()LG/a$a;

    move-result-object v0

    invoke-virtual {v0}, LG/a$a;->a()LG/a;

    move-result-object v0

    return-object v0
.end method

.method public static o(ILjava/lang/String;LG/a$c;)LG/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LG/a;->l()LG/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, LG/a$a;->c(I)LG/a$a;

    move-result-object p0

    invoke-virtual {p0, p1}, LG/a$a;->b(Ljava/lang/String;)LG/a$a;

    move-result-object p0

    invoke-virtual {p0, p2}, LG/a$a;->e(LG/a$c;)LG/a$a;

    move-result-object p0

    invoke-virtual {p0}, LG/a$a;->a()LG/a;

    move-result-object p0

    return-object p0
.end method

.method public static p(LG/a$c;)LG/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, LG/a;->l()LG/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, LG/a$a;->e(LG/a$c;)LG/a$a;

    move-result-object p0

    invoke-virtual {p0}, LG/a$a;->a()LG/a;

    move-result-object p0

    return-object p0
.end method

.method public static q()LG/a;
    .locals 10

    new-instance v0, LG/a;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v4, LG/a;->i:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, LG/a$b;

    sget-object v1, LG/a$c;->d:LG/a$c;

    const/4 v2, 0x0

    const-string v3, "source-unlimited"

    invoke-direct {v8, v3, v1, v2}, LG/a$b;-><init>(Ljava/lang/String;LG/a$c;Z)V

    const v3, 0x7fffffff

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v0, v9}, LG/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
