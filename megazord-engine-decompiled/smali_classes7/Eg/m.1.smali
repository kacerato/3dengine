.class public final LEg/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 2 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,317:1\n297#1,5:325\n302#1,12:331\n314#1:387\n301#1:389\n302#1,12:391\n314#1:420\n217#2,7:318\n224#2:346\n243#2,8:347\n225#2:355\n255#2:356\n256#2,2:367\n258#2:371\n227#2:372\n229#2:388\n1#3:330\n1#3:390\n1#3:421\n200#4,3:343\n203#4,14:373\n200#4,17:403\n200#4,17:422\n107#5,10:357\n118#5,2:369\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n*L\n282#1:325,5\n282#1:331,12\n282#1:387\n287#1:389\n287#1:391,12\n287#1:420\n282#1:318,7\n282#1:346\n282#1:347,8\n282#1:355\n282#1:356\n282#1:367,2\n282#1:371\n282#1:372\n282#1:388\n282#1:330\n287#1:390\n282#1:343,3\n282#1:373,14\n287#1:403,17\n313#1:422,17\n282#1:357,10\n282#1:369,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 2 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,317:1\n297#1,5:325\n302#1,12:331\n314#1:387\n301#1:389\n302#1,12:391\n314#1:420\n217#2,7:318\n224#2:346\n243#2,8:347\n225#2:355\n255#2:356\n256#2,2:367\n258#2:371\n227#2:372\n229#2:388\n1#3:330\n1#3:390\n1#3:421\n200#4,3:343\n203#4,14:373\n200#4,17:403\n200#4,17:422\n107#5,10:357\n118#5,2:369\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n*L\n282#1:325,5\n282#1:331,12\n282#1:387\n287#1:389\n287#1:391,12\n287#1:420\n282#1:318,7\n282#1:346\n282#1:347,8\n282#1:355\n282#1:356\n282#1:367,2\n282#1:371\n282#1:372\n282#1:388\n282#1:330\n287#1:390\n282#1:343,3\n282#1:373,14\n287#1:403,17\n313#1:422,17\n282#1:357,10\n282#1:369,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:LEg/T;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LEg/T;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LEg/m;->a:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LEg/m;->b:LEg/T;

    return-void
.end method

.method public static final synthetic a()LEg/T;
    .locals 1

    sget-object v0, LEg/m;->a:LEg/T;

    return-object v0
.end method

.method public static final b(LEg/l;Ljava/lang/Object;IZLeg/a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEg/l<",
            "*>;",
            "Ljava/lang/Object;",
            "IZ",
            "Leg/a<",
            "LFf/P0;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lwg/n1;->a:Lwg/n1;

    invoke-virtual {v0}, Lwg/n1;->b()Lwg/q0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lwg/q0;->j0()Z

    move-result p3

    if-eqz p3, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lwg/q0;->i0()Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    iput-object p1, p0, LEg/l;->g:Ljava/lang/Object;

    iput p2, p0, Lwg/g0;->d:I

    invoke-virtual {v0, p0}, Lwg/q0;->A(Lwg/g0;)V

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lwg/q0;->e0(Z)V

    :try_start_0
    invoke-interface {p4}, Leg/a;->invoke()Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lwg/q0;->n0()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/J;->d(I)V

    :goto_0
    invoke-virtual {v0, v2}, Lwg/q0;->v(Z)V

    invoke-static {v2}, Lkotlin/jvm/internal/J;->c(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lwg/g0;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lkotlin/jvm/internal/J;->d(I)V

    goto :goto_0

    :goto_1
    return v1

    :catchall_1
    move-exception p0

    invoke-static {v2}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-virtual {v0, v2}, Lwg/q0;->v(Z)V

    invoke-static {v2}, Lkotlin/jvm/internal/J;->c(I)V

    throw p0
.end method

.method public static synthetic c(LEg/l;Ljava/lang/Object;IZLeg/a;ILjava/lang/Object;)Z
    .locals 1

    and-int/lit8 p5, p5, 0x4

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    move p3, p6

    :cond_0
    sget-object p5, Lwg/n1;->a:Lwg/n1;

    invoke-virtual {p5}, Lwg/n1;->b()Lwg/q0;

    move-result-object p5

    if-eqz p3, :cond_1

    invoke-virtual {p5}, Lwg/q0;->j0()Z

    move-result p3

    if-eqz p3, :cond_1

    return p6

    :cond_1
    invoke-virtual {p5}, Lwg/q0;->i0()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    iput-object p1, p0, LEg/l;->g:Ljava/lang/Object;

    iput p2, p0, Lwg/g0;->d:I

    invoke-virtual {p5, p0}, Lwg/q0;->A(Lwg/g0;)V

    move p6, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p5, v0}, Lwg/q0;->e0(Z)V

    :try_start_0
    invoke-interface {p4}, Leg/a;->invoke()Ljava/lang/Object;

    :cond_3
    invoke-virtual {p5}, Lwg/q0;->n0()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    :goto_0
    invoke-virtual {p5, v0}, Lwg/q0;->v(Z)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lwg/g0;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    goto :goto_0

    :goto_1
    return p6

    :catchall_1
    move-exception p0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-virtual {p5, v0}, Lwg/q0;->v(Z)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    throw p0
.end method

.method public static final d(LQf/f;Ljava/lang/Object;Leg/l;)V
    .locals 6
    .param p0    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/f<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    .annotation build Lwg/F0;
    .end annotation

    instance-of v0, p0, LEg/l;

    if-eqz v0, :cond_8

    check-cast p0, LEg/l;

    invoke-static {p1, p2}, Lwg/I;->b(Ljava/lang/Object;Leg/l;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, LEg/l;->e:Lwg/M;

    invoke-virtual {p0}, LEg/l;->getContext()LQf/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwg/M;->isDispatchNeeded(LQf/j;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p2, p0, LEg/l;->g:Ljava/lang/Object;

    iput v1, p0, Lwg/g0;->d:I

    iget-object p1, p0, LEg/l;->e:Lwg/M;

    invoke-virtual {p0}, LEg/l;->getContext()LQf/j;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lwg/M;->dispatch(LQf/j;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lwg/n1;->a:Lwg/n1;

    invoke-virtual {v0}, Lwg/n1;->b()Lwg/q0;

    move-result-object v0

    invoke-virtual {v0}, Lwg/q0;->i0()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p2, p0, LEg/l;->g:Ljava/lang/Object;

    iput v1, p0, Lwg/g0;->d:I

    invoke-virtual {v0, p0}, Lwg/q0;->A(Lwg/g0;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v1}, Lwg/q0;->e0(Z)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, LEg/l;->getContext()LQf/j;

    move-result-object v3

    sget-object v4, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {v3, v4}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v3

    check-cast v3, Lwg/K0;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lwg/K0;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lwg/K0;->l()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, LEg/l;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p2, LFf/i0;->c:LFf/i0$a;

    invoke-static {p1}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget-object p2, p0, LEg/l;->f:LQf/f;

    iget-object v3, p0, LEg/l;->h:Ljava/lang/Object;

    invoke-interface {p2}, LQf/f;->getContext()LQf/j;

    move-result-object v4

    invoke-static {v4, v3}, LEg/Z;->c(LQf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, LEg/Z;->a:LEg/T;

    if-eq v3, v5, :cond_3

    invoke-static {p2, v4, v3}, Lwg/L;->g(LQf/f;LQf/j;Ljava/lang/Object;)Lwg/w1;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object p2, v2

    :goto_0
    :try_start_1
    iget-object v5, p0, LEg/l;->f:LQf/f;

    invoke-interface {v5, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, LFf/P0;->a:LFf/P0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_4

    :try_start_2
    invoke-virtual {p2}, Lwg/w1;->C1()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v4, v3}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lwg/q0;->n0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Lwg/q0;->v(Z)V

    goto :goto_4

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_6

    :try_start_3
    invoke-virtual {p2}, Lwg/w1;->C1()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    invoke-static {v4, v3}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {p0, p1, v2}, Lwg/g0;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Lwg/q0;->v(Z)V

    throw p0

    :cond_8
    invoke-interface {p0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static synthetic e(LQf/f;Ljava/lang/Object;Leg/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, LEg/m;->d(LQf/f;Ljava/lang/Object;Leg/l;)V

    return-void
.end method

.method public static final f(LEg/l;)Z
    .locals 5
    .param p0    # LEg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEg/l<",
            "-",
            "LFf/P0;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, LFf/P0;->a:LFf/P0;

    sget-object v1, Lwg/n1;->a:Lwg/n1;

    invoke-virtual {v1}, Lwg/n1;->b()Lwg/q0;

    move-result-object v1

    invoke-virtual {v1}, Lwg/q0;->j0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lwg/q0;->i0()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iput-object v0, p0, LEg/l;->g:Ljava/lang/Object;

    iput v4, p0, Lwg/g0;->d:I

    invoke-virtual {v1, p0}, Lwg/q0;->A(Lwg/g0;)V

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Lwg/q0;->e0(Z)V

    :try_start_0
    invoke-virtual {p0}, Lwg/g0;->run()V

    :cond_2
    invoke-virtual {v1}, Lwg/q0;->n0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {v1, v4}, Lwg/q0;->v(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v2}, Lwg/g0;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return v3

    :catchall_1
    move-exception p0

    invoke-virtual {v1, v4}, Lwg/q0;->v(Z)V

    throw p0
.end method
