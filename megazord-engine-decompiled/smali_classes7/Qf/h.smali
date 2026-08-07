.class public final LQf/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LQf/j;Leg/l;)LQf/f;
    .locals 1
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/j;",
            "Leg/l<",
            "-",
            "LFf/i0<",
            "+TT;>;",
            "LFf/P0;",
            ">;)",
            "LQf/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resumeWith"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LQf/h$a;

    invoke-direct {v0, p0, p1}, LQf/h$a;-><init>(LQf/j;Leg/l;)V

    return-object v0
.end method

.method public static final b(Leg/l;LQf/f;)LQf/f;
    .locals 1
    .param p0    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TT;>;)",
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LQf/n;

    invoke-static {p0, p1}, LSf/c;->b(Leg/l;LQf/f;)LQf/f;

    move-result-object p0

    invoke-static {p0}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LQf/n;-><init>(LQf/f;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final c(Leg/p;Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 1
    .param p0    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/p<",
            "-TR;-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "LQf/f<",
            "-TT;>;)",
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LQf/n;

    invoke-static {p0, p1, p2}, LSf/c;->c(Leg/p;Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p0

    invoke-static {p0}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LQf/n;-><init>(LQf/f;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final d()LQf/j;
    .locals 2

    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "Implemented as intrinsic"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic e()V
    .locals 0
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    return-void
.end method

.method public static final f(LQf/f;Ljava/lang/Object;)V
    .locals 1
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/f<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LFf/i0;->c:LFf/i0$a;

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final g(LQf/f;Ljava/lang/Throwable;)V
    .locals 1
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/f<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LFf/i0;->c:LFf/i0$a;

    invoke-static {p1}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final h(Leg/l;LQf/f;)V
    .locals 1
    .param p0    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LSf/c;->b(Leg/l;LQf/f;)LQf/f;

    move-result-object p0

    invoke-static {p0}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object p0

    sget-object p1, LFf/P0;->a:LFf/P0;

    sget-object v0, LFf/i0;->c:LFf/i0$a;

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final i(Leg/p;Ljava/lang/Object;LQf/f;)V
    .locals 1
    .param p0    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/p<",
            "-TR;-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "LQf/f<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, LSf/c;->c(Leg/p;Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p0

    invoke-static {p0}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object p0

    sget-object p1, LFf/P0;->a:LFf/P0;

    sget-object p2, LFf/i0;->c:LFf/i0$a;

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final j(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 2
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TT;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance v0, LQf/n;

    invoke-static {p1}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v1

    invoke-direct {v0, v1}, LQf/n;-><init>(LQf/f;)V

    invoke-interface {p0, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, LQf/n;->a()Ljava/lang/Object;

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
