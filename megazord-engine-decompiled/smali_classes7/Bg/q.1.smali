.class public final synthetic LBg/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LBg/i;LQf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
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
            "LQf/f<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, LBg/q$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LBg/q$a;

    iget v1, v0, LBg/q$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/q$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/q$a;

    invoke-direct {v0, p1}, LBg/q$a;-><init>(LQf/f;)V

    :goto_0
    iget-object p1, v0, LBg/q$a;->c:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/q$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/q$a;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$f;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$f;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$f;-><init>()V

    new-instance v2, LBg/q$b;

    invoke-direct {v2, p1}, LBg/q$b;-><init>(Lkotlin/jvm/internal/m0$f;)V

    iput-object p1, v0, LBg/q$a;->b:Ljava/lang/Object;

    iput v3, v0, LBg/q$a;->d:I

    invoke-interface {p0, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    :goto_1
    iget p0, p0, Lkotlin/jvm/internal/m0$f;->b:I

    invoke-static {p0}, LTf/b;->f(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final b(LBg/i;Leg/p;LQf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # LBg/i;
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
            "LBg/i<",
            "+TT;>;",
            "Leg/p<",
            "-TT;-",
            "LQf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LBg/q$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/q$c;

    iget v1, v0, LBg/q$c;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/q$c;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/q$c;

    invoke-direct {v0, p2}, LBg/q$c;-><init>(LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/q$c;->c:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/q$c;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/q$c;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$f;

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/m0$f;

    invoke-direct {p2}, Lkotlin/jvm/internal/m0$f;-><init>()V

    new-instance v2, LBg/q$d;

    invoke-direct {v2, p1, p2}, LBg/q$d;-><init>(Leg/p;Lkotlin/jvm/internal/m0$f;)V

    iput-object p2, v0, LBg/q$c;->b:Ljava/lang/Object;

    iput v3, v0, LBg/q$c;->d:I

    invoke-interface {p0, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p2

    :goto_1
    iget p0, p0, Lkotlin/jvm/internal/m0$f;->b:I

    invoke-static {p0}, LTf/b;->f(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
