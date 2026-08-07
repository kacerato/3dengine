.class public final LCg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,245:1\n95#2,5:246\n*S KotlinDebug\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n*L\n226#1:246,5\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,245:1\n95#2,5:246\n*S KotlinDebug\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n*L\n226#1:246,5\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(LBg/j;LQf/j;)LBg/j;
    .locals 0

    invoke-static {p0, p1}, LCg/e;->e(LBg/j;LQf/j;)LBg/j;

    move-result-object p0

    return-object p0
.end method

.method public static final b(LBg/i;)LCg/d;
    .locals 8
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;)",
            "LCg/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, LCg/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LCg/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, LCg/h;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, LCg/h;-><init>(LBg/i;LQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V

    :cond_1
    return-object v0
.end method

.method public static final c(LQf/j;Ljava/lang/Object;Ljava/lang/Object;Leg/p;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/j;",
            "TV;",
            "Ljava/lang/Object;",
            "Leg/p<",
            "-TV;-",
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

    invoke-static {p0, p2}, LEg/Z;->c(LQf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    new-instance v0, LCg/x;

    invoke-direct {v0, p4, p0}, LCg/x;-><init>(LQf/f;LQf/j;)V

    const/4 v1, 0x2

    invoke-static {p3, v1}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Leg/p;

    invoke-interface {p3, p1, v0}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_0

    invoke-static {p4}, LTf/h;->c(LQf/f;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic d(LQf/j;Ljava/lang/Object;Ljava/lang/Object;Leg/p;LQf/f;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    invoke-static {p0}, LEg/Z;->b(LQf/j;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, LCg/e;->c(LQf/j;Ljava/lang/Object;Ljava/lang/Object;Leg/p;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final e(LBg/j;LQf/j;)LBg/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/j<",
            "-TT;>;",
            "LQf/j;",
            ")",
            "LBg/j<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, LCg/w;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p0, LCg/r;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, LCg/z;

    invoke-direct {v0, p0, p1}, LCg/z;-><init>(LBg/j;LQf/j;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method
