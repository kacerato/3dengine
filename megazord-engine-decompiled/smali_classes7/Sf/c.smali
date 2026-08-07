.class public LSf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,270:1\n204#1,4:271\n225#1:275\n204#1,4:276\n225#1:280\n*S KotlinDebug\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n130#1:271,4\n130#1:275\n165#1:276,4\n165#1:280\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nIntrinsicsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n1#1,270:1\n204#1,4:271\n225#1:275\n204#1,4:276\n225#1:280\n*S KotlinDebug\n*F\n+ 1 IntrinsicsJvm.kt\nkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt\n*L\n130#1:271,4\n130#1:275\n165#1:276,4\n165#1:280\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(LQf/f;Leg/l;)LQf/f;
    .locals 2
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/f<",
            "-TT;>;",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    sget-object v1, LQf/l;->b:LQf/l;

    if-ne v0, v1, :cond_0

    new-instance v0, LSf/c$a;

    invoke-direct {v0, p0, p1}, LSf/c$a;-><init>(LQf/f;Leg/l;)V

    goto :goto_0

    :cond_0
    new-instance v1, LSf/c$b;

    invoke-direct {v1, p0, v0, p1}, LSf/c$b;-><init>(LQf/f;LQf/j;Leg/l;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static b(Leg/l;LQf/f;)LQf/f;
    .locals 2
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

    invoke-static {p1}, LTf/h;->a(LQf/f;)LQf/f;

    move-result-object p1

    instance-of v0, p0, LTf/a;

    if-eqz v0, :cond_0

    check-cast p0, LTf/a;

    invoke-virtual {p0, p1}, LTf/a;->create(LQf/f;)LQf/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    sget-object v1, LQf/l;->b:LQf/l;

    if-ne v0, v1, :cond_1

    new-instance v0, LSf/c$c;

    invoke-direct {v0, p1, p0}, LSf/c$c;-><init>(LQf/f;Leg/l;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, LSf/c$d;

    invoke-direct {v1, p1, v0, p0}, LSf/c$d;-><init>(LQf/f;LQf/j;Leg/l;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static c(Leg/p;Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 2
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

    invoke-static {p2}, LTf/h;->a(LQf/f;)LQf/f;

    move-result-object p2

    instance-of v0, p0, LTf/a;

    if-eqz v0, :cond_0

    check-cast p0, LTf/a;

    invoke-virtual {p0, p1, p2}, LTf/a;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    sget-object v1, LQf/l;->b:LQf/l;

    if-ne v0, v1, :cond_1

    new-instance v0, LSf/c$e;

    invoke-direct {v0, p2, p0, p1}, LSf/c$e;-><init>(LQf/f;Leg/p;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, LSf/c$f;

    invoke-direct {v1, p2, v0, p0, p1}, LSf/c$f;-><init>(LQf/f;LQf/j;Leg/p;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static final d(LQf/f;)LQf/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/f<",
            "-TT;>;)",
            "LQf/f<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    sget-object v1, LQf/l;->b:LQf/l;

    if-ne v0, v1, :cond_0

    new-instance v0, LSf/c$g;

    invoke-direct {v0, p0}, LSf/c$g;-><init>(LQf/f;)V

    goto :goto_0

    :cond_0
    new-instance v1, LSf/c$h;

    invoke-direct {v1, p0, v0}, LSf/c$h;-><init>(LQf/f;LQf/j;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static e(LQf/f;)LQf/f;
    .locals 1
    .param p0    # LQf/f;
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
            "LQf/f<",
            "-TT;>;)",
            "LQf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LTf/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LTf/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, LTf/d;->intercepted()LQf/f;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final f(Leg/l;LQf/f;)Ljava/lang/Object;
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
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LTf/a;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, LSf/c;->i(Leg/l;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leg/l;

    invoke-interface {p0, p1}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final g(Leg/p;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
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
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LTf/a;

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, LSf/c;->j(Leg/p;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leg/p;

    invoke-interface {p0, p1, p2}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final h(Leg/q;Ljava/lang/Object;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/q<",
            "-TR;-TP;-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;TP;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LTf/a;

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3}, LSf/c;->k(Leg/q;Ljava/lang/Object;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leg/q;

    invoke-interface {p0, p1, p2, p3}, Leg/q;->E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final i(Leg/l;LQf/f;)Ljava/lang/Object;
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
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LTf/h;->a(LQf/f;)LQf/f;

    move-result-object p1

    invoke-static {p1}, LSf/c;->d(LQf/f;)LQf/f;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leg/l;

    invoke-interface {p0, p1}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Leg/p;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/f0;
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
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, LTf/h;->a(LQf/f;)LQf/f;

    move-result-object p2

    invoke-static {p2}, LSf/c;->d(LQf/f;)LQf/f;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leg/p;

    invoke-interface {p0, p1, p2}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static k(Leg/q;Ljava/lang/Object;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p0    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/q<",
            "-TR;-TP;-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;TP;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, LTf/h;->a(LQf/f;)LQf/f;

    move-result-object p3

    invoke-static {p3}, LSf/c;->d(LQf/f;)LQf/f;

    move-result-object p3

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leg/q;

    invoke-interface {p0, p1, p2, p3}, Leg/q;->E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
