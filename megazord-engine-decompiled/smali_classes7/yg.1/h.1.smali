.class public final Lyg/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,202:1\n48#2,4:203\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n*L\n51#1:203,4\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,202:1\n48#2,4:203\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n*L\n51#1:203,4\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lwg/S;LQf/j;ILwg/U;Leg/l;Leg/p;)Lyg/d;
    .locals 1
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
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
    .end annotation

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
            "Lyg/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/a1;
    .end annotation

    invoke-static {p0, p1}, Lwg/L;->e(Lwg/S;LQf/j;)LQf/j;

    move-result-object p0

    invoke-static {p2}, Lyg/f;->a(I)Lyg/d;

    move-result-object p1

    invoke-virtual {p3}, Lwg/U;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lyg/y;

    invoke-direct {p2, p0, p1, p5}, Lyg/y;-><init>(LQf/j;Lyg/d;Leg/p;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lyg/g;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lyg/g;-><init>(LQf/j;Lyg/d;Z)V

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p2, p4}, Lwg/R0;->Q(Leg/l;)Lwg/m0;

    :cond_1
    invoke-virtual {p2, p3, p2, p5}, Lwg/a;->B1(Lwg/U;Ljava/lang/Object;Leg/p;)V

    return-object p2
.end method

.method public static final b(Lyg/D;ILwg/U;)Lyg/d;
    .locals 11
    .param p0    # Lyg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lwg/U;
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
            "Lyg/D<",
            "+TE;>;I",
            "Lwg/U;",
            ")",
            "Lyg/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/a1;
    .end annotation

    sget-object v0, Lwg/B0;->b:Lwg/B0;

    invoke-static {}, Lwg/j0;->g()Lwg/M;

    move-result-object v1

    invoke-static {v0, v1}, Lwg/T;->m(Lwg/S;LQf/j;)Lwg/S;

    move-result-object v0

    sget-object v1, Lwg/N;->N0:Lwg/N$b;

    new-instance v2, Lyg/h$a;

    invoke-direct {v2, v1}, Lyg/h$a;-><init>(Lwg/N$b;)V

    invoke-static {v0, v2}, Lwg/T;->m(Lwg/S;LQf/j;)Lwg/S;

    move-result-object v3

    new-instance v7, Lyg/h$b;

    invoke-direct {v7, p0}, Lyg/h$b;-><init>(Lyg/D;)V

    new-instance v8, Lyg/h$c;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lyg/h$c;-><init>(Lyg/D;LQf/f;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    move v5, p1

    move-object v6, p2

    invoke-static/range {v3 .. v10}, Lyg/h;->c(Lwg/S;LQf/j;ILwg/U;Leg/l;Leg/p;ILjava/lang/Object;)Lyg/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lwg/S;LQf/j;ILwg/U;Leg/l;Leg/p;ILjava/lang/Object;)Lyg/d;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    sget-object p1, LQf/l;->b:LQf/l;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    move v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Lwg/U;->LAZY:Lwg/U;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const/4 p4, 0x0

    :cond_3
    move-object v4, p4

    move-object v0, p0

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lyg/h;->a(Lwg/S;LQf/j;ILwg/U;Leg/l;Leg/p;)Lyg/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lyg/D;ILwg/U;ILjava/lang/Object;)Lyg/d;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lwg/U;->LAZY:Lwg/U;

    :cond_1
    invoke-static {p0, p1, p2}, Lyg/h;->b(Lyg/D;ILwg/U;)Lyg/d;

    move-result-object p0

    return-object p0
.end method
