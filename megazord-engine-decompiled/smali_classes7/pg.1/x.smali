.class public Lpg/x;
.super Lpg/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpg/r;-><init>()V

    return-void
.end method

.method public static final A()Lpg/m;
    .locals 1
    .annotation build LFf/l0;
        version = "2.2"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lpg/x;->l()Lpg/m;

    move-result-object v0

    return-object v0
.end method

.method public static B(Ljava/lang/Object;)Lpg/m;
    .locals 1
    .annotation build LFf/l0;
        version = "2.2"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lpg/x$e;

    invoke-direct {v0, p0}, Lpg/x$e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final varargs C([Ljava/lang/Object;)Lpg/m;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LHf/A;->T5([Ljava/lang/Object;)Lpg/m;

    move-result-object p0

    return-object p0
.end method

.method public static final D(Lpg/m;)Lpg/m;
    .locals 1
    .param p0    # Lpg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/m<",
            "+TT;>;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/f;->b:Llg/f$a;

    invoke-static {p0, v0}, Lpg/x;->E(Lpg/m;Llg/f;)Lpg/m;

    move-result-object p0

    return-object p0
.end method

.method public static final E(Lpg/m;Llg/f;)Lpg/m;
    .locals 2
    .param p0    # Lpg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/m<",
            "+TT;>;",
            "Llg/f;",
            ")",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpg/x$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lpg/x$g;-><init>(Lpg/m;Llg/f;LQf/f;)V

    invoke-static {v0}, Lpg/q;->b(Leg/p;)Lpg/m;

    move-result-object p0

    return-object p0
.end method

.method public static final F(Lpg/m;)LFf/Z;
    .locals 4
    .param p0    # Lpg/m;
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
            "Lpg/m<",
            "+",
            "LFf/Z<",
            "+TT;+TR;>;>;)",
            "LFf/Z<",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LFf/Z;

    invoke-virtual {v2}, LFf/Z;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, LFf/Z;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, LFf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)LFf/Z;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Leg/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lpg/x;->w(Leg/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lpg/x;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lpg/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lpg/m;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lpg/x;->p(Lpg/m;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lpg/x;->q(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Leg/a;)Lpg/m;
    .locals 1
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/a<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpg/x$a;

    invoke-direct {v0, p0}, Lpg/x$a;-><init>(Leg/a;)V

    return-object v0
.end method

.method public static j(Ljava/util/Iterator;)Lpg/m;
    .locals 1
    .param p0    # Ljava/util/Iterator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpg/x$b;

    invoke-direct {v0, p0}, Lpg/x$b;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lpg/x;->k(Lpg/m;)Lpg/m;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lpg/m;)Lpg/m;
    .locals 1
    .param p0    # Lpg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/m<",
            "+TT;>;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lpg/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lpg/a;

    invoke-direct {v0, p0}, Lpg/a;-><init>(Lpg/m;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static l()Lpg/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lpg/g;->a:Lpg/g;

    return-object v0
.end method

.method public static final m(Lpg/m;Leg/p;Leg/l;)Lpg/m;
    .locals 2
    .param p0    # Lpg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/m<",
            "+TT;>;",
            "Leg/p<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+TC;>;",
            "Leg/l<",
            "-TC;+",
            "Ljava/util/Iterator<",
            "+TR;>;>;)",
            "Lpg/m<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpg/x$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lpg/x$c;-><init>(Lpg/m;Leg/p;Leg/l;LQf/f;)V

    invoke-static {v0}, Lpg/q;->b(Leg/p;)Lpg/m;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Lpg/m;)Lpg/m;
    .locals 1
    .param p0    # Lpg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/m<",
            "+",
            "Lpg/m<",
            "+TT;>;>;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpg/u;

    invoke-direct {v0}, Lpg/u;-><init>()V

    invoke-static {p0, v0}, Lpg/x;->o(Lpg/m;Leg/l;)Lpg/m;

    move-result-object p0

    return-object p0
.end method

.method public static final o(Lpg/m;Leg/l;)Lpg/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/m<",
            "+TT;>;",
            "Leg/l<",
            "-TT;+",
            "Ljava/util/Iterator<",
            "+TR;>;>;)",
            "Lpg/m<",
            "TR;>;"
        }
    .end annotation

    instance-of v0, p0, Lpg/U;

    if-eqz v0, :cond_0

    check-cast p0, Lpg/U;

    invoke-virtual {p0, p1}, Lpg/U;->e(Leg/l;)Lpg/m;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lpg/i;

    new-instance v1, Lpg/w;

    invoke-direct {v1}, Lpg/w;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lpg/i;-><init>(Lpg/m;Leg/l;Leg/l;)V

    return-object v0
.end method

.method public static final p(Lpg/m;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static final s(Lpg/m;)Lpg/m;
    .locals 1
    .param p0    # Lpg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/m<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "flattenSequenceOfIterable"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpg/v;

    invoke-direct {v0}, Lpg/v;-><init>()V

    invoke-static {p0, v0}, Lpg/x;->o(Lpg/m;Leg/l;)Lpg/m;

    move-result-object p0

    return-object p0
.end method

.method public static final t(Leg/a;)Lpg/m;
    .locals 2
    .param p0    # Leg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/a<",
            "+TT;>;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpg/j;

    new-instance v1, Lpg/t;

    invoke-direct {v1, p0}, Lpg/t;-><init>(Leg/a;)V

    invoke-direct {v0, p0, v1}, Lpg/j;-><init>(Leg/a;Leg/l;)V

    invoke-static {v0}, Lpg/x;->k(Lpg/m;)Lpg/m;

    move-result-object p0

    return-object p0
.end method

.method public static u(Leg/a;Leg/l;)Lpg/m;
    .locals 1
    .param p0    # Leg/a;
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
            "Leg/a<",
            "+TT;>;",
            "Leg/l<",
            "-TT;+TT;>;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "seedFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpg/j;

    invoke-direct {v0, p0, p1}, Lpg/j;-><init>(Leg/a;Leg/l;)V

    return-object v0
.end method

.method public static v(Ljava/lang/Object;Leg/l;)Lpg/m;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LWf/i;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Leg/l<",
            "-TT;+TT;>;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object p0, Lpg/g;->a:Lpg/g;

    goto :goto_0

    :cond_0
    new-instance v0, Lpg/j;

    new-instance v1, Lpg/s;

    invoke-direct {v1, p0}, Lpg/s;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lpg/j;-><init>(Leg/a;Leg/l;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final w(Leg/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static final y(Lpg/m;Leg/a;)Lpg/m;
    .locals 2
    .param p0    # Lpg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/a;
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
            "Lpg/m<",
            "+TT;>;",
            "Leg/a<",
            "+",
            "Lpg/m<",
            "+TT;>;>;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpg/x$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lpg/x$d;-><init>(Lpg/m;Leg/a;LQf/f;)V

    invoke-static {v0}, Lpg/q;->b(Leg/p;)Lpg/m;

    move-result-object p0

    return-object p0
.end method

.method public static final z(Lpg/m;)Lpg/m;
    .locals 0
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
            "Lpg/m<",
            "+TT;>;)",
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lpg/x;->l()Lpg/m;

    move-result-object p0

    :cond_0
    return-object p0
.end method
