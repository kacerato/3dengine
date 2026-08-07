.class public final Lwg/T;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LQf/j;)Lwg/S;
    .locals 3
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LEg/h;

    sget-object v1, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lwg/N0;->c(Lwg/K0;ILjava/lang/Object;)Lwg/B;

    move-result-object v1

    invoke-interface {p0, v1}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, LEg/h;-><init>(LQf/j;)V

    return-object v0
.end method

.method public static final b()Lwg/S;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LEg/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lwg/k1;->c(Lwg/K0;ILjava/lang/Object;)Lwg/B;

    move-result-object v1

    invoke-static {}, Lwg/j0;->e()Lwg/V0;

    move-result-object v2

    invoke-interface {v1, v2}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object v1

    invoke-direct {v0, v1}, LEg/h;-><init>(LQf/j;)V

    return-object v0
.end method

.method public static final c(Lwg/S;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lwg/v0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-static {p0, p1}, Lwg/T;->d(Lwg/S;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final d(Lwg/S;Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p0    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-interface {p0}, Lwg/S;->getCoroutineContext()LQf/j;

    move-result-object v0

    sget-object v1, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {v0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    check-cast v0, Lwg/K0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lwg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic e(Lwg/S;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lwg/T;->c(Lwg/S;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Lwg/S;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lwg/T;->d(Lwg/S;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final g(Leg/p;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/p<",
            "-",
            "Lwg/S;",
            "-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, LEg/O;

    invoke-interface {p1}, LQf/f;->getContext()LQf/j;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LEg/O;-><init>(LQf/j;LQf/f;)V

    invoke-static {v0, v0, p0}, LFg/b;->e(LEg/O;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_0
    return-object p0
.end method

.method public static final h(LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p0    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "LQf/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-interface {p0}, LQf/f;->getContext()LQf/j;

    move-result-object p0

    return-object p0
.end method

.method public static final i(LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "LQf/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p0, 0x3

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final j(Lwg/S;)V
    .locals 0
    .param p0    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lwg/S;->getCoroutineContext()LQf/j;

    move-result-object p0

    invoke-static {p0}, Lwg/N0;->z(LQf/j;)V

    return-void
.end method

.method public static final k(Lwg/S;)Z
    .locals 1
    .param p0    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lwg/S;->getCoroutineContext()LQf/j;

    move-result-object p0

    sget-object v0, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p0, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p0

    check-cast p0, Lwg/K0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwg/K0;->isActive()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static synthetic l(Lwg/S;)V
    .locals 0

    return-void
.end method

.method public static final m(Lwg/S;LQf/j;)Lwg/S;
    .locals 1
    .param p0    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LEg/h;

    invoke-interface {p0}, Lwg/S;->getCoroutineContext()LQf/j;

    move-result-object p0

    invoke-interface {p0, p1}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p0

    invoke-direct {v0, p0}, LEg/h;-><init>(LQf/j;)V

    return-object v0
.end method
