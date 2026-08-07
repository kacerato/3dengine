.class public LHg/t;
.super LHg/l;
.source "SourceFile"


# annotations
.annotation build LFf/f0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "LHg/l<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectUnbiased.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1855#2,2:69\n*S KotlinDebug\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n*L\n63#1:69,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSelectUnbiased.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1855#2,2:69\n*S KotlinDebug\n*F\n+ 1 SelectUnbiased.kt\nkotlinx/coroutines/selects/UnbiasedSelectImplementation\n*L\n63#1:69,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LHg/l<",
            "TR;>.a;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/j;)V
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, LHg/l;-><init>(LQf/j;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LHg/t;->h:Ljava/util/List;

    return-void
.end method

.method public static synthetic n0(LHg/t;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation build LFf/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LHg/t<",
            "TR;>;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, LHg/t;->o0()V

    invoke-super {p0, p1}, LHg/l;->X(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public X(LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, LHg/t;->n0(LHg/t;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(LHg/i;Ljava/lang/Object;Leg/p;)V
    .locals 10
    .param p1    # LHg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "LHg/i<",
            "-TP;+TQ;>;TP;",
            "Leg/p<",
            "-TQ;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LHg/t;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v9, LHg/l$a;

    invoke-interface {p1}, LHg/k;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, LHg/k;->a()Leg/q;

    move-result-object v4

    invoke-interface {p1}, LHg/k;->c()Leg/q;

    move-result-object v5

    invoke-interface {p1}, LHg/k;->b()Leg/q;

    move-result-object v8

    move-object v1, v9

    move-object v2, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, LHg/l$a;-><init>(LHg/l;Ljava/lang/Object;Leg/q;Leg/q;Ljava/lang/Object;Ljava/lang/Object;Leg/q;)V

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(LHg/e;Leg/l;)V
    .locals 10
    .param p1    # LHg/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/e;",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LHg/t;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v9, LHg/l$a;

    invoke-interface {p1}, LHg/k;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, LHg/k;->a()Leg/q;

    move-result-object v4

    invoke-interface {p1}, LHg/k;->c()Leg/q;

    move-result-object v5

    invoke-static {}, LHg/o;->l()LEg/T;

    move-result-object v6

    invoke-interface {p1}, LHg/k;->b()Leg/q;

    move-result-object v8

    move-object v1, v9

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, LHg/l$a;-><init>(LHg/l;Ljava/lang/Object;Leg/q;Leg/q;Ljava/lang/Object;Ljava/lang/Object;Leg/q;)V

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m(LHg/g;Leg/p;)V
    .locals 10
    .param p1    # LHg/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "LHg/g<",
            "+TQ;>;",
            "Leg/p<",
            "-TQ;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LHg/t;->h:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v9, LHg/l$a;

    invoke-interface {p1}, LHg/k;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, LHg/k;->a()Leg/q;

    move-result-object v4

    invoke-interface {p1}, LHg/k;->c()Leg/q;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1}, LHg/k;->b()Leg/q;

    move-result-object v8

    move-object v1, v9

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, LHg/l$a;-><init>(LHg/l;Ljava/lang/Object;Leg/q;Leg/q;Ljava/lang/Object;Ljava/lang/Object;Leg/q;)V

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o0()V
    .locals 5

    :try_start_0
    iget-object v0, p0, LHg/t;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v0, p0, LHg/t;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LHg/l$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v4, v2, v3}, LHg/l;->h0(LHg/l;LHg/l$a;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, LHg/t;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :goto_1
    iget-object v1, p0, LHg/t;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    throw v0
.end method
