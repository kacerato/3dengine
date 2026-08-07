.class public final synthetic Lwg/P0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,685:1\n13#2:686\n1295#3,2:687\n1295#3,2:689\n1295#3,2:691\n1295#3,2:693\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n494#1:686\n521#1:687,2\n535#1:689,2\n629#1:691,2\n653#1:693,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,685:1\n13#2:686\n1295#3,2:687\n1295#3,2:689\n1295#3,2:691\n1295#3,2:693\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n494#1:686\n521#1:687,2\n535#1:689,2\n629#1:691,2\n653#1:693,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final A(LQf/j;)Z
    .locals 1
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p0, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p0

    check-cast p0, Lwg/K0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwg/K0;->isActive()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final B(Ljava/lang/Throwable;Lwg/K0;)Ljava/lang/Throwable;
    .locals 2

    if-nez p0, :cond_0

    new-instance p0, Lkotlinx/coroutines/JobCancellationException;

    const-string v0, "Job was cancelled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lwg/K0;)V

    :cond_0
    return-object p0
.end method

.method public static final a(Lwg/K0;)Lwg/B;
    .locals 1
    .param p0    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lwg/M0;

    invoke-direct {v0, p0}, Lwg/M0;-><init>(Lwg/K0;)V

    return-object v0
.end method

.method public static final synthetic b(Lwg/K0;)Lwg/K0;
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .annotation build Ldg/j;
        name = "Job"
    .end annotation

    invoke-static {p0}, Lwg/N0;->a(Lwg/K0;)Lwg/B;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lwg/K0;ILjava/lang/Object;)Lwg/B;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lwg/N0;->a(Lwg/K0;)Lwg/B;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lwg/K0;ILjava/lang/Object;)Lwg/K0;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lwg/N0;->b(Lwg/K0;)Lwg/K0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(LQf/j;)V
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lwg/N0;->f(LQf/j;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final f(LQf/j;Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p0, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p0

    check-cast p0, Lwg/K0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lwg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static final g(Lwg/K0;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lwg/v0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-interface {p0, p1}, Lwg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final synthetic h(LQf/j;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    sget-object v0, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p0, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p0

    instance-of v0, p0, Lwg/R0;

    if-eqz v0, :cond_0

    check-cast p0, Lwg/R0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p1, p0}, Lwg/P0;->B(Ljava/lang/Throwable;Lwg/K0;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwg/R0;->l0(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic i(LQf/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lwg/N0;->f(LQf/j;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic j(Lwg/K0;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lwg/N0;->g(Lwg/K0;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic k(LQf/j;Ljava/lang/Throwable;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lwg/N0;->h(LQf/j;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static final l(Lwg/K0;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/K0;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lwg/K0$a;->b(Lwg/K0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Lwg/K0;->b0(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static final synthetic m(LQf/j;)V
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lwg/N0;->o(LQf/j;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final synthetic n(LQf/j;Ljava/lang/Throwable;)V
    .locals 3
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    sget-object v0, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p0, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p0

    check-cast p0, Lwg/K0;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lwg/K0;->getChildren()Lpg/m;

    move-result-object v0

    invoke-interface {v0}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwg/K0;

    instance-of v2, v1, Lwg/R0;

    if-eqz v2, :cond_2

    check-cast v1, Lwg/R0;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    invoke-static {p1, p0}, Lwg/P0;->B(Ljava/lang/Throwable;Lwg/K0;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwg/R0;->l0(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final o(LQf/j;Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p0, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p0

    check-cast p0, Lwg/K0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lwg/K0;->getChildren()Lpg/m;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwg/K0;

    invoke-interface {v0, p1}, Lwg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic p(Lwg/K0;)V
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lwg/N0;->r(Lwg/K0;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final synthetic q(Lwg/K0;Ljava/lang/Throwable;)V
    .locals 3
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    invoke-interface {p0}, Lwg/K0;->getChildren()Lpg/m;

    move-result-object v0

    invoke-interface {v0}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwg/K0;

    instance-of v2, v1, Lwg/R0;

    if-eqz v2, :cond_1

    check-cast v1, Lwg/R0;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {p1, p0}, Lwg/P0;->B(Ljava/lang/Throwable;Lwg/K0;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lwg/R0;->l0(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final r(Lwg/K0;Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p0    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-interface {p0}, Lwg/K0;->getChildren()Lpg/m;

    move-result-object p0

    invoke-interface {p0}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwg/K0;

    invoke-interface {v0, p1}, Lwg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic s(LQf/j;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lwg/N0;->n(LQf/j;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic t(LQf/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lwg/N0;->o(LQf/j;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic u(Lwg/K0;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lwg/N0;->q(Lwg/K0;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic v(Lwg/K0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lwg/N0;->r(Lwg/K0;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final w(Lwg/K0;Lwg/m0;)Lwg/m0;
    .locals 1
    .param p0    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lwg/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lwg/o0;

    invoke-direct {v0, p1}, Lwg/o0;-><init>(Lwg/m0;)V

    invoke-interface {p0, v0}, Lwg/K0;->Q(Leg/l;)Lwg/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final x(LQf/j;)V
    .locals 1
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p0, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p0

    check-cast p0, Lwg/K0;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lwg/N0;->A(Lwg/K0;)V

    :cond_0
    return-void
.end method

.method public static final y(Lwg/K0;)V
    .locals 1
    .param p0    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lwg/K0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lwg/K0;->l()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final z(LQf/j;)Lwg/K0;
    .locals 3
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p0, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    check-cast v0, Lwg/K0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current context doesn\'t contain Job in it: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
