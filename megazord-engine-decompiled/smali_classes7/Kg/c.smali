.class public final LKg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTasks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,167:1\n314#2,11:168\n*S KotlinDebug\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n*L\n139#1:168,11\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nTasks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,167:1\n314#2,11:168\n*S KotlinDebug\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n*L\n139#1:168,11\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic a(Lwg/y;LQ1/k;)V
    .locals 0

    invoke-static {p0, p1}, LKg/c;->f(Lwg/y;LQ1/k;)V

    return-void
.end method

.method public static final synthetic b(LQ1/k;LQ1/b;LQf/f;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, LKg/c;->j(LQ1/k;LQ1/b;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(LQ1/k;)Lwg/Z;
    .locals 1
    .param p0    # LQ1/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQ1/k<",
            "TT;>;)",
            "Lwg/Z<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, LKg/c;->e(LQ1/k;LQ1/b;)Lwg/Z;

    move-result-object p0

    return-object p0
.end method

.method public static final d(LQ1/k;LQ1/b;)Lwg/Z;
    .locals 0
    .param p0    # LQ1/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQ1/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQ1/k<",
            "TT;>;",
            "LQ1/b;",
            ")",
            "Lwg/Z<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    invoke-static {p0, p1}, LKg/c;->e(LQ1/k;LQ1/b;)Lwg/Z;

    move-result-object p0

    return-object p0
.end method

.method public static final e(LQ1/k;LQ1/b;)Lwg/Z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQ1/k<",
            "TT;>;",
            "LQ1/b;",
            ")",
            "Lwg/Z<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lwg/A;->c(Lwg/K0;ILjava/lang/Object;)Lwg/y;

    move-result-object v2

    invoke-virtual {p0}, LQ1/k;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, LQ1/k;->q()Ljava/lang/Exception;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, LQ1/k;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v0, v1, v0}, Lwg/K0$a;->b(Lwg/K0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LQ1/k;->r()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v2, p0}, Lwg/y;->w(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3}, Lwg/y;->b(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_2
    sget-object v0, LKg/a;->b:LKg/a;

    new-instance v1, LKg/b;

    invoke-direct {v1, v2}, LKg/b;-><init>(Lwg/y;)V

    invoke-virtual {p0, v0, v1}, LQ1/k;->f(Ljava/util/concurrent/Executor;LQ1/e;)LQ1/k;

    :goto_0
    if-eqz p1, :cond_3

    new-instance p0, LKg/c$a;

    invoke-direct {p0, p1}, LKg/c$a;-><init>(LQ1/b;)V

    invoke-interface {v2, p0}, Lwg/K0;->Q(Leg/l;)Lwg/m0;

    :cond_3
    new-instance p0, LKg/c$b;

    invoke-direct {p0, v2}, LKg/c$b;-><init>(Lwg/y;)V

    return-object p0
.end method

.method public static final f(Lwg/y;LQ1/k;)V
    .locals 1

    invoke-virtual {p1}, LQ1/k;->q()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, LQ1/k;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lwg/K0$a;->b(Lwg/K0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LQ1/k;->r()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwg/y;->w(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Lwg/y;->b(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public static final g(Lwg/Z;)LQ1/k;
    .locals 3
    .param p0    # Lwg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/Z<",
            "+TT;>;)",
            "LQ1/k<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LQ1/b;

    invoke-direct {v0}, LQ1/b;-><init>()V

    new-instance v1, LQ1/l;

    invoke-virtual {v0}, LQ1/b;->b()LQ1/a;

    move-result-object v2

    invoke-direct {v1, v2}, LQ1/l;-><init>(LQ1/a;)V

    new-instance v2, LKg/c$c;

    invoke-direct {v2, v0, p0, v1}, LKg/c$c;-><init>(LQ1/b;Lwg/Z;LQ1/l;)V

    invoke-interface {p0, v2}, Lwg/K0;->Q(Leg/l;)Lwg/m0;

    invoke-virtual {v1}, LQ1/l;->a()LQ1/k;

    move-result-object p0

    return-object p0
.end method

.method public static final h(LQ1/k;LQ1/b;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p0    # LQ1/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQ1/b;
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
            "LQ1/k<",
            "TT;>;",
            "LQ1/b;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    invoke-static {p0, p1, p2}, LKg/c;->j(LQ1/k;LQ1/b;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final i(LQ1/k;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # LQ1/k;
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
            "LQ1/k<",
            "TT;>;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, LKg/c;->j(LQ1/k;LQ1/b;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final j(LQ1/k;LQ1/b;LQf/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQ1/k<",
            "TT;>;",
            "LQ1/b;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, LQ1/k;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LQ1/k;->q()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, LQ1/k;->t()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, LQ1/k;->r()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Task "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was cancelled normally."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    throw p1

    :cond_2
    new-instance v0, Lwg/q;

    invoke-static {p2}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lwg/q;-><init>(LQf/f;I)V

    invoke-virtual {v0}, Lwg/q;->K()V

    sget-object v1, LKg/a;->b:LKg/a;

    new-instance v2, LKg/c$d;

    invoke-direct {v2, v0}, LKg/c$d;-><init>(Lwg/p;)V

    invoke-virtual {p0, v1, v2}, LQ1/k;->f(Ljava/util/concurrent/Executor;LQ1/e;)LQ1/k;

    if-eqz p1, :cond_3

    new-instance p0, LKg/c$e;

    invoke-direct {p0, p1}, LKg/c$e;-><init>(LQ1/b;)V

    invoke-interface {v0, p0}, Lwg/p;->m(Leg/l;)V

    :cond_3
    invoke-virtual {v0}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    invoke-static {p2}, LTf/h;->c(LQf/f;)V

    :cond_4
    return-object p0
.end method
