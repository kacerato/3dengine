.class public final synthetic Lwg/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BuildersKt__BuildersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BuildersKt__BuildersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(LQf/j;Leg/p;)Ljava/lang/Object;
    .locals 4
    .param p0    # LQf/j;
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
            "LQf/j;",
            "Leg/p<",
            "-",
            "Lwg/S;",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, LQf/g;->m0:LQf/g$b;

    invoke-interface {p0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v1

    check-cast v1, LQf/g;

    if-nez v1, :cond_0

    sget-object v1, Lwg/n1;->a:Lwg/n1;

    invoke-virtual {v1}, Lwg/n1;->b()Lwg/q0;

    move-result-object v1

    sget-object v2, Lwg/B0;->b:Lwg/B0;

    invoke-interface {p0, v1}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p0

    invoke-static {v2, p0}, Lwg/L;->e(Lwg/S;LQf/j;)LQf/j;

    move-result-object p0

    goto :goto_3

    :cond_0
    instance-of v2, v1, Lwg/q0;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lwg/q0;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lwg/q0;->o0()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v3, v1

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v3

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v1, Lwg/n1;->a:Lwg/n1;

    invoke-virtual {v1}, Lwg/n1;->a()Lwg/q0;

    move-result-object v1

    :goto_2
    sget-object v2, Lwg/B0;->b:Lwg/B0;

    invoke-static {v2, p0}, Lwg/L;->e(Lwg/S;LQf/j;)LQf/j;

    move-result-object p0

    :goto_3
    new-instance v2, Lwg/g;

    invoke-direct {v2, p0, v0, v1}, Lwg/g;-><init>(LQf/j;Ljava/lang/Thread;Lwg/q0;)V

    sget-object p0, Lwg/U;->DEFAULT:Lwg/U;

    invoke-virtual {v2, p0, v2, p1}, Lwg/a;->B1(Lwg/U;Ljava/lang/Object;Leg/p;)V

    invoke-virtual {v2}, Lwg/g;->C1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(LQf/j;Leg/p;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p0, LQf/l;->b:LQf/l;

    :cond_0
    invoke-static {p0, p1}, Lwg/i;->f(LQf/j;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
