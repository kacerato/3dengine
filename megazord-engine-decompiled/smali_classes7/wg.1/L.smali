.class public final Lwg/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = " @"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final a(LQf/j;LQf/j;Z)LQf/j;
    .locals 3

    invoke-static {p0}, Lwg/L;->c(LQf/j;)Z

    move-result v0

    invoke-static {p1}, Lwg/L;->c(LQf/j;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/m0$h;

    invoke-direct {v0}, Lkotlin/jvm/internal/m0$h;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, LQf/l;->b:LQf/l;

    new-instance v2, Lwg/L$b;

    invoke-direct {v2, v0, p2}, Lwg/L$b;-><init>(Lkotlin/jvm/internal/m0$h;Z)V

    invoke-interface {p0, p1, v2}, LQf/j;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQf/j;

    if-eqz v1, :cond_1

    iget-object p2, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast p2, LQf/j;

    sget-object v1, Lwg/L$a;->b:Lwg/L$a;

    invoke-interface {p2, p1, v1}, LQf/j;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    :cond_1
    iget-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast p1, LQf/j;

    invoke-interface {p0, p1}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p0

    return-object p0
.end method

.method public static final b(LQf/j;)Ljava/lang/String;
    .locals 0
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final c(LQf/j;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lwg/L$c;->b:Lwg/L$c;

    invoke-interface {p0, v0, v1}, LQf/j;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(LQf/j;LQf/j;)LQf/j;
    .locals 1
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/F0;
    .end annotation

    invoke-static {p1}, Lwg/L;->c(LQf/j;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lwg/L;->a(LQf/j;LQf/j;Z)LQf/j;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lwg/S;LQf/j;)LQf/j;
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

    .annotation build Lwg/z0;
    .end annotation

    invoke-interface {p0}, Lwg/S;->getCoroutineContext()LQf/j;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lwg/L;->a(LQf/j;LQf/j;Z)LQf/j;

    move-result-object p0

    invoke-static {}, Lwg/j0;->a()Lwg/M;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, LQf/g;->m0:LQf/g$b;

    invoke-interface {p0, p1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lwg/j0;->a()Lwg/M;

    move-result-object p1

    invoke-interface {p0, p1}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final f(LTf/e;)Lwg/w1;
    .locals 2
    .param p0    # LTf/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTf/e;",
            ")",
            "Lwg/w1<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :cond_0
    instance-of v0, p0, Lwg/f0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, LTf/e;->getCallerFrame()LTf/e;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    instance-of v0, p0, Lwg/w1;

    if-eqz v0, :cond_0

    check-cast p0, Lwg/w1;

    return-object p0
.end method

.method public static final g(LQf/f;LQf/j;Ljava/lang/Object;)Lwg/w1;
    .locals 2
    .param p0    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "*>;",
            "LQf/j;",
            "Ljava/lang/Object;",
            ")",
            "Lwg/w1<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p0, LTf/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lwg/x1;->b:Lwg/x1;

    invoke-interface {p1, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast p0, LTf/e;

    invoke-static {p0}, Lwg/L;->f(LTf/e;)Lwg/w1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lwg/w1;->D1(LQf/j;Ljava/lang/Object;)V

    :cond_1
    return-object p0

    :cond_2
    return-object v1
.end method

.method public static final h(LQf/f;Ljava/lang/Object;Leg/a;)Ljava/lang/Object;
    .locals 2
    .param p0    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Leg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/f<",
            "*>;",
            "Ljava/lang/Object;",
            "Leg/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    invoke-static {v0, p1}, LEg/Z;->c(LQf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, LEg/Z;->a:LEg/T;

    if-eq p1, v1, :cond_0

    invoke-static {p0, v0, p1}, Lwg/L;->g(LQf/f;LQf/j;Ljava/lang/Object;)Lwg/w1;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p2}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lwg/w1;->C1()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-static {v0, p1}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lwg/w1;->C1()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {v0, p1}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    throw p2
.end method

.method public static final i(LQf/j;Ljava/lang/Object;Leg/a;)Ljava/lang/Object;
    .locals 1
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Leg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/j;",
            "Ljava/lang/Object;",
            "Leg/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, LEg/Z;->c(LQf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p2}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, p1}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, p1}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    throw p2
.end method
