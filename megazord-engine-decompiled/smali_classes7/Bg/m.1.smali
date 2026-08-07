.class public final synthetic LBg/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,176:1\n107#2:177\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n153#1:177\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,176:1\n107#2:177\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n153#1:177\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(LBg/j;Lyg/D;ZLQf/f;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, LBg/m;->e(LBg/j;Lyg/D;ZLQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lyg/d;)LBg/i;
    .locals 1
    .param p0    # Lyg/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "\'BroadcastChannel\' is obsolete and all corresponding operators are deprecated in the favour of StateFlow and SharedFlow"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/d<",
            "TT;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LBg/m$a;

    invoke-direct {v0, p0}, LBg/m$a;-><init>(Lyg/d;)V

    return-object v0
.end method

.method public static final c(Lyg/D;)LBg/i;
    .locals 9
    .param p0    # Lyg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/D<",
            "+TT;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, LBg/e;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, LBg/e;-><init>(Lyg/D;ZLQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V

    return-object v8
.end method

.method public static final d(LBg/j;Lyg/D;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyg/D;
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
            "Lyg/D<",
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

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, LBg/m;->e(LBg/j;Lyg/D;ZLQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static final e(LBg/j;Lyg/D;ZLQf/f;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/j<",
            "-TT;>;",
            "Lyg/D<",
            "+TT;>;Z",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, LBg/m$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LBg/m$b;

    iget v1, v0, LBg/m$b;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/m$b;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/m$b;

    invoke-direct {v0, p3}, LBg/m$b;-><init>(LQf/f;)V

    :goto_0
    iget-object p3, v0, LBg/m$b;->f:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/m$b;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-boolean p2, v0, LBg/m$b;->e:Z

    iget-object p0, v0, LBg/m$b;->d:Ljava/lang/Object;

    check-cast p0, Lyg/n;

    iget-object p1, v0, LBg/m$b;->c:Ljava/lang/Object;

    check-cast p1, Lyg/D;

    iget-object v2, v0, LBg/m$b;->b:Ljava/lang/Object;

    check-cast v2, LBg/j;

    :try_start_0
    invoke-static {p3}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p3, p0

    move-object p0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-boolean p2, v0, LBg/m$b;->e:Z

    iget-object p0, v0, LBg/m$b;->d:Ljava/lang/Object;

    check-cast p0, Lyg/n;

    iget-object p1, v0, LBg/m$b;->c:Ljava/lang/Object;

    check-cast p1, Lyg/D;

    iget-object v2, v0, LBg/m$b;->b:Ljava/lang/Object;

    check-cast v2, LBg/j;

    :try_start_1
    invoke-static {p3}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p3}, LFf/j0;->n(Ljava/lang/Object;)V

    invoke-static {p0}, LBg/k;->o0(LBg/j;)V

    :try_start_2
    invoke-interface {p1}, Lyg/D;->iterator()Lyg/n;

    move-result-object p3

    :goto_1
    iput-object p0, v0, LBg/m$b;->b:Ljava/lang/Object;

    iput-object p1, v0, LBg/m$b;->c:Ljava/lang/Object;

    iput-object p3, v0, LBg/m$b;->d:Ljava/lang/Object;

    iput-boolean p2, v0, LBg/m$b;->e:Z

    iput v4, v0, LBg/m$b;->g:I

    invoke-interface {p3, v0}, Lyg/n;->b(LQf/f;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, v2

    move-object v2, p0

    move-object p0, p3

    move-object p3, v5

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Lyg/n;->next()Ljava/lang/Object;

    move-result-object p3

    iput-object v2, v0, LBg/m$b;->b:Ljava/lang/Object;

    iput-object p1, v0, LBg/m$b;->c:Ljava/lang/Object;

    iput-object p0, v0, LBg/m$b;->d:Ljava/lang/Object;

    iput-boolean p2, v0, LBg/m$b;->e:Z

    iput v3, v0, LBg/m$b;->g:I

    invoke-interface {v2, p3, v0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    :cond_6
    if-eqz p2, :cond_7

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lyg/r;->b(Lyg/D;Ljava/lang/Throwable;)V

    :cond_7
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0

    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_8

    invoke-static {p1, p0}, Lyg/r;->b(Lyg/D;Ljava/lang/Throwable;)V

    :cond_8
    throw p3
.end method

.method public static final f(LBg/i;Lwg/S;)Lyg/D;
    .locals 0
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
            "Lyg/D<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, LCg/e;->b(LBg/i;)LCg/d;

    move-result-object p0

    invoke-virtual {p0, p1}, LCg/d;->m(Lwg/S;)Lyg/D;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lyg/D;)LBg/i;
    .locals 9
    .param p0    # Lyg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/D<",
            "+TT;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, LBg/e;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, LBg/e;-><init>(Lyg/D;ZLQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V

    return-object v8
.end method
