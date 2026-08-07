.class public final Lyg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lwg/S;LQf/j;ILwg/U;Leg/l;Leg/p;)Lyg/E;
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
            "Lyg/c<",
            "TE;>;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lyg/E<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/a1;
    .end annotation

    invoke-static {p0, p1}, Lwg/L;->e(Lwg/S;LQf/j;)LQf/j;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x6

    invoke-static {p2, p1, p1, v0, p1}, Lyg/o;->d(ILyg/i;Leg/l;ILjava/lang/Object;)Lyg/l;

    move-result-object p1

    invoke-virtual {p3}, Lwg/U;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lyg/x;

    invoke-direct {p2, p0, p1, p5}, Lyg/x;-><init>(LQf/j;Lyg/l;Leg/p;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lyg/a;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lyg/a;-><init>(LQf/j;Lyg/l;Z)V

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p2, p4}, Lwg/R0;->Q(Leg/l;)Lwg/m0;

    :cond_1
    invoke-virtual {p2, p3, p2, p5}, Lwg/a;->B1(Lwg/U;Ljava/lang/Object;Leg/p;)V

    return-object p2
.end method

.method public static synthetic b(Lwg/S;LQf/j;ILwg/U;Leg/l;Leg/p;ILjava/lang/Object;)Lyg/E;
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

    invoke-static/range {v0 .. v5}, Lyg/b;->a(Lwg/S;LQf/j;ILwg/U;Leg/l;Leg/p;)Lyg/E;

    move-result-object p0

    return-object p0
.end method
