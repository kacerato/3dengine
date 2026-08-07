.class public final Lwg/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 2 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,110:1\n75#2:111\n*S KotlinDebug\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n38#1:111\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 2 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n*L\n1#1,110:1\n75#2:111\n*S KotlinDebug\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n38#1:111\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Leg/p;)Lwg/N;
    .locals 2
    .param p0    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-",
            "LQf/j;",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)",
            "Lwg/N;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lwg/N;->N0:Lwg/N$b;

    new-instance v1, Lwg/O$a;

    invoke-direct {v1, p0, v0}, Lwg/O$a;-><init>(Leg/p;Lwg/N$b;)V

    return-object v1
.end method

.method public static final b(LQf/j;Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lwg/F0;
    .end annotation

    :try_start_0
    sget-object v0, Lwg/N;->N0:Lwg/N$b;

    invoke-interface {p0, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    check-cast v0, Lwg/N;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lwg/N;->n(LQf/j;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LEg/j;->a(LQf/j;Ljava/lang/Throwable;)V

    return-void

    :goto_0
    invoke-static {p1, v0}, Lwg/O;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p0, p1}, LEg/j;->a(LQf/j;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final c(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception while trying to handle coroutine exception"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, p0}, LFf/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-object v0
.end method
