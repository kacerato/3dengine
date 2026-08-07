.class public abstract Lwg/g0;
.super LGg/k;
.source "SourceFile"


# annotations
.annotation build LFf/f0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LGg/k;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,222:1\n1#2:223\n107#3,10:224\n118#3,2:238\n220#4:234\n221#4:237\n61#5,2:235\n75#6:240\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n*L\n90#1:224,10\n90#1:238,2\n103#1:234\n103#1:237\n103#1:235,2\n142#1:240\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,222:1\n1#2:223\n107#3,10:224\n118#3,2:238\n220#4:234\n221#4:237\n61#5,2:235\n75#6:240\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n*L\n90#1:224,10\n90#1:238,2\n103#1:234\n103#1:237\n103#1:235,2\n142#1:240\n*E\n"
    }
.end annotation


# instance fields
.field public d:I
    .annotation build Ldg/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, LGg/k;-><init>()V

    iput p1, p0, Lwg/g0;->d:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public abstract e()LQf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lwg/D;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lwg/D;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lwg/D;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, LFf/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    new-instance p2, Lkotlinx/coroutines/CoroutinesInternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lwg/g0;->e()LQf/f;

    move-result-object p1

    invoke-interface {p1}, LQf/f;->getContext()LQf/j;

    move-result-object p1

    invoke-static {p1, p2}, Lwg/O;->b(LQf/j;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract n()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final run()V
    .locals 10

    iget-object v0, p0, LGg/k;->c:LGg/l;

    :try_start_0
    invoke-virtual {p0}, Lwg/g0;->e()LQf/f;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LEg/l;

    iget-object v2, v1, LEg/l;->f:LQf/f;

    iget-object v1, v1, LEg/l;->h:Ljava/lang/Object;

    invoke-interface {v2}, LQf/f;->getContext()LQf/j;

    move-result-object v3

    invoke-static {v3, v1}, LEg/Z;->c(LQf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, LEg/Z;->a:LEg/T;

    const/4 v5, 0x0

    if-eq v1, v4, :cond_0

    invoke-static {v2, v3, v1}, Lwg/L;->g(LQf/f;LQf/j;Ljava/lang/Object;)Lwg/w1;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    move-object v4, v5

    :goto_0
    :try_start_1
    invoke-interface {v2}, LQf/f;->getContext()LQf/j;

    move-result-object v6

    invoke-virtual {p0}, Lwg/g0;->n()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lwg/g0;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_1

    iget v9, p0, Lwg/g0;->d:I

    invoke-static {v9}, Lwg/h0;->c(I)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {v6, v9}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v6

    check-cast v6, Lwg/K0;

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_4

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lwg/K0;->isActive()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v6}, Lwg/K0;->l()Ljava/util/concurrent/CancellationException;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lwg/g0;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object v7, LFf/i0;->c:LFf/i0$a;

    invoke-static {v6}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    sget-object v6, LFf/i0;->c:LFf/i0$a;

    invoke-static {v8}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object v6, LFf/i0;->c:LFf/i0$a;

    invoke-virtual {p0, v7}, Lwg/g0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    sget-object v2, LFf/P0;->a:LFf/P0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Lwg/w1;->C1()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-static {v3, v1}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    sget-object v1, LFf/i0;->c:LFf/i0$a;

    invoke-interface {v0}, LGg/l;->h()V

    invoke-static {v2}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    sget-object v1, LFf/i0;->c:LFf/i0$a;

    invoke-static {v0}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, LFf/i0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lwg/g0;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_4
    if-eqz v4, :cond_6

    :try_start_4
    invoke-virtual {v4}, Lwg/w1;->C1()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-static {v3, v1}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_7
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    :try_start_5
    sget-object v2, LFf/i0;->c:LFf/i0$a;

    invoke-interface {v0}, LGg/l;->h()V

    sget-object v0, LFf/P0;->a:LFf/P0;

    invoke-static {v0}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    sget-object v2, LFf/i0;->c:LFf/i0$a;

    invoke-static {v0}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v0}, LFf/i0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lwg/g0;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method
