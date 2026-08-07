.class public final synthetic LBg/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LBg/i;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/i<",
            "*>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, LCg/r;->b:LCg/r;

    invoke-interface {p0, v0, p1}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static final synthetic b(LBg/i;Leg/p;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Backwards compatibility with JS and K/N"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/p<",
            "-TT;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, LBg/n$a;

    invoke-direct {v0, p1}, LBg/n$a;-><init>(Leg/p;)V

    invoke-interface {p0, v0, p2}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static final synthetic c(LBg/i;Leg/p;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Backwards compatibility with JS and K/N"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/p<",
            "-TT;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, LBg/n$a;

    invoke-direct {v0, p1}, LBg/n$a;-><init>(Leg/p;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p0, v0, p2}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static final d(LBg/i;Leg/q;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/q<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, LBg/n$b;

    invoke-direct {v0, p1}, LBg/n$b;-><init>(Leg/q;)V

    invoke-interface {p0, v0, p2}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static final e(LBg/i;Leg/q;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/q<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, LBg/n$b;

    invoke-direct {v0, p1}, LBg/n$b;-><init>(Leg/q;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p0, v0, p2}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static final f(LBg/i;Leg/p;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/p<",
            "-TT;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, LBg/k;->X0(LBg/i;Leg/p;)LBg/i;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0, p1}, LBg/k;->q(LBg/i;ILyg/i;ILjava/lang/Object;)LBg/i;

    move-result-object p0

    invoke-static {p0, p2}, LBg/k;->x(LBg/i;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static final g(LBg/j;LBg/i;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p0    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/j<",
            "-TT;>;",
            "LBg/i<",
            "+TT;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, LBg/k;->o0(LBg/j;)V

    invoke-interface {p1, p0, p2}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static final h(LBg/i;Lwg/S;)Lwg/K0;
    .locals 6
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Lwg/S;",
            ")",
            "Lwg/K0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v3, LBg/n$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, LBg/n$c;-><init>(LBg/i;LQf/f;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lwg/i;->e(Lwg/S;LQf/j;Lwg/U;Leg/p;ILjava/lang/Object;)Lwg/K0;

    move-result-object p0

    return-object p0
.end method
