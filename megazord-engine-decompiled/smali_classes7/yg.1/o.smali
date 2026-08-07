.class public final Lyg/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(I)Lyg/l;
    .locals 2
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.4.0, binary compatibility with earlier versions"
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v0, v1, v0}, Lyg/o;->d(ILyg/i;Leg/l;ILjava/lang/Object;)Lyg/l;

    move-result-object p0

    return-object p0
.end method

.method public static final b(ILyg/i;Leg/l;)Lyg/l;
    .locals 2
    .param p1    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I",
            "Lyg/i;",
            "Leg/l<",
            "-TE;",
            "LFf/P0;",
            ">;)",
            "Lyg/l<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_2

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_1

    sget-object v0, Lyg/i;->SUSPEND:Lyg/i;

    if-ne p1, v0, :cond_0

    new-instance p1, Lyg/j;

    invoke-direct {p1, p0, p2}, Lyg/j;-><init>(ILeg/l;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lyg/w;

    invoke-direct {v0, p0, p1, p2}, Lyg/w;-><init>(ILyg/i;Leg/l;)V

    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance p1, Lyg/j;

    invoke-direct {p1, v0, p2}, Lyg/j;-><init>(ILeg/l;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lyg/i;->SUSPEND:Lyg/i;

    if-ne p1, p0, :cond_3

    new-instance p0, Lyg/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lyg/j;-><init>(ILeg/l;)V

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_3
    new-instance p0, Lyg/w;

    invoke-direct {p0, v1, p1, p2}, Lyg/w;-><init>(ILyg/i;Leg/l;)V

    goto :goto_0

    :cond_4
    sget-object p0, Lyg/i;->SUSPEND:Lyg/i;

    if-ne p1, p0, :cond_5

    new-instance p1, Lyg/w;

    sget-object p0, Lyg/i;->DROP_OLDEST:Lyg/i;

    invoke-direct {p1, v1, p0, p2}, Lyg/w;-><init>(ILyg/i;Leg/l;)V

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sget-object p0, Lyg/i;->SUSPEND:Lyg/i;

    if-ne p1, p0, :cond_7

    new-instance p0, Lyg/j;

    sget-object p1, Lyg/l;->P0:Lyg/l$b;

    invoke-virtual {p1}, Lyg/l$b;->a()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lyg/j;-><init>(ILeg/l;)V

    goto :goto_0

    :cond_7
    new-instance p0, Lyg/w;

    invoke-direct {p0, v1, p1, p2}, Lyg/w;-><init>(ILyg/i;Leg/l;)V

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method public static synthetic c(IILjava/lang/Object;)Lyg/l;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lyg/o;->a(I)Lyg/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(ILyg/i;Leg/l;ILjava/lang/Object;)Lyg/l;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_1

    sget-object p1, Lyg/i;->SUSPEND:Lyg/i;

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-static {p0, p1, p2}, Lyg/o;->b(ILyg/i;Leg/l;)Lyg/l;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/Object;Leg/l;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)TT;"
        }
    .end annotation

    instance-of v0, p0, Lyg/p$c;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lyg/p;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-interface {p1, p0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final f(Ljava/lang/Object;Leg/l;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, Lyg/p$a;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lyg/p;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static final g(Ljava/lang/Object;Leg/l;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, Lyg/p$c;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lyg/p;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;Leg/l;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Leg/l<",
            "-TT;",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, Lyg/p$c;

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
