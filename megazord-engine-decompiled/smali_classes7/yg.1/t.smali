.class public final synthetic Lyg/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,141:1\n82#1,11:142\n105#1:153\n82#1,6:154\n106#1,2:160\n92#1:162\n88#1,3:163\n33#1,5:166\n*S KotlinDebug\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n105#1:142,11\n116#1:153\n116#1:154,6\n116#1:160,2\n116#1:162\n116#1:163,3\n129#1:166,5\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,141:1\n82#1,11:142\n105#1:153\n82#1,6:154\n106#1,2:160\n92#1:162\n88#1,3:163\n33#1,5:166\n*S KotlinDebug\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n105#1:142,11\n116#1:153\n116#1:154,6\n116#1:160,2\n116#1:162\n116#1:163,3\n129#1:166,5\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lyg/D;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Lyg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LFf/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/D<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Channel was consumed, consumer had failed"

    invoke-static {v0, p1}, Lwg/v0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    move-object v0, p1

    :cond_1
    invoke-interface {p0, v0}, Lyg/D;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final b(Lyg/d;Leg/l;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lyg/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/d<",
            "TE;>;",
            "Leg/l<",
            "-",
            "Lyg/D<",
            "+TE;>;+TR;>;)TR;"
        }
    .end annotation

    .annotation build Lwg/a1;
    .end annotation

    invoke-interface {p0}, Lyg/d;->v()Lyg/D;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, p0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, v0, v1, v0}, Lyg/D$a;->b(Lyg/D;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, v0, v1, v0}, Lyg/D$a;->b(Lyg/D;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method

.method public static final c(Lyg/D;Leg/l;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lyg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/D<",
            "+TE;>;",
            "Leg/l<",
            "-",
            "Lyg/D<",
            "+TE;>;+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, p0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lyg/r;->b(Lyg/D;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, p1}, Lyg/r;->b(Lyg/D;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    throw v1
.end method

.method public static final d(Lyg/d;Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 6
    .param p0    # Lyg/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/d<",
            "TE;>;",
            "Leg/l<",
            "-TE;",
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

    instance-of v0, p2, Lyg/t$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyg/t$b;

    iget v1, v0, Lyg/t$b;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyg/t$b;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyg/t$b;

    invoke-direct {v0, p2}, Lyg/t$b;-><init>(LQf/f;)V

    :goto_0
    iget-object p2, v0, Lyg/t$b;->e:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lyg/t$b;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lyg/t$b;->d:Ljava/lang/Object;

    check-cast p0, Lyg/n;

    iget-object p1, v0, Lyg/t$b;->c:Ljava/lang/Object;

    check-cast p1, Lyg/D;

    iget-object v2, v0, Lyg/t$b;->b:Ljava/lang/Object;

    check-cast v2, Leg/l;

    :try_start_0
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v2

    :goto_1
    move-object v2, v5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    invoke-interface {p0}, Lyg/d;->v()Lyg/D;

    move-result-object p0

    :try_start_1
    invoke-interface {p0}, Lyg/D;->iterator()Lyg/n;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v5, p2

    move-object p2, p0

    move-object p0, v5

    :goto_2
    :try_start_2
    iput-object p1, v0, Lyg/t$b;->b:Ljava/lang/Object;

    iput-object p2, v0, Lyg/t$b;->c:Ljava/lang/Object;

    iput-object p0, v0, Lyg/t$b;->d:Ljava/lang/Object;

    iput v4, v0, Lyg/t$b;->f:I

    invoke-interface {p0, v0}, Lyg/n;->b(LQf/f;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_1

    :goto_3
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lyg/n;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v0

    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v0

    goto :goto_4

    :cond_4
    sget-object p0, LFf/P0;->a:LFf/P0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {v0, v3, v4, v3}, Lyg/D$a;->b(Lyg/D;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p0

    :catchall_2
    move-exception p0

    move-object p1, p2

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_4
    invoke-static {v4}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p1, v3, v4, v3}, Lyg/D$a;->b(Lyg/D;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/J;->c(I)V

    throw p0
.end method

.method public static final e(Lyg/D;Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 5
    .param p0    # Lyg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/D<",
            "+TE;>;",
            "Leg/l<",
            "-TE;",
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

    instance-of v0, p2, Lyg/t$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyg/t$a;

    iget v1, v0, Lyg/t$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyg/t$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyg/t$a;

    invoke-direct {v0, p2}, Lyg/t$a;-><init>(LQf/f;)V

    :goto_0
    iget-object p2, v0, Lyg/t$a;->e:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lyg/t$a;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lyg/t$a;->d:Ljava/lang/Object;

    check-cast p0, Lyg/n;

    iget-object p1, v0, Lyg/t$a;->c:Ljava/lang/Object;

    check-cast p1, Lyg/D;

    iget-object v2, v0, Lyg/t$a;->b:Ljava/lang/Object;

    check-cast v2, Leg/l;

    :try_start_0
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    :try_start_1
    invoke-interface {p0}, Lyg/D;->iterator()Lyg/n;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v4

    :goto_1
    :try_start_2
    iput-object p2, v0, Lyg/t$a;->b:Ljava/lang/Object;

    iput-object p1, v0, Lyg/t$a;->c:Ljava/lang/Object;

    iput-object p0, v0, Lyg/t$a;->d:Ljava/lang/Object;

    iput v3, v0, Lyg/t$a;->f:I

    invoke-interface {p0, v0}, Lyg/n;->b(LQf/f;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, v2

    move-object v2, p2

    move-object p2, v4

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lyg/n;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2, p2}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v2

    goto :goto_1

    :cond_4
    sget-object p0, LFf/P0;->a:LFf/P0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lyg/r;->b(Lyg/D;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p1, p0}, Lyg/r;->b(Lyg/D;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    throw p2
.end method

.method public static final f(Lyg/d;Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 3
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/d<",
            "TE;>;",
            "Leg/l<",
            "-TE;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p0}, Lyg/d;->v()Lyg/D;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0}, Lyg/D;->iterator()Lyg/n;

    move-result-object v1

    :goto_0
    const/4 v2, 0x3

    invoke-static {v2}, Lkotlin/jvm/internal/J;->e(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {v1, p2}, Lyg/n;->b(LQf/f;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lyg/n;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, LFf/P0;->a:LFf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, p2, v0, p2}, Lyg/D$a;->b(Lyg/D;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p1

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, p2, v0, p2}, Lyg/D$a;->b(Lyg/D;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method

.method public static final g(Lyg/D;Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/D<",
            "+TE;>;",
            "Leg/l<",
            "-TE;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0}, Lyg/D;->iterator()Lyg/n;

    move-result-object v0

    :goto_0
    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/jvm/internal/J;->e(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/J;->e(I)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lyg/n;->b(LQf/f;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2}, Lkotlin/jvm/internal/J;->e(I)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lyg/n;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, LFf/P0;->a:LFf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, v1}, Lyg/r;->b(Lyg/D;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p1

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p2}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, p1}, Lyg/r;->b(Lyg/D;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lkotlin/jvm/internal/J;->c(I)V

    throw v0
.end method

.method public static final synthetic h(Lyg/D;)LHg/g;
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Deprecated in the favour of \'onReceiveCatching\'"
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.onReceiveOrNull?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lyg/D;->G()LHg/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lyg/D;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Deprecated in the favour of \'receiveCatching\'"
        replaceWith = .subannotation LFf/g0;
            expression = "receiveCatching().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.receiveOrNull?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lyg/D;->A(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lyg/D;LQf/f;)Ljava/lang/Object;
    .locals 7
    .param p0    # Lyg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/D<",
            "+TE;>;",
            "LQf/f<",
            "-",
            "Ljava/util/List<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lyg/t$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyg/t$c;

    iget v1, v0, Lyg/t$c;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyg/t$c;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyg/t$c;

    invoke-direct {v0, p1}, Lyg/t$c;-><init>(LQf/f;)V

    :goto_0
    iget-object p1, v0, Lyg/t$c;->f:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lyg/t$c;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lyg/t$c;->e:Ljava/lang/Object;

    check-cast p0, Lyg/n;

    iget-object v2, v0, Lyg/t$c;->d:Ljava/lang/Object;

    check-cast v2, Lyg/D;

    iget-object v4, v0, Lyg/t$c;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v0, Lyg/t$c;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p1, v2

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    invoke-static {}, LHf/G;->j()Ljava/util/List;

    move-result-object p1

    :try_start_1
    invoke-interface {p0}, Lyg/D;->iterator()Lyg/n;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, p1

    move-object v5, v4

    move-object p1, p0

    move-object p0, v2

    :goto_1
    :try_start_2
    iput-object v5, v0, Lyg/t$c;->b:Ljava/lang/Object;

    iput-object v4, v0, Lyg/t$c;->c:Ljava/lang/Object;

    iput-object p1, v0, Lyg/t$c;->d:Ljava/lang/Object;

    iput-object p0, v0, Lyg/t$c;->e:Ljava/lang/Object;

    iput v3, v0, Lyg/t$c;->g:I

    invoke-interface {p0, v0}, Lyg/n;->b(LQf/f;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    :goto_2
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lyg/n;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v2

    goto :goto_1

    :cond_4
    sget-object p0, LFf/P0;->a:LFf/P0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p0, 0x0

    invoke-static {v2, p0}, Lyg/r;->b(Lyg/D;Ljava/lang/Throwable;)V

    invoke-static {v5}, LHf/G;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p1, p0}, Lyg/r;->b(Lyg/D;Ljava/lang/Throwable;)V

    throw v0
.end method
