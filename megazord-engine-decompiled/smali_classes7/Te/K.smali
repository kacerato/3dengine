.class public abstract LTe/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/Q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/Q<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A0(Ljava/lang/Iterable;)LTe/l;
    .locals 0
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
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->w0(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B0(LTe/Q;)LTe/K;
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
            "LTe/Q<",
            "+",
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/x;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lif/x;-><init>(LTe/Q;LXe/o;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static B1(Ljava/util/concurrent/Callable;LXe/o;LXe/g;)LTe/K;
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
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "LXe/o<",
            "-TU;+",
            "LTe/Q<",
            "+TT;>;>;",
            "LXe/g<",
            "-TU;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LTe/K;->C1(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static C(LTe/O;)LTe/K;
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
            "LTe/O<",
            "TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/d;

    invoke-direct {v0, p0}, Lif/d;-><init>(LTe/O;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static C0(LCi/b;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/e0;

    invoke-static {}, Lif/H;->c()LXe/o;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-static {}, LTe/l;->a0()I

    move-result v6

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Ldf/e0;-><init>(LCi/b;LXe/o;ZII)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C1(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)LTe/K;
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
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "LXe/o<",
            "-TU;+",
            "LTe/Q<",
            "+TT;>;>;",
            "LXe/g<",
            "-TU;>;Z)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "singleFunction is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/Y;

    invoke-direct {v0, p0, p1, p2, p3}, Lif/Y;-><init>(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/util/concurrent/Callable;)LTe/K;
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
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "singleSupplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/e;

    invoke-direct {v0, p0}, Lif/e;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static D0(LTe/Q;LTe/Q;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->C0(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D1(LTe/Q;)LTe/K;
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

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LTe/K;

    if-eqz v0, :cond_0

    check-cast p0, LTe/K;

    invoke-static {p0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lif/F;

    invoke-direct {v0, p0}, Lif/F;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static E0(LTe/Q;LTe/Q;LTe/Q;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->C0(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E1(LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LXe/n;)LTe/K;
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
            "LTe/Q<",
            "+TT1;>;",
            "LTe/Q<",
            "+TT2;>;",
            "LTe/Q<",
            "+TT3;>;",
            "LTe/Q<",
            "+TT4;>;",
            "LTe/Q<",
            "+TT5;>;",
            "LTe/Q<",
            "+TT6;>;",
            "LTe/Q<",
            "+TT7;>;",
            "LTe/Q<",
            "+TT8;>;",
            "LTe/Q<",
            "+TT9;>;",
            "LXe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LTe/K<",
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

    new-array v0, v0, [LTe/Q;

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

    invoke-static {p9, v0}, LTe/K;->N1(LXe/o;[LTe/Q;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static F0(LTe/Q;LTe/Q;LTe/Q;LTe/Q;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->C0(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F1(LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LXe/m;)LTe/K;
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
            "LTe/Q<",
            "+TT1;>;",
            "LTe/Q<",
            "+TT2;>;",
            "LTe/Q<",
            "+TT3;>;",
            "LTe/Q<",
            "+TT4;>;",
            "LTe/Q<",
            "+TT5;>;",
            "LTe/Q<",
            "+TT6;>;",
            "LTe/Q<",
            "+TT7;>;",
            "LTe/Q<",
            "+TT8;>;",
            "LXe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LTe/K<",
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

    new-array v0, v0, [LTe/Q;

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

    invoke-static {p8, v0}, LTe/K;->N1(LXe/o;[LTe/Q;)LTe/K;

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
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->C0(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static G1(LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LXe/l;)LTe/K;
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
            "LTe/Q<",
            "+TT1;>;",
            "LTe/Q<",
            "+TT2;>;",
            "LTe/Q<",
            "+TT3;>;",
            "LTe/Q<",
            "+TT4;>;",
            "LTe/Q<",
            "+TT5;>;",
            "LTe/Q<",
            "+TT6;>;",
            "LTe/Q<",
            "+TT7;>;",
            "LXe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LTe/K<",
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

    new-array v0, v0, [LTe/Q;

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

    invoke-static {p7, v0}, LTe/K;->N1(LXe/o;[LTe/Q;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static H1(LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LXe/k;)LTe/K;
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
            "LTe/Q<",
            "+TT1;>;",
            "LTe/Q<",
            "+TT2;>;",
            "LTe/Q<",
            "+TT3;>;",
            "LTe/Q<",
            "+TT4;>;",
            "LTe/Q<",
            "+TT5;>;",
            "LTe/Q<",
            "+TT6;>;",
            "LXe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LTe/K<",
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

    new-array v0, v0, [LTe/Q;

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

    invoke-static {p6, v0}, LTe/K;->N1(LXe/o;[LTe/Q;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static I0()LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lif/M;->b:LTe/K;

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public static I1(LTe/Q;LTe/Q;LTe/Q;LTe/Q;LTe/Q;LXe/j;)LTe/K;
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
            "LTe/Q<",
            "+TT1;>;",
            "LTe/Q<",
            "+TT2;>;",
            "LTe/Q<",
            "+TT3;>;",
            "LTe/Q<",
            "+TT4;>;",
            "LTe/Q<",
            "+TT5;>;",
            "LXe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LTe/K<",
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

    new-array v0, v0, [LTe/Q;

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

    invoke-static {p5, v0}, LTe/K;->N1(LXe/o;[LTe/Q;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static J1(LTe/Q;LTe/Q;LTe/Q;LTe/Q;LXe/i;)LTe/K;
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
            "LTe/Q<",
            "+TT1;>;",
            "LTe/Q<",
            "+TT2;>;",
            "LTe/Q<",
            "+TT3;>;",
            "LTe/Q<",
            "+TT4;>;",
            "LXe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LTe/K<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, LTe/K;->N1(LXe/o;[LTe/Q;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static K1(LTe/Q;LTe/Q;LTe/Q;LXe/h;)LTe/K;
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
            "LTe/Q<",
            "+TT1;>;",
            "LTe/Q<",
            "+TT2;>;",
            "LTe/Q<",
            "+TT3;>;",
            "LXe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LTe/K<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, LTe/K;->N1(LXe/o;[LTe/Q;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static L1(LTe/Q;LTe/Q;LXe/c;)LTe/K;
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
            "LTe/Q<",
            "+TT1;>;",
            "LTe/Q<",
            "+TT2;>;",
            "LXe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LTe/K<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, LTe/K;->N1(LXe/o;[LTe/Q;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static M1(Ljava/lang/Iterable;LXe/o;)LTe/K;
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
            "LTe/Q<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/a0;

    invoke-direct {v0, p0, p1}, Lif/a0;-><init>(Ljava/lang/Iterable;LXe/o;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static varargs N1(LXe/o;[LTe/Q;)LTe/K;
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
            "LTe/Q<",
            "+TT;>;)",
            "LTe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-static {p0}, LTe/K;->Z(Ljava/lang/Throwable;)LTe/K;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lif/Z;

    invoke-direct {v0, p1, p0}, Lif/Z;-><init>([LTe/Q;LXe/o;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static Y(LTe/Q;LTe/Q;)LTe/K;
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
            "+TT;>;",
            "LTe/Q<",
            "+TT;>;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "first is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "second is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/v;

    invoke-direct {v0, p0, p1}, Lif/v;-><init>(LTe/Q;LTe/Q;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Ljava/lang/Throwable;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LZe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, LTe/K;->a0(Ljava/util/concurrent/Callable;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Ljava/util/concurrent/Callable;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/w;

    invoke-direct {v0, p0}, Lif/w;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Iterable;)LTe/K;
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
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lif/a;-><init>([LTe/Q;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h([LTe/Q;)LTe/K;
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
            "LTe/Q<",
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Lif/H;->a()Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, LTe/K;->a0(Ljava/util/concurrent/Callable;)LTe/K;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/K;->D1(LTe/Q;)LTe/K;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lif/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lif/a;-><init>([LTe/Q;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static j0(Ljava/util/concurrent/Callable;)LTe/K;
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
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "callable is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/D;

    invoke-direct {v0, p0}, Lif/D;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Ljava/util/concurrent/Future;)LTe/K;
    .locals 0
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
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->V2(Ljava/util/concurrent/Future;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->y1(LTe/l;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static l0(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LTe/K;
    .locals 0
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
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, LTe/l;->W2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->y1(LTe/l;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/K;
    .locals 0
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, LTe/l;->X2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->y1(LTe/l;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static n0(Ljava/util/concurrent/Future;LTe/J;)LTe/K;
    .locals 0
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;",
            "LTe/J;",
            ")",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, LTe/l;->Y2(Ljava/util/concurrent/Future;LTe/J;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->y1(LTe/l;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static o(LCi/b;)LTe/l;
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
            "+",
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, LTe/K;->p(LCi/b;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static o0(LTe/G;)LTe/K;
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
            "LTe/G<",
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "observableSource is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/f1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgf/f1;-><init>(LTe/G;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static p(LCi/b;I)LTe/l;
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
            "LTe/Q<",
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

    invoke-static {}, Lif/H;->c()LXe/o;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, p1, v2}, Ldf/z;-><init>(LCi/b;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static p0(LCi/b;)LTe/K;
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
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "publisher is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/E;

    invoke-direct {v0, p0}, Lif/E;-><init>(LCi/b;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static q(LTe/Q;LTe/Q;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->o(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static q1(JLjava/util/concurrent/TimeUnit;)LTe/K;
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
            "LTe/K<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, LTe/K;->r1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static r(LTe/Q;LTe/Q;LTe/Q;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->o(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static r1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/K;
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
            ")",
            "LTe/K<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/U;

    invoke-direct {v0, p0, p1, p2, p3}, Lif/U;-><init>(JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static s(LTe/Q;LTe/Q;LTe/Q;LTe/Q;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->o(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static s0(Ljava/lang/Object;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/I;

    invoke-direct {v0, p0}, Lif/I;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Iterable;)LTe/l;
    .locals 0
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
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->o(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static u(LTe/G;)LTe/B;
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
            "LTe/G<",
            "+",
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/v;

    invoke-static {}, Lif/H;->d()LXe/o;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, v2, v3}, Lgf/v;-><init>(LTe/G;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs v([LTe/Q;)LTe/l;
    .locals 4
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
            "LTe/Q<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/w;

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {}, Lif/H;->c()LXe/o;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, v2, v3}, Ldf/w;-><init>(LTe/l;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs w([LTe/Q;)LTe/l;
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
            ">([",
            "LTe/Q<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {}, Lif/H;->c()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->c1(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static w0(LCi/b;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/e0;

    invoke-static {}, Lif/H;->c()LXe/o;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-static {}, LTe/l;->a0()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Ldf/e0;-><init>(LCi/b;LXe/o;ZII)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x(LCi/b;)LTe/l;
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
            "+",
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    invoke-static {}, Lif/H;->c()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->c1(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x0(LTe/Q;LTe/Q;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->w0(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/Iterable;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, Lif/H;->c()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->c1(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y0(LTe/Q;LTe/Q;LTe/Q;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->w0(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y1(LTe/l;)LTe/K;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/l<",
            "TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/s1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldf/s1;-><init>(LTe/l;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static z0(LTe/Q;LTe/Q;LTe/Q;LTe/Q;)LTe/l;
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
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
            "+TT;>;",
            "LTe/Q<",
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

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {p0}, LTe/K;->w0(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static z1(LTe/Q;)LTe/K;
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

    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LTe/K;

    if-nez v0, :cond_0

    new-instance v0, Lif/F;

    invoke-direct {v0, p0}, Lif/F;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Single) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)LTe/K;
    .locals 1
    .annotation runtime LUe/d;
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

    invoke-static {}, LZe/b;->d()LXe/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LTe/K;->B(Ljava/lang/Object;LXe/d;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final A1(LTe/J;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/X;

    invoke-direct {v0, p0, p1}, Lif/X;-><init>(LTe/Q;LTe/J;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final B(Ljava/lang/Object;LXe/d;)LTe/K;
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
            "LXe/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "value is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "comparer is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/c;

    invoke-direct {v0, p0, p1, p2}, Lif/c;-><init>(LTe/Q;Ljava/lang/Object;LXe/d;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final E(JLjava/util/concurrent/TimeUnit;)LTe/K;
    .locals 6
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/K;->G(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final F(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/K;
    .locals 6
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/K;->G(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final G(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/K;
    .locals 8
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
            "Z)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/f;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lif/f;-><init>(LTe/Q;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final H(JLjava/util/concurrent/TimeUnit;Z)LTe/K;
    .locals 6
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LTe/K;->G(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final H0(LTe/Q;)LTe/l;
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
            "(",
            "LTe/Q<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, LTe/K;->x0(LTe/Q;LTe/Q;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final I(JLjava/util/concurrent/TimeUnit;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/K;->J(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final J(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LTe/B;->R6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/K;->M(LTe/G;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final J0(LTe/J;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/N;

    invoke-direct {v0, p0, p1}, Lif/N;-><init>(LTe/Q;LTe/J;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final K(LCi/b;)LTe/K;
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
            "LCi/b<",
            "TU;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/i;

    invoke-direct {v0, p0, p1}, Lif/i;-><init>(LTe/Q;LCi/b;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final K0(LTe/K;)LTe/K;
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
            "LTe/K<",
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeSingleInCaseOfError is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->n(Ljava/lang/Object;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/K;->L0(LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final L(LTe/i;)LTe/K;
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
            "LTe/i;",
            ")",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/g;

    invoke-direct {v0, p0, p1}, Lif/g;-><init>(LTe/Q;LTe/i;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final L0(LXe/o;)LTe/K;
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
            "LTe/Q<",
            "+TT;>;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunctionInCaseOfError is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/P;

    invoke-direct {v0, p0, p1}, Lif/P;-><init>(LTe/Q;LXe/o;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final M(LTe/G;)LTe/K;
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
            "LTe/G<",
            "TU;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/h;

    invoke-direct {v0, p0, p1}, Lif/h;-><init>(LTe/Q;LTe/G;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final M0(LXe/o;)LTe/K;
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
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lif/O;-><init>(LTe/Q;LXe/o;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final N(LTe/Q;)LTe/K;
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
            "LTe/Q<",
            "TU;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/j;

    invoke-direct {v0, p0, p1}, Lif/j;-><init>(LTe/Q;LTe/Q;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final N0(Ljava/lang/Object;)LTe/K;
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
            "(TT;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "value is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lif/O;-><init>(LTe/Q;LXe/o;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final O(LXe/o;)LTe/s;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;",
            "LTe/A<",
            "TR;>;>;)",
            "LTe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/k;

    invoke-direct {v0, p0, p1}, Lif/k;-><init>(LTe/K;LXe/o;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final O0()LTe/K;
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
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lif/l;

    invoke-direct {v0, p0}, Lif/l;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final O1(LTe/Q;LXe/c;)LTe/K;
    .locals 0
    .annotation runtime LUe/d;
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
            "LTe/Q<",
            "TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LTe/K<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, LTe/K;->L1(LTe/Q;LTe/Q;LXe/c;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final P(LXe/g;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterSuccess is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/m;

    invoke-direct {v0, p0, p1}, Lif/m;-><init>(LTe/Q;LXe/g;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final P0()LTe/l;
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

    invoke-virtual {p0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-virtual {v0}, LTe/l;->V4()LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final Q(LXe/a;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterTerminate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/n;

    invoke-direct {v0, p0, p1}, Lif/n;-><init>(LTe/Q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(J)LTe/l;
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

    invoke-virtual {p0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LTe/l;->W4(J)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R(LXe/a;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/o;

    invoke-direct {v0, p0, p1}, Lif/o;-><init>(LTe/Q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final R0(LXe/e;)LTe/l;
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

    invoke-virtual {p0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->X4(LXe/e;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final S(LXe/a;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onDispose is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/p;

    invoke-direct {v0, p0, p1}, Lif/p;-><init>(LTe/Q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final S0(LXe/o;)LTe/l;
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

    invoke-virtual {p0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->Y4(LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T(LXe/g;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onError is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/q;

    invoke-direct {v0, p0, p1}, Lif/q;-><init>(LTe/Q;LXe/g;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final T0()LTe/K;
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
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-virtual {v0}, LTe/l;->p5()LTe/l;

    move-result-object v0

    invoke-static {v0}, LTe/K;->y1(LTe/l;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final U(LXe/b;)LTe/K;
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
            "LXe/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/r;

    invoke-direct {v0, p0, p1}, Lif/r;-><init>(LTe/Q;LXe/b;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final U0(J)LTe/K;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LTe/l;->q5(J)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/K;->y1(LTe/l;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final V(LXe/g;)LTe/K;
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
            "LVe/c;",
            ">;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/s;

    invoke-direct {v0, p0, p1}, Lif/s;-><init>(LTe/Q;LXe/g;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final V0(JLXe/r;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LTe/l;->r5(JLXe/r;)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/K;->y1(LTe/l;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final W(LXe/g;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/t;

    invoke-direct {v0, p0, p1}, Lif/t;-><init>(LTe/Q;LXe/g;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final W0(LXe/d;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->s5(LXe/d;)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/K;->y1(LTe/l;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final X(LXe/a;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/u;

    invoke-direct {v0, p0, p1}, Lif/u;-><init>(LTe/Q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final X0(LXe/r;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->t5(LXe/r;)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/K;->y1(LTe/l;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(LXe/o;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->v5(LXe/o;)LTe/l;

    move-result-object p1

    invoke-static {p1}, LTe/K;->y1(LTe/l;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final Z0()LVe/c;
    .locals 2
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    sget-object v1, LZe/a;->f:LXe/g;

    invoke-virtual {p0, v0, v1}, LTe/K;->c1(LXe/g;LXe/g;)LVe/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(LTe/N;)V
    .locals 2
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lqf/a;->h0(LTe/K;LTe/N;)LTe/N;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, LTe/K;->d1(LTe/N;)V
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

.method public final a1(LXe/b;)LVe/c;
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
            "LXe/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LVe/c;"
        }
    .end annotation

    const-string v0, "onCallback is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lbf/d;

    invoke-direct {v0, p1}, Lbf/d;-><init>(LXe/b;)V

    invoke-virtual {p0, v0}, LTe/K;->a(LTe/N;)V

    return-object v0
.end method

.method public final b0(LXe/r;)LTe/s;
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

    new-instance v0, Lef/z;

    invoke-direct {v0, p0, p1}, Lef/z;-><init>(LTe/Q;LXe/r;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final b1(LXe/g;)LVe/c;
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
            "-TT;>;)",
            "LVe/c;"
        }
    .end annotation

    sget-object v0, LZe/a;->f:LXe/g;

    invoke-virtual {p0, p1, v0}, LTe/K;->c1(LXe/g;LXe/g;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final c0(LXe/o;)LTe/K;
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

    new-instance v0, Lif/x;

    invoke-direct {v0, p0, p1}, Lif/x;-><init>(LTe/Q;LXe/o;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final c1(LXe/g;LXe/g;)LVe/c;
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
            ">;)",
            "LVe/c;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lbf/k;

    invoke-direct {v0, p1, p2}, Lbf/k;-><init>(LXe/g;LXe/g;)V

    invoke-virtual {p0, v0}, LTe/K;->a(LTe/N;)V

    return-object v0
.end method

.method public final d0(LXe/o;)LTe/c;
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

    new-instance v0, Lif/y;

    invoke-direct {v0, p0, p1}, Lif/y;-><init>(LTe/Q;LXe/o;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public abstract d1(LTe/N;)V
    .param p1    # LTe/N;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final e0(LXe/o;)LTe/s;
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

    new-instance v0, Lif/B;

    invoke-direct {v0, p0, p1}, Lif/B;-><init>(LTe/Q;LXe/o;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final e1(LTe/J;)LTe/K;
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/Q;

    invoke-direct {v0, p0, p1}, Lif/Q;-><init>(LTe/Q;LTe/J;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final f0(LXe/o;)LTe/B;
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

    new-instance v0, Lff/s;

    invoke-direct {v0, p0, p1}, Lff/s;-><init>(LTe/Q;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final f1(LTe/N;)LTe/N;
    .locals 0
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LTe/N<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LTe/K;->a(LTe/N;)V

    return-object p1
.end method

.method public final g0(LXe/o;)LTe/l;
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

    new-instance v0, Lif/C;

    invoke-direct {v0, p0, p1}, Lif/C;-><init>(LTe/Q;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g1(LCi/b;)LTe/K;
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
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TE;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/S;

    invoke-direct {v0, p0, p1}, Lif/S;-><init>(LTe/Q;LCi/b;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final h0(LXe/o;)LTe/l;
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

    new-instance v0, Lif/z;

    invoke-direct {v0, p0, p1}, Lif/z;-><init>(LTe/Q;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h1(LTe/i;)LTe/K;
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
            "LTe/i;",
            ")",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcf/O;

    invoke-direct {v0, p1}, Lcf/O;-><init>(LTe/i;)V

    invoke-virtual {p0, v0}, LTe/K;->g1(LCi/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final i(LTe/Q;)LTe/K;
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
            "LTe/Q<",
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LTe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LTe/K;->h([LTe/Q;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final i0(LXe/o;)LTe/B;
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

    new-instance v0, Lif/A;

    invoke-direct {v0, p0, p1}, Lif/A;-><init>(LTe/Q;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i1(LTe/Q;)LTe/K;
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
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/Q<",
            "+TE;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/V;

    invoke-direct {v0, p1}, Lif/V;-><init>(LTe/Q;)V

    invoke-virtual {p0, v0}, LTe/K;->g1(LCi/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final j(LTe/L;)Ljava/lang/Object;
    .locals 1
    .param p1    # LTe/L;
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
            "LTe/L<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/L;

    invoke-interface {p1, p0}, LTe/L;->a(LTe/K;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j1()Lof/n;
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

    invoke-virtual {p0, v0}, LTe/K;->a(LTe/N;)V

    return-object v0
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

    invoke-virtual {p0, v0}, LTe/K;->a(LTe/N;)V

    invoke-virtual {v0}, Lbf/h;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final k1(Z)Lof/n;
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
    invoke-virtual {p0, v0}, LTe/K;->a(LTe/N;)V

    return-object v0
.end method

.method public final l()LTe/K;
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
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lif/b;

    invoke-direct {v0, p0}, Lif/b;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final l1(JLjava/util/concurrent/TimeUnit;)LTe/K;
    .locals 6
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/K;->p1(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/Q;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/Class;)LTe/K;
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
            "LTe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->e(Ljava/lang/Class;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/K;->u0(LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final m1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/K;
    .locals 6
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
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/K;->p1(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/Q;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final n(LTe/S;)LTe/K;
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
            "LTe/S<",
            "-TT;+TR;>;)",
            "LTe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/S;

    invoke-interface {p1, p0}, LTe/S;->a(LTe/K;)LTe/Q;

    move-result-object p1

    invoke-static {p1}, LTe/K;->D1(LTe/Q;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final n1(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/Q;)LTe/K;
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
            "LTe/Q<",
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p5}, LTe/K;->p1(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/Q;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final o1(JLjava/util/concurrent/TimeUnit;LTe/Q;)LTe/K;
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
            "LTe/Q<",
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, LTe/K;->p1(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/Q;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final p1(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/Q;)LTe/K;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "LTe/Q<",
            "+TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/T;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lif/T;-><init>(LTe/Q;JLjava/util/concurrent/TimeUnit;LTe/J;LTe/Q;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final q0()LTe/K;
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
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lif/G;

    invoke-direct {v0, p0}, Lif/G;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final r0()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    new-instance v0, Lcf/v;

    invoke-direct {v0, p0}, Lcf/v;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public final s1(LXe/o;)Ljava/lang/Object;
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
            "LXe/o<",
            "-",
            "LTe/K<",
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

.method public final t0(LTe/P;)LTe/K;
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
            "LTe/P<",
            "+TR;-TT;>;)",
            "LTe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lift is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/J;

    invoke-direct {v0, p0, p1}, Lif/J;-><init>(LTe/Q;LTe/P;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final t1()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcf/v;

    invoke-direct {v0, p0}, Lcf/v;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public final u0(LXe/o;)LTe/K;
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
            "LTe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lif/K;

    invoke-direct {v0, p0, p1}, Lif/K;-><init>(LTe/Q;LXe/o;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final u1()LTe/l;
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
    new-instance v0, Lif/V;

    invoke-direct {v0, p0}, Lif/V;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final v0()LTe/K;
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

    new-instance v0, Lif/L;

    invoke-direct {v0, p0}, Lif/L;-><init>(LTe/K;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final v1()Ljava/util/concurrent/Future;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lbf/r;

    invoke-direct {v0}, Lbf/r;-><init>()V

    invoke-virtual {p0, v0}, LTe/K;->f1(LTe/N;)LTe/N;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final w1()LTe/s;
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

    instance-of v0, p0, Laf/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Laf/c;

    invoke-interface {v0}, Laf/c;->d()LTe/s;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lef/N;

    invoke-direct {v0, p0}, Lef/N;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final x1()LTe/B;
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
    new-instance v0, Lif/W;

    invoke-direct {v0, p0}, Lif/W;-><init>(LTe/Q;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final z(LTe/Q;)LTe/l;
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
            "(",
            "LTe/Q<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, LTe/K;->q(LTe/Q;LTe/Q;)LTe/l;

    move-result-object p1

    return-object p1
.end method
