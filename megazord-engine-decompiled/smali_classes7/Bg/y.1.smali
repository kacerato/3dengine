.class public final synthetic LBg/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,172:1\n126#2,15:173\n126#2,15:188\n126#2,15:203\n126#2,15:218\n126#2,15:233\n*S KotlinDebug\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n72#1:173,15\n92#1:188,15\n106#1:203,15\n124#1:218,15\n137#1:233,15\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,172:1\n126#2,15:173\n126#2,15:188\n126#2,15:203\n126#2,15:218\n126#2,15:233\n*S KotlinDebug\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n72#1:173,15\n92#1:188,15\n106#1:203,15\n124#1:218,15\n137#1:233,15\n*E\n"
    }
.end annotation


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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, LBg/y$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LBg/y$c;

    iget v1, v0, LBg/y$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/y$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/y$c;

    invoke-direct {v0, p1}, LBg/y$c;-><init>(LQf/f;)V

    :goto_0
    iget-object p1, v0, LBg/y$c;->d:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/y$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/y$c;->c:Ljava/lang/Object;

    check-cast p0, LBg/y$a;

    iget-object v0, v0, LBg/y$c;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/m0$h;

    :try_start_0
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, LCg/s;->a:LEg/T;

    iput-object v2, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, LBg/y$a;

    invoke-direct {v2, p1}, LBg/y$a;-><init>(Lkotlin/jvm/internal/m0$h;)V

    :try_start_1
    iput-object p1, v0, LBg/y$c;->b:Ljava/lang/Object;

    iput-object v2, v0, LBg/y$c;->c:Ljava/lang/Object;

    iput v3, v0, LBg/y$c;->e:I

    invoke-interface {p0, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    invoke-static {p1, p0}, LCg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;LBg/j;)V

    :goto_2
    iget-object p0, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, LCg/s;->a:LEg/T;

    if-eq p0, p1, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Expected at least one element"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LBg/y$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/y$d;

    iget v1, v0, LBg/y$d;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/y$d;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/y$d;

    invoke-direct {v0, p2}, LBg/y$d;-><init>(LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/y$d;->e:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/y$d;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/y$d;->d:Ljava/lang/Object;

    check-cast p0, LBg/y$b;

    iget-object p1, v0, LBg/y$d;->c:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/m0$h;

    iget-object v0, v0, LBg/y$d;->b:Ljava/lang/Object;

    check-cast v0, Leg/p;

    :try_start_0
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p2}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, LCg/s;->a:LEg/T;

    iput-object v2, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, LBg/y$b;

    invoke-direct {v2, p1, p2}, LBg/y$b;-><init>(Leg/p;Lkotlin/jvm/internal/m0$h;)V

    :try_start_1
    iput-object p1, v0, LBg/y$d;->b:Ljava/lang/Object;

    iput-object p2, v0, LBg/y$d;->c:Ljava/lang/Object;

    iput-object v2, v0, LBg/y$d;->d:Ljava/lang/Object;

    iput v3, v0, LBg/y$d;->f:I

    invoke-interface {p0, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_1
    invoke-static {p2, p0}, LCg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;LBg/j;)V

    :goto_2
    iget-object p0, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, LCg/s;->a:LEg/T;

    if-eq p0, p1, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected at least one element matching the predicate "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(LBg/i;LQf/f;)Ljava/lang/Object;
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, LBg/y$g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LBg/y$g;

    iget v1, v0, LBg/y$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/y$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/y$g;

    invoke-direct {v0, p1}, LBg/y$g;-><init>(LQf/f;)V

    :goto_0
    iget-object p1, v0, LBg/y$g;->d:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/y$g;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/y$g;->c:Ljava/lang/Object;

    check-cast p0, LBg/y$e;

    iget-object v0, v0, LBg/y$g;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/m0$h;

    :try_start_0
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    new-instance v2, LBg/y$e;

    invoke-direct {v2, p1}, LBg/y$e;-><init>(Lkotlin/jvm/internal/m0$h;)V

    :try_start_1
    iput-object p1, v0, LBg/y$g;->b:Ljava/lang/Object;

    iput-object v2, v0, LBg/y$g;->c:Ljava/lang/Object;

    iput v3, v0, LBg/y$g;->e:I

    invoke-interface {p0, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    invoke-static {p1, p0}, LCg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;LBg/j;)V

    :goto_2
    iget-object p0, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final d(LBg/i;Leg/p;LQf/f;)Ljava/lang/Object;
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LBg/y$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/y$h;

    iget v1, v0, LBg/y$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/y$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/y$h;

    invoke-direct {v0, p2}, LBg/y$h;-><init>(LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/y$h;->d:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/y$h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/y$h;->c:Ljava/lang/Object;

    check-cast p0, LBg/y$f;

    iget-object p1, v0, LBg/y$h;->b:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/m0$h;

    :try_start_0
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p2}, Lkotlin/jvm/internal/m0$h;-><init>()V

    new-instance v2, LBg/y$f;

    invoke-direct {v2, p1, p2}, LBg/y$f;-><init>(Leg/p;Lkotlin/jvm/internal/m0$h;)V

    :try_start_1
    iput-object p2, v0, LBg/y$h;->b:Ljava/lang/Object;

    iput-object v2, v0, LBg/y$h;->c:Ljava/lang/Object;

    iput v3, v0, LBg/y$h;->e:I

    invoke-interface {p0, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, v2

    :goto_1
    invoke-static {p2, p0}, LCg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;LBg/j;)V

    :goto_2
    iget-object p0, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final e(LBg/i;Ljava/lang/Object;Leg/q;LQf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;TR;",
            "Leg/q<",
            "-TR;-TT;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p3, LBg/y$i;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LBg/y$i;

    iget v1, v0, LBg/y$i;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/y$i;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/y$i;

    invoke-direct {v0, p3}, LBg/y$i;-><init>(LQf/f;)V

    :goto_0
    iget-object p3, v0, LBg/y$i;->c:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/y$i;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/y$i;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$h;

    invoke-static {p3}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p3, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p3}, Lkotlin/jvm/internal/m0$h;-><init>()V

    iput-object p1, p3, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance p1, LBg/y$j;

    invoke-direct {p1, p3, p2}, LBg/y$j;-><init>(Lkotlin/jvm/internal/m0$h;Leg/q;)V

    iput-object p3, v0, LBg/y$i;->b:Ljava/lang/Object;

    iput v3, v0, LBg/y$i;->d:I

    invoke-interface {p0, p1, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p3

    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final f(LBg/i;Ljava/lang/Object;Leg/q;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;TR;",
            "Leg/q<",
            "-TR;-TT;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/m0$h;

    invoke-direct {v0}, Lkotlin/jvm/internal/m0$h;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance p1, LBg/y$j;

    invoke-direct {p1, v0, p2}, LBg/y$j;-><init>(Lkotlin/jvm/internal/m0$h;Leg/q;)V

    const/4 p2, 0x0

    invoke-static {p2}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p0, p1, p3}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    iget-object p0, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final g(LBg/i;LQf/f;)Ljava/lang/Object;
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, LBg/y$k;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LBg/y$k;

    iget v1, v0, LBg/y$k;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/y$k;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/y$k;

    invoke-direct {v0, p1}, LBg/y$k;-><init>(LQf/f;)V

    :goto_0
    iget-object p1, v0, LBg/y$k;->c:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/y$k;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/y$k;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$h;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, LCg/s;->a:LEg/T;

    iput-object v2, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, LBg/y$l;

    invoke-direct {v2, p1}, LBg/y$l;-><init>(Lkotlin/jvm/internal/m0$h;)V

    iput-object p1, v0, LBg/y$k;->b:Ljava/lang/Object;

    iput v3, v0, LBg/y$k;->d:I

    invoke-interface {p0, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, LCg/s;->a:LEg/T;

    if-eq p0, p1, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Expected at least one element"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final h(LBg/i;LQf/f;)Ljava/lang/Object;
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, LBg/y$m;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LBg/y$m;

    iget v1, v0, LBg/y$m;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/y$m;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/y$m;

    invoke-direct {v0, p1}, LBg/y$m;-><init>(LQf/f;)V

    :goto_0
    iget-object p1, v0, LBg/y$m;->c:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/y$m;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/y$m;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$h;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    new-instance v2, LBg/y$n;

    invoke-direct {v2, p1}, LBg/y$n;-><init>(Lkotlin/jvm/internal/m0$h;)V

    iput-object p1, v0, LBg/y$m;->b:Ljava/lang/Object;

    iput v3, v0, LBg/y$m;->d:I

    invoke-interface {p0, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static final i(LBg/i;Leg/q;LQf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T::TS;>(",
            "LBg/i<",
            "+TT;>;",
            "Leg/q<",
            "-TS;-TT;-",
            "LQf/f<",
            "-TS;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LBg/y$o;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/y$o;

    iget v1, v0, LBg/y$o;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/y$o;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/y$o;

    invoke-direct {v0, p2}, LBg/y$o;-><init>(LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/y$o;->c:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/y$o;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/y$o;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$h;

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p2}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, LCg/s;->a:LEg/T;

    iput-object v2, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, LBg/y$p;

    invoke-direct {v2, p2, p1}, LBg/y$p;-><init>(Lkotlin/jvm/internal/m0$h;Leg/q;)V

    iput-object p2, v0, LBg/y$o;->b:Ljava/lang/Object;

    iput v3, v0, LBg/y$o;->d:I

    invoke-interface {p0, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p2

    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, LCg/s;->a:LEg/T;

    if-eq p0, p1, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Empty flow can\'t be reduced"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final j(LBg/i;LQf/f;)Ljava/lang/Object;
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, LBg/y$q;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LBg/y$q;

    iget v1, v0, LBg/y$q;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/y$q;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/y$q;

    invoke-direct {v0, p1}, LBg/y$q;-><init>(LQf/f;)V

    :goto_0
    iget-object p1, v0, LBg/y$q;->c:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/y$q;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/y$q;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/m0$h;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, LCg/s;->a:LEg/T;

    iput-object v2, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, LBg/y$r;

    invoke-direct {v2, p1}, LBg/y$r;-><init>(Lkotlin/jvm/internal/m0$h;)V

    iput-object p1, v0, LBg/y$q;->b:Ljava/lang/Object;

    iput v3, v0, LBg/y$q;->d:I

    invoke-interface {p0, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p1

    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, LCg/s;->a:LEg/T;

    if-eq p0, p1, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Flow is empty"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final k(LBg/i;LQf/f;)Ljava/lang/Object;
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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, LBg/y$t;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LBg/y$t;

    iget v1, v0, LBg/y$t;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/y$t;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/y$t;

    invoke-direct {v0, p1}, LBg/y$t;-><init>(LQf/f;)V

    :goto_0
    iget-object p1, v0, LBg/y$t;->d:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/y$t;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LBg/y$t;->c:Ljava/lang/Object;

    check-cast p0, LBg/y$s;

    iget-object v0, v0, LBg/y$t;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/m0$h;

    :try_start_0
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v2, LCg/s;->a:LEg/T;

    iput-object v2, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    new-instance v2, LBg/y$s;

    invoke-direct {v2, p1}, LBg/y$s;-><init>(Lkotlin/jvm/internal/m0$h;)V

    :try_start_1
    iput-object p1, v0, LBg/y$t;->b:Ljava/lang/Object;

    iput-object v2, v0, LBg/y$t;->c:Ljava/lang/Object;

    iput v3, v0, LBg/y$t;->e:I

    invoke-interface {p0, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    invoke-static {p1, p0}, LCg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;LBg/j;)V

    :goto_2
    iget-object p0, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, LCg/s;->a:LEg/T;

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    :cond_4
    return-object p0
.end method
