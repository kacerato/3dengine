.class public final LEg/l;
.super Lwg/g0;
.source "SourceFile"

# interfaces
.implements LTf/e;
.implements LQf/f;


# annotations
.annotation build LFf/f0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwg/g0<",
        "TT;>;",
        "LTf/e;",
        "LQf/f<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,317:1\n243#1,8:381\n255#1:389\n256#1,2:400\n258#1:404\n1#2:318\n1#2:324\n1#2:365\n297#3,5:319\n302#3,12:325\n314#3:359\n297#3,5:360\n302#3,12:366\n314#3:419\n200#4,3:337\n203#4,14:345\n200#4,3:378\n203#4,14:405\n95#5,5:340\n107#5,10:390\n118#5,2:402\n107#5,13:420\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n224#1:381,8\n225#1:389\n225#1:400,2\n225#1:404\n202#1:324\n223#1:365\n202#1:319,5\n202#1:325,12\n202#1:359\n223#1:360,5\n223#1:366,12\n223#1:419\n202#1:337,3\n202#1:345,14\n223#1:378,3\n223#1:405,14\n203#1:340,5\n225#1:390,10\n225#1:402,2\n255#1:420,13\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,317:1\n243#1,8:381\n255#1:389\n256#1,2:400\n258#1:404\n1#2:318\n1#2:324\n1#2:365\n297#3,5:319\n302#3,12:325\n314#3:359\n297#3,5:360\n302#3,12:366\n314#3:419\n200#4,3:337\n203#4,14:345\n200#4,3:378\n203#4,14:405\n95#5,5:340\n107#5,10:390\n118#5,2:402\n107#5,13:420\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n224#1:381,8\n225#1:389\n225#1:400,2\n225#1:404\n202#1:324\n223#1:365\n202#1:319,5\n202#1:325,12\n202#1:359\n223#1:360,5\n223#1:366,12\n223#1:419\n202#1:337,3\n202#1:345,14\n223#1:378,3\n223#1:405,14\n203#1:340,5\n225#1:390,10\n225#1:402,2\n255#1:420,13\n*E\n"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;
    .annotation runtime Ldg/x;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lwg/M;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:LQf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/lang/Object;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/Object;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation"

    const-class v2, LEg/l;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lwg/M;LQf/f;)V
    .locals 1
    .param p1    # Lwg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/M;",
            "LQf/f<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lwg/g0;-><init>(I)V

    iput-object p1, p0, LEg/l;->e:Lwg/M;

    iput-object p2, p0, LEg/l;->f:LQf/f;

    invoke-static {}, LEg/m;->a()LEg/T;

    move-result-object p1

    iput-object p1, p0, LEg/l;->g:Ljava/lang/Object;

    invoke-virtual {p0}, LEg/l;->getContext()LQf/j;

    move-result-object p1

    invoke-static {p1}, LEg/Z;->b(LQf/j;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LEg/l;->h:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic u()V
    .locals 0

    return-void
.end method

.method private final w(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Leg/l;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Leg/l<",
            "Ljava/lang/Object;",
            "LFf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Leg/l;)V
    .locals 6
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
            "(",
            "Ljava/lang/Object;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

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

    :try_start_2
    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lwg/w1;->C1()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v4, v3}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    :cond_6
    :goto_1
    invoke-virtual {v0}, Lwg/q0;->n0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    :goto_2
    invoke-virtual {v0, v1}, Lwg/q0;->v(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lwg/w1;->C1()Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    invoke-static {v4, v3}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {p0, p1, v2}, Lwg/g0;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    goto :goto_2

    :goto_4
    return-void

    :catchall_2
    move-exception p1

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-virtual {v0, v1}, Lwg/q0;->v(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method

.method public final B(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, LEg/l;->getContext()LQf/j;

    move-result-object v0

    sget-object v1, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {v0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    check-cast v0, Lwg/K0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lwg/K0;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lwg/K0;->l()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LEg/l;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p1, LFf/i0;->c:LFf/i0$a;

    invoke-static {v0}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final C(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, LEg/l;->f:LQf/f;

    iget-object v1, p0, LEg/l;->h:Ljava/lang/Object;

    invoke-interface {v0}, LQf/f;->getContext()LQf/j;

    move-result-object v2

    invoke-static {v2, v1}, LEg/Z;->c(LQf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, LEg/Z;->a:LEg/T;

    if-eq v1, v3, :cond_0

    invoke-static {v0, v2, v1}, Lwg/L;->g(LQf/f;LQf/j;Ljava/lang/Object;)Lwg/w1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, LEg/l;->f:LQf/f;

    invoke-interface {v4, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, LFf/P0;->a:LFf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lwg/w1;->C1()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-static {v2, v1}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lwg/w1;->C1()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {v2, v1}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method

.method public final E(Lwg/p;)Ljava/lang/Throwable;
    .locals 4
    .param p1    # Lwg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/p<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LEg/m;->b:LEg/T;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    sget-object v1, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v2, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    :cond_1
    instance-of p1, v1, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    sget-object p1, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p1, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    instance-of v0, p1, Lwg/E;

    if-eqz v0, :cond_0

    check-cast p1, Lwg/E;

    iget-object p1, p1, Lwg/E;->b:Leg/l;

    invoke-interface {p1, p2}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e()LQf/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public getCallerFrame()LTf/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LEg/l;->f:LQf/f;

    instance-of v1, v0, LTf/e;

    if-eqz v1, :cond_0

    check-cast v0, LTf/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LEg/l;->f:LQf/f;

    invoke-interface {v0}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LEg/l;->g:Ljava/lang/Object;

    invoke-static {}, LEg/m;->a()LEg/T;

    move-result-object v1

    iput-object v1, p0, LEg/l;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final o()V
    .locals 3

    sget-object v0, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LEg/m;->b:LEg/T;

    if-eq v1, v2, :cond_0

    return-void
.end method

.method public final p()Lwg/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwg/q<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, LEg/m;->b:LEg/T;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v2, v1, Lwg/q;

    if-eqz v2, :cond_2

    sget-object v2, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, LEg/m;->b:LEg/T;

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lwg/q;

    return-object v1

    :cond_2
    sget-object v2, LEg/m;->b:LEg/T;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r(LQf/j;Ljava/lang/Object;)V
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "TT;)V"
        }
    .end annotation

    iput-object p2, p0, LEg/l;->g:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, p0, Lwg/g0;->d:I

    iget-object p2, p0, LEg/l;->e:Lwg/M;

    invoke-virtual {p2, p1, p0}, Lwg/M;->dispatchYield(LQf/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, LEg/l;->f:LQf/f;

    invoke-interface {v0}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v1}, Lwg/I;->d(Ljava/lang/Object;Leg/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, LEg/l;->e:Lwg/M;

    invoke-virtual {v4, v0}, Lwg/M;->isDispatchNeeded(LQf/j;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iput-object v3, p0, LEg/l;->g:Ljava/lang/Object;

    iput v5, p0, Lwg/g0;->d:I

    iget-object p1, p0, LEg/l;->e:Lwg/M;

    invoke-virtual {p1, v0, p0}, Lwg/M;->dispatch(LQf/j;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_0
    sget-object v0, Lwg/n1;->a:Lwg/n1;

    invoke-virtual {v0}, Lwg/n1;->b()Lwg/q0;

    move-result-object v0

    invoke-virtual {v0}, Lwg/q0;->i0()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, LEg/l;->g:Ljava/lang/Object;

    iput v5, p0, Lwg/g0;->d:I

    invoke-virtual {v0, p0}, Lwg/q0;->A(Lwg/g0;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v2}, Lwg/q0;->e0(Z)V

    :try_start_0
    invoke-virtual {p0}, LEg/l;->getContext()LQf/j;

    move-result-object v3

    iget-object v4, p0, LEg/l;->h:Ljava/lang/Object;

    invoke-static {v3, v4}, LEg/Z;->c(LQf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, LEg/l;->f:LQf/f;

    invoke-interface {v5, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, LFf/P0;->a:LFf/P0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v4}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lwg/q0;->n0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {v0, v2}, Lwg/q0;->v(Z)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v3, v4}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {p0, p1, v1}, Lwg/g0;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v2}, Lwg/q0;->v(Z)V

    throw p1
.end method

.method public final s()Lwg/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwg/q<",
            "*>;"
        }
    .end annotation

    sget-object v0, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lwg/q;

    if-eqz v1, :cond_0

    check-cast v0, Lwg/q;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LEg/l;->e:Lwg/M;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LEg/l;->f:LQf/f;

    invoke-static {v1}, Lwg/W;->c(LQf/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    sget-object v0, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x(Ljava/lang/Throwable;)Z
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, LEg/m;->b:LEg/T;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sget-object v1, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v2, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_1
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    return v4

    :cond_2
    sget-object v2, LEg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final y()V
    .locals 1

    invoke-virtual {p0}, LEg/l;->o()V

    invoke-virtual {p0}, LEg/l;->s()Lwg/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwg/q;->x()V

    :cond_0
    return-void
.end method
