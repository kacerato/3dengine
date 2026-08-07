.class public final synthetic Lwg/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuilders.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,273:1\n95#2,5:274\n*S KotlinDebug\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n*L\n166#1:274,5\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBuilders.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,273:1\n95#2,5:274\n*S KotlinDebug\n*F\n+ 1 Builders.common.kt\nkotlinx/coroutines/BuildersKt__Builders_commonKt\n*L\n166#1:274,5\n*E\n"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# direct methods
.method public static final a(Lwg/S;LQf/j;Lwg/U;Leg/p;)Lwg/Z;
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
            "Lwg/Z<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lwg/L;->e(Lwg/S;LQf/j;)LQf/j;

    move-result-object p0

    invoke-virtual {p2}, Lwg/U;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lwg/T0;

    invoke-direct {p1, p0, p3}, Lwg/T0;-><init>(LQf/j;Leg/p;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lwg/a0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lwg/a0;-><init>(LQf/j;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lwg/a;->B1(Lwg/U;Ljava/lang/Object;Leg/p;)V

    return-object p1
.end method

.method public static synthetic b(Lwg/S;LQf/j;Lwg/U;Leg/p;ILjava/lang/Object;)Lwg/Z;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, LQf/l;->b:LQf/l;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lwg/U;->DEFAULT:Lwg/U;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lwg/i;->a(Lwg/S;LQf/j;Lwg/U;Leg/p;)Lwg/Z;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lwg/M;Leg/p;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lwg/M;
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
            "Lwg/M;",
            "Leg/p<",
            "-",
            "Lwg/S;",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lwg/i;->h(LQf/j;Leg/p;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lwg/M;Leg/p;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/M;",
            "Leg/p<",
            "-",
            "Lwg/S;",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-static {p0, p1, p2}, Lwg/i;->h(LQf/j;Leg/p;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    return-object p0
.end method

.method public static final e(Lwg/S;LQf/j;Lwg/U;Leg/p;)Lwg/K0;
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
            "(",
            "Lwg/S;",
            "LQf/j;",
            "Lwg/U;",
            "Leg/p<",
            "-",
            "Lwg/S;",
            "-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lwg/K0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lwg/L;->e(Lwg/S;LQf/j;)LQf/j;

    move-result-object p0

    invoke-virtual {p2}, Lwg/U;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lwg/U0;

    invoke-direct {p1, p0, p3}, Lwg/U0;-><init>(LQf/j;Leg/p;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lwg/h1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lwg/h1;-><init>(LQf/j;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lwg/a;->B1(Lwg/U;Ljava/lang/Object;Leg/p;)V

    return-object p1
.end method

.method public static synthetic f(Lwg/S;LQf/j;Lwg/U;Leg/p;ILjava/lang/Object;)Lwg/K0;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, LQf/l;->b:LQf/l;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lwg/U;->DEFAULT:Lwg/U;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lwg/i;->d(Lwg/S;LQf/j;Lwg/U;Leg/p;)Lwg/K0;

    move-result-object p0

    return-object p0
.end method

.method public static final g(LQf/j;Leg/p;LQf/f;)Ljava/lang/Object;
    .locals 8
    .param p0    # LQf/j;
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
            "LQf/j;",
            "Leg/p<",
            "-",
            "Lwg/S;",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-interface {p2}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    invoke-static {v0, p0}, Lwg/L;->d(LQf/j;LQf/j;)LQf/j;

    move-result-object p0

    invoke-static {p0}, Lwg/N0;->z(LQf/j;)V

    if-ne p0, v0, :cond_0

    new-instance v0, LEg/O;

    invoke-direct {v0, p0, p2}, LEg/O;-><init>(LQf/j;LQf/f;)V

    invoke-static {v0, v0, p1}, LFg/b;->e(LEg/O;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, LQf/g;->m0:LQf/g$b;

    invoke-interface {p0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v2

    invoke-interface {v0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lwg/w1;

    invoke-direct {v0, p0, p2}, Lwg/w1;-><init>(LQf/j;LQf/f;)V

    invoke-virtual {v0}, Lwg/a;->getContext()LQf/j;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, LEg/Z;->c(LQf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v0, p1}, LFg/b;->e(LEg/O;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance v0, Lwg/f0;

    invoke-direct {v0, p0, p2}, Lwg/f0;-><init>(LQf/j;LQf/f;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    invoke-static/range {v2 .. v7}, LFg/a;->f(Leg/p;Ljava/lang/Object;LQf/f;Leg/l;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lwg/f0;->C1()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, LTf/h;->c(LQf/f;)V

    :cond_2
    return-object p0
.end method
