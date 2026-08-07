.class public final LDg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,197:1\n1#2:198\n314#3,11:199\n*S KotlinDebug\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n*L\n172#1:199,11\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,197:1\n1#2:198\n314#3,11:199\n*S KotlinDebug\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n*L\n172#1:199,11\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic a(Leg/p;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, LDg/e;->f(Leg/p;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lwg/K0;Ljava/lang/Object;Ljava/lang/Throwable;)LFf/P0;
    .locals 0

    invoke-static {p0, p1, p2}, LDg/e;->k(Lwg/K0;Ljava/lang/Object;Ljava/lang/Throwable;)LFf/P0;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lwg/Z;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p0    # Lwg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/Z<",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {p0, v0}, LDg/e;->j(Lwg/K0;Ljava/util/concurrent/CompletableFuture;)V

    new-instance v1, LDg/e$a;

    invoke-direct {v1, v0, p0}, LDg/e$a;-><init>(Ljava/util/concurrent/CompletableFuture;Lwg/Z;)V

    invoke-interface {p0, v1}, Lwg/K0;->Q(Leg/l;)Lwg/m0;

    return-object v0
.end method

.method public static final d(Lwg/K0;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p0    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/K0;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {p0, v0}, LDg/e;->j(Lwg/K0;Ljava/util/concurrent/CompletableFuture;)V

    new-instance v1, LDg/e$b;

    invoke-direct {v1, v0}, LDg/e$b;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p0, v1}, Lwg/K0;->Q(Leg/l;)Lwg/m0;

    return-object v0
.end method

.method public static final e(Ljava/util/concurrent/CompletionStage;)Lwg/Z;
    .locals 4
    .param p0    # Ljava/util/concurrent/CompletionStage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;)",
            "Lwg/Z<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lwg/A;->a(Ljava/lang/Object;)Lwg/y;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ExecutionException;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    invoke-static {v3, v2, v3}, Lwg/A;->c(Lwg/K0;ILjava/lang/Object;)Lwg/y;

    move-result-object v0

    invoke-interface {v0, p0}, Lwg/y;->b(Ljava/lang/Throwable;)Z

    move-object p0, v0

    :goto_2
    return-object p0

    :cond_3
    invoke-static {v3, v2, v3}, Lwg/A;->c(Lwg/K0;ILjava/lang/Object;)Lwg/y;

    move-result-object v1

    new-instance v2, LDg/e$c;

    invoke-direct {v2, v1}, LDg/e$c;-><init>(Lwg/y;)V

    new-instance v3, LDg/c;

    invoke-direct {v3, v2}, LDg/c;-><init>(Leg/p;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/CompletionStage;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    invoke-static {v1, v0}, Lwg/N0;->x(Lwg/K0;Ljava/util/concurrent/Future;)Lwg/m0;

    return-object v1
.end method

.method public static final f(Leg/p;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p2}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Ljava/util/concurrent/CompletionStage;LQf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/util/concurrent/CompletionStage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-interface {p0}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    throw p0

    :cond_1
    new-instance v1, Lwg/q;

    invoke-static {p1}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lwg/q;-><init>(LQf/f;I)V

    invoke-virtual {v1}, Lwg/q;->K()V

    new-instance v2, LDg/b;

    invoke-direct {v2, v1}, LDg/b;-><init>(LQf/f;)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/CompletionStage;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    new-instance p0, LDg/e$d;

    invoke-direct {p0, v0, v2}, LDg/e$d;-><init>(Ljava/util/concurrent/CompletableFuture;LDg/b;)V

    invoke-interface {v1, p0}, Lwg/p;->m(Leg/l;)V

    invoke-virtual {v1}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_2

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_2
    return-object p0
.end method

.method public static final h(Lwg/S;LQf/j;Lwg/U;Leg/p;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lwg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/S;",
            "LQf/j;",
            "Lwg/U;",
            "Leg/p<",
            "-",
            "Lwg/S;",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p2}, Lwg/U;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lwg/L;->e(Lwg/S;LQf/j;)LQf/j;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v0, LDg/a;

    invoke-direct {v0, p0, p1}, LDg/a;-><init>(LQf/j;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p2, v0, p3}, Lwg/a;->B1(Lwg/U;Ljava/lang/Object;Leg/p;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " start is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic i(Lwg/S;LQf/j;Lwg/U;Leg/p;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, LQf/l;->b:LQf/l;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lwg/U;->DEFAULT:Lwg/U;

    :cond_1
    invoke-static {p0, p1, p2, p3}, LDg/e;->h(Lwg/S;LQf/j;Lwg/U;Leg/p;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lwg/K0;Ljava/util/concurrent/CompletableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/K0;",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, LDg/d;

    invoke-direct {v0, p0}, LDg/d;-><init>(Lwg/K0;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public static final k(Lwg/K0;Ljava/lang/Object;Ljava/lang/Throwable;)LFf/P0;
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object p1, p2

    check-cast p1, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "CompletableFuture was completed exceptionally"

    invoke-static {p1, p2}, Lwg/v0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_1
    invoke-interface {p0, p1}, Lwg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method
