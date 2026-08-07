.class public abstract LTe/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static B(LTe/g;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/g;

    invoke-direct {v0, p0}, Lcf/g;-><init>(LTe/g;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/util/concurrent/Callable;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "completableSupplier"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/h;

    invoke-direct {v0, p0}, Lcf/h;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static R(Ljava/lang/Throwable;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "error is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/o;

    invoke-direct {v0, p0}, Lcf/o;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static S(Ljava/util/concurrent/Callable;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/p;

    invoke-direct {v0, p0}, Lcf/p;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static T(LXe/a;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/q;

    invoke-direct {v0, p0}, Lcf/q;-><init>(LXe/a;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/util/concurrent/Callable;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "callable is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/r;

    invoke-direct {v0, p0}, Lcf/r;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static V(Ljava/util/concurrent/Future;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LZe/a;->j(Ljava/util/concurrent/Future;)LXe/a;

    move-result-object p0

    invoke-static {p0}, LTe/c;->T(LXe/a;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static V0(JLjava/util/concurrent/TimeUnit;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, LTe/c;->W0(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static W(LTe/y;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "TT;>;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "maybe is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/Q;

    invoke-direct {v0, p0}, Lef/Q;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static W0(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/N;

    invoke-direct {v0, p0, p1, p2, p3}, Lcf/N;-><init>(JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static X(LTe/G;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TT;>;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "observable is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/s;

    invoke-direct {v0, p0}, Lcf/s;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static Y(LCi/b;)LTe/c;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TT;>;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "publisher is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/t;

    invoke-direct {v0, p0}, Lcf/t;-><init>(LCi/b;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Ljava/lang/Runnable;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/u;

    invoke-direct {v0, p0}, Lcf/u;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static a0(LTe/Q;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/Q<",
            "TT;>;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "single is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/v;

    invoke-direct {v0, p0}, Lcf/v;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static a1(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static e0(LCi/b;)LTe/c;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LTe/c;->h0(LCi/b;IZ)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static e1(LTe/i;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LTe/c;

    if-nez v0, :cond_0

    new-instance v0, Lcf/w;

    invoke-direct {v0, p0}, Lcf/w;-><init>(LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use of unsafeCreate(Completable)!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f0(LCi/b;I)LTe/c;
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
            "(",
            "LCi/b<",
            "+",
            "LTe/i;",
            ">;I)",
            "LTe/c;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LTe/c;->h0(LCi/b;IZ)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Iterable;)LTe/c;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcf/a;-><init>([LTe/i;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ljava/lang/Iterable;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/E;

    invoke-direct {v0, p0}, Lcf/E;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static g1(Ljava/util/concurrent/Callable;LXe/o;LXe/g;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LXe/o<",
            "-TR;+",
            "LTe/i;",
            ">;",
            "LXe/g<",
            "-TR;>;)",
            "LTe/c;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LTe/c;->h1(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h([LTe/i;)LTe/c;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/c;->u()LTe/c;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/c;->i1(LTe/i;)LTe/c;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcf/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcf/a;-><init>([LTe/i;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static h0(LCi/b;IZ)LTe/c;
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
            "(",
            "LCi/b<",
            "+",
            "LTe/i;",
            ">;IZ)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lcf/A;

    invoke-direct {v0, p0, p1, p2}, Lcf/A;-><init>(LCi/b;IZ)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static h1(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LXe/o<",
            "-TR;+",
            "LTe/i;",
            ">;",
            "LXe/g<",
            "-TR;>;Z)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "completableFunction is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/S;

    invoke-direct {v0, p0, p1, p2, p3}, Lcf/S;-><init>(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static varargs i0([LTe/i;)LTe/c;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/c;->u()LTe/c;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/c;->i1(LTe/i;)LTe/c;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcf/B;

    invoke-direct {v0, p0}, Lcf/B;-><init>([LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static i1(LTe/i;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LTe/c;

    if-eqz v0, :cond_0

    check-cast p0, LTe/c;

    invoke-static {p0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcf/w;

    invoke-direct {v0, p0}, Lcf/w;-><init>(LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static varargs j0([LTe/i;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/C;

    invoke-direct {v0, p0}, Lcf/C;-><init>([LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static k0(LCi/b;)LTe/c;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LTe/c;->h0(LCi/b;IZ)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static l0(LCi/b;I)LTe/c;
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
            "(",
            "LCi/b<",
            "+",
            "LTe/i;",
            ">;I)",
            "LTe/c;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, LTe/c;->h0(LCi/b;IZ)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Ljava/lang/Iterable;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/D;

    invoke-direct {v0, p0}, Lcf/D;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static o0()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    sget-object v0, Lcf/F;->b:LTe/c;

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public static u()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    sget-object v0, Lcf/n;->b:LTe/c;

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public static w(LCi/b;)LTe/c;
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
            "(",
            "LCi/b<",
            "+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, LTe/c;->x(LCi/b;I)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static x(LCi/b;I)LTe/c;
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
            "(",
            "LCi/b<",
            "+",
            "LTe/i;",
            ">;I)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lcf/d;

    invoke-direct {v0, p0, p1}, Lcf/d;-><init>(LCi/b;I)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/Iterable;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/f;

    invoke-direct {v0, p0}, Lcf/f;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method

.method public static varargs z([LTe/i;)LTe/c;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/c;->u()LTe/c;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/c;->i1(LTe/i;)LTe/c;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcf/e;

    invoke-direct {v0, p0}, Lcf/e;-><init>([LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(LTe/i;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/b;

    invoke-direct {v0, p0, p1}, Lcf/b;-><init>(LTe/i;LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final A0(JLXe/r;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LXe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/c;->Y0()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LTe/l;->r5(JLXe/r;)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/c;->Y(LCi/b;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final B0(LXe/d;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/c;->Y0()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->s5(LXe/d;)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/c;->Y(LCi/b;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final C0(LXe/r;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/c;->Y0()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->t5(LXe/r;)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/c;->Y(LCi/b;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final D(JLjava/util/concurrent/TimeUnit;)LTe/c;
    .locals 6
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/c;->F(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final D0(LXe/o;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/o<",
            "-",
            "LTe/l<",
            "Ljava/lang/Throwable;",
            ">;+",
            "LCi/b<",
            "*>;>;)",
            "LTe/c;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/c;->Y0()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->v5(LXe/o;)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/c;->Y(LCi/b;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final E(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/c;
    .locals 6
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/c;->F(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final E0(LTe/i;)LTe/c;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LTe/i;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LTe/c;->z([LTe/i;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final F(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/c;
    .locals 8
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/i;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcf/i;-><init>(LTe/i;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final F0(LCi/b;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LTe/c;->Y0()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->c6(LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final G(JLjava/util/concurrent/TimeUnit;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/e;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/c;->H(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final G0(LTe/B;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/B<",
            "TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LTe/c;->b1()LTe/B;

    move-result-object v0

    invoke-virtual {p1, v0}, LTe/B;->o1(LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final H(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/c;
    .locals 0
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/e;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    invoke-static {p1, p2, p3, p4}, LTe/c;->W0(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/c;

    move-result-object p1

    invoke-virtual {p1, p0}, LTe/c;->j(LTe/i;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final H0()LVe/c;
    .locals 1
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    new-instance v0, Lbf/o;

    invoke-direct {v0}, Lbf/o;-><init>()V

    invoke-virtual {p0, v0}, LTe/c;->b(LTe/f;)V

    return-object v0
.end method

.method public final I(LXe/a;)LTe/c;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    sget-object v6, LZe/a;->c:LXe/a;

    move-object v0, p0

    move-object v3, v6

    move-object v4, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, LTe/c;->O(LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;LXe/a;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final I0(LXe/a;)LVe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lbf/j;

    invoke-direct {v0, p1}, Lbf/j;-><init>(LXe/a;)V

    invoke-virtual {p0, v0}, LTe/c;->b(LTe/f;)V

    return-object v0
.end method

.method public final J(LXe/a;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/l;

    invoke-direct {v0, p0, p1}, Lcf/l;-><init>(LTe/i;LXe/a;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final J0(LXe/a;LXe/g;)LVe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/a;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LVe/c;"
        }
    .end annotation

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lbf/j;

    invoke-direct {v0, p2, p1}, Lbf/j;-><init>(LXe/g;LXe/a;)V

    invoke-virtual {p0, v0}, LTe/c;->b(LTe/f;)V

    return-object v0
.end method

.method public final K(LXe/a;)LTe/c;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    sget-object v6, LZe/a;->c:LXe/a;

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, LTe/c;->O(LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;LXe/a;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public abstract K0(LTe/f;)V
.end method

.method public final L(LXe/a;)LTe/c;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    sget-object v5, LZe/a;->c:LXe/a;

    move-object v0, p0

    move-object v3, v5

    move-object v4, v5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, LTe/c;->O(LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;LXe/a;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final L0(LTe/J;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/K;

    invoke-direct {v0, p0, p1}, Lcf/K;-><init>(LTe/i;LTe/J;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final M(LXe/g;)LTe/c;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    sget-object v6, LZe/a;->c:LXe/a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, LTe/c;->O(LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;LXe/a;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final M0(LTe/f;)LTe/f;
    .locals 0
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LTe/f;",
            ">(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LTe/c;->b(LTe/f;)V

    return-object p1
.end method

.method public final N(LXe/g;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/m;

    invoke-direct {v0, p0, p1}, Lcf/m;-><init>(LTe/i;LXe/g;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final N0(LTe/i;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/L;

    invoke-direct {v0, p0, p1}, Lcf/L;-><init>(LTe/c;LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final O(LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;LXe/a;)LTe/c;
    .locals 9
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LXe/a;",
            "LXe/a;",
            "LXe/a;",
            "LXe/a;",
            ")",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onTerminate is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    invoke-static {p6, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/I;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcf/I;-><init>(LTe/i;LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;LXe/a;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final O0()Lof/n;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lof/n<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lof/n;

    invoke-direct {v0}, Lof/n;-><init>()V

    invoke-virtual {p0, v0}, LTe/c;->b(LTe/f;)V

    return-object v0
.end method

.method public final P(LXe/g;)LTe/c;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    sget-object v6, LZe/a;->c:LXe/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, LTe/c;->O(LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;LXe/a;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final P0(Z)Lof/n;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lof/n<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lof/n;

    invoke-direct {v0}, Lof/n;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lof/n;->cancel()V

    :cond_0
    invoke-virtual {p0, v0}, LTe/c;->b(LTe/f;)V

    return-object v0
.end method

.method public final Q(LXe/a;)LTe/c;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    sget-object v6, LZe/a;->c:LXe/a;

    move-object v0, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, LTe/c;->O(LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;LXe/a;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(JLjava/util/concurrent/TimeUnit;)LTe/c;
    .locals 6
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/c;->U0(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/i;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final R0(JLjava/util/concurrent/TimeUnit;LTe/i;)LTe/c;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, LTe/c;->U0(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/i;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final S0(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/c;
    .locals 6
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/c;->U0(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/i;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final T0(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/i;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p5}, LTe/c;->U0(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/i;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final U0(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/i;)LTe/c;
    .locals 8
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/M;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcf/M;-><init>(LTe/i;JLjava/util/concurrent/TimeUnit;LTe/J;LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final X0(LXe/o;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-",
            "LTe/c;",
            "TU;>;)TU;"
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

.method public final Y0()LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Laf/b;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Laf/b;

    invoke-interface {v0}, Laf/b;->f()LTe/l;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcf/O;

    invoke-direct {v0, p0}, Lcf/O;-><init>(LTe/i;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final Z0()LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Laf/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Laf/c;

    invoke-interface {v0}, Laf/c;->d()LTe/s;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lef/K;

    invoke-direct {v0, p0}, Lef/K;-><init>(LTe/i;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final b(LTe/f;)V
    .locals 1
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, p1}, Lqf/a;->e0(LTe/c;LTe/f;)LTe/f;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LTe/c;->K0(LTe/f;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    invoke-static {p1}, LTe/c;->a1(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p1

    throw p1

    :goto_1
    throw p1
.end method

.method public final b0()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    new-instance v0, Lcf/x;

    invoke-direct {v0, p0}, Lcf/x;-><init>(LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public final b1()LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Laf/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Laf/d;

    invoke-interface {v0}, Laf/d;->c()LTe/B;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcf/P;

    invoke-direct {v0, p0}, Lcf/P;-><init>(LTe/i;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final c0(LTe/h;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "onLift is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/y;

    invoke-direct {v0, p0, p1}, Lcf/y;-><init>(LTe/i;LTe/h;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final c1(Ljava/util/concurrent/Callable;)LTe/K;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completionValueSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/Q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcf/Q;-><init>(LTe/i;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final d0()LTe/K;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/e;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LTe/K<",
            "LTe/A<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lcf/z;

    invoke-direct {v0, p0}, Lcf/z;-><init>(LTe/c;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final d1(Ljava/lang/Object;)LTe/K;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completionValue is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/Q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcf/Q;-><init>(LTe/i;Ljava/util/concurrent/Callable;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final f1(LTe/J;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/k;

    invoke-direct {v0, p0, p1}, Lcf/k;-><init>(LTe/i;LTe/J;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final i(LTe/i;)LTe/c;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LTe/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LTe/c;->h([LTe/i;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final j(LTe/i;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/b;

    invoke-direct {v0, p0, p1}, Lcf/b;-><init>(LTe/i;LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final k(LCi/b;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/b;

    invoke-direct {v0, p0, p1}, Lff/b;-><init>(LTe/i;LCi/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l(LTe/y;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/o;

    invoke-direct {v0, p1, p0}, Lef/o;-><init>(LTe/y;LTe/i;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final m(LTe/G;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/a;

    invoke-direct {v0, p0, p1}, Lff/a;-><init>(LTe/i;LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final n(LTe/Q;)LTe/K;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/Q<",
            "TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/g;

    invoke-direct {v0, p1, p0}, Lif/g;-><init>(LTe/Q;LTe/i;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final n0(LTe/i;)LTe/c;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LTe/i;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LTe/c;->i0([LTe/i;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final o(LTe/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # LTe/d;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/d<",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/d;

    invoke-interface {p1, p0}, LTe/d;->a(LTe/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final p()V
    .locals 1
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    new-instance v0, Lbf/h;

    invoke-direct {v0}, Lbf/h;-><init>()V

    invoke-virtual {p0, v0}, LTe/c;->b(LTe/f;)V

    invoke-virtual {v0}, Lbf/h;->d()Ljava/lang/Object;

    return-void
.end method

.method public final p0(LTe/J;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/G;

    invoke-direct {v0, p0, p1}, Lcf/G;-><init>(LTe/i;LTe/J;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final q(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lbf/h;

    invoke-direct {v0}, Lbf/h;-><init>()V

    invoke-virtual {p0, v0}, LTe/c;->b(LTe/f;)V

    invoke-virtual {v0, p1, p2, p3}, Lbf/h;->c(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final q0()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-static {}, LZe/a;->c()LXe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/c;->r0(LXe/r;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/g;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    new-instance v0, Lbf/h;

    invoke-direct {v0}, Lbf/h;-><init>()V

    invoke-virtual {p0, v0}, LTe/c;->b(LTe/f;)V

    invoke-virtual {v0}, Lbf/h;->g()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final r0(LXe/r;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/H;

    invoke-direct {v0, p0, p1}, Lcf/H;-><init>(LTe/i;LXe/r;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final s(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/g;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lbf/h;

    invoke-direct {v0}, Lbf/h;-><init>()V

    invoke-virtual {p0, v0}, LTe/c;->b(LTe/f;)V

    invoke-virtual {v0, p1, p2, p3}, Lbf/h;->h(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public final s0(LXe/o;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "errorMapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/J;

    invoke-direct {v0, p0, p1}, Lcf/J;-><init>(LTe/i;LXe/o;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final t()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    new-instance v0, Lcf/c;

    invoke-direct {v0, p0}, Lcf/c;-><init>(LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public final t0()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    new-instance v0, Lcf/j;

    invoke-direct {v0, p0}, Lcf/j;-><init>(LTe/i;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public final u0()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-virtual {p0}, LTe/c;->Y0()LTe/l;

    move-result-object v0

    invoke-virtual {v0}, LTe/l;->V4()LTe/l;

    move-result-object v0

    invoke-static {v0}, LTe/c;->Y(LCi/b;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public final v(LTe/j;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/j;

    invoke-interface {p1, p0}, LTe/j;->a(LTe/c;)LTe/i;

    move-result-object p1

    invoke-static {p1}, LTe/c;->i1(LTe/i;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final v0(J)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-virtual {p0}, LTe/c;->Y0()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LTe/l;->W4(J)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/c;->Y(LCi/b;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final w0(LXe/e;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-virtual {p0}, LTe/c;->Y0()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->X4(LXe/e;)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/c;->Y(LCi/b;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final x0(LXe/o;)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/o<",
            "-",
            "LTe/l<",
            "Ljava/lang/Object;",
            ">;+",
            "LCi/b<",
            "*>;>;)",
            "LTe/c;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/c;->Y0()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->Y4(LXe/o;)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/c;->Y(LCi/b;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final y0()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-virtual {p0}, LTe/c;->Y0()LTe/l;

    move-result-object v0

    invoke-virtual {v0}, LTe/l;->p5()LTe/l;

    move-result-object v0

    invoke-static {v0}, LTe/c;->Y(LCi/b;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public final z0(J)LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-virtual {p0}, LTe/c;->Y0()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LTe/l;->q5(J)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/c;->Y(LCi/b;)LTe/c;

    move-result-object p1

    return-object p1
.end method
