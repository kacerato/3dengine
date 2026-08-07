.class public abstract LTe/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCi/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LCi/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rx2.buffer-size"

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, LTe/l;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A0(LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p0, v0}, LTe/l;->B0(LCi/b;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static A3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/l;
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
            ">(TT;TT;TT;TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static A8(LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LXe/j;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LCi/b<",
            "+TT5;>;",
            "LXe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LTe/l<",
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

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {p5, v2, v0, v1}, LTe/l;->I8(LXe/o;ZI[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B0(LCi/b;I)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LTe/l;->U0(LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/l;
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
            ">(TT;TT;TT;TT;TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B8(LCi/b;LCi/b;LCi/b;LCi/b;LXe/i;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LXe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LTe/l<",
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

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v2, v0, v1}, LTe/l;->I8(LXe/o;ZI[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C0(LCi/b;LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
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

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LTe/l;->G0([LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/l;
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
            ">(TT;TT;TT;TT;TT;TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C6(LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->r6(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C8(LCi/b;LCi/b;LCi/b;LXe/h;)LTe/l;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LXe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LTe/l<",
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

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v2, v0, v1}, LTe/l;->I8(LXe/o;ZI[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D0(LCi/b;LCi/b;LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
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

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LTe/l;->G0([LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D1(Ljava/util/concurrent/Callable;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "Ljava/util/concurrent/Callable<",
            "+",
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/I;

    invoke-direct {v0, p0}, Ldf/I;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/l;
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
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D6(LCi/b;I)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LTe/l;->s6(LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D8(LCi/b;LCi/b;LXe/c;)LTe/l;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LXe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LZe/a;->x(LXe/c;)LXe/o;

    move-result-object p2

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v2, v0, v1}, LTe/l;->I8(LXe/o;ZI[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E0(LCi/b;LCi/b;LCi/b;LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
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

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LTe/l;->G0([LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/l;
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
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    invoke-static {p7, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E6(LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p0, v0}, LTe/l;->F6(LCi/b;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E8(LCi/b;LCi/b;LXe/c;Z)LTe/l;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LXe/c<",
            "-TT1;-TT2;+TR;>;Z)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LZe/a;->x(LXe/c;)LXe/o;

    move-result-object p2

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, p3, v0, v1}, LTe/l;->I8(LXe/o;ZI[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F0(Ljava/lang/Iterable;)LTe/l;
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
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LTe/l;->b1(LXe/o;IZ)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/l;
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
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    invoke-static {p7, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    invoke-static {p8, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F6(LCi/b;I)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LTe/l;->x6(LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F8(LCi/b;LCi/b;LXe/c;ZI)LTe/l;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LXe/c<",
            "-TT1;-TT2;+TR;>;ZI)",
            "LTe/l<",
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

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, p3, p4, v0}, LTe/l;->I8(LXe/o;ZI[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs G0([LCi/b;)LTe/l;
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
            "LCi/b<",
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

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    aget-object p0, p0, v2

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ldf/v;

    invoke-direct {v0, p0, v2}, Ldf/v;-><init>([LCi/b;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static G3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/l;
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
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    invoke-static {p7, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    invoke-static {p8, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item10 is null"

    invoke-static {p9, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static G5(LCi/b;LCi/b;)LTe/K;
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
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
            "+TT;>;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LZe/b;->d()LXe/d;

    move-result-object v0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, LTe/l;->J5(LCi/b;LCi/b;LXe/d;I)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static G8(LCi/b;LXe/o;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    invoke-virtual {p0}, LTe/l;->E7()LTe/K;

    move-result-object p0

    invoke-static {p1}, Ldf/t0;->n(LXe/o;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/K;->g0(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs H0([LCi/b;)LTe/l;
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
            "LCi/b<",
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

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ldf/v;

    invoke-direct {v0, p0, v1}, Ldf/v;-><init>([LCi/b;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static H5(LCi/b;LCi/b;I)LTe/K;
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
            "+TT;>;",
            "LCi/b<",
            "+TT;>;I)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LZe/b;->d()LXe/d;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, LTe/l;->J5(LCi/b;LCi/b;LXe/d;I)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static H8(Ljava/lang/Iterable;LXe/o;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/a2;

    invoke-static {}, LTe/l;->a0()I

    move-result v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Ldf/a2;-><init>([LCi/b;Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs I0(II[LCi/b;)LTe/l;
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
            ">(II[",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p0, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/x;

    new-instance v2, Ldf/h0;

    invoke-direct {v2, p2}, Ldf/h0;-><init>([Ljava/lang/Object;)V

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v3

    sget-object v6, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    move-object v1, v0

    move v4, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Ldf/x;-><init>(LTe/l;LXe/o;IILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static I5(LCi/b;LCi/b;LXe/d;)LTe/K;
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
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LXe/d<",
            "-TT;-TT;>;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, LTe/l;->J5(LCi/b;LCi/b;LXe/d;I)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static varargs I8(LXe/o;ZI[LCi/b;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI[",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    array-length v0, p3

    if-nez v0, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/a2;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Ldf/a2;-><init>([LCi/b;Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs J0([LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-static {v0, v1, p0}, LTe/l;->I0(II[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static J5(LCi/b;LCi/b;LXe/d;I)LTe/K;
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
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LXe/d<",
            "-TT;-TT;>;I)",
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

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/o1;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/o1;-><init>(LCi/b;LCi/b;LXe/d;I)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static J8(Ljava/lang/Iterable;LXe/o;ZI)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/a2;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ldf/a2;-><init>([LCi/b;Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs K0(II[LCi/b;)LTe/l;
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
            ">(II[",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p2

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, p1, v1}, LTe/l;->e1(LXe/o;IIZ)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs L0([LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-static {v0, v1, p0}, LTe/l;->K0(II[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static M0(LCi/b;)LTe/l;
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
            "LCi/b<",
            "+",
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LTe/l;->N0(LCi/b;IZ)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static N0(LCi/b;IZ)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;IZ)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, LTe/l;->b1(LXe/o;IZ)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static O0(Ljava/lang/Iterable;)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->a1(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static O3(LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p0, v0}, LTe/l;->P3(LCi/b;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static P0(LCi/b;)LTe/l;
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
            "LCi/b<",
            "+",
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-static {p0, v0, v1}, LTe/l;->Q0(LCi/b;II)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static P3(LCi/b;I)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LTe/l;->u2(LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static P4(II)LTe/l;
    .locals 4
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
            "(II)",
            "LTe/l<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, LTe/l;->x3(Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v0, p0

    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    new-instance v0, Ldf/U0;

    invoke-direct {v0, p0, p1}, Ldf/U0;-><init>(II)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Q0(LCi/b;II)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;II)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/y;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v3

    sget-object v6, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Ldf/y;-><init>(LCi/b;LXe/o;IILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static Q3(LCi/b;LCi/b;)LTe/l;
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
            "+TT;>;",
            "LCi/b<",
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

    new-array v1, v0, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LTe/l;->D2(LXe/o;ZI)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static Q4(JJ)LTe/l;
    .locals 5
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
            "(JJ)",
            "LTe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, p2, v2

    if-nez v4, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, LTe/l;->x3(Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_1
    sub-long v2, p2, v2

    add-long/2addr v2, p0

    cmp-long v4, p0, v0

    if-lez v4, :cond_3

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    new-instance v0, Ldf/V0;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/V0;-><init>(JJ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "count >= 0 required but it was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static R0(Ljava/lang/Iterable;)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-static {p0, v0, v1}, LTe/l;->S0(Ljava/lang/Iterable;II)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static R3(LCi/b;LCi/b;LCi/b;)LTe/l;
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
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
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

    new-array v1, v0, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v1}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LTe/l;->D2(LXe/o;ZI)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static S0(Ljava/lang/Iterable;II)LTe/l;
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
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;II)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/x;

    new-instance v2, Ldf/k0;

    invoke-direct {v2, p0}, Ldf/k0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v3

    sget-object v6, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    move-object v1, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Ldf/x;-><init>(LTe/l;LXe/o;IILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static S3(LCi/b;LCi/b;LCi/b;LCi/b;)LTe/l;
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
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
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

    new-array v1, v0, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v1}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LTe/l;->D2(LXe/o;ZI)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs T2([Ljava/lang/Object;)LTe/l;
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
            ">([TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "items is null"

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

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/l;->x3(Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ldf/h0;

    invoke-direct {v0, p0}, Ldf/h0;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static T3(Ljava/lang/Iterable;)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->t2(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static T7(LCi/b;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->NONE:LUe/a;
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

    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LTe/l;

    if-nez v0, :cond_0

    new-instance v0, Ldf/m0;

    invoke-direct {v0, p0}, Ldf/m0;-><init>(LCi/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Flowable) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static U2(Ljava/util/concurrent/Callable;)LTe/l;
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
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/i0;

    invoke-direct {v0, p0}, Ldf/i0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static U3(Ljava/lang/Iterable;I)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LTe/l;->u2(LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static V2(Ljava/util/concurrent/Future;)LTe/l;
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
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/j0;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ldf/j0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static V3(Ljava/lang/Iterable;II)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;II)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, LTe/l;->E2(LXe/o;ZII)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static V7(Ljava/util/concurrent/Callable;LXe/o;LXe/g;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "LXe/o<",
            "-TD;+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/g<",
            "-TD;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LTe/l;->W7(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static W2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LTe/l;
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
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/j0;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/j0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs W3(II[LCi/b;)LTe/l;
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
            ">(II[",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p2

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0, p1}, LTe/l;->E2(LXe/o;ZII)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static W7(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "LXe/o<",
            "-TD;+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/g<",
            "-TD;>;Z)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resourceDisposer is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/S1;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/S1;-><init>(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static X2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, LTe/l;->W2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LTe/l;

    move-result-object p0

    invoke-virtual {p0, p4}, LTe/l;->n6(LTe/J;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs X3([LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object v0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v0, v1, p0}, LTe/l;->u2(LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static Y2(Ljava/util/concurrent/Future;LTe/J;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LTe/l;->V2(Ljava/util/concurrent/Future;)LTe/l;

    move-result-object p0

    invoke-virtual {p0, p1}, LTe/l;->n6(LTe/J;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs Y3(II[LCi/b;)LTe/l;
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
            ">(II[",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p2

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p0, p1}, LTe/l;->E2(LXe/o;ZII)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static Z2(Ljava/lang/Iterable;)LTe/l;
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
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/k0;

    invoke-direct {v0, p0}, Ldf/k0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs Z3([LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object v0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    const/4 v2, 0x1

    array-length p0, p0

    invoke-virtual {v0, v1, v2, p0}, LTe/l;->D2(LXe/o;ZI)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static a0()I
    .locals 1

    sget v0, LTe/l;->b:I

    return v0
.end method

.method public static a3(LCi/b;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, LTe/l;

    if-eqz v0, :cond_0

    check-cast p0, LTe/l;

    invoke-static {p0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/m0;

    invoke-direct {v0, p0}, Ldf/m0;-><init>(LCi/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static a4(LCi/b;)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p0, v0}, LTe/l;->b4(LCi/b;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static b3(LXe/g;)LTe/l;
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
            "LXe/g<",
            "LTe/k<",
            "TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, LZe/a;->u()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p0}, Ldf/t0;->j(LXe/g;)LXe/c;

    move-result-object p0

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    invoke-static {v0, p0, v1}, LTe/l;->f3(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static b4(LCi/b;I)LTe/l;
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
            "LCi/b<",
            "+",
            "LCi/b<",
            "+TT;>;>;I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LTe/l;->D2(LXe/o;ZI)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static c3(Ljava/util/concurrent/Callable;LXe/b;)LTe/l;
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
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LXe/b<",
            "TS;",
            "LTe/k<",
            "TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ldf/t0;->i(LXe/b;)LXe/c;

    move-result-object p1

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, LTe/l;->f3(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static c4(LCi/b;LCi/b;)LTe/l;
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
            "+TT;>;",
            "LCi/b<",
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

    new-array v1, v0, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p1

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    invoke-virtual {p1, v1, p0, v0}, LTe/l;->D2(LXe/o;ZI)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static d3(Ljava/util/concurrent/Callable;LXe/b;LXe/g;)LTe/l;
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
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LXe/b<",
            "TS;",
            "LTe/k<",
            "TT;>;>;",
            "LXe/g<",
            "-TS;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ldf/t0;->i(LXe/b;)LXe/c;

    move-result-object p1

    invoke-static {p0, p1, p2}, LTe/l;->f3(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static d4(LCi/b;LCi/b;LCi/b;)LTe/l;
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
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
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

    new-array v1, v0, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-static {v1}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p1

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, LTe/l;->D2(LXe/o;ZI)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Iterable;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ldf/h;-><init>([LCi/b;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static e3(Ljava/util/concurrent/Callable;LXe/c;)LTe/l;
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
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LXe/c<",
            "TS;",
            "LTe/k<",
            "TT;>;TS;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, LTe/l;->f3(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static e4(LCi/b;LCi/b;LCi/b;LCi/b;)LTe/l;
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
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
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

    new-array v1, v0, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    invoke-static {v1}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p1

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, LTe/l;->D2(LXe/o;ZI)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f([LCi/b;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LCi/b<",
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
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ldf/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldf/h;-><init>([LCi/b;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static f3(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)LTe/l;
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
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LXe/c<",
            "TS;",
            "LTe/k<",
            "TT;>;TS;>;",
            "LXe/g<",
            "-TS;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialState is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposeState is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/n0;

    invoke-direct {v0, p0, p1, p2}, Ldf/n0;-><init>(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static f4(Ljava/lang/Iterable;)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LTe/l;->C2(LXe/o;Z)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static g0(LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LXe/n;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LCi/b<",
            "+TT5;>;",
            "LCi/b<",
            "+TT6;>;",
            "LCi/b<",
            "+TT7;>;",
            "LCi/b<",
            "+TT8;>;",
            "LCi/b<",
            "+TT9;>;",
            "LXe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LTe/l<",
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

    new-array v0, v0, [LCi/b;

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

    invoke-static {p9, v0}, LTe/l;->o0(LXe/o;[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static g4(Ljava/lang/Iterable;I)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LTe/l;->D2(LXe/o;ZI)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static h0(LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LXe/m;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LCi/b<",
            "+TT5;>;",
            "LCi/b<",
            "+TT6;>;",
            "LCi/b<",
            "+TT7;>;",
            "LCi/b<",
            "+TT8;>;",
            "LXe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LTe/l<",
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

    new-array v0, v0, [LCi/b;

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

    invoke-static {p8, v0}, LTe/l;->o0(LXe/o;[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static h4(Ljava/lang/Iterable;II)LTe/l;
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
            "LCi/b<",
            "+TT;>;>;II)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, LTe/l;->E2(LXe/o;ZII)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static i0(LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LXe/l;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LCi/b<",
            "+TT5;>;",
            "LCi/b<",
            "+TT6;>;",
            "LCi/b<",
            "+TT7;>;",
            "LXe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LTe/l<",
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

    new-array v0, v0, [LCi/b;

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

    invoke-static {p7, v0}, LTe/l;->o0(LXe/o;[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static j0(LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LXe/k;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LCi/b<",
            "+TT5;>;",
            "LCi/b<",
            "+TT6;>;",
            "LXe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LTe/l<",
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

    new-array v0, v0, [LCi/b;

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

    invoke-static {p6, v0}, LTe/l;->o0(LXe/o;[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static k0(LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LXe/j;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LCi/b<",
            "+TT5;>;",
            "LXe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LTe/l<",
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

    new-array v0, v0, [LCi/b;

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

    invoke-static {p5, v0}, LTe/l;->o0(LXe/o;[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static l0(LCi/b;LCi/b;LCi/b;LCi/b;LXe/i;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LXe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LTe/l<",
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

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, LTe/l;->o0(LXe/o;[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static m0(LCi/b;LCi/b;LCi/b;LXe/h;)LTe/l;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LXe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LTe/l<",
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

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, LTe/l;->o0(LXe/o;[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static m2()LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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

    sget-object v0, Ldf/X;->c:LTe/l;

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public static m4()LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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

    sget-object v0, Ldf/J0;->c:LTe/l;

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public static n0(LCi/b;LCi/b;LXe/c;)LTe/l;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LXe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LTe/l<",
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

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, LTe/l;->o0(LXe/o;[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static n2(Ljava/lang/Throwable;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "Ljava/lang/Throwable;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "throwable is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LZe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, LTe/l;->o2(Ljava/util/concurrent/Callable;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs o0(LXe/o;[LCi/b;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p1, p0, v0}, LTe/l;->s0([LCi/b;LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static o2(Ljava/util/concurrent/Callable;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/Y;

    invoke-direct {v0, p0}, Ldf/Y;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static p0(Ljava/lang/Iterable;LXe/o;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, v0}, LTe/l;->q0(Ljava/lang/Iterable;LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static p3(JJLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LTe/l;->q3(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Ljava/lang/Iterable;LXe/o;I)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ldf/u;-><init>(Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static q3(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/u0;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v1, v0

    move-wide v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ldf/u0;-><init>(JJLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static r0([LCi/b;LXe/o;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LCi/b<",
            "+TT;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, v0}, LTe/l;->s0([LCi/b;LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static r3(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, LTe/l;->q3(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static s0([LCi/b;LXe/o;I)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LCi/b<",
            "+TT;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LTe/l<",
            "TR;>;"
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
    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ldf/u;-><init>([LCi/b;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static s3(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LTe/l;->q3(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs t0(LXe/o;I[LCi/b;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I[",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p2, p0, p1}, LTe/l;->y0([LCi/b;LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static t3(JJJJLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 10
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v9

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, LTe/l;->u3(JJJJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public static varargs u0(LXe/o;[LCi/b;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p1, p0, v0}, LTe/l;->y0([LCi/b;LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static u3(JJJJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 16
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    if-nez v6, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v9, v10}, LTe/l;->F1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    add-long v6, p0, v0

    cmp-long v0, p0, v4

    if-lez v0, :cond_2

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "unit is null"

    invoke-static {v9, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {v10, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v11, Ldf/v0;

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-wide/from16 v0, p6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object v0, v11

    move-wide/from16 v1, p0

    move-wide v3, v6

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Ldf/v0;-><init>(JJJJLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v11}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static v0(Ljava/lang/Iterable;LXe/o;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, v0}, LTe/l;->w0(Ljava/lang/Iterable;LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static w0(Ljava/lang/Iterable;LXe/o;I)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/u;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Ldf/u;-><init>(Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static w7(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, LTe/l;->x7(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static w8(LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LXe/n;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LCi/b<",
            "+TT5;>;",
            "LCi/b<",
            "+TT6;>;",
            "LCi/b<",
            "+TT7;>;",
            "LCi/b<",
            "+TT8;>;",
            "LCi/b<",
            "+TT9;>;",
            "LXe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LTe/l<",
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

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    const/16 p0, 0x8

    aput-object p8, v1, p0

    invoke-static {p9, v2, v0, v1}, LTe/l;->I8(LXe/o;ZI[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x0([LCi/b;LXe/o;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LCi/b<",
            "+TT;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, v0}, LTe/l;->y0([LCi/b;LXe/o;I)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x3(Ljava/lang/Object;)LTe/l;
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
            ">(TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/x0;

    invoke-direct {v0, p0}, Ldf/x0;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x7(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 3
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/O1;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/O1;-><init>(JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x8(LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LXe/m;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LCi/b<",
            "+TT5;>;",
            "LCi/b<",
            "+TT6;>;",
            "LCi/b<",
            "+TT7;>;",
            "LCi/b<",
            "+TT8;>;",
            "LXe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LTe/l<",
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

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {p8, v2, v0, v1}, LTe/l;->I8(LXe/o;ZI[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y0([LCi/b;LXe/o;I)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LCi/b<",
            "+TT;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ldf/u;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Ldf/u;-><init>([LCi/b;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y1(LTe/o;LTe/b;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
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
            "LTe/o<",
            "TT;>;",
            "LTe/b;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mode is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/F;

    invoke-direct {v0, p0, p1}, Ldf/F;-><init>(LTe/o;LTe/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y3(Ljava/lang/Object;Ljava/lang/Object;)LTe/l;
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
            ">(TT;TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y8(LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LXe/l;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LCi/b<",
            "+TT5;>;",
            "LCi/b<",
            "+TT6;>;",
            "LCi/b<",
            "+TT7;>;",
            "LXe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LTe/l<",
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

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {p7, v2, v0, v1}, LTe/l;->I8(LXe/o;ZI[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static z3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/l;
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
            ">(TT;TT;TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static z8(LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LCi/b;LXe/k;)LTe/l;
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
            "LCi/b<",
            "+TT1;>;",
            "LCi/b<",
            "+TT2;>;",
            "LCi/b<",
            "+TT3;>;",
            "LCi/b<",
            "+TT4;>;",
            "LCi/b<",
            "+TT5;>;",
            "LCi/b<",
            "+TT6;>;",
            "LXe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LTe/l<",
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

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [LCi/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {p6, v2, v0, v1}, LTe/l;->I8(LXe/o;ZI[LCi/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(LCi/c;)V
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Ldf/l;->b(LCi/b;LCi/c;)V

    return-void
.end method

.method public final A1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/H;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ldf/H;-><init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final A2(LXe/o;LXe/o;Ljava/util/concurrent/Callable;)LTe/l;
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
            "+TR;>;>;",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LCi/b<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LCi/b<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/D0;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/D0;-><init>(LTe/l;LXe/o;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LTe/l;->O3(LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final A4(LXe/g;)LTe/l;
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
            "(",
            "LXe/g<",
            "-TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onDrop is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/N0;

    invoke-direct {v0, p0, p1}, Ldf/N0;-><init>(LTe/l;LXe/g;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final A5(JLjava/util/concurrent/TimeUnit;Z)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LTe/l;->z5(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final A6(LXe/o;)LTe/l;
    .locals 2
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lff/h;-><init>(LTe/l;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final A7(Ljava/util/concurrent/TimeUnit;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LTe/l;->B7(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final B(LXe/g;)V
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, LZe/a;->f:LXe/g;

    sget-object v1, LZe/a;->c:LXe/a;

    invoke-static {p0, p1, v0, v1}, Ldf/l;->c(LCi/b;LXe/g;LXe/g;LXe/a;)V

    return-void
.end method

.method public final B1(LXe/o;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
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
            "LCi/b<",
            "TU;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "debounceIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/G;

    invoke-direct {v0, p0, p1}, Ldf/G;-><init>(LTe/l;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final B2(LXe/o;LXe/o;Ljava/util/concurrent/Callable;I)LTe/l;
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
            "+TR;>;>;",
            "LXe/o<",
            "Ljava/lang/Throwable;",
            "+",
            "LCi/b<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LCi/b<",
            "+TR;>;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/D0;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/D0;-><init>(LTe/l;LXe/o;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0, p4}, LTe/l;->P3(LCi/b;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final B4()LTe/l;
    .locals 1
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
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/P0;

    invoke-direct {v0, p0}, Ldf/P0;-><init>(LTe/l;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final B5(LCi/b;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/i1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ldf/i1;-><init>(LCi/b;LCi/b;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final B6(LXe/o;)LTe/l;
    .locals 2
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lff/h;-><init>(LTe/l;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final B7(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/l<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, LZe/a;->w(Ljava/util/concurrent/TimeUnit;LTe/J;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->M3(LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final C(LXe/g;I)V
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-TT;>;I)V"
        }
    .end annotation

    sget-object v0, LZe/a;->f:LXe/g;

    sget-object v1, LZe/a;->c:LXe/a;

    invoke-static {p0, p1, v0, v1, p2}, Ldf/l;->d(LCi/b;LXe/g;LXe/g;LXe/a;I)V

    return-void
.end method

.method public final C1(Ljava/lang/Object;)LTe/l;
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
            "(TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LTe/l;->x3(Ljava/lang/Object;)LTe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->q6(LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final C2(LXe/o;Z)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;Z)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, LTe/l;->E2(LXe/o;ZII)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final C4(LCi/b;)LTe/l;
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
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->n(Ljava/lang/Object;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->D4(LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final C5(LCi/b;Z)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
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
            "TU;>;Z)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/i1;

    invoke-direct {v0, p0, p1, p2}, Ldf/i1;-><init>(LCi/b;LCi/b;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final C7(LXe/o;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;TR;>;)TR;"
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

.method public final D(LXe/g;LXe/g;)V
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
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
            ">;)V"
        }
    .end annotation

    sget-object v0, LZe/a;->c:LXe/a;

    invoke-static {p0, p1, p2, v0}, Ldf/l;->c(LCi/b;LXe/g;LXe/g;LXe/a;)V

    return-void
.end method

.method public final D2(LXe/o;ZI)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;ZI)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/l;->E2(LXe/o;ZII)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final D4(LXe/o;)LTe/l;
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
            "(",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LCi/b<",
            "+TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/Q0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ldf/Q0;-><init>(LTe/l;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final D5(LXe/c;)LTe/l;
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
            "LXe/c<",
            "TT;TT;TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "accumulator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/l1;

    invoke-direct {v0, p0, p1}, Ldf/l1;-><init>(LTe/l;LXe/c;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final D7()Ljava/util/concurrent/Future;
    .locals 1
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
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Llf/j;

    invoke-direct {v0}, Llf/j;-><init>()V

    invoke-virtual {p0, v0}, LTe/l;->p6(LCi/c;)LCi/c;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final E(LXe/g;LXe/g;I)V
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
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
            ">;I)V"
        }
    .end annotation

    sget-object v0, LZe/a;->c:LXe/a;

    invoke-static {p0, p1, p2, v0, p3}, Ldf/l;->d(LCi/b;LXe/g;LXe/g;LXe/a;I)V

    return-void
.end method

.method public final E1(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/l;->G1(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final E2(LXe/o;ZII)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;ZII)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, LZe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, Laf/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, Laf/m;

    invoke-interface {p2}, Laf/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Ldf/k1;->a(Ljava/lang/Object;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v6, Ldf/a0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ldf/a0;-><init>(LTe/l;LXe/o;ZII)V

    invoke-static {v6}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final E4(LXe/o;)LTe/l;
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
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/R0;

    invoke-direct {v0, p0, p1}, Ldf/R0;-><init>(LTe/l;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final E5(Ljava/lang/Object;LXe/c;)LTe/l;
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
            ">(TR;",
            "LXe/c<",
            "TR;-TT;TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LTe/l;->F5(Ljava/util/concurrent/Callable;LXe/c;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final E7()LTe/K;
    .locals 1
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
            "()",
            "LTe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ldf/Q1;

    invoke-direct {v0, p0}, Ldf/Q1;-><init>(LTe/l;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final F(LXe/g;LXe/g;LXe/a;)V
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
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
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ldf/l;->c(LCi/b;LXe/g;LXe/g;LXe/a;)V

    return-void
.end method

.method public final F1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/l;->G1(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final F2(LXe/o;)LTe/c;
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
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, LTe/l;->G2(LXe/o;ZI)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final F4(Ljava/lang/Object;)LTe/l;
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
            "(TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->n(Ljava/lang/Object;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->E4(LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final F5(Ljava/util/concurrent/Callable;LXe/c;)LTe/l;
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
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LXe/c<",
            "TR;-TT;TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "accumulator is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/m1;

    invoke-direct {v0, p0, p1, p2}, Ldf/m1;-><init>(LTe/l;Ljava/util/concurrent/Callable;LXe/c;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final F7(I)LTe/K;
    .locals 1
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
            "(I)",
            "LTe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/Q1;

    invoke-static {p1}, LZe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ldf/Q1;-><init>(LTe/l;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final G(LXe/g;LXe/g;LXe/a;I)V
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
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
            "I)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Ldf/l;->d(LCi/b;LXe/g;LXe/g;LXe/a;I)V

    return-void
.end method

.method public final G1(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/J;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Ldf/J;-><init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final G2(LXe/o;ZI)LTe/c;
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
            "(",
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;ZI)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/c0;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/c0;-><init>(LTe/l;LXe/o;ZI)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final G4(LCi/b;)LTe/l;
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
            "(",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/Q0;

    invoke-static {p1}, LZe/a;->n(Ljava/lang/Object;)LXe/o;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ldf/Q0;-><init>(LTe/l;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final G6(J)LTe/l;
    .locals 3
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
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

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ldf/B1;

    invoke-direct {v0, p0, p1, p2}, Ldf/B1;-><init>(LTe/l;J)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final G7(Ljava/util/concurrent/Callable;)LTe/K;
    .locals 1
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
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LTe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "collectionSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/Q1;

    invoke-direct {v0, p0, p1}, Ldf/Q1;-><init>(LTe/l;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final H(I)LTe/l;
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
            "(I)",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LTe/l;->I(II)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final H1(JLjava/util/concurrent/TimeUnit;Z)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LTe/l;->G1(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final H2(LXe/o;)LTe/l;
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

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LTe/l;->I2(LXe/o;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final H3(Ljava/lang/Object;)LTe/K;
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
            "(TT;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/z0;

    invoke-direct {v0, p0, p1}, Ldf/z0;-><init>(LCi/b;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final H4()LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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

    new-instance v0, Ldf/M;

    invoke-direct {v0, p0}, Ldf/M;-><init>(LTe/l;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final H6(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LTe/l;->w7(JLjava/util/concurrent/TimeUnit;)LTe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->S6(LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final H7(LXe/o;)LTe/K;
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
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;)",
            "LTe/K<",
            "Ljava/util/Map<",
            "TK;TT;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1}, LZe/a;->F(LXe/o;)LXe/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LTe/l;->e0(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final I(II)LTe/l;
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
            "(II)",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->J(IILjava/util/concurrent/Callable;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final I1(LCi/b;LXe/o;)LTe/l;
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
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TU;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TV;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LTe/l;->M1(LCi/b;)LTe/l;

    move-result-object p1

    invoke-virtual {p1, p2}, LTe/l;->J1(LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final I2(LXe/o;I)LTe/l;
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
            "+TU;>;>;I)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/g0;

    invoke-direct {v0, p0, p1, p2}, Ldf/g0;-><init>(LTe/l;LXe/o;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final I3()LTe/s;
    .locals 1
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
            "()",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/y0;

    invoke-direct {v0, p0}, Ldf/y0;-><init>(LCi/b;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final I4()Lpf/b;
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
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lpf/b;->y(LCi/b;)Lpf/b;

    move-result-object v0

    return-object v0
.end method

.method public final I6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LTe/l;->x7(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->S6(LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final I7(LXe/o;LXe/o;)LTe/K;
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
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;",
            "LXe/o<",
            "-TT;+TV;>;)",
            "LTe/K<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1, p2}, LZe/a;->G(LXe/o;LXe/o;)LXe/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LTe/l;->e0(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final J(IILjava/util/concurrent/Callable;)LTe/l;
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
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "skip"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "bufferSupplier is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/m;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/m;-><init>(LTe/l;IILjava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final J1(LXe/o;)LTe/l;
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
            "LCi/b<",
            "TU;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemDelayIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ldf/t0;->c(LXe/o;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->t2(LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final J2(LXe/o;LXe/c;)LTe/l;
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
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TV;>;)",
            "LTe/l<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ldf/t0;->a(LXe/o;)LXe/o;

    move-result-object v2

    invoke-static {}, LTe/l;->a0()I

    move-result v5

    invoke-static {}, LTe/l;->a0()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, LTe/l;->z2(LXe/o;LXe/c;ZII)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final J3()LTe/K;
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
            "()",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/z0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldf/z0;-><init>(LCi/b;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final J4(I)Lpf/b;
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
            "(I)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "parallelism"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p1}, Lpf/b;->z(LCi/b;I)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final J6(I)LTe/l;
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
            "(I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    new-instance p1, Ldf/r0;

    invoke-direct {p1, p0}, Ldf/r0;-><init>(LTe/l;)V

    invoke-static {p1}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Ldf/D1;

    invoke-direct {p1, p0}, Ldf/D1;-><init>(LTe/l;)V

    invoke-static {p1}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ldf/C1;

    invoke-direct {v0, p0, p1}, Ldf/C1;-><init>(LTe/l;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final J7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;)LTe/K;
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
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;",
            "LXe/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "LTe/K<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, LZe/a;->G(LXe/o;LXe/o;)LXe/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, LTe/l;->e0(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final K(ILjava/util/concurrent/Callable;)LTe/l;
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
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p2}, LTe/l;->J(IILjava/util/concurrent/Callable;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final K1(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/l;->L1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final K2(LXe/o;LXe/c;I)LTe/l;
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
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TV;>;I)",
            "LTe/l<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ldf/t0;->a(LXe/o;)LXe/o;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v5

    move-object v1, p0

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, LTe/l;->z2(LXe/o;LXe/c;ZII)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final K3(LTe/p;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
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
            "LTe/p<",
            "+TR;-TT;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lifter is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/A0;

    invoke-direct {v0, p0, p1}, Ldf/A0;-><init>(LTe/l;LTe/p;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final K4(II)Lpf/b;
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
            "(II)",
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "parallelism"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p1, p2}, Lpf/b;->A(LCi/b;II)Lpf/b;

    move-result-object p1

    return-object p1
.end method

.method public final K5()LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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

    new-instance v0, Ldf/p1;

    invoke-direct {v0, p0}, Ldf/p1;-><init>(LTe/l;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final K6(JJLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 9
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
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, LTe/l;->M6(JJLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final K7(LXe/o;)LTe/K;
    .locals 3
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
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;)",
            "LTe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/util/b;->c()LXe/o;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, LTe/l;->N7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final K8(LCi/b;LXe/c;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2}, LTe/l;->D8(LCi/b;LCi/b;LXe/c;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L(JJLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v6

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, LTe/l;->N(JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LTe/l;->x7(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->M1(LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L2(LXe/o;)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, LTe/l;->M2(LXe/o;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L3(J)LTe/l;
    .locals 3
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
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

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ldf/B0;

    invoke-direct {v0, p0, p1, p2}, Ldf/B0;-><init>(LTe/l;J)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L4(LXe/o;)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LTe/l;->M4(LXe/o;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L5()LTe/l;
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

    invoke-virtual {p0}, LTe/l;->N4()LWe/a;

    move-result-object v0

    invoke-virtual {v0}, LWe/a;->T8()LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final L6(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 9
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, LTe/l;->M6(JJLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L7(LXe/o;LXe/o;)LTe/K;
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
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;",
            "LXe/o<",
            "-TT;+TV;>;)",
            "LTe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/util/b;->c()LXe/o;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, LTe/l;->N7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final L8(LCi/b;LXe/c;Z)LTe/l;
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
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;Z)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, LTe/l;->E8(LCi/b;LCi/b;LXe/c;Z)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, LTe/l;->N(JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M1(LCi/b;)LTe/l;
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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/K;

    invoke-direct {v0, p0, p1}, Ldf/K;-><init>(LCi/b;LCi/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M2(LXe/o;ZI)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;ZI)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/d0;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/d0;-><init>(LTe/l;LXe/o;ZI)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M3(LXe/o;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "-TT;+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/C0;

    invoke-direct {v0, p0, p1}, Ldf/C0;-><init>(LTe/l;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M4(LXe/o;I)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "+TR;>;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/T0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ldf/T0;-><init>(LTe/l;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M5(Ljava/lang/Object;)LTe/K;
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
            "(TT;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/s1;

    invoke-direct {v0, p0, p1}, Ldf/s1;-><init>(LTe/l;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final M6(JJLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;
    .locals 11
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "ZI)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    move-wide v2, p1

    const-string v0, "unit is null"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    move/from16 v8, p8

    invoke-static {v8, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    new-instance v10, Ldf/E1;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Ldf/E1;-><init>(LTe/l;JJLjava/util/concurrent/TimeUnit;LTe/J;IZ)V

    invoke-static {v10}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final M7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;)LTe/K;
    .locals 1
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
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;",
            "LXe/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)",
            "LTe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->c()LXe/o;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/l;->N7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final M8(LCi/b;LXe/c;ZI)LTe/l;
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
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;ZI)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, LTe/l;->F8(LCi/b;LCi/b;LXe/c;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final N(JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;)LTe/l;
    .locals 12
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/q;

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v11}, Ldf/q;-><init>(LTe/l;JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final N1()LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">()",
            "LTe/l<",
            "TT2;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ldf/L;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldf/L;-><init>(LTe/l;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final N2(LXe/o;)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, LTe/l;->O2(LXe/o;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final N3()LTe/l;
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
            "LTe/A<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ldf/F0;

    invoke-direct {v0, p0}, Ldf/F0;-><init>(LTe/l;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final N4()LWe/a;
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
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, v0}, LTe/l;->O4(I)LWe/a;

    move-result-object v0

    return-object v0
.end method

.method public final N5()LTe/s;
    .locals 1
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
            "()",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/r1;

    invoke-direct {v0, p0}, Ldf/r1;-><init>(LTe/l;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final N6(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, LTe/l;->Q6(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final N7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;LXe/o;)LTe/K;
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
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;",
            "LXe/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;",
            "LXe/o<",
            "-TK;+",
            "Ljava/util/Collection<",
            "-TV;>;>;)",
            "LTe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionFactory is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2, p4}, LZe/a;->H(LXe/o;LXe/o;LXe/o;)LXe/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, LTe/l;->e0(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final N8(Ljava/lang/Iterable;LXe/c;)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/b2;

    invoke-direct {v0, p0, p1, p2}, Ldf/b2;-><init>(LTe/l;Ljava/lang/Iterable;LXe/c;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/l;->R(JLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O1(LXe/o;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/L;

    invoke-direct {v0, p0, p1}, Ldf/L;-><init>(LTe/l;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O2(LXe/o;ZI)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;ZI)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/f0;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/f0;-><init>(LTe/l;LXe/o;ZI)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O4(I)LWe/a;
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
            "(I)",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p1}, Ldf/S0;->Z8(LTe/l;I)LWe/a;

    move-result-object p1

    return-object p1
.end method

.method public final O5()LTe/K;
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
            "()",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/s1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldf/s1;-><init>(LTe/l;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final O6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, LTe/l;->Q6(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O7()LTe/B;
    .locals 1
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
            "()",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lgf/h0;

    invoke-direct {v0, p0}, Lgf/h0;-><init>(LCi/b;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final P(JLjava/util/concurrent/TimeUnit;I)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LTe/l;->R(JLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final P1()LTe/l;
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

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-static {}, LZe/a;->g()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LTe/l;->R1(LXe/o;Ljava/util/concurrent/Callable;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final P2(LXe/g;)LVe/c;
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->NONE:LUe/a;
    .end annotation

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

    invoke-virtual {p0, p1}, LTe/l;->h6(LXe/g;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final P5(J)LTe/l;
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
            "(J)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ldf/t1;

    invoke-direct {v0, p0, p1, p2}, Ldf/t1;-><init>(LTe/l;J)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final P6(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "Z)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, LTe/l;->Q6(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final P7()LTe/K;
    .locals 1
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
            "()",
            "LTe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->p()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->R7(Ljava/util/Comparator;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final Q(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v6

    const/4 v7, 0x0

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, LTe/l;->S(JLjava/util/concurrent/TimeUnit;LTe/J;ILjava/util/concurrent/Callable;Z)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Q1(LXe/o;)LTe/l;
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
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;TK;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->g()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LTe/l;->R1(LXe/o;Ljava/util/concurrent/Callable;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Q2(LXe/r;)LVe/c;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->NONE:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/r<",
            "-TT;>;)",
            "LVe/c;"
        }
    .end annotation

    sget-object v0, LZe/a;->f:LXe/g;

    sget-object v1, LZe/a;->c:LXe/a;

    invoke-virtual {p0, p1, v0, v1}, LTe/l;->S2(LXe/r;LXe/g;LXe/a;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final Q5(JLjava/util/concurrent/TimeUnit;)LTe/l;
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
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LTe/l;->w7(JLjava/util/concurrent/TimeUnit;)LTe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->Y5(LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Q6(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;
    .locals 9
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "ZI)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide v1, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, LTe/l;->M6(JJLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Q7(I)LTe/K;
    .locals 1
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
            "(I)",
            "LTe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->p()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LTe/l;->S7(Ljava/util/Comparator;I)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final R(JLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "I)",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, LTe/l;->S(JLjava/util/concurrent/TimeUnit;LTe/J;ILjava/util/concurrent/Callable;Z)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R1(LXe/o;Ljava/util/concurrent/Callable;)LTe/l;
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
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;TK;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Collection<",
            "-TK;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionSupplier is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/N;

    invoke-direct {v0, p0, p1, p2}, Ldf/N;-><init>(LTe/l;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R2(LXe/r;LXe/g;)LVe/c;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->NONE:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/r<",
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LVe/c;"
        }
    .end annotation

    sget-object v0, LZe/a;->c:LXe/a;

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->S2(LXe/r;LXe/g;LXe/a;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final R4(I)LTe/l;
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
            "(I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lkf/e;->c:LTe/J;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LTe/l;->p4(LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R5(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LTe/l;->x7(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->Y5(LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R6(JLjava/util/concurrent/TimeUnit;Z)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    invoke-static {}, LTe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, LTe/l;->Q6(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R7(Ljava/util/Comparator;)LTe/K;
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
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "LTe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LTe/l;->E7()LTe/K;

    move-result-object v0

    invoke-static {p1}, LZe/a;->o(Ljava/util/Comparator;)LXe/o;

    move-result-object p1

    invoke-virtual {v0, p1}, LTe/K;->u0(LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final S(JLjava/util/concurrent/TimeUnit;LTe/J;ILjava/util/concurrent/Callable;Z)LTe/l;
    .locals 12
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;Z)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object v7, p3

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move/from16 v10, p5

    invoke-static {v10, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/q;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Ldf/q;-><init>(LTe/l;JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final S1()LTe/l;
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

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->U1(LXe/o;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final S2(LXe/r;LXe/g;LXe/a;)LVe/c;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->NONE:LUe/a;
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
            "LXe/r<",
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

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Llf/i;

    invoke-direct {v0, p1, p2, p3}, Llf/i;-><init>(LXe/r;LXe/g;LXe/a;)V

    invoke-virtual {p0, v0}, LTe/l;->l6(LTe/q;)V

    return-object v0
.end method

.method public final S4(LXe/c;)LTe/s;
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
            "(",
            "LXe/c<",
            "TT;TT;TT;>;)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reducer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/X0;

    invoke-direct {v0, p0, p1}, Ldf/X0;-><init>(LTe/l;LXe/c;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final S5(I)LTe/l;
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
            "(I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    invoke-static {p0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ldf/u1;

    invoke-direct {v0, p0, p1}, Ldf/u1;-><init>(LTe/l;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final S6(LCi/b;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/G1;

    invoke-direct {v0, p0, p1}, Ldf/G1;-><init>(LTe/l;LCi/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final S7(Ljava/util/Comparator;I)LTe/K;
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
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "LTe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, LTe/l;->F7(I)LTe/K;

    move-result-object p2

    invoke-static {p1}, LZe/a;->o(Ljava/util/Comparator;)LXe/o;

    move-result-object p1

    invoke-virtual {p2, p1}, LTe/K;->u0(LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final T(LCi/b;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TB;>;)",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LTe/l;->V(LCi/b;Ljava/util/concurrent/Callable;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T0(LXe/o;)LTe/l;
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

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LTe/l;->U0(LXe/o;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T1(LXe/d;)LTe/l;
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
            "(",
            "LXe/d<",
            "-TT;-TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/O;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Ldf/O;-><init>(LTe/l;LXe/o;LXe/d;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T4(Ljava/lang/Object;LXe/c;)LTe/K;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LXe/c<",
            "TR;-TT;TR;>;)",
            "LTe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seed is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/Y0;

    invoke-direct {v0, p0, p1, p2}, Ldf/Y0;-><init>(LCi/b;Ljava/lang/Object;LXe/c;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final T5(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 7
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
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, LTe/l;->W5(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T6(LXe/r;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LXe/r<",
            "-TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stopPredicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/H1;

    invoke-direct {v0, p0, p1}, Ldf/H1;-><init>(LTe/l;LXe/r;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U(LCi/b;I)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TB;>;I)",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p2}, LZe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LTe/l;->V(LCi/b;Ljava/util/concurrent/Callable;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U0(LXe/o;I)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, Laf/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, Laf/m;

    invoke-interface {p2}, Laf/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Ldf/k1;->a(Ljava/lang/Object;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ldf/w;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, p2, v1}, Ldf/w;-><init>(LTe/l;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U1(LXe/o;)LTe/l;
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
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;TK;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/O;

    invoke-static {}, LZe/b;->d()LXe/d;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Ldf/O;-><init>(LTe/l;LXe/o;LXe/d;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U4(Ljava/util/concurrent/Callable;LXe/c;)LTe/K;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LXe/c<",
            "TR;-TT;TR;>;)",
            "LTe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/Z0;

    invoke-direct {v0, p0, p1, p2}, Ldf/Z0;-><init>(LCi/b;Ljava/util/concurrent/Callable;LXe/c;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final U5(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, LTe/l;->W5(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U6(LXe/r;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LXe/r<",
            "-TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/I1;

    invoke-direct {v0, p0, p1}, Ldf/I1;-><init>(LTe/l;LXe/r;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U7(LTe/J;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/R1;

    invoke-direct {v0, p0, p1}, Ldf/R1;-><init>(LTe/l;LTe/J;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final V(LCi/b;Ljava/util/concurrent/Callable;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "LCi/b<",
            "TB;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundaryIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/p;

    invoke-direct {v0, p0, p1, p2}, Ldf/p;-><init>(LTe/l;LCi/b;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final V0(LXe/o;)LTe/c;
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
            "-TT;+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LTe/l;->W0(LXe/o;I)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final V1(LXe/g;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/P;

    invoke-direct {v0, p0, p1}, Ldf/P;-><init>(LTe/l;LXe/g;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final V4()LTe/l;
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

    invoke-virtual {p0, v0, v1}, LTe/l;->W4(J)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final V5(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
    .end annotation

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
            "Z)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, LTe/l;->W5(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final V6()Luf/f;
    .locals 1
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
            "()",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Luf/f;

    invoke-direct {v0}, Luf/f;-><init>()V

    invoke-virtual {p0, v0}, LTe/l;->l6(LTe/q;)V

    return-object v0
.end method

.method public final W(LTe/l;LXe/o;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/l<",
            "+TTOpening;>;",
            "LXe/o<",
            "-TTOpening;+",
            "LCi/b<",
            "+TTClosing;>;>;)",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->X(LTe/l;LXe/o;Ljava/util/concurrent/Callable;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final W0(LXe/o;I)LTe/c;
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
            "(",
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;I)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lff/c;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, Lff/c;-><init>(LTe/l;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final W1(LXe/a;)LTe/l;
    .locals 3
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/a;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    sget-object v2, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, v1, v2, p1}, LTe/l;->c2(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final W4(J)LTe/l;
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
            "(J)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ldf/b1;

    invoke-direct {v0, p0, p1, p2}, Ldf/b1;-><init>(LTe/l;J)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final W5(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;
    .locals 9
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
    .end annotation

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
            "ZI)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p6, v0}, LZe/b;->h(ILjava/lang/String;)I

    shl-int/lit8 v7, p6, 0x1

    new-instance p6, Ldf/v1;

    move-object v1, p6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Ldf/v1;-><init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;IZ)V

    invoke-static {p6}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final W6(J)Luf/f;
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
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Luf/f;

    invoke-direct {v0, p1, p2}, Luf/f;-><init>(J)V

    invoke-virtual {p0, v0}, LTe/l;->l6(LTe/q;)V

    return-object v0
.end method

.method public final X(LTe/l;LXe/o;Ljava/util/concurrent/Callable;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "LTe/l<",
            "+TTOpening;>;",
            "LXe/o<",
            "-TTOpening;+",
            "LCi/b<",
            "+TTClosing;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/n;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/n;-><init>(LTe/l;LCi/b;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final X0(LXe/o;)LTe/c;
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
            "(",
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LTe/l;->Z0(LXe/o;ZI)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final X1(LXe/a;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/a;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/Q;

    invoke-direct {v0, p0, p1}, Ldf/Q;-><init>(LTe/l;LXe/a;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final X4(LXe/e;)LTe/l;
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
            "LXe/e;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/c1;

    invoke-direct {v0, p0, p1}, Ldf/c1;-><init>(LTe/l;LXe/e;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final X5(JLjava/util/concurrent/TimeUnit;Z)LTe/l;
    .locals 7
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
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    invoke-static {}, LTe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, LTe/l;->W5(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final X6(JZ)Luf/f;
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
            "(JZ)",
            "Luf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Luf/f;

    invoke-direct {v0, p1, p2}, Luf/f;-><init>(J)V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Luf/f;->cancel()V

    :cond_0
    invoke-virtual {p0, v0}, LTe/l;->l6(LTe/q;)V

    return-object v0
.end method

.method public final X7(J)LTe/l;
    .locals 6
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
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, LTe/l;->Z7(JJI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y(Ljava/util/concurrent/Callable;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LCi/b<",
            "TB;>;>;)",
            "LTe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LTe/l;->Z(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(LXe/o;Z)LTe/c;
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
            "-TT;+",
            "LTe/i;",
            ">;Z)",
            "LTe/c;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->Z0(LXe/o;ZI)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final Y1(LXe/a;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/a;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    sget-object v1, LZe/a;->g:LXe/q;

    invoke-virtual {p0, v0, v1, p1}, LTe/l;->e2(LXe/g;LXe/q;LXe/a;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y4(LXe/o;)LTe/l;
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

    const-string v0, "handler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/d1;

    invoke-direct {v0, p0, p1}, Ldf/d1;-><init>(LTe/l;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y5(LCi/b;)LTe/l;
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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/w1;

    invoke-direct {v0, p0, p1}, Ldf/w1;-><init>(LTe/l;LCi/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y6(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/l;->Z6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y7(JJ)LTe/l;
    .locals 6
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
            "(JJ)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/l;->Z7(JJI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LCi/b<",
            "TB;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundaryIndicatorSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/o;

    invoke-direct {v0, p0, p1, p2}, Ldf/o;-><init>(LTe/l;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z0(LXe/o;ZI)LTe/c;
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
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;ZI)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lff/c;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lff/c;-><init>(LTe/l;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final Z1(LXe/a;)LTe/l;
    .locals 3
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/a;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    sget-object v2, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LTe/l;->c2(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z4(LXe/o;)LTe/l;
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
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Ldf/t0;->d(LTe/l;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0, p1}, Ldf/e1;->e9(Ljava/util/concurrent/Callable;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z5(LXe/r;)LTe/l;
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
            "LXe/r<",
            "-TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/x1;

    invoke-direct {v0, p0, p1}, Ldf/x1;-><init>(LTe/l;LXe/r;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/J1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ldf/J1;-><init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z7(JJI)LTe/l;
    .locals 8
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
            "(JJI)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "skip"

    invoke-static {p3, p4, v0}, LZe/b;->i(JLjava/lang/String;)J

    const-string v0, "count"

    invoke-static {p1, p2, v0}, LZe/b;->i(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    invoke-static {p5, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/T1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Ldf/T1;-><init>(LTe/l;JJI)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final a1(LXe/o;)LTe/l;
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

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, LTe/l;->b1(LXe/o;IZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final a2(LCi/c;)LTe/l;
    .locals 3
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LCi/c<",
            "-TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriber is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ldf/t0;->m(LCi/c;)LXe/g;

    move-result-object v0

    invoke-static {p1}, Ldf/t0;->l(LCi/c;)LXe/g;

    move-result-object v1

    invoke-static {p1}, Ldf/t0;->k(LCi/c;)LXe/a;

    move-result-object p1

    sget-object v2, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LTe/l;->c2(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final a5(LXe/o;I)LTe/l;
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
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "TR;>;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p2}, Ldf/t0;->e(LTe/l;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Ldf/e1;->e9(Ljava/util/concurrent/Callable;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final a6()LTe/l;
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

    invoke-virtual {p0}, LTe/l;->E7()LTe/K;

    move-result-object v0

    invoke-virtual {v0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-static {}, LZe/a;->p()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, LZe/a;->o(Ljava/util/Comparator;)LXe/o;

    move-result-object v1

    invoke-virtual {v0, v1}, LTe/l;->M3(LXe/o;)LTe/l;

    move-result-object v0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    invoke-virtual {v0, v1}, LTe/l;->H2(LXe/o;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final a7(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LTe/l;->x5(JLjava/util/concurrent/TimeUnit;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final a8(JJLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v6

    invoke-static {}, LTe/l;->a0()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, LTe/l;->c8(JJLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b(LXe/r;)LTe/K;
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
            "(",
            "LXe/r<",
            "-TT;>;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/g;

    invoke-direct {v0, p0, p1}, Ldf/g;-><init>(LTe/l;LXe/r;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final b0()LTe/l;
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

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, LTe/l;->c0(I)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final b1(LXe/o;IZ)LTe/l;
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
            "+TR;>;>;IZ)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, Laf/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, Laf/m;

    invoke-interface {p2}, Laf/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Ldf/k1;->a(Ljava/lang/Object;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ldf/w;

    if-eqz p3, :cond_2

    sget-object p3, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_2
    sget-object p3, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Ldf/w;-><init>(LTe/l;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b2(LXe/g;)LTe/l;
    .locals 3
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LXe/g<",
            "-",
            "LTe/A<",
            "TT;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNotification is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->t(LXe/g;)LXe/g;

    move-result-object v0

    invoke-static {p1}, LZe/a;->s(LXe/g;)LXe/g;

    move-result-object v1

    invoke-static {p1}, LZe/a;->r(LXe/g;)LXe/a;

    move-result-object p1

    sget-object v2, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LTe/l;->c2(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b5(LXe/o;IJLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, LTe/l;->c5(LXe/o;IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b6(Ljava/util/Comparator;)LTe/l;
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
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sortFunction"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LTe/l;->E7()LTe/K;

    move-result-object v0

    invoke-virtual {v0}, LTe/K;->u1()LTe/l;

    move-result-object v0

    invoke-static {p1}, LZe/a;->o(Ljava/util/Comparator;)LXe/o;

    move-result-object p1

    invoke-virtual {v0, p1}, LTe/l;->M3(LXe/o;)LTe/l;

    move-result-object p1

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p1, v0}, LTe/l;->H2(LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b7(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LTe/l;->y5(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b8(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, LTe/l;->c8(JJLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c0(I)LTe/l;
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
            "(I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/r;

    invoke-direct {v0, p0, p1}, Ldf/r;-><init>(LTe/l;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c1(LXe/o;)LTe/l;
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

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LTe/l;->d1(LXe/o;II)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c2(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LXe/g<",
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LXe/a;",
            "LXe/a;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/S;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ldf/S;-><init>(LTe/l;LXe/g;LXe/g;LXe/a;LXe/a;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c5(LXe/o;IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    invoke-static {p6, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Ldf/t0;->f(LTe/l;IJLjava/util/concurrent/TimeUnit;LTe/J;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Ldf/e1;->e9(Ljava/util/concurrent/Callable;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c6(LCi/b;)LTe/l;
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
            "(",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LTe/l;->G0([LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c7(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/l;->e7(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c8(JJLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/l;
    .locals 13
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "I)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    move/from16 v11, p7

    invoke-static {v11, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "timespan"

    move-wide v3, p1

    invoke-static {p1, p2, v0}, LZe/b;->i(JLjava/lang/String;)J

    const-string v0, "timeskip"

    move-wide/from16 v5, p3

    invoke-static {v5, v6, v0}, LZe/b;->i(JLjava/lang/String;)J

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/X1;

    const-wide v9, 0x7fffffffffffffffL

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Ldf/X1;-><init>(LTe/l;JJLjava/util/concurrent/TimeUnit;LTe/J;JIZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final d0(Ljava/lang/Class;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "Ljava/lang/Class<",
            "TU;>;)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->e(Ljava/lang/Class;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->M3(LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d1(LXe/o;II)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;II)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/x;

    sget-object v6, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Ldf/x;-><init>(LTe/l;LXe/o;IILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d2(LXe/g;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    sget-object v1, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, p1, v1, v1}, LTe/l;->c2(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d5(LXe/o;ILTe/J;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "TR;>;>;I",
            "LTe/J;",
            ")",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p2}, Ldf/t0;->e(LTe/l;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p1, p3}, Ldf/t0;->h(LXe/o;LTe/J;)LXe/o;

    move-result-object p1

    invoke-static {p2, p1}, Ldf/e1;->e9(Ljava/util/concurrent/Callable;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d6(Ljava/lang/Iterable;)LTe/l;
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
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LTe/l;->Z2(Ljava/lang/Iterable;)LTe/l;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LTe/l;->G0([LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d7(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/l;->e7(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d8(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, LTe/l;->i8(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e0(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;
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
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "LXe/b<",
            "-TU;-TT;>;)",
            "LTe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialItemSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/t;

    invoke-direct {v0, p0, p1, p2}, Ldf/t;-><init>(LTe/l;Ljava/util/concurrent/Callable;LXe/b;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final e1(LXe/o;IIZ)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;IIZ)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/x;

    if-eqz p4, :cond_0

    sget-object p4, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    :goto_0
    move-object v6, p4

    goto :goto_1

    :cond_0
    sget-object p4, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    goto :goto_0

    :goto_1
    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Ldf/x;-><init>(LTe/l;LXe/o;IILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e2(LXe/g;LXe/q;LXe/a;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LXe/g<",
            "-",
            "LCi/d;",
            ">;",
            "LXe/q;",
            "LXe/a;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onRequest is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCancel is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/T;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/T;-><init>(LTe/l;LXe/g;LXe/q;LXe/a;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e5(LXe/o;JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/l;->f5(LXe/o;JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e6(Ljava/lang/Object;)LTe/l;
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
            "(TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "value is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LTe/l;->x3(Ljava/lang/Object;)LTe/l;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LTe/l;->G0([LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e7(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/K1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Ldf/K1;-><init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e8(JLjava/util/concurrent/TimeUnit;J)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "J)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, LTe/l;->i8(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f0(Ljava/lang/Object;LXe/b;)LTe/K;
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
            ">(TU;",
            "LXe/b<",
            "-TU;-TT;>;)",
            "LTe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialItem is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LTe/l;->e0(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final f1(LXe/o;Z)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;Z)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, LTe/l;->e1(LXe/o;IIZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f2(LXe/g;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    sget-object v1, LZe/a;->c:LXe/a;

    invoke-virtual {p0, p1, v0, v1, v1}, LTe/l;->c2(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f5(LXe/o;JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-",
            "LTe/l<",
            "TT;>;+",
            "LCi/b<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p2, p3, p4, p5}, Ldf/t0;->g(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Ldf/e1;->e9(Ljava/util/concurrent/Callable;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final varargs f6([Ljava/lang/Object;)LTe/l;
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
            "([TT;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LTe/l;->T2([Ljava/lang/Object;)LTe/l;

    move-result-object p1

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LTe/l;->G0([LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f7(JLjava/util/concurrent/TimeUnit;Z)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LTe/l;->e7(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f8(JLjava/util/concurrent/TimeUnit;JZ)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "JZ)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, LTe/l;->i8(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g1(LXe/o;)LTe/l;
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

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LTe/l;->h1(LXe/o;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g2(LXe/q;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/q;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    sget-object v1, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, p1, v1}, LTe/l;->e2(LXe/g;LXe/q;LXe/a;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g3(LXe/o;)LTe/l;
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
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;)",
            "LTe/l<",
            "LWe/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, LTe/l;->j3(LXe/o;LXe/o;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g5(LXe/o;LTe/J;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
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
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Ldf/t0;->d(LTe/l;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1, p2}, Ldf/t0;->h(LXe/o;LTe/J;)LXe/o;

    move-result-object p1

    invoke-static {v0, p1}, Ldf/e1;->e9(Ljava/util/concurrent/Callable;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g6()LVe/c;
    .locals 4
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    sget-object v1, LZe/a;->f:LXe/g;

    sget-object v2, LZe/a;->c:LXe/a;

    sget-object v3, Ldf/t0$i;->INSTANCE:Ldf/t0$i;

    invoke-virtual {p0, v0, v1, v2, v3}, LTe/l;->k6(LXe/g;LXe/g;LXe/a;LXe/g;)LVe/c;

    move-result-object v0

    return-object v0
.end method

.method public final g7(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LTe/l;->z1(JLjava/util/concurrent/TimeUnit;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g8(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, LTe/l;->i8(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h1(LXe/o;I)LTe/l;
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
            "+TU;>;>;I)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/g0;

    invoke-direct {v0, p0, p1, p2}, Ldf/g0;-><init>(LTe/l;LXe/o;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h2(LXe/g;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LCi/d;",
            ">;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LZe/a;->g:LXe/q;

    sget-object v1, LZe/a;->c:LXe/a;

    invoke-virtual {p0, p1, v0, v1}, LTe/l;->e2(LXe/g;LXe/q;LXe/a;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h3(LXe/o;LXe/o;)LTe/l;
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
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;",
            "LXe/o<",
            "-TT;+TV;>;)",
            "LTe/l<",
            "LWe/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, LTe/l;->j3(LXe/o;LXe/o;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h5()LWe/a;
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
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Ldf/e1;->d9(LTe/l;)LWe/a;

    move-result-object v0

    return-object v0
.end method

.method public final h6(LXe/g;)LVe/c;
    .locals 3
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
            "LXe/g<",
            "-TT;>;)",
            "LVe/c;"
        }
    .end annotation

    sget-object v0, LZe/a;->f:LXe/g;

    sget-object v1, LZe/a;->c:LXe/a;

    sget-object v2, Ldf/t0$i;->INSTANCE:Ldf/t0$i;

    invoke-virtual {p0, p1, v0, v1, v2}, LTe/l;->k6(LXe/g;LXe/g;LXe/a;LXe/g;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final h7(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LTe/l;->A1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h8(JLjava/util/concurrent/TimeUnit;LTe/J;J)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "J)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, LTe/l;->i8(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i(LCi/b;)LTe/l;
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
            "(",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LTe/l;->f([LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i1(LXe/o;)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LTe/l;->j1(LXe/o;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i2(LXe/a;)LTe/l;
    .locals 3
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/a;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-static {p1}, LZe/a;->a(LXe/a;)LXe/g;

    move-result-object v1

    sget-object v2, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LTe/l;->c2(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i3(LXe/o;LXe/o;Z)LTe/l;
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
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;",
            "LXe/o<",
            "-TT;+TV;>;Z)",
            "LTe/l<",
            "LWe/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/l;->j3(LXe/o;LXe/o;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i4(LCi/b;)LTe/l;
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
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LTe/l;->Q3(LCi/b;LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i5(I)LWe/a;
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
            "(I)",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p1}, Ldf/e1;->Z8(LTe/l;I)LWe/a;

    move-result-object p1

    return-object p1
.end method

.method public final i6(LXe/g;LXe/g;)LVe/c;
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

    sget-object v1, Ldf/t0$i;->INSTANCE:Ldf/t0$i;

    invoke-virtual {p0, p1, p2, v0, v1}, LTe/l;->k6(LXe/g;LXe/g;LXe/a;LXe/g;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final i7()LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LTe/l;->l7(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final i8(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/l;
    .locals 9
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "JZ)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, LTe/l;->j8(JLjava/util/concurrent/TimeUnit;LTe/J;JZI)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final j(LXe/r;)LTe/K;
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
            "(",
            "LXe/r<",
            "-TT;>;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/j;

    invoke-direct {v0, p0, p1}, Ldf/j;-><init>(LTe/l;LXe/r;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final j1(LXe/o;I)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lff/d;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, Lff/d;-><init>(LTe/l;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final j2(J)LTe/s;
    .locals 3
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
            "(J)",
            "LTe/s<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ldf/V;

    invoke-direct {v0, p0, p1, p2}, Ldf/V;-><init>(LTe/l;J)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j3(LXe/o;LXe/o;ZI)LTe/l;
    .locals 8
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
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;",
            "LXe/o<",
            "-TT;+TV;>;ZI)",
            "LTe/l<",
            "LWe/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/o0;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v7}, Ldf/o0;-><init>(LTe/l;LXe/o;LXe/o;IZLXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final j4(LTe/i;)LTe/l;
    .locals 1
    .param p1    # LTe/i;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LTe/i;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/G0;

    invoke-direct {v0, p0, p1}, Ldf/G0;-><init>(LTe/l;LTe/i;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final j5(IJLjava/util/concurrent/TimeUnit;)LWe/a;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/l;->k5(IJLjava/util/concurrent/TimeUnit;LTe/J;)LWe/a;

    move-result-object p1

    return-object p1
.end method

.method public final j6(LXe/g;LXe/g;LXe/a;)LVe/c;
    .locals 1
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

    sget-object v0, Ldf/t0$i;->INSTANCE:Ldf/t0$i;

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/l;->k6(LXe/g;LXe/g;LXe/a;LXe/g;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final j7(LTe/J;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/J;",
            ")",
            "LTe/l<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, LTe/l;->l7(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final j8(JLjava/util/concurrent/TimeUnit;LTe/J;JZI)LTe/l;
    .locals 13
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "JZI)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    move/from16 v11, p8

    invoke-static {v11, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move-wide/from16 v9, p5

    invoke-static {v9, v10, v0}, LZe/b;->i(JLjava/lang/String;)J

    new-instance v0, Ldf/X1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Ldf/X1;-><init>(LTe/l;JJLjava/util/concurrent/TimeUnit;LTe/J;JIZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final k(LTe/m;)Ljava/lang/Object;
    .locals 1
    .param p1    # LTe/m;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

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
            "LTe/m<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/m;

    invoke-interface {p1, p0}, LTe/m;->a(LTe/l;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k1(LXe/o;)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LTe/l;->m1(LXe/o;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final k2(JLjava/lang/Object;)LTe/K;
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
            "(JTT;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "defaultItem is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/W;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/W;-><init>(LTe/l;JLjava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final k3(LXe/o;LXe/o;ZILXe/o;)LTe/l;
    .locals 8
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
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;",
            "LXe/o<",
            "-TT;+TV;>;ZI",
            "LXe/o<",
            "-",
            "LXe/g<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)",
            "LTe/l<",
            "LWe/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "evictingMapFactory is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/o0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ldf/o0;-><init>(LTe/l;LXe/o;LXe/o;IZLXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final k4(LTe/y;)LTe/l;
    .locals 1
    .param p1    # LTe/y;
        .annotation build LUe/f;
        .end annotation
    .end param
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

    new-instance v0, Ldf/H0;

    invoke-direct {v0, p0, p1}, Ldf/H0;-><init>(LTe/l;LTe/y;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final k5(IJLjava/util/concurrent/TimeUnit;LTe/J;)LWe/a;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v1, "unit is null"

    invoke-static {p4, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "scheduler is null"

    invoke-static {p5, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p1

    invoke-static/range {v0 .. v5}, Ldf/e1;->b9(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;I)LWe/a;

    move-result-object p1

    return-object p1
.end method

.method public final k6(LXe/g;LXe/g;LXe/a;LXe/g;)LVe/c;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
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
            "LXe/g<",
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LXe/a;",
            "LXe/g<",
            "-",
            "LCi/d;",
            ">;)",
            "LVe/c;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Llf/m;

    invoke-direct {v0, p1, p2, p3, p4}, Llf/m;-><init>(LXe/g;LXe/g;LXe/a;LXe/g;)V

    invoke-virtual {p0, v0}, LTe/l;->l6(LTe/q;)V

    return-object v0
.end method

.method public final k7(Ljava/util/concurrent/TimeUnit;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LTe/l;->l7(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final k8(LCi/b;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TB;>;)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LTe/l;->l8(LCi/b;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l(LCi/c;)V
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, LTe/q;

    if-eqz v0, :cond_0

    check-cast p1, LTe/q;

    invoke-virtual {p0, p1}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_0
    const-string v0, "s is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Llf/u;

    invoke-direct {v0, p1}, Llf/u;-><init>(LCi/c;)V

    invoke-virtual {p0, v0}, LTe/l;->l6(LTe/q;)V

    :goto_0
    return-void
.end method

.method public final l1(LXe/o;Z)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;Z)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->m1(LXe/o;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l2(J)LTe/K;
    .locals 3
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
            "(J)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ldf/W;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ldf/W;-><init>(LTe/l;JLjava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l3(LXe/o;Z)LTe/l;
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
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+TK;>;Z)",
            "LTe/l<",
            "LWe/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, LTe/l;->j3(LXe/o;LXe/o;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l4(LTe/Q;)LTe/l;
    .locals 1
    .param p1    # LTe/Q;
        .annotation build LUe/f;
        .end annotation
    .end param
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
            "LTe/Q<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/I0;

    invoke-direct {v0, p0, p1}, Ldf/I0;-><init>(LTe/l;LTe/Q;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l5(ILTe/J;)LWe/a;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LTe/J;",
            ")",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LTe/l;->i5(I)LWe/a;

    move-result-object p1

    invoke-static {p1, p2}, Ldf/e1;->f9(LWe/a;LTe/J;)LWe/a;

    move-result-object p1

    return-object p1
.end method

.method public final l6(LTe/q;)V
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/q<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "s is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, p1}, Lqf/a;->d0(LTe/l;LCi/c;)LCi/c;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LTe/l;->m6(LCi/c;)V
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

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    throw p1
.end method

.method public final l7(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/l<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/L1;

    invoke-direct {v0, p0, p1, p2}, Ldf/L1;-><init>(LTe/l;Ljava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l8(LCi/b;I)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
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
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TB;>;I)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundaryIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/U1;

    invoke-direct {v0, p0, p1, p2}, Ldf/U1;-><init>(LTe/l;LCi/b;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final m()Ljava/lang/Object;
    .locals 1
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
            "()TT;"
        }
    .end annotation

    new-instance v0, Llf/d;

    invoke-direct {v0}, Llf/d;-><init>()V

    invoke-virtual {p0, v0}, LTe/l;->l6(LTe/q;)V

    invoke-virtual {v0}, Llf/c;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final m1(LXe/o;ZI)LTe/l;
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
            "LTe/y<",
            "+TR;>;>;ZI)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lff/d;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lff/d;-><init>(LTe/l;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final m3(LCi/b;LXe/o;LXe/o;LXe/c;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
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
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TTRight;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LXe/o<",
            "-TTRight;+",
            "LCi/b<",
            "TTRightEnd;>;>;",
            "LXe/c<",
            "-TT;-",
            "LTe/l<",
            "TTRight;>;+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/p0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ldf/p0;-><init>(LTe/l;LCi/b;LXe/o;LXe/o;LXe/c;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final m5(JLjava/util/concurrent/TimeUnit;)LWe/a;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/l;->n5(JLjava/util/concurrent/TimeUnit;LTe/J;)LWe/a;

    move-result-object p1

    return-object p1
.end method

.method public abstract m6(LCi/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final m7(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/l;->u7(JLjava/util/concurrent/TimeUnit;LCi/b;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final m8(LCi/b;LXe/o;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
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
            "TU;>;",
            "LXe/o<",
            "-TU;+",
            "LCi/b<",
            "TV;>;>;)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->n8(LCi/b;LXe/o;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "(TT;)TT;"
        }
    .end annotation

    new-instance v0, Llf/d;

    invoke-direct {v0}, Llf/d;-><init>()V

    invoke-virtual {p0, v0}, LTe/l;->l6(LTe/q;)V

    invoke-virtual {v0}, Llf/c;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final n1(LXe/o;)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LTe/l;->o1(LXe/o;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final n3()LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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

    new-instance v0, Ldf/q0;

    invoke-direct {v0, p0}, Ldf/q0;-><init>(LTe/l;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final n4(LTe/J;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/J;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LTe/l;->p4(LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final n5(JLjava/util/concurrent/TimeUnit;LTe/J;)LWe/a;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3, p4}, Ldf/e1;->a9(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;)LWe/a;

    move-result-object p1

    return-object p1
.end method

.method public final n6(LTe/J;)LTe/l;
    .locals 1
    .param p1    # LTe/J;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Ldf/F;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, LTe/l;->o6(LTe/J;Z)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final n7(JLjava/util/concurrent/TimeUnit;LCi/b;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, LTe/l;->u7(JLjava/util/concurrent/TimeUnit;LCi/b;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final n8(LCi/b;LXe/o;I)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
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
            "TU;>;",
            "LXe/o<",
            "-TU;+",
            "LCi/b<",
            "TV;>;>;I)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/V1;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/V1;-><init>(LTe/l;LCi/b;LXe/o;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final o(LXe/g;)V
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, LTe/l;->q()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    check-cast v0, LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public final o1(LXe/o;I)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lff/e;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, Lff/e;-><init>(LTe/l;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final o3()LTe/c;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    new-instance v0, Ldf/s0;

    invoke-direct {v0, p0}, Ldf/s0;-><init>(LTe/l;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public final o4(LTe/J;Z)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/J;",
            "Z)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->p4(LTe/J;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final o5(LTe/J;)LWe/a;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/J;",
            ")",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LTe/l;->h5()LWe/a;

    move-result-object v0

    invoke-static {v0, p1}, Ldf/e1;->f9(LWe/a;LTe/J;)LWe/a;

    move-result-object p1

    return-object p1
.end method

.method public final o6(LTe/J;Z)LTe/l;
    .locals 1
    .param p1    # LTe/J;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "Z)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/y1;

    invoke-direct {v0, p0, p1, p2}, Ldf/y1;-><init>(LTe/l;LTe/J;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final o7(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LTe/l;->u7(JLjava/util/concurrent/TimeUnit;LCi/b;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final o8(Ljava/util/concurrent/Callable;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LCi/b<",
            "TB;>;>;)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LTe/l;->p8(Ljava/util/concurrent/Callable;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final p1(LXe/o;)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LTe/l;->r1(LXe/o;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final p2(LXe/r;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LXe/r<",
            "-TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/Z;

    invoke-direct {v0, p0, p1}, Ldf/Z;-><init>(LTe/l;LXe/r;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final p4(LTe/J;ZI)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "ZI)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/K0;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/K0;-><init>(LTe/l;LTe/J;ZI)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final p5()LTe/l;
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
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {}, LZe/a;->c()LXe/r;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, LTe/l;->r5(JLXe/r;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final p6(LCi/c;)LCi/c;
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LCi/c<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LTe/l;->l(LCi/c;)V

    return-object p1
.end method

.method public final p7(JLjava/util/concurrent/TimeUnit;LTe/J;LCi/b;)LTe/l;
    .locals 6
    .annotation runtime LUe/b;
        value = .enum LUe/a;->FULL:LUe/a;
    .end annotation

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
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LTe/l;->u7(JLjava/util/concurrent/TimeUnit;LCi/b;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final p8(Ljava/util/concurrent/Callable;I)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
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
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LCi/b<",
            "TB;>;>;I)",
            "LTe/l<",
            "LTe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundaryIndicatorSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/W1;

    invoke-direct {v0, p0, p1, p2}, Ldf/W1;-><init>(LTe/l;Ljava/util/concurrent/Callable;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q()Ljava/lang/Iterable;
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
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, v0}, LTe/l;->r(I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final q1(LXe/o;Z)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;Z)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->r1(LXe/o;ZI)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q2(Ljava/lang/Object;)LTe/K;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
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

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, LTe/l;->k2(JLjava/lang/Object;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final q4(Ljava/lang/Class;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "Ljava/lang/Class<",
            "TU;>;)",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->l(Ljava/lang/Class;)LXe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->p2(LXe/r;)LTe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/l;->d0(Ljava/lang/Class;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q5(J)LTe/l;
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

    invoke-static {}, LZe/a;->c()LXe/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->r5(JLXe/r;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q6(LCi/b;)LTe/l;
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
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/z1;

    invoke-direct {v0, p0, p1}, Ldf/z1;-><init>(LTe/l;LCi/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q7(LCi/b;LXe/o;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "TU;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TV;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->v7(LCi/b;LXe/o;LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q8(LCi/b;LCi/b;LCi/b;LCi/b;LXe/j;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "LCi/b<",
            "TT1;>;",
            "LCi/b<",
            "TT2;>;",
            "LCi/b<",
            "TT3;>;",
            "LCi/b<",
            "TT4;>;",
            "LXe/j<",
            "-TT;-TT1;-TT2;-TT3;-TT4;TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p5}, LZe/a;->A(LXe/j;)LXe/o;

    move-result-object p5

    const/4 v0, 0x4

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    invoke-virtual {p0, v0, p5}, LTe/l;->v8([LCi/b;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final r(I)Ljava/lang/Iterable;
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
            "(I)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/b;

    invoke-direct {v0, p0, p1}, Ldf/b;-><init>(LTe/l;I)V

    return-object v0
.end method

.method public final r1(LXe/o;ZI)LTe/l;
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
            "LTe/Q<",
            "+TR;>;>;ZI)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lff/e;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lff/e;-><init>(LTe/l;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final r2()LTe/s;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

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

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LTe/l;->j2(J)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final r4()LTe/l;
    .locals 3
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
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, LTe/l;->v4(IZZ)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final r5(JLXe/r;)LTe/l;
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
            "(J",
            "LXe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "predicate is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/g1;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/g1;-><init>(LTe/l;JLXe/r;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "times >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final r6(LXe/o;)LTe/l;
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

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LTe/l;->s6(LXe/o;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final r7(LCi/b;LXe/o;LCi/b;)LTe/l;
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
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TU;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TV;>;>;",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutSelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "other is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, LTe/l;->v7(LCi/b;LXe/o;LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final r8(LCi/b;LCi/b;LCi/b;LXe/i;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TT1;>;",
            "LCi/b<",
            "TT2;>;",
            "LCi/b<",
            "TT3;>;",
            "LXe/i<",
            "-TT;-TT1;-TT2;-TT3;TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p4}, LZe/a;->z(LXe/i;)LXe/o;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, v0, p4}, LTe/l;->v8([LCi/b;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ljava/lang/Object;
    .locals 1
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
            "()TT;"
        }
    .end annotation

    new-instance v0, Llf/e;

    invoke-direct {v0}, Llf/e;-><init>()V

    invoke-virtual {p0, v0}, LTe/l;->l6(LTe/q;)V

    invoke-virtual {v0}, Llf/c;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final s1(LCi/b;)LTe/l;
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
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LTe/l;->C0(LCi/b;LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s2()LTe/K;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

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

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LTe/l;->l2(J)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final s4(I)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, LTe/l;->v4(IZZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s5(LXe/d;)LTe/l;
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
            "LXe/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/f1;

    invoke-direct {v0, p0, p1}, Ldf/f1;-><init>(LTe/l;LXe/d;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s6(LXe/o;I)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->t6(LXe/o;IZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s7(LXe/o;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TV;>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, LTe/l;->v7(LCi/b;LXe/o;LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s8(LCi/b;LCi/b;LXe/h;)LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TT1;>;",
            "LCi/b<",
            "TT2;>;",
            "LXe/h<",
            "-TT;-TT1;-TT2;TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, LZe/a;->y(LXe/h;)LXe/o;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [LCi/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0, p3}, LTe/l;->v8([LCi/b;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "(TT;)TT;"
        }
    .end annotation

    new-instance v0, Llf/e;

    invoke-direct {v0}, Llf/e;-><init>()V

    invoke-virtual {p0, v0}, LTe/l;->l6(LTe/q;)V

    invoke-virtual {v0}, Llf/c;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final t1(LTe/i;)LTe/l;
    .locals 1
    .param p1    # LTe/i;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/i;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/A;

    invoke-direct {v0, p0, p1}, Ldf/A;-><init>(LTe/l;LTe/i;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t2(LXe/o;)LTe/l;
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

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, LTe/l;->E2(LXe/o;ZII)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t4(ILXe/a;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LXe/a;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, LTe/l;->w4(IZZLXe/a;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t5(LXe/r;)LTe/l;
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
            "(",
            "LXe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, LTe/l;->r5(JLXe/r;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public t6(LXe/o;IZ)LTe/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;IZ)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, Laf/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, Laf/m;

    invoke-interface {p2}, Laf/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LTe/l;->m2()LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Ldf/k1;->a(Ljava/lang/Object;LXe/o;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ldf/A1;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/A1;-><init>(LTe/l;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t7(LXe/o;LTe/l;)LTe/l;
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
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TV;>;>;",
            "LTe/l<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, LTe/l;->v7(LCi/b;LXe/o;LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t8(LCi/b;LXe/c;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/Y1;

    invoke-direct {v0, p0, p2, p1}, Ldf/Y1;-><init>(LTe/l;LXe/c;LCi/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u()Ljava/lang/Iterable;
    .locals 1
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
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/c;

    invoke-direct {v0, p0}, Ldf/c;-><init>(LCi/b;)V

    return-object v0
.end method

.method public final u1(LTe/y;)LTe/l;
    .locals 1
    .param p1    # LTe/y;
        .annotation build LUe/f;
        .end annotation
    .end param
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
            "LTe/y<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/B;

    invoke-direct {v0, p0, p1}, Ldf/B;-><init>(LTe/l;LTe/y;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u2(LXe/o;I)LTe/l;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, LTe/l;->E2(LXe/o;ZII)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u4(IZ)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->v4(IZZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u5(LXe/e;)LTe/l;
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
            "(",
            "LXe/e;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p1}, LZe/a;->v(LXe/e;)LXe/r;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, LTe/l;->r5(JLXe/r;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u6(LXe/o;)LTe/c;
    .locals 2
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
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

    new-instance v0, Lff/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lff/f;-><init>(LTe/l;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final u7(JLjava/util/concurrent/TimeUnit;LCi/b;LTe/J;)LTe/l;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LCi/b<",
            "+TT;>;",
            "LTe/J;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeUnit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/N1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Ldf/N1;-><init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;LCi/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u8(Ljava/lang/Iterable;LXe/o;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "*>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/Z1;

    invoke-direct {v0, p0, p1, p2}, Ldf/Z1;-><init>(LTe/l;Ljava/lang/Iterable;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
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
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/d;

    invoke-direct {v0, p0, p1}, Ldf/d;-><init>(LTe/l;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final v1(LTe/Q;)LTe/l;
    .locals 1
    .param p1    # LTe/Q;
        .annotation build LUe/f;
        .end annotation
    .end param
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

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/C;

    invoke-direct {v0, p0, p1}, Ldf/C;-><init>(LTe/l;LTe/Q;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v2(LXe/o;LXe/c;)LTe/l;
    .locals 6
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
            "<U:",
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
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v4

    invoke-static {}, LTe/l;->a0()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, LTe/l;->z2(LXe/o;LXe/c;ZII)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v3()LTe/K;
    .locals 1
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
            "()",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LZe/a;->b()LXe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/l;->b(LXe/r;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final v4(IZZ)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "capacity"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/L0;

    sget-object v6, LZe/a;->c:LXe/a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v6}, Ldf/L0;-><init>(LTe/l;IZZLXe/a;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v5(LXe/o;)LTe/l;
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
            "LXe/o<",
            "-",
            "LTe/l<",
            "Ljava/lang/Throwable;",
            ">;+",
            "LCi/b<",
            "*>;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/h1;

    invoke-direct {v0, p0, p1}, Ldf/h1;-><init>(LTe/l;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v6(LXe/o;)LTe/c;
    .locals 2
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
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

    new-instance v0, Lff/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lff/f;-><init>(LTe/l;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final v7(LCi/b;LXe/o;LCi/b;)LTe/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "TU;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TV;>;>;",
            "LCi/b<",
            "+TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemTimeoutIndicator is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/M1;

    invoke-direct {v0, p0, p1, p2, p3}, Ldf/M1;-><init>(LTe/l;LCi/b;LXe/o;LCi/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v8([LCi/b;LXe/o;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            ">([",
            "LCi/b<",
            "*>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/Z1;

    invoke-direct {v0, p0, p1, p2}, Ldf/Z1;-><init>(LTe/l;[LCi/b;LXe/o;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final w()Ljava/lang/Iterable;
    .locals 1
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
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/e;

    invoke-direct {v0, p0}, Ldf/e;-><init>(LCi/b;)V

    return-object v0
.end method

.method public final w1(Ljava/lang/Object;)LTe/K;
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

    invoke-static {p1}, LZe/a;->i(Ljava/lang/Object;)LXe/r;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/l;->j(LXe/r;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final w2(LXe/o;LXe/c;I)LTe/l;
    .locals 6
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
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, LTe/l;->a0()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, LTe/l;->z2(LXe/o;LXe/c;ZII)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final w3(LCi/b;LXe/o;LXe/o;LXe/c;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
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
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TTRight;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LXe/o<",
            "-TTRight;+",
            "LCi/b<",
            "TTRightEnd;>;>;",
            "LXe/c<",
            "-TT;-TTRight;+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/w0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ldf/w0;-><init>(LTe/l;LCi/b;LXe/o;LXe/o;LXe/c;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final w4(IZZLXe/a;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
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
            "(IZZ",
            "LXe/a;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onOverflow is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacity"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Ldf/L0;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ldf/L0;-><init>(LTe/l;IZZLXe/a;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final w5(LCi/c;)V
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "s is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Luf/d;

    if-eqz v0, :cond_0

    check-cast p1, Luf/d;

    invoke-virtual {p0, p1}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_0
    new-instance v0, Luf/d;

    invoke-direct {v0, p1}, Luf/d;-><init>(LCi/c;)V

    invoke-virtual {p0, v0}, LTe/l;->l6(LTe/q;)V

    :goto_0
    return-void
.end method

.method public final w6(LXe/o;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

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
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LTe/l;->x6(LXe/o;I)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final x()Ljava/lang/Object;
    .locals 1
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
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, LTe/l;->O5()LTe/K;

    move-result-object v0

    invoke-virtual {v0}, LTe/K;->k()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final x1()LTe/K;
    .locals 1
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
            "()",
            "LTe/K<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldf/E;

    invoke-direct {v0, p0}, Ldf/E;-><init>(LTe/l;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final x2(LXe/o;LXe/c;Z)LTe/l;
    .locals 6
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
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;Z)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v4

    invoke-static {}, LTe/l;->a0()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/l;->z2(LXe/o;LXe/c;ZII)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final x4(JLXe/a;LTe/a;)LTe/l;
    .locals 7
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
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
            "(J",
            "LXe/a;",
            "LTe/a;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "overflowStrategy is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacity"

    invoke-static {p1, p2, v0}, LZe/b;->i(JLjava/lang/String;)J

    new-instance v0, Ldf/M0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ldf/M0;-><init>(LTe/l;JLXe/a;LTe/a;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final x5(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/l;->y5(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final x6(LXe/o;I)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->SPECIAL:LUe/a;
    .end annotation

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
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;I)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LTe/l;->t6(LXe/o;IZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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
            "(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LTe/l;->M5(Ljava/lang/Object;)LTe/K;

    move-result-object p1

    invoke-virtual {p1}, LTe/K;->k()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final y2(LXe/o;LXe/c;ZI)LTe/l;
    .locals 6
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
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;ZI)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/l;->z2(LXe/o;LXe/c;ZII)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final y4(Z)LTe/l;
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
            "(Z)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, LTe/l;->v4(IZZ)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final y5(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/j1;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Ldf/j1;-><init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final y6(LXe/o;)LTe/l;
    .locals 2
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lff/g;-><init>(LTe/l;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final y7()LTe/l;
    .locals 2
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
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
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LTe/l;->B7(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final z()V
    .locals 0
    .annotation runtime LUe/b;
        value = .enum LUe/a;->UNBOUNDED_IN:LUe/a;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-static {p0}, Ldf/l;->a(LCi/b;)V

    return-void
.end method

.method public final z0(LTe/r;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

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
            "LTe/r<",
            "-TT;+TR;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/r;

    invoke-interface {p1, p0}, LTe/r;->a(LTe/l;)LCi/b;

    move-result-object p1

    invoke-static {p1}, LTe/l;->a3(LCi/b;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final z1(JLjava/util/concurrent/TimeUnit;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/l;->A1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final z2(LXe/o;LXe/c;ZII)LTe/l;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;ZII)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p4, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    invoke-static {p5, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p1, p2}, Ldf/t0;->b(LXe/o;LXe/c;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, LTe/l;->E2(LXe/o;ZII)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final z4()LTe/l;
    .locals 1
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
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/N0;

    invoke-direct {v0, p0}, Ldf/N0;-><init>(LTe/l;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final z5(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/l;
    .locals 8
    .annotation runtime LUe/b;
        value = .enum LUe/a;->ERROR:LUe/a;
    .end annotation

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
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/j1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Ldf/j1;-><init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final z6(LXe/o;)LTe/l;
    .locals 2
    .param p1    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lff/g;-><init>(LTe/l;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final z7(LTe/J;)LTe/l;
    .locals 1
    .annotation runtime LUe/b;
        value = .enum LUe/a;->PASS_THROUGH:LUe/a;
    .end annotation

    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/J;",
            ")",
            "LTe/l<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, LTe/l;->B7(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method
