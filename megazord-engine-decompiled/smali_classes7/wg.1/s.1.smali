.class public final Lwg/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n*L\n1#1,386:1\n1#2:387\n19#3:388\n*S KotlinDebug\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n380#1:388\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCancellableContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n*L\n1#1,386:1\n1#2:387\n19#3:388\n*S KotlinDebug\n*F\n+ 1 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n380#1:388\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lwg/p;Lwg/m0;)V
    .locals 1
    .param p0    # Lwg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lwg/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/p<",
            "*>;",
            "Lwg/m0;",
            ")V"
        }
    .end annotation

    .annotation build Lwg/F0;
    .end annotation

    new-instance v0, Lwg/n0;

    invoke-direct {v0, p1}, Lwg/n0;-><init>(Lwg/m0;)V

    invoke-interface {p0, v0}, Lwg/p;->m(Leg/l;)V

    return-void
.end method

.method public static final b(LQf/f;)Lwg/q;
    .locals 2
    .param p0    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/f<",
            "-TT;>;)",
            "Lwg/q<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, LEg/l;

    if-nez v0, :cond_0

    new-instance v0, Lwg/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lwg/q;-><init>(LQf/f;I)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, LEg/l;

    invoke-virtual {v0}, LEg/l;->p()Lwg/q;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lwg/q;->T()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Lwg/q;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lwg/q;-><init>(LQf/f;I)V

    return-object v0
.end method

.method public static final c(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 3
    .param p0    # Leg/l;
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
            "Leg/l<",
            "-",
            "Lwg/p<",
            "-TT;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lwg/q;

    invoke-static {p1}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lwg/q;-><init>(LQf/f;I)V

    invoke-virtual {v0}, Lwg/q;->K()V

    invoke-interface {p0, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_0
    return-object p0
.end method

.method public static final d(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "Lwg/p<",
            "-TT;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance v0, Lwg/q;

    invoke-static {p1}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lwg/q;-><init>(LQf/f;I)V

    invoke-virtual {v0}, Lwg/q;->K()V

    invoke-interface {p0, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/J;->e(I)V

    return-object p0
.end method

.method public static final e(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # Leg/l;
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
            "Leg/l<",
            "-",
            "Lwg/q<",
            "-TT;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p1}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v0

    invoke-static {v0}, Lwg/s;->b(LQf/f;)Lwg/q;

    move-result-object v0

    :try_start_0
    invoke-interface {p0, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lwg/q;->S()V

    throw p0
.end method

.method public static final f(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "Lwg/q<",
            "-TT;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-static {p1}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v0

    invoke-static {v0}, Lwg/s;->b(LQf/f;)Lwg/q;

    move-result-object v0

    :try_start_0
    invoke-interface {p0, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lwg/q;->S()V

    throw p0
.end method
