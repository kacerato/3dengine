.class public abstract LTe/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/y<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(LCi/b;)LTe/l;
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
            ">(",
            "LCi/b<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    invoke-static {}, Lef/p0;->b()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->c1(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/Iterable;)LTe/l;
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, Lef/p0;->b()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->c1(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B0(LCi/b;)LTe/l;
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
            ">(",
            "LCi/b<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {p0, v0}, LTe/s;->C0(LCi/b;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C0(LCi/b;I)LTe/l;
    .locals 7
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
            "+",
            "LTe/y<",
            "+TT;>;>;I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/e0;

    invoke-static {}, Lef/p0;->b()LXe/o;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Ldf/e0;-><init>(LCi/b;LXe/o;ZII)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D0(LTe/y;LTe/y;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LTe/s;->I0([LTe/y;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E0(LTe/y;LTe/y;LTe/y;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LTe/s;->I0([LTe/y;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F0(LTe/y;LTe/y;LTe/y;LTe/y;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LTe/s;->I0([LTe/y;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static G(LTe/w;)LTe/s;
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
            "LTe/w<",
            "TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/j;

    invoke-direct {v0, p0}, Lef/j;-><init>(LTe/w;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static G0(Ljava/lang/Iterable;)LTe/l;
    .locals 0
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/s;->B0(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static H0(LTe/y;)LTe/s;
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
            "LTe/y<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/H;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lef/H;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/util/concurrent/Callable;)LTe/s;
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
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "maybeSupplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/k;

    invoke-direct {v0, p0}, Lef/k;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static varargs I0([LTe/y;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lef/n0;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lef/n0;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lef/Y;

    invoke-direct {v0, p0}, Lef/Y;-><init>([LTe/y;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs J0([LTe/y;)LTe/l;
    .locals 3
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
            ">([",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object v0

    invoke-static {}, Lef/p0;->b()LXe/o;

    move-result-object v1

    const/4 v2, 0x1

    array-length p0, p0

    invoke-virtual {v0, v1, v2, p0}, LTe/l;->D2(LXe/o;ZI)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static K0(LCi/b;)LTe/l;
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
            ">(",
            "LCi/b<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {p0, v0}, LTe/s;->L0(LCi/b;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static K1(JLjava/util/concurrent/TimeUnit;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/s<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, LTe/s;->L1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static L0(LCi/b;I)LTe/l;
    .locals 7
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
            "+",
            "LTe/y<",
            "+TT;>;>;I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/e0;

    invoke-static {}, Lef/p0;->b()LXe/o;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Ldf/e0;-><init>(LCi/b;LXe/o;ZII)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static L1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/s;
    .locals 3
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/s<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/m0;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Lef/m0;-><init>(JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static M0(LTe/y;LTe/y;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LTe/s;->J0([LTe/y;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static N0(LTe/y;LTe/y;LTe/y;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LTe/s;->J0([LTe/y;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static O0(LTe/y;LTe/y;LTe/y;LTe/y;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LTe/s;->J0([LTe/y;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static P0(Ljava/lang/Iterable;)LTe/l;
    .locals 2
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, Lef/p0;->b()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LTe/l;->C2(LXe/o;Z)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static R0()LTe/s;
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

    sget-object v0, Lef/Z;->b:Lef/Z;

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public static R1(LTe/y;)LTe/s;
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

    instance-of v0, p0, LTe/s;

    if-nez v0, :cond_0

    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/r0;

    invoke-direct {v0, p0}, Lef/r0;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Maybe) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static T1(Ljava/util/concurrent/Callable;LXe/o;LXe/g;)LTe/s;
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
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "LXe/o<",
            "-TD;+",
            "LTe/y<",
            "+TT;>;>;",
            "LXe/g<",
            "-TD;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LTe/s;->U1(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static U1(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)LTe/s;
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
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "LXe/o<",
            "-TD;+",
            "LTe/y<",
            "+TT;>;>;",
            "LXe/g<",
            "-TD;>;Z)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/t0;

    invoke-direct {v0, p0, p1, p2, p3}, Lef/t0;-><init>(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static V1(LTe/y;)LTe/s;
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

    instance-of v0, p0, LTe/s;

    if-eqz v0, :cond_0

    check-cast p0, LTe/s;

    invoke-static {p0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/r0;

    invoke-direct {v0, p0}, Lef/r0;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static W1(LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LXe/n;)LTe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT1;>;",
            "LTe/y<",
            "+TT2;>;",
            "LTe/y<",
            "+TT3;>;",
            "LTe/y<",
            "+TT4;>;",
            "LTe/y<",
            "+TT5;>;",
            "LTe/y<",
            "+TT6;>;",
            "LTe/y<",
            "+TT7;>;",
            "LTe/y<",
            "+TT8;>;",
            "LTe/y<",
            "+TT9;>;",
            "LXe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    invoke-static {p8, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p9}, LZe/a;->E(LXe/n;)LXe/o;

    move-result-object p9

    const/16 v0, 0x9

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    invoke-static {p9, v0}, LTe/s;->f2(LXe/o;[LTe/y;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static X1(LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LXe/m;)LTe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT1;>;",
            "LTe/y<",
            "+TT2;>;",
            "LTe/y<",
            "+TT3;>;",
            "LTe/y<",
            "+TT4;>;",
            "LTe/y<",
            "+TT5;>;",
            "LTe/y<",
            "+TT6;>;",
            "LTe/y<",
            "+TT7;>;",
            "LTe/y<",
            "+TT8;>;",
            "LXe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p8}, LZe/a;->D(LXe/m;)LXe/o;

    move-result-object p8

    const/16 v0, 0x8

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    invoke-static {p8, v0}, LTe/s;->f2(LXe/o;[LTe/y;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static Y1(LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LXe/l;)LTe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT1;>;",
            "LTe/y<",
            "+TT2;>;",
            "LTe/y<",
            "+TT3;>;",
            "LTe/y<",
            "+TT4;>;",
            "LTe/y<",
            "+TT5;>;",
            "LTe/y<",
            "+TT6;>;",
            "LTe/y<",
            "+TT7;>;",
            "LXe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p7}, LZe/a;->C(LXe/l;)LXe/o;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    invoke-static {p7, v0}, LTe/s;->f2(LXe/o;[LTe/y;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static Z()LTe/s;
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

    sget-object v0, Lef/u;->b:Lef/u;

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public static Z1(LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LXe/k;)LTe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT1;>;",
            "LTe/y<",
            "+TT2;>;",
            "LTe/y<",
            "+TT3;>;",
            "LTe/y<",
            "+TT4;>;",
            "LTe/y<",
            "+TT5;>;",
            "LTe/y<",
            "+TT6;>;",
            "LXe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p6}, LZe/a;->B(LXe/k;)LXe/o;

    move-result-object p6

    const/4 v0, 0x6

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    invoke-static {p6, v0}, LTe/s;->f2(LXe/o;[LTe/y;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Ljava/lang/Throwable;)LTe/s;
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
            "Ljava/lang/Throwable;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/w;

    invoke-direct {v0, p0}, Lef/w;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static a2(LTe/y;LTe/y;LTe/y;LTe/y;LTe/y;LXe/j;)LTe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT1;>;",
            "LTe/y<",
            "+TT2;>;",
            "LTe/y<",
            "+TT3;>;",
            "LTe/y<",
            "+TT4;>;",
            "LTe/y<",
            "+TT5;>;",
            "LXe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p5}, LZe/a;->A(LXe/j;)LXe/o;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    invoke-static {p5, v0}, LTe/s;->f2(LXe/o;[LTe/y;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Ljava/util/concurrent/Callable;)LTe/s;
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
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/x;

    invoke-direct {v0, p0}, Lef/x;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static b2(LTe/y;LTe/y;LTe/y;LTe/y;LXe/i;)LTe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT1;>;",
            "LTe/y<",
            "+TT2;>;",
            "LTe/y<",
            "+TT3;>;",
            "LTe/y<",
            "+TT4;>;",
            "LXe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p4}, LZe/a;->z(LXe/i;)LXe/o;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, LTe/s;->f2(LXe/o;[LTe/y;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static c2(LTe/y;LTe/y;LTe/y;LXe/h;)LTe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT1;>;",
            "LTe/y<",
            "+TT2;>;",
            "LTe/y<",
            "+TT3;>;",
            "LXe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, LZe/a;->y(LXe/h;)LXe/o;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, LTe/s;->f2(LXe/o;[LTe/y;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static d2(LTe/y;LTe/y;LXe/c;)LTe/s;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT1;>;",
            "LTe/y<",
            "+TT2;>;",
            "LXe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LZe/a;->x(LXe/c;)LXe/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, LTe/s;->f2(LXe/o;[LTe/y;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static e2(Ljava/lang/Iterable;LXe/o;)LTe/s;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/y<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/v0;

    invoke-direct {v0, p0, p1}, Lef/v0;-><init>(Ljava/lang/Iterable;LXe/o;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f2(LXe/o;[LTe/y;)LTe/s;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "LTe/y<",
            "+TT;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_0

    invoke-static {}, LTe/s;->Z()LTe/s;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/u0;

    invoke-direct {v0, p1, p0}, Lef/u0;-><init>([LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Iterable;)LTe/s;
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
            "Ljava/lang/Iterable<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lef/b;-><init>([LTe/y;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h([LTe/y;)LTe/s;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LTe/y<",
            "+TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/s;->Z()LTe/s;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/s;->V1(LTe/y;)LTe/s;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lef/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lef/b;-><init>([LTe/y;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static n0(LXe/a;)LTe/s;
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
            "LXe/a;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/I;

    invoke-direct {v0, p0}, Lef/I;-><init>(LXe/a;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static n1(LTe/y;LTe/y;)LTe/K;
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
            ">(",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LZe/b;->d()LXe/d;

    move-result-object v0

    invoke-static {p0, p1, v0}, LTe/s;->o1(LTe/y;LTe/y;LXe/d;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Ljava/util/concurrent/Callable;)LTe/s;
    .locals 1
    .param p0    # Ljava/util/concurrent/Callable;
        .annotation build LUe/f;
        .end annotation
    .end param
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
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "callable is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/J;

    invoke-direct {v0, p0}, Lef/J;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static o1(LTe/y;LTe/y;LXe/d;)LTe/K;
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
            "+TT;>;",
            "LTe/y<",
            "+TT;>;",
            "LXe/d<",
            "-TT;-TT;>;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/v;

    invoke-direct {v0, p0, p1, p2}, Lef/v;-><init>(LTe/y;LTe/y;LXe/d;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static p(LCi/b;)LTe/l;
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
            ">(",
            "LCi/b<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, LTe/s;->q(LCi/b;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static p0(LTe/i;)LTe/s;
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
            "LTe/i;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "completableSource is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/K;

    invoke-direct {v0, p0}, Lef/K;-><init>(LTe/i;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static q(LCi/b;I)LTe/l;
    .locals 3
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
            "+",
            "LTe/y<",
            "+TT;>;>;I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/z;

    invoke-static {}, Lef/p0;->b()LXe/o;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, p1, v2}, Ldf/z;-><init>(LCi/b;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Ljava/util/concurrent/Future;)LTe/s;
    .locals 4
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
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/L;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lef/L;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static r(LTe/y;LTe/y;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LTe/s;->v([LTe/y;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static r0(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LTe/s;
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
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/L;

    invoke-direct {v0, p0, p1, p2, p3}, Lef/L;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static s(LTe/y;LTe/y;LTe/y;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LTe/s;->v([LTe/y;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static s0(Ljava/lang/Runnable;)LTe/s;
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
            "Ljava/lang/Runnable;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/M;

    invoke-direct {v0, p0}, Lef/M;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static t(LTe/y;LTe/y;LTe/y;LTe/y;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LTe/s;->v([LTe/y;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static t0(LTe/Q;)LTe/s;
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
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "singleSource is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/N;

    invoke-direct {v0, p0}, Lef/N;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/Iterable;)LTe/l;
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
            "Ljava/lang/Iterable<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/g;

    invoke-direct {v0, p0}, Lef/g;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs v([LTe/y;)LTe/l;
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
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lef/n0;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lef/n0;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lef/e;

    invoke-direct {v0, p0}, Lef/e;-><init>([LTe/y;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs w([LTe/y;)LTe/l;
    .locals 2
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
            ">([",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lef/n0;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lef/n0;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lef/f;

    invoke-direct {v0, p0}, Lef/f;-><init>([LTe/y;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs x([LTe/y;)LTe/l;
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
            ">([",
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {}, Lef/p0;->b()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->c1(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x0(Ljava/lang/Object;)LTe/s;
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
            ">(TT;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/U;

    invoke-direct {v0, p0}, Lef/U;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p0

    return-object p0
.end method

.method public static y(LCi/b;)LTe/l;
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
            ">(",
            "LCi/b<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    invoke-static {}, Lef/p0;->b()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->a1(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Iterable;)LTe/l;
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
            "Ljava/lang/Iterable<",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, Lef/p0;->b()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->a1(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0()LTe/K;
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
            "()",
            "LTe/K<",
            "LTe/A<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lef/X;

    invoke-direct {v0, p0}, Lef/X;-><init>(LTe/s;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final A1()Lof/n;
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
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lof/n;

    invoke-direct {v0}, Lof/n;-><init>()V

    invoke-virtual {p0, v0}, LTe/s;->d(LTe/v;)V

    return-object v0
.end method

.method public final B1(Z)Lof/n;
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
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lof/n;

    invoke-direct {v0}, Lof/n;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lof/n;->cancel()V

    :cond_0
    invoke-virtual {p0, v0}, LTe/s;->d(LTe/v;)V

    return-object v0
.end method

.method public final C(LXe/o;)LTe/s;
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
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/H;

    invoke-direct {v0, p0, p1}, Lef/H;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final C1(JLjava/util/concurrent/TimeUnit;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/s;->E1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final D(LTe/y;)LTe/l;
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
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LTe/s;->r(LTe/y;LTe/y;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final D1(JLjava/util/concurrent/TimeUnit;LTe/y;)LTe/s;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, LTe/s;->F1(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/y;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final E(Ljava/lang/Object;)LTe/K;
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
            "Ljava/lang/Object;",
            ")",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/h;

    invoke-direct {v0, p0, p1}, Lef/h;-><init>(LTe/y;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final E1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/s;
    .locals 0
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LTe/s;->L1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/s;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/s;->I1(LTe/y;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final F()LTe/K;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/K<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lef/i;

    invoke-direct {v0, p0}, Lef/i;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final F1(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/y;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fallback is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2, p3, p4}, LTe/s;->L1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/s;

    move-result-object p1

    invoke-virtual {p0, p1, p5}, LTe/s;->J1(LTe/y;LTe/y;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final G1(LCi/b;)LTe/s;
    .locals 2
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TU;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/l0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lef/l0;-><init>(LTe/y;LCi/b;LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final H(Ljava/lang/Object;)LTe/s;
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
            "(TT;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LTe/s;->x0(Ljava/lang/Object;)LTe/s;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/s;->w1(LTe/y;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final H1(LCi/b;LTe/y;)LTe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TU;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/l0;

    invoke-direct {v0, p0, p1, p2}, Lef/l0;-><init>(LTe/y;LCi/b;LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final I1(LTe/y;)LTe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "TU;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/k0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lef/k0;-><init>(LTe/y;LTe/y;LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final J(JLjava/util/concurrent/TimeUnit;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/s;->K(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final J1(LTe/y;LTe/y;)LTe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "TU;>;",
            "LTe/y<",
            "+TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeoutIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fallback is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/k0;

    invoke-direct {v0, p0, p1, p2}, Lef/k0;-><init>(LTe/y;LTe/y;LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final K(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/s;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/l;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lef/l;-><init>(LTe/y;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final L(LCi/b;)LTe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TU;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "delayIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/m;

    invoke-direct {v0, p0, p1}, Lef/m;-><init>(LTe/y;LCi/b;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final M(JLjava/util/concurrent/TimeUnit;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/s;->N(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final M1(LXe/o;)Ljava/lang/Object;
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
            "LXe/o<",
            "-",
            "LTe/s<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    :try_start_0
    const-string v0, "convert is null"

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

.method public final N(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/s;
    .locals 0
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LTe/l;->x7(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/s;->O(LCi/b;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final N1()LTe/l;
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

    instance-of v0, p0, Laf/b;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Laf/b;

    invoke-interface {v0}, Laf/b;->f()LTe/l;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lef/n0;

    invoke-direct {v0, p0}, Lef/n0;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final O(LCi/b;)LTe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TU;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/n;

    invoke-direct {v0, p0, p1}, Lef/n;-><init>(LTe/y;LCi/b;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final O1()LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    new-instance v0, Lef/o0;

    invoke-direct {v0, p0}, Lef/o0;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final P(LXe/g;)LTe/s;
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
            "-TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterSuccess is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/q;

    invoke-direct {v0, p0, p1}, Lef/q;-><init>(LTe/y;LXe/g;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final P1()LTe/K;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lef/q0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lef/q0;-><init>(LTe/y;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final Q(LXe/a;)LTe/s;
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
            "LXe/a;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lef/e0;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    sget-object v7, LZe/a;->c:LXe/a;

    const-string v0, "onAfterTerminate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, LXe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v7}, Lef/e0;-><init>(LTe/y;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;)V

    invoke-static {v8}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(LTe/y;)LTe/l;
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
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LTe/s;->D0(LTe/y;LTe/y;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Q1(Ljava/lang/Object;)LTe/K;
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
            "(TT;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultValue is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/q0;

    invoke-direct {v0, p0, p1}, Lef/q0;-><init>(LTe/y;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final R(LXe/a;)LTe/s;
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
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/r;

    invoke-direct {v0, p0, p1}, Lef/r;-><init>(LTe/y;LXe/a;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final S(LXe/a;)LTe/s;
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
            "LXe/a;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lef/e0;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, LXe/a;

    sget-object v7, LZe/a;->c:LXe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lef/e0;-><init>(LTe/y;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;)V

    invoke-static {v8}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final S0(LTe/J;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/J;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/a0;

    invoke-direct {v0, p0, p1}, Lef/a0;-><init>(LTe/y;LTe/J;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final S1(LTe/J;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/J;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/s0;

    invoke-direct {v0, p0, p1}, Lef/s0;-><init>(LTe/y;LTe/J;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final T(LXe/a;)LTe/s;
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
            "LXe/a;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lef/e0;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    sget-object v6, LZe/a;->c:LXe/a;

    const-string v0, "onDispose is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, LXe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v7}, Lef/e0;-><init>(LTe/y;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;)V

    invoke-static {v8}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final T0(Ljava/lang/Class;)LTe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "LTe/s<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->l(Ljava/lang/Class;)LXe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/s;->c0(LXe/r;)LTe/s;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/s;->n(Ljava/lang/Class;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final U(LXe/g;)LTe/s;
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
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lef/e0;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    const-string v0, "onError is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, LXe/g;

    sget-object v7, LZe/a;->c:LXe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lef/e0;-><init>(LTe/y;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;)V

    invoke-static {v8}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final U0()LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->c()LXe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/s;->V0(LXe/r;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final V(LXe/b;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/s;

    invoke-direct {v0, p0, p1}, Lef/s;-><init>(LTe/y;LXe/b;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final V0(LXe/r;)LTe/s;
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
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/b0;

    invoke-direct {v0, p0, p1}, Lef/b0;-><init>(LTe/y;LXe/r;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final W(LXe/g;)LTe/s;
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
            ">;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lef/e0;

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, LXe/g;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    sget-object v7, LZe/a;->c:LXe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lef/e0;-><init>(LTe/y;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;)V

    invoke-static {v8}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final W0(LTe/y;)LTe/s;
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
            "LTe/y<",
            "+TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->n(Ljava/lang/Object;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/s;->X0(LXe/o;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final X(LXe/g;)LTe/s;
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
            "-TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lef/e0;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, LXe/g;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v4

    sget-object v7, LZe/a;->c:LXe/a;

    move-object v0, v8

    move-object v1, p0

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v0 .. v7}, Lef/e0;-><init>(LTe/y;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/a;)V

    invoke-static {v8}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final X0(LXe/o;)LTe/s;
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
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/y<",
            "+TT;>;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/c0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lef/c0;-><init>(LTe/y;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final Y(LXe/a;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/e;
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
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/t;

    invoke-direct {v0, p0, p1}, Lef/t;-><init>(LTe/y;LXe/a;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(LXe/o;)LTe/s;
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
            "+TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/d0;

    invoke-direct {v0, p0, p1}, Lef/d0;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final Z0(Ljava/lang/Object;)LTe/s;
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
            "(TT;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->n(Ljava/lang/Object;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/s;->Y0(LXe/o;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final a1(LTe/y;)LTe/s;
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
            "LTe/y<",
            "+TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/c0;

    invoke-static {p1}, LZe/a;->n(Ljava/lang/Object;)LXe/o;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lef/c0;-><init>(LTe/y;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final b1()LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lef/p;

    invoke-direct {v0, p0}, Lef/p;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final c0(LXe/r;)LTe/s;
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
            "-TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/y;

    invoke-direct {v0, p0, p1}, Lef/y;-><init>(LTe/y;LXe/r;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final c1()LTe/l;
    .locals 2
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

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, LTe/s;->d1(J)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final d(LTe/v;)V
    .locals 2
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lqf/a;->f0(LTe/s;LTe/v;)LTe/v;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, LTe/s;->t1(LTe/v;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_0
    move-exception p1

    throw p1
.end method

.method public final d0(LXe/o;)LTe/s;
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
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/H;

    invoke-direct {v0, p0, p1}, Lef/H;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final d1(J)LTe/l;
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
            "(J)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/s;->N1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LTe/l;->W4(J)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e0(LXe/o;LXe/c;)LTe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/A;

    invoke-direct {v0, p0, p1, p2}, Lef/A;-><init>(LTe/y;LXe/o;LXe/c;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final e1(LXe/e;)LTe/l;
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
            "LXe/e;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/s;->N1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->X4(LXe/e;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f0(LXe/o;LXe/o;Ljava/util/concurrent/Callable;)LTe/s;
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
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/y<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onSuccessMapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/E;

    invoke-direct {v0, p0, p1, p2, p3}, Lef/E;-><init>(LTe/y;LXe/o;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final f1(LXe/o;)LTe/l;
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
            "LXe/o<",
            "-",
            "LTe/l<",
            "Ljava/lang/Object;",
            ">;+",
            "LCi/b<",
            "*>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/s;->N1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->Y4(LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g0(LXe/o;)LTe/c;
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
            "-TT;+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/B;

    invoke-direct {v0, p0, p1}, Lef/B;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final g1()LTe/s;
    .locals 3
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {}, LZe/a;->c()LXe/r;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, LTe/s;->i1(JLXe/r;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final g2(LTe/y;LXe/c;)LTe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "+TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2}, LTe/s;->d2(LTe/y;LTe/y;LXe/c;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final h0(LXe/o;)LTe/B;
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
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/j;

    invoke-direct {v0, p0, p1}, Lff/j;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final h1(J)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->c()LXe/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LTe/s;->i1(JLXe/r;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final i(LTe/y;)LTe/s;
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
            "LTe/y<",
            "+TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LTe/y;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LTe/s;->h([LTe/y;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final i0(LXe/o;)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/k;

    invoke-direct {v0, p0, p1}, Lff/k;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i1(JLXe/r;)LTe/s;
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
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/s;->N1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LTe/l;->r5(JLXe/r;)LTe/l;

    move-result-object p1

    invoke-virtual {p1}, LTe/l;->N5()LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final j(LTe/t;)Ljava/lang/Object;
    .locals 1
    .param p1    # LTe/t;
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
            "LTe/t<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/t;

    invoke-interface {p1, p0}, LTe/t;->a(LTe/s;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j0(LXe/o;)LTe/K;
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
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;)",
            "LTe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/F;

    invoke-direct {v0, p0, p1}, Lef/F;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final j1(LXe/d;)LTe/s;
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
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/s;->N1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->s5(LXe/d;)LTe/l;

    move-result-object p1

    invoke-virtual {p1}, LTe/l;->N5()LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/lang/Object;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Lbf/h;

    invoke-direct {v0}, Lbf/h;-><init>()V

    invoke-virtual {p0, v0}, LTe/s;->d(LTe/v;)V

    invoke-virtual {v0}, Lbf/h;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final k0(LXe/o;)LTe/s;
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
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/G;

    invoke-direct {v0, p0, p1}, Lef/G;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final k1(LXe/r;)LTe/s;
    .locals 2
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
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, LTe/s;->i1(JLXe/r;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string v0, "defaultValue is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lbf/h;

    invoke-direct {v0}, Lbf/h;-><init>()V

    invoke-virtual {p0, v0}, LTe/s;->d(LTe/v;)V

    invoke-virtual {v0, p1}, Lbf/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l0(LXe/o;)LTe/l;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/C;

    invoke-direct {v0, p0, p1}, Lef/C;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l1(LXe/e;)LTe/s;
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
            "LXe/e;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p1}, LZe/a;->v(LXe/e;)LXe/r;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, LTe/s;->i1(JLXe/r;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final m()LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lef/c;

    invoke-direct {v0, p0}, Lef/c;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final m0(LXe/o;)LTe/B;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/D;

    invoke-direct {v0, p0, p1}, Lef/D;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m1(LXe/o;)LTe/s;
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
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/s;->N1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->v5(LXe/o;)LTe/l;

    move-result-object p1

    invoke-virtual {p1}, LTe/l;->N5()LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/Class;)LTe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TU;>;)",
            "LTe/s<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->e(Ljava/lang/Class;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/s;->z0(LXe/o;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final o(LTe/z;)LTe/s;
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
            "LTe/z<",
            "-TT;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/z;

    invoke-interface {p1, p0}, LTe/z;->a(LTe/s;)LTe/y;

    move-result-object p1

    invoke-static {p1}, LTe/s;->V1(LTe/y;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final p1()LVe/c;
    .locals 3
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    sget-object v1, LZe/a;->f:LXe/g;

    sget-object v2, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, v1, v2}, LTe/s;->s1(LXe/g;LXe/g;LXe/a;)LVe/c;

    move-result-object v0

    return-object v0
.end method

.method public final q1(LXe/g;)LVe/c;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-TT;>;)",
            "LVe/c;"
        }
    .end annotation

    sget-object v0, LZe/a;->f:LXe/g;

    sget-object v1, LZe/a;->c:LXe/a;

    invoke-virtual {p0, p1, v0, v1}, LTe/s;->s1(LXe/g;LXe/g;LXe/a;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final r1(LXe/g;LXe/g;)LVe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LVe/c;"
        }
    .end annotation

    sget-object v0, LZe/a;->c:LXe/a;

    invoke-virtual {p0, p1, p2, v0}, LTe/s;->s1(LXe/g;LXe/g;LXe/a;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final s1(LXe/g;LXe/g;LXe/a;)LVe/c;
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
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LXe/a;",
            ")",
            "LVe/c;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/d;

    invoke-direct {v0, p1, p2, p3}, Lef/d;-><init>(LXe/g;LXe/g;LXe/a;)V

    invoke-virtual {p0, v0}, LTe/s;->v1(LTe/v;)LTe/v;

    move-result-object p1

    check-cast p1, LVe/c;

    return-object p1
.end method

.method public abstract t1(LTe/v;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final u0()LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lef/O;

    invoke-direct {v0, p0}, Lef/O;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final u1(LTe/J;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/J;",
            ")",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/f0;

    invoke-direct {v0, p0, p1}, Lef/f0;-><init>(LTe/y;LTe/J;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final v0()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    new-instance v0, Lef/Q;

    invoke-direct {v0, p0}, Lef/Q;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public final v1(LTe/v;)LTe/v;
    .locals 0
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LTe/v<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LTe/s;->d(LTe/v;)V

    return-object p1
.end method

.method public final w0()LTe/K;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lef/T;

    invoke-direct {v0, p0}, Lef/T;-><init>(LTe/y;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final w1(LTe/y;)LTe/s;
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
            "LTe/y<",
            "+TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/g0;

    invoke-direct {v0, p0, p1}, Lef/g0;-><init>(LTe/y;LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final x1(LTe/Q;)LTe/K;
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
            "LTe/Q<",
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/h0;

    invoke-direct {v0, p0, p1}, Lef/h0;-><init>(LTe/y;LTe/Q;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final y0(LTe/x;)LTe/s;
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
            "LTe/x<",
            "+TR;-TT;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lift is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/V;

    invoke-direct {v0, p0, p1}, Lef/V;-><init>(LTe/y;LTe/x;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final y1(LCi/b;)LTe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TU;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/j0;

    invoke-direct {v0, p0, p1}, Lef/j0;-><init>(LTe/y;LCi/b;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final z0(LXe/o;)LTe/s;
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
            "LXe/o<",
            "-TT;+TR;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/W;

    invoke-direct {v0, p0, p1}, Lef/W;-><init>(LTe/y;LXe/o;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final z1(LTe/y;)LTe/s;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/y<",
            "TU;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lef/i0;

    invoke-direct {v0, p0, p1}, Lef/i0;-><init>(LTe/y;LTe/y;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method
