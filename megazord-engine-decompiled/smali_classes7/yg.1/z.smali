.class public final Lyg/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,151:1\n1#2:152\n314#3,11:153\n*S KotlinDebug\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n*L\n48#1:153,11\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nProduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,151:1\n1#2:152\n314#3,11:153\n*S KotlinDebug\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n*L\n48#1:153,11\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lyg/B;Leg/a;LQf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lyg/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/B<",
            "*>;",
            "Leg/a<",
            "LFf/P0;",
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

    instance-of v0, p2, Lyg/z$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyg/z$a;

    iget v1, v0, Lyg/z$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyg/z$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyg/z$a;

    invoke-direct {v0, p2}, Lyg/z$a;-><init>(LQf/f;)V

    :goto_0
    iget-object p2, v0, Lyg/z$a;->d:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lyg/z$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lyg/z$a;->c:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Leg/a;

    iget-object p0, v0, Lyg/z$a;->b:Ljava/lang/Object;

    check-cast p0, Lyg/B;

    :try_start_0
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    invoke-interface {v0}, LQf/f;->getContext()LQf/j;

    move-result-object p2

    sget-object v2, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p2, v2}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p2

    if-ne p2, p0, :cond_5

    :try_start_1
    iput-object p0, v0, Lyg/z$a;->b:Ljava/lang/Object;

    iput-object p1, v0, Lyg/z$a;->c:Ljava/lang/Object;

    iput v3, v0, Lyg/z$a;->e:I

    new-instance p2, Lwg/q;

    invoke-static {v0}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v2

    invoke-direct {p2, v2, v3}, Lwg/q;-><init>(LQf/f;I)V

    invoke-virtual {p2}, Lwg/q;->K()V

    new-instance v2, Lyg/z$c;

    invoke-direct {v2, p2}, Lyg/z$c;-><init>(Lwg/p;)V

    invoke-interface {p0, v2}, Lyg/E;->C(Leg/l;)V

    invoke-virtual {p2}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p0, p2, :cond_3

    invoke-static {v0}, LTf/h;->c(LQf/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    invoke-interface {p1}, Leg/a;->invoke()Ljava/lang/Object;

    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0

    :goto_2
    invoke-interface {p1}, Leg/a;->invoke()Ljava/lang/Object;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lyg/B;Leg/a;LQf/f;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lyg/z$b;->b:Lyg/z$b;

    :cond_0
    invoke-static {p0, p1, p2}, Lyg/z;->a(Lyg/B;Leg/a;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lwg/S;LQf/j;ILeg/p;)Lyg/D;
    .locals 7
    .param p0    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/p;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/S;",
            "LQf/j;",
            "I",
            "Leg/p<",
            "-",
            "Lyg/B<",
            "-TE;>;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lyg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    sget-object v3, Lyg/i;->SUSPEND:Lyg/i;

    sget-object v4, Lwg/U;->DEFAULT:Lwg/U;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lyg/z;->e(Lwg/S;LQf/j;ILyg/i;Lwg/U;Leg/l;Leg/p;)Lyg/D;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lwg/S;LQf/j;ILwg/U;Leg/l;Leg/p;)Lyg/D;
    .locals 7
    .param p0    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lwg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Leg/p;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/S;",
            "LQf/j;",
            "I",
            "Lwg/U;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;",
            "Leg/p<",
            "-",
            "Lyg/B<",
            "-TE;>;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lyg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/F0;
    .end annotation

    sget-object v3, Lyg/i;->SUSPEND:Lyg/i;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lyg/z;->e(Lwg/S;LQf/j;ILyg/i;Lwg/U;Leg/l;Leg/p;)Lyg/D;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lwg/S;LQf/j;ILyg/i;Lwg/U;Leg/l;Leg/p;)Lyg/D;
    .locals 2
    .param p0    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lwg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Leg/p;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/S;",
            "LQf/j;",
            "I",
            "Lyg/i;",
            "Lwg/U;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;",
            "Leg/p<",
            "-",
            "Lyg/B<",
            "-TE;>;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lyg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p2, p3, v0, v1, v0}, Lyg/o;->d(ILyg/i;Leg/l;ILjava/lang/Object;)Lyg/l;

    move-result-object p2

    invoke-static {p0, p1}, Lwg/L;->e(Lwg/S;LQf/j;)LQf/j;

    move-result-object p0

    new-instance p1, Lyg/A;

    invoke-direct {p1, p0, p2}, Lyg/A;-><init>(LQf/j;Lyg/l;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Lwg/R0;->Q(Leg/l;)Lwg/m0;

    :cond_0
    invoke-virtual {p1, p4, p1, p6}, Lwg/a;->B1(Lwg/U;Ljava/lang/Object;Leg/p;)V

    return-object p1
.end method

.method public static synthetic f(Lwg/S;LQf/j;ILeg/p;ILjava/lang/Object;)Lyg/D;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, LQf/l;->b:LQf/l;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lyg/z;->c(Lwg/S;LQf/j;ILeg/p;)Lyg/D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lwg/S;LQf/j;ILwg/U;Leg/l;Leg/p;ILjava/lang/Object;)Lyg/D;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    sget-object p1, LQf/l;->b:LQf/l;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Lwg/U;->DEFAULT:Lwg/U;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const/4 p4, 0x0

    :cond_3
    move-object v4, p4

    move-object v0, p0

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lyg/z;->d(Lwg/S;LQf/j;ILwg/U;Leg/l;Leg/p;)Lyg/D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lwg/S;LQf/j;ILyg/i;Lwg/U;Leg/l;Leg/p;ILjava/lang/Object;)Lyg/D;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, LQf/l;->b:LQf/l;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Lyg/i;->SUSPEND:Lyg/i;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    sget-object p4, Lwg/U;->DEFAULT:Lwg/U;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    move-object v0, p0

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lyg/z;->e(Lwg/S;LQf/j;ILyg/i;Lwg/U;Leg/l;Leg/p;)Lyg/D;

    move-result-object p0

    return-object p0
.end method
