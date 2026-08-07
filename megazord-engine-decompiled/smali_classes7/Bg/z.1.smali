.class public final synthetic LBg/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(LBg/D;)LBg/I;
    .locals 2
    .param p0    # LBg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/D<",
            "TT;>;)",
            "LBg/I<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LBg/F;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LBg/F;-><init>(LBg/I;Lwg/K0;)V

    return-object v0
.end method

.method public static final b(LBg/E;)LBg/U;
    .locals 2
    .param p0    # LBg/E;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/E<",
            "TT;>;)",
            "LBg/U<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LBg/G;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LBg/G;-><init>(LBg/U;Lwg/K0;)V

    return-object v0
.end method

.method public static final c(LBg/i;I)LBg/N;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;I)",
            "LBg/N<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lyg/l;->P0:Lyg/l$b;

    invoke-virtual {v0}, Lyg/l$b;->a()I

    move-result v0

    invoke-static {p1, v0}, Lng/u;->w(II)I

    move-result v0

    sub-int/2addr v0, p1

    instance-of v1, p0, LCg/d;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, LCg/d;

    invoke-virtual {v1}, LCg/d;->h()LBg/i;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance p0, LBg/N;

    iget v3, v1, LCg/d;->c:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_0

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v4, v1, LCg/d;->d:Lyg/i;

    sget-object v5, Lyg/i;->SUSPEND:Lyg/i;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    if-nez v3, :cond_3

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_3
    :goto_0
    iget-object p1, v1, LCg/d;->d:Lyg/i;

    iget-object v1, v1, LCg/d;->b:LQf/j;

    invoke-direct {p0, v2, v0, p1, v1}, LBg/N;-><init>(LBg/i;ILyg/i;LQf/j;)V

    return-object p0

    :cond_4
    new-instance p1, LBg/N;

    sget-object v1, Lyg/i;->SUSPEND:Lyg/i;

    sget-object v2, LQf/l;->b:LQf/l;

    invoke-direct {p1, p0, v0, v1, v2}, LBg/N;-><init>(LBg/i;ILyg/i;LQf/j;)V

    return-object p1
.end method

.method public static final d(Lwg/S;LQf/j;LBg/i;LBg/D;LBg/O;Ljava/lang/Object;)Lwg/K0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/S;",
            "LQf/j;",
            "LBg/i<",
            "+TT;>;",
            "LBg/D<",
            "TT;>;",
            "LBg/O;",
            "TT;)",
            "Lwg/K0;"
        }
    .end annotation

    sget-object v0, LBg/O;->a:LBg/O$a;

    invoke-virtual {v0}, LBg/O$a;->c()LBg/O;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lwg/U;->DEFAULT:Lwg/U;

    goto :goto_0

    :cond_0
    sget-object v0, Lwg/U;->UNDISPATCHED:Lwg/U;

    :goto_0
    new-instance v7, LBg/z$a;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, LBg/z$a;-><init>(LBg/O;LBg/i;LBg/D;Ljava/lang/Object;LQf/f;)V

    invoke-static {p0, p1, v0, v7}, Lwg/i;->d(Lwg/S;LQf/j;Lwg/U;Leg/p;)Lwg/K0;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lwg/S;LQf/j;LBg/i;Lwg/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/S;",
            "LQf/j;",
            "LBg/i<",
            "+TT;>;",
            "Lwg/y<",
            "LBg/U<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v3, LBg/z$b;

    const/4 v0, 0x0

    invoke-direct {v3, p2, p3, v0}, LBg/z$b;-><init>(LBg/i;Lwg/y;LQf/f;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lwg/i;->e(Lwg/S;LQf/j;Lwg/U;Leg/p;ILjava/lang/Object;)Lwg/K0;

    return-void
.end method

.method public static final f(LBg/I;Leg/p;)LBg/I;
    .locals 1
    .param p0    # LBg/I;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/I<",
            "+TT;>;",
            "Leg/p<",
            "-",
            "LBg/j<",
            "-TT;>;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/I<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LBg/Z;

    invoke-direct {v0, p0, p1}, LBg/Z;-><init>(LBg/I;Leg/p;)V

    return-object v0
.end method

.method public static final g(LBg/i;Lwg/S;LBg/O;I)LBg/I;
    .locals 8
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LBg/O;
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
            "LBg/O;",
            "I)",
            "LBg/I<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p3}, LBg/z;->c(LBg/i;I)LBg/N;

    move-result-object p0

    iget v0, p0, LBg/N;->b:I

    iget-object v1, p0, LBg/N;->c:Lyg/i;

    invoke-static {p3, v0, v1}, LBg/K;->a(IILyg/i;)LBg/D;

    move-result-object p3

    iget-object v3, p0, LBg/N;->d:LQf/j;

    iget-object v4, p0, LBg/N;->a:LBg/i;

    sget-object v7, LBg/K;->a:LEg/T;

    move-object v2, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v2 .. v7}, LBg/z;->d(Lwg/S;LQf/j;LBg/i;LBg/D;LBg/O;Ljava/lang/Object;)Lwg/K0;

    move-result-object p0

    new-instance p1, LBg/F;

    invoke-direct {p1, p3, p0}, LBg/F;-><init>(LBg/I;Lwg/K0;)V

    return-object p1
.end method

.method public static synthetic h(LBg/i;Lwg/S;LBg/O;IILjava/lang/Object;)LBg/I;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, LBg/k;->G1(LBg/i;Lwg/S;LBg/O;I)LBg/I;

    move-result-object p0

    return-object p0
.end method

.method public static final i(LBg/i;Lwg/S;LBg/O;Ljava/lang/Object;)LBg/U;
    .locals 7
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LBg/O;
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
            "LBg/O;",
            "TT;)",
            "LBg/U<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, LBg/z;->c(LBg/i;I)LBg/N;

    move-result-object p0

    invoke-static {p3}, LBg/W;->a(Ljava/lang/Object;)LBg/E;

    move-result-object v6

    iget-object v1, p0, LBg/N;->d:LQf/j;

    iget-object v2, p0, LBg/N;->a:LBg/i;

    move-object v0, p1

    move-object v3, v6

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LBg/z;->d(Lwg/S;LQf/j;LBg/i;LBg/D;LBg/O;Ljava/lang/Object;)Lwg/K0;

    move-result-object p0

    new-instance p1, LBg/G;

    invoke-direct {p1, v6, p0}, LBg/G;-><init>(LBg/U;Lwg/K0;)V

    return-object p1
.end method

.method public static final j(LBg/i;Lwg/S;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lwg/S;
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
            "Lwg/S;",
            "LQf/f<",
            "-",
            "LBg/U<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, LBg/z;->c(LBg/i;I)LBg/N;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lwg/A;->c(Lwg/K0;ILjava/lang/Object;)Lwg/y;

    move-result-object v0

    iget-object v1, p0, LBg/N;->d:LQf/j;

    iget-object p0, p0, LBg/N;->a:LBg/i;

    invoke-static {p1, v1, p0, v0}, LBg/z;->e(Lwg/S;LQf/j;LBg/i;Lwg/y;)V

    invoke-interface {v0, p2}, Lwg/Z;->T(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
