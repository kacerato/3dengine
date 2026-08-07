.class public final Ldf/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/t0$h;,
        Ldf/t0$o;,
        Ldf/t0$b;,
        Ldf/t0$a;,
        Ldf/t0$g;,
        Ldf/t0$p;,
        Ldf/t0$i;,
        Ldf/t0$c;,
        Ldf/t0$e;,
        Ldf/t0$d;,
        Ldf/t0$l;,
        Ldf/t0$m;,
        Ldf/t0$n;,
        Ldf/t0$f;,
        Ldf/t0$j;,
        Ldf/t0$k;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(LXe/o;)LXe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LXe/o<",
            "TT;",
            "LCi/b<",
            "TU;>;>;"
        }
    .end annotation

    new-instance v0, Ldf/t0$c;

    invoke-direct {v0, p0}, Ldf/t0$c;-><init>(LXe/o;)V

    return-object v0
.end method

.method public static b(LXe/o;LXe/c;)LXe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LXe/o<",
            "TT;",
            "LCi/b<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, Ldf/t0$e;

    invoke-direct {v0, p1, p0}, Ldf/t0$e;-><init>(LXe/c;LXe/o;)V

    return-object v0
.end method

.method public static c(LXe/o;)LXe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TU;>;>;)",
            "LXe/o<",
            "TT;",
            "LCi/b<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ldf/t0$f;

    invoke-direct {v0, p0}, Ldf/t0$f;-><init>(LXe/o;)V

    return-object v0
.end method

.method public static d(LTe/l;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/l<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "LWe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ldf/t0$g;

    invoke-direct {v0, p0}, Ldf/t0$g;-><init>(LTe/l;)V

    return-object v0
.end method

.method public static e(LTe/l;I)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/l<",
            "TT;>;I)",
            "Ljava/util/concurrent/Callable<",
            "LWe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ldf/t0$a;

    invoke-direct {v0, p0, p1}, Ldf/t0$a;-><init>(LTe/l;I)V

    return-object v0
.end method

.method public static f(LTe/l;IJLjava/util/concurrent/TimeUnit;LTe/J;)Ljava/util/concurrent/Callable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/l<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "LWe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v7, Ldf/t0$b;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ldf/t0$b;-><init>(LTe/l;IJLjava/util/concurrent/TimeUnit;LTe/J;)V

    return-object v7
.end method

.method public static g(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;)Ljava/util/concurrent/Callable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "LWe/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v6, Ldf/t0$o;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldf/t0$o;-><init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    return-object v6
.end method

.method public static h(LXe/o;LTe/J;)LXe/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "TR;>;>;",
            "LTe/J;",
            ")",
            "LXe/o<",
            "LTe/l<",
            "TT;>;",
            "LCi/b<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, Ldf/t0$h;

    invoke-direct {v0, p0, p1}, Ldf/t0$h;-><init>(LXe/o;LTe/J;)V

    return-object v0
.end method

.method public static i(LXe/b;)LXe/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/b<",
            "TS;",
            "LTe/k<",
            "TT;>;>;)",
            "LXe/c<",
            "TS;",
            "LTe/k<",
            "TT;>;TS;>;"
        }
    .end annotation

    new-instance v0, Ldf/t0$j;

    invoke-direct {v0, p0}, Ldf/t0$j;-><init>(LXe/b;)V

    return-object v0
.end method

.method public static j(LXe/g;)LXe/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/g<",
            "LTe/k<",
            "TT;>;>;)",
            "LXe/c<",
            "TS;",
            "LTe/k<",
            "TT;>;TS;>;"
        }
    .end annotation

    new-instance v0, Ldf/t0$k;

    invoke-direct {v0, p0}, Ldf/t0$k;-><init>(LXe/g;)V

    return-object v0
.end method

.method public static k(LCi/c;)LXe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/c<",
            "TT;>;)",
            "LXe/a;"
        }
    .end annotation

    new-instance v0, Ldf/t0$l;

    invoke-direct {v0, p0}, Ldf/t0$l;-><init>(LCi/c;)V

    return-object v0
.end method

.method public static l(LCi/c;)LXe/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/c<",
            "TT;>;)",
            "LXe/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldf/t0$m;

    invoke-direct {v0, p0}, Ldf/t0$m;-><init>(LCi/c;)V

    return-object v0
.end method

.method public static m(LCi/c;)LXe/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/c<",
            "TT;>;)",
            "LXe/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/t0$n;

    invoke-direct {v0, p0}, Ldf/t0$n;-><init>(LCi/c;)V

    return-object v0
.end method

.method public static n(LXe/o;)LXe/o;
    .locals 1
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
            "+TR;>;)",
            "LXe/o<",
            "Ljava/util/List<",
            "LCi/b<",
            "+TT;>;>;",
            "LCi/b<",
            "+TR;>;>;"
        }
    .end annotation

    new-instance v0, Ldf/t0$p;

    invoke-direct {v0, p0}, Ldf/t0$p;-><init>(LXe/o;)V

    return-object v0
.end method
