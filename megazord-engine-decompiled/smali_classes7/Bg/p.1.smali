.class public final synthetic LBg/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(LBg/i;I)LBg/i;
    .locals 2
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.4.0, binary compatibility with earlier versions"
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, LBg/k;->q(LBg/i;ILyg/i;ILjava/lang/Object;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final b(LBg/i;ILyg/i;)LBg/i;
    .locals 7
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;I",
            "Lyg/i;",
            ")",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, -0x1

    if-gez p1, :cond_1

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_3

    sget-object v1, Lyg/i;->SUSPEND:Lyg/i;

    if-ne p2, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-ne p1, v0, :cond_4

    sget-object p2, Lyg/i;->DROP_OLDEST:Lyg/i;

    const/4 p1, 0x0

    :cond_4
    move v3, p1

    move-object v4, p2

    instance-of p1, p0, LCg/p;

    if-eqz p1, :cond_5

    move-object v0, p0

    check-cast v0, LCg/p;

    const/4 p0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move v2, v3

    move-object v3, v4

    move v4, p0

    invoke-static/range {v0 .. v5}, LCg/p$a;->a(LCg/p;LQf/j;ILyg/i;ILjava/lang/Object;)LBg/i;

    move-result-object p0

    goto :goto_2

    :cond_5
    new-instance p1, LCg/h;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, LCg/h;-><init>(LBg/i;LQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V

    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public static synthetic c(LBg/i;IILjava/lang/Object;)LBg/i;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x2

    :cond_0
    invoke-static {p0, p1}, LBg/k;->n(LBg/i;I)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(LBg/i;ILyg/i;ILjava/lang/Object;)LBg/i;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x2

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lyg/i;->SUSPEND:Lyg/i;

    :cond_1
    invoke-static {p0, p1, p2}, LBg/k;->o(LBg/i;ILyg/i;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final e(LBg/i;)LBg/i;
    .locals 1
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
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, LBg/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LBg/d;

    invoke-direct {v0, p0}, LBg/d;-><init>(LBg/i;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final f(LQf/j;)V
    .locals 2

    sget-object v0, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p0, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flow context cannot contain job in it. Had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final g(LBg/i;)LBg/i;
    .locals 3
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
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-static {p0, v2, v0, v1, v0}, LBg/k;->q(LBg/i;ILyg/i;ILjava/lang/Object;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final h(LBg/i;LQf/j;)LBg/i;
    .locals 8
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
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
            "LQf/j;",
            ")",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, LBg/p;->f(LQf/j;)V

    sget-object v0, LQf/l;->b:LQf/l;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, LCg/p;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, LCg/p;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, LCg/p$a;->a(LCg/p;LQf/j;ILyg/i;ILjava/lang/Object;)LBg/i;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v7, LCg/h;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, LCg/h;-><init>(LBg/i;LQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V

    move-object p0, v7

    :goto_0
    return-object p0
.end method
