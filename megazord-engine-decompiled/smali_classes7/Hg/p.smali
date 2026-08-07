.class public final LHg/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lwg/p;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, LHg/p;->c(Lwg/p;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic b(Lwg/p;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, LHg/p;->d(Lwg/p;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final c(Lwg/p;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/p<",
            "-TT;>;TT;)V"
        }
    .end annotation

    invoke-interface {p0}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    sget-object v1, Lwg/M;->Key:Lwg/M$a;

    invoke-interface {v0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    check-cast v0, Lwg/M;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0, p1}, Lwg/p;->i(Lwg/M;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, LFf/i0;->c:LFf/i0$a;

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final d(Lwg/p;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/p<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    sget-object v1, Lwg/M;->Key:Lwg/M$a;

    invoke-interface {v0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    check-cast v0, Lwg/M;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0, p1}, Lwg/p;->D(Lwg/M;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v0, LFf/i0;->c:LFf/i0$a;

    invoke-static {p1}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final e(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LHg/c<",
            "-TR;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, LHg/d;

    invoke-direct {v0, p1}, LHg/d;-><init>(LQf/f;)V

    :try_start_0
    invoke-interface {p0, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, LHg/d;->p0(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, LHg/d;->o0()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_0
    return-object p0
.end method

.method public static final f(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation build LFf/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LHg/c<",
            "-TR;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance v0, LHg/d;

    invoke-direct {v0, p1}, LHg/d;-><init>(LQf/f;)V

    :try_start_0
    invoke-interface {p0, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, LHg/d;->p0(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, LHg/d;->o0()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    return-object p0
.end method

.method public static final g(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LHg/c<",
            "-TR;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, LHg/s;

    invoke-direct {v0, p1}, LHg/s;-><init>(LQf/f;)V

    :try_start_0
    invoke-interface {p0, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, LHg/s;->q0(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, LHg/s;->r0()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_0
    return-object p0
.end method

.method public static final h(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation build LFf/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LHg/c<",
            "-TR;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance v0, LHg/s;

    invoke-direct {v0, p1}, LHg/s;-><init>(LQf/f;)V

    :try_start_0
    invoke-interface {p0, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, LHg/s;->q0(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, LHg/s;->r0()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    return-object p0
.end method
