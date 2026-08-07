.class public final Lgf/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/p0$l;,
        Lgf/p0$o;,
        Lgf/p0$b;,
        Lgf/p0$a;,
        Lgf/p0$k;,
        Lgf/p0$p;,
        Lgf/p0$g;,
        Lgf/p0$c;,
        Lgf/p0$e;,
        Lgf/p0$d;,
        Lgf/p0$h;,
        Lgf/p0$i;,
        Lgf/p0$j;,
        Lgf/p0$f;,
        Lgf/p0$m;,
        Lgf/p0$n;
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
            "LTe/G<",
            "TU;>;>;"
        }
    .end annotation

    new-instance v0, Lgf/p0$c;

    invoke-direct {v0, p0}, Lgf/p0$c;-><init>(LXe/o;)V

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
            "LTe/G<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LXe/o<",
            "TT;",
            "LTe/G<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, Lgf/p0$e;

    invoke-direct {v0, p1, p0}, Lgf/p0$e;-><init>(LXe/c;LXe/o;)V

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
            "LTe/G<",
            "TU;>;>;)",
            "LXe/o<",
            "TT;",
            "LTe/G<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lgf/p0$f;

    invoke-direct {v0, p0}, Lgf/p0$f;-><init>(LXe/o;)V

    return-object v0
.end method

.method public static d(LTe/I;)LXe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/I<",
            "TT;>;)",
            "LXe/a;"
        }
    .end annotation

    new-instance v0, Lgf/p0$h;

    invoke-direct {v0, p0}, Lgf/p0$h;-><init>(LTe/I;)V

    return-object v0
.end method

.method public static e(LTe/I;)LXe/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/I<",
            "TT;>;)",
            "LXe/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lgf/p0$i;

    invoke-direct {v0, p0}, Lgf/p0$i;-><init>(LTe/I;)V

    return-object v0
.end method

.method public static f(LTe/I;)LXe/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/I<",
            "TT;>;)",
            "LXe/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lgf/p0$j;

    invoke-direct {v0, p0}, Lgf/p0$j;-><init>(LTe/I;)V

    return-object v0
.end method

.method public static g(LTe/B;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/B<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "Lnf/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lgf/p0$k;

    invoke-direct {v0, p0}, Lgf/p0$k;-><init>(LTe/B;)V

    return-object v0
.end method

.method public static h(LTe/B;I)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/B<",
            "TT;>;I)",
            "Ljava/util/concurrent/Callable<",
            "Lnf/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lgf/p0$a;

    invoke-direct {v0, p0, p1}, Lgf/p0$a;-><init>(LTe/B;I)V

    return-object v0
.end method

.method public static i(LTe/B;IJLjava/util/concurrent/TimeUnit;LTe/J;)Ljava/util/concurrent/Callable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/B<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lnf/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v7, Lgf/p0$b;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lgf/p0$b;-><init>(LTe/B;IJLjava/util/concurrent/TimeUnit;LTe/J;)V

    return-object v7
.end method

.method public static j(LTe/B;JLjava/util/concurrent/TimeUnit;LTe/J;)Ljava/util/concurrent/Callable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/B<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Lnf/a<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v6, Lgf/p0$o;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgf/p0$o;-><init>(LTe/B;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    return-object v6
.end method

.method public static k(LXe/o;LTe/J;)LXe/o;
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
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;",
            "LTe/J;",
            ")",
            "LXe/o<",
            "LTe/B<",
            "TT;>;",
            "LTe/G<",
            "TR;>;>;"
        }
    .end annotation

    new-instance v0, Lgf/p0$l;

    invoke-direct {v0, p0, p1}, Lgf/p0$l;-><init>(LXe/o;LTe/J;)V

    return-object v0
.end method

.method public static l(LXe/b;)LXe/c;
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

    new-instance v0, Lgf/p0$m;

    invoke-direct {v0, p0}, Lgf/p0$m;-><init>(LXe/b;)V

    return-object v0
.end method

.method public static m(LXe/g;)LXe/c;
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

    new-instance v0, Lgf/p0$n;

    invoke-direct {v0, p0}, Lgf/p0$n;-><init>(LXe/g;)V

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
            "LTe/G<",
            "+TT;>;>;",
            "LTe/G<",
            "+TR;>;>;"
        }
    .end annotation

    new-instance v0, Lgf/p0$p;

    invoke-direct {v0, p0}, Lgf/p0$p;-><init>(LXe/o;)V

    return-object v0
.end method
