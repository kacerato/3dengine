.class public abstract Lpf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(LCi/b;II)Lpf/b;
    .locals 1
    .param p0    # LCi/b;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT;>;II)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "parallelism"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lhf/h;

    invoke-direct {v0, p0, p1, p2}, Lhf/h;-><init>(LCi/b;II)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p0

    return-object p0
.end method

.method public static varargs B([LCi/b;)Lpf/b;
    .locals 1
    .param p0    # [LCi/b;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LCi/b<",
            "TT;>;)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Lhf/g;

    invoke-direct {v0, p0}, Lhf/g;-><init>([LCi/b;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zero publishers not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y(LCi/b;)Lpf/b;
    .locals 2
    .param p0    # LCi/b;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT;>;)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-static {p0, v0, v1}, Lpf/b;->A(LCi/b;II)Lpf/b;

    move-result-object p0

    return-object p0
.end method

.method public static z(LCi/b;I)Lpf/b;
    .locals 1
    .param p0    # LCi/b;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT;>;I)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, v0}, Lpf/b;->A(LCi/b;II)Lpf/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final C(LXe/o;)Lpf/b;
    .locals 1
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TR;>;)",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/j;

    invoke-direct {v0, p0, p1}, Lhf/j;-><init>(Lpf/b;LXe/o;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final D(LXe/o;LXe/c;)Lpf/b;
    .locals 1
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # LXe/c;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TR;>;",
            "LXe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lpf/a;",
            ">;)",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/k;

    invoke-direct {v0, p0, p1, p2}, Lhf/k;-><init>(Lpf/b;LXe/o;LXe/c;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final E(LXe/o;Lpf/a;)Lpf/b;
    .locals 1
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # Lpf/a;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TR;>;",
            "Lpf/a;",
            ")",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/k;

    invoke-direct {v0, p0, p1, p2}, Lhf/k;-><init>(Lpf/b;LXe/o;LXe/c;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract F()I
.end method

.method public final G(LXe/c;)LTe/l;
    .locals 1
    .param p1    # LXe/c;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/c<",
            "TT;TT;TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reducer"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/n;

    invoke-direct {v0, p0, p1}, Lhf/n;-><init>(Lpf/b;LXe/c;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final H(Ljava/util/concurrent/Callable;LXe/c;)Lpf/b;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # LXe/c;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LXe/c<",
            "TR;-TT;TR;>;)",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialSupplier"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/m;

    invoke-direct {v0, p0, p1, p2}, Lhf/m;-><init>(Lpf/b;Ljava/util/concurrent/Callable;LXe/c;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final I(LTe/J;)Lpf/b;
    .locals 1
    .param p1    # LTe/J;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/J;",
            ")",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lpf/b;->J(LTe/J;I)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final J(LTe/J;I)Lpf/b;
    .locals 1
    .param p1    # LTe/J;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/J;",
            "I)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lhf/o;

    invoke-direct {v0, p0, p1, p2}, Lhf/o;-><init>(Lpf/b;LTe/J;I)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final K()LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, v0}, Lpf/b;->L(I)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final L(I)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lhf/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lhf/i;-><init>(Lpf/b;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M()LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, v0}, Lpf/b;->N(I)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final N(I)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lhf/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lhf/i;-><init>(Lpf/b;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O(Ljava/util/Comparator;)LTe/l;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lpf/b;->P(Ljava/util/Comparator;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final P(Ljava/util/Comparator;I)LTe/l;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-virtual {p0}, Lpf/b;->F()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, LZe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/util/n;->b()LXe/c;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lpf/b;->H(Ljava/util/concurrent/Callable;LXe/c;)Lpf/b;

    move-result-object p2

    new-instance v0, Lio/reactivex/internal/util/v;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/v;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lpf/b;->C(LXe/o;)Lpf/b;

    move-result-object p2

    new-instance v0, Lhf/p;

    invoke-direct {v0, p2, p1}, Lhf/p;-><init>(Lpf/b;Ljava/util/Comparator;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public abstract Q([LCi/c;)V
    .param p1    # [LCi/c;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final R(LXe/o;)Ljava/lang/Object;
    .locals 1
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-",
            "Lpf/b<",
            "TT;>;TU;>;)TU;"
        }
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXe/o;

    invoke-interface {p1, p0}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final S(Ljava/util/Comparator;)LTe/l;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lpf/b;->T(Ljava/util/Comparator;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T(Ljava/util/Comparator;I)LTe/l;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-virtual {p0}, Lpf/b;->F()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, LZe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/internal/util/n;->b()LXe/c;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lpf/b;->H(Ljava/util/concurrent/Callable;LXe/c;)Lpf/b;

    move-result-object p2

    new-instance v0, Lio/reactivex/internal/util/v;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/v;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lpf/b;->C(LXe/o;)Lpf/b;

    move-result-object p2

    new-instance v0, Lio/reactivex/internal/util/o;

    invoke-direct {v0, p1}, Lio/reactivex/internal/util/o;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p2, v0}, Lpf/b;->G(LXe/c;)LTe/l;

    move-result-object p1

    invoke-static {p1}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U([LCi/c;)Z
    .locals 5
    .param p1    # [LCi/c;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/c<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lpf/b;->F()I

    move-result v0

    array-length v1, p1

    if-eq v1, v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parallelism = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subscribers = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    invoke-static {v1, v4}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lpf/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lpf/c;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lpf/c<",
            "TT;TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpf/c;

    invoke-interface {p1, p0}, Lpf/c;->a(Lpf/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/concurrent/Callable;LXe/b;)Lpf/b;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # LXe/b;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TC;>;",
            "LXe/b<",
            "-TC;-TT;>;)",
            "Lpf/b<",
            "TC;>;"
        }
    .end annotation

    const-string v0, "collectionSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/a;

    invoke-direct {v0, p0, p1, p2}, Lhf/a;-><init>(Lpf/b;Ljava/util/concurrent/Callable;LXe/b;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lpf/d;)Lpf/b;
    .locals 1
    .param p1    # Lpf/d;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lpf/d<",
            "TT;TU;>;)",
            "Lpf/b<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpf/d;

    invoke-interface {p1, p0}, Lpf/d;->a(Lpf/b;)Lpf/b;

    move-result-object p1

    invoke-static {p1}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final d(LXe/o;)Lpf/b;
    .locals 1
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;)",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lpf/b;->e(LXe/o;I)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final e(LXe/o;I)Lpf/b;
    .locals 2
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;I)",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lhf/b;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, p2, v1}, Lhf/b;-><init>(Lpf/b;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final f(LXe/o;IZ)Lpf/b;
    .locals 1
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;IZ)",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lhf/b;

    if-eqz p3, :cond_0

    sget-object p3, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p3, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lhf/b;-><init>(Lpf/b;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final g(LXe/o;Z)Lpf/b;
    .locals 1
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;Z)",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lpf/b;->f(LXe/o;IZ)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final h(LXe/g;)Lpf/b;
    .locals 11
    .param p1    # LXe/g;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-TT;>;)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/l;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v5

    sget-object v10, LZe/a;->c:LXe/a;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v8

    sget-object v9, LZe/a;->g:LXe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lhf/l;-><init>(Lpf/b;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/g;LXe/q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final i(LXe/a;)Lpf/b;
    .locals 11
    .param p1    # LXe/a;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/a;",
            ")",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterTerminate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/l;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v5

    sget-object v10, LZe/a;->c:LXe/a;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v8

    sget-object v9, LZe/a;->g:LXe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lhf/l;-><init>(Lpf/b;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/g;LXe/q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final j(LXe/a;)Lpf/b;
    .locals 11
    .param p1    # LXe/a;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/a;",
            ")",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onCancel is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/l;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v5

    sget-object v7, LZe/a;->c:LXe/a;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v8

    sget-object v9, LZe/a;->g:LXe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v7

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lhf/l;-><init>(Lpf/b;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/g;LXe/q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final k(LXe/a;)Lpf/b;
    .locals 11
    .param p1    # LXe/a;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/a;",
            ")",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/l;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v5

    sget-object v10, LZe/a;->c:LXe/a;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v8

    sget-object v9, LZe/a;->g:LXe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lhf/l;-><init>(Lpf/b;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/g;LXe/q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final l(LXe/g;)Lpf/b;
    .locals 11
    .param p1    # LXe/g;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onError is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/l;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    sget-object v10, LZe/a;->c:LXe/a;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v8

    sget-object v9, LZe/a;->g:LXe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lhf/l;-><init>(Lpf/b;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/g;LXe/q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final m(LXe/g;)Lpf/b;
    .locals 11
    .param p1    # LXe/g;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-TT;>;)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/l;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v5

    sget-object v10, LZe/a;->c:LXe/a;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v8

    sget-object v9, LZe/a;->g:LXe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v10

    move-object v7, v10

    invoke-direct/range {v1 .. v10}, Lhf/l;-><init>(Lpf/b;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/g;LXe/q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final n(LXe/g;LXe/c;)Lpf/b;
    .locals 1
    .param p1    # LXe/g;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # LXe/c;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-TT;>;",
            "LXe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lpf/a;",
            ">;)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/c;

    invoke-direct {v0, p0, p1, p2}, Lhf/c;-><init>(Lpf/b;LXe/g;LXe/c;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final o(LXe/g;Lpf/a;)Lpf/b;
    .locals 1
    .param p1    # LXe/g;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # Lpf/a;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-TT;>;",
            "Lpf/a;",
            ")",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/c;

    invoke-direct {v0, p0, p1, p2}, Lhf/c;-><init>(Lpf/b;LXe/g;LXe/c;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final p(LXe/q;)Lpf/b;
    .locals 11
    .param p1    # LXe/q;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/q;",
            ")",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onRequest is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/l;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v5

    sget-object v10, LZe/a;->c:LXe/a;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v8

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, v10

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lhf/l;-><init>(Lpf/b;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/g;LXe/q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final q(LXe/g;)Lpf/b;
    .locals 11
    .param p1    # LXe/g;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-",
            "LCi/d;",
            ">;)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/l;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v5

    sget-object v10, LZe/a;->c:LXe/a;

    sget-object v9, LZe/a;->g:LXe/q;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v10

    move-object v7, v10

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Lhf/l;-><init>(Lpf/b;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/g;LXe/q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final r(LXe/r;)Lpf/b;
    .locals 1
    .param p1    # LXe/r;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/r<",
            "-TT;>;)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/d;

    invoke-direct {v0, p0, p1}, Lhf/d;-><init>(Lpf/b;LXe/r;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final s(LXe/r;LXe/c;)Lpf/b;
    .locals 1
    .param p1    # LXe/r;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # LXe/c;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/r<",
            "-TT;>;",
            "LXe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lpf/a;",
            ">;)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/e;

    invoke-direct {v0, p0, p1, p2}, Lhf/e;-><init>(Lpf/b;LXe/r;LXe/c;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final t(LXe/r;Lpf/a;)Lpf/b;
    .locals 1
    .param p1    # LXe/r;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # Lpf/a;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/r<",
            "-TT;>;",
            "Lpf/a;",
            ")",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorHandler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lhf/e;

    invoke-direct {v0, p0, p1, p2}, Lhf/e;-><init>(Lpf/b;LXe/r;LXe/c;)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final u(LXe/o;)Lpf/b;
    .locals 3
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;)",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lpf/b;->x(LXe/o;ZII)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final v(LXe/o;Z)Lpf/b;
    .locals 2
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;Z)",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lpf/b;->x(LXe/o;ZII)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final w(LXe/o;ZI)Lpf/b;
    .locals 1
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;ZI)",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lpf/b;->x(LXe/o;ZII)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final x(LXe/o;ZII)Lpf/b;
    .locals 7
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;ZII)",
            "Lpf/b<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p4, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lhf/f;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lhf/f;-><init>(Lpf/b;LXe/o;ZII)V

    invoke-static {v0}, Lqf/a;->V(Lpf/b;)Lpf/b;

    move-result-object p1

    return-object p1
.end method
