.class public abstract LTe/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/G;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/G<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs A0([LTe/G;)LTe/B;
    .locals 4
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
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/B;->Q7(LTe/G;)LTe/B;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lgf/v;

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    invoke-static {}, LTe/B;->V()I

    move-result v2

    sget-object v3, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, v2, v3}, Lgf/v;-><init>(LTe/G;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs B0([LTe/G;)LTe/B;
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
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/B;->Q7(LTe/G;)LTe/B;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    invoke-static {p0}, LTe/B;->G0(LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs C0(II[LTe/G;)LTe/B;
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
            ">(II[",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p2

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p0, p1, v1}, LTe/B;->Y0(LXe/o;IIZ)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs D0([LTe/G;)LTe/B;
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
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-static {v0, v1, p0}, LTe/B;->C0(II[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static D3(LTe/G;)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/X;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-static {}, LTe/B;->V()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lgf/X;-><init>(LTe/G;LXe/o;ZII)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs E0(II[LTe/G;)LTe/B;
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
            ">(II[",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p2

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, p1, v1}, LTe/B;->Y0(LXe/o;IIZ)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static E3(LTe/G;I)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;I)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/X;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lgf/X;-><init>(LTe/G;LXe/o;ZII)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs F0([LTe/G;)LTe/B;
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
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-static {v0, v1, p0}, LTe/B;->E0(II[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static F3(LTe/G;LTe/G;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LTe/B;->w2(LXe/o;ZI)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static G0(LTe/G;)LTe/B;
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
            ">(",
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LTe/B;->H0(LTe/G;IZ)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static G3(LTe/G;LTe/G;LTe/G;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
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

    new-array v1, v0, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v1}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LTe/B;->w2(LXe/o;ZI)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static H0(LTe/G;IZ)LTe/B;
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
            "+",
            "LTe/G<",
            "+TT;>;>;IZ)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch is null"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/v;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, v1, p1, p2}, Lgf/v;-><init>(LTe/G;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static H3(LTe/G;LTe/G;LTe/G;LTe/G;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
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

    new-array v1, v0, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v1}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LTe/B;->w2(LXe/o;ZI)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static I0(Ljava/lang/Iterable;)LTe/B;
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
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LTe/B;->Q2(Ljava/lang/Iterable;)LTe/B;

    move-result-object p0

    invoke-static {p0}, LTe/B;->G0(LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static I3(Ljava/lang/Iterable;)LTe/B;
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
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/B;->Q2(Ljava/lang/Iterable;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/B;->m2(LXe/o;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static J0(LTe/G;)LTe/B;
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
            ">(",
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-static {p0, v0, v1}, LTe/B;->K0(LTe/G;II)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static J3(Ljava/lang/Iterable;I)LTe/B;
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
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "+TT;>;>;I)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/B;->Q2(Ljava/lang/Iterable;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LTe/B;->n2(LXe/o;I)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static K0(LTe/G;II)LTe/B;
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
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;II)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/B;->Q7(LTe/G;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, LTe/B;->X0(LXe/o;II)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs K2([Ljava/lang/Object;)LTe/B;
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
            ">([TT;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "items is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/B;->n3(Ljava/lang/Object;)LTe/B;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lgf/d0;

    invoke-direct {v0, p0}, Lgf/d0;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static K3(Ljava/lang/Iterable;II)LTe/B;
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "+TT;>;>;II)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/B;->Q2(Ljava/lang/Iterable;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, LTe/B;->x2(LXe/o;ZII)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static L0(Ljava/lang/Iterable;)LTe/B;
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-static {p0, v0, v1}, LTe/B;->M0(Ljava/lang/Iterable;II)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static L2(Ljava/util/concurrent/Callable;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/e0;

    invoke-direct {v0, p0}, Lgf/e0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs L3(II[LTe/G;)LTe/B;
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
            ">(II[",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p2

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0, p1}, LTe/B;->x2(LXe/o;ZII)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static M0(Ljava/lang/Iterable;II)LTe/B;
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "+TT;>;>;II)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/B;->Q2(Ljava/lang/Iterable;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, LTe/B;->Y0(LXe/o;IIZ)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static M2(Ljava/util/concurrent/Future;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/f0;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgf/f0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs M3([LTe/G;)LTe/B;
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
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object v0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v0, v1, p0}, LTe/B;->n2(LXe/o;I)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static N2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/f0;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/f0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs N3(II[LTe/G;)LTe/B;
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
            ">(II[",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p2

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p0, p1}, LTe/B;->x2(LXe/o;ZII)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static O2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, LTe/B;->N2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LTe/B;

    move-result-object p0

    invoke-virtual {p0, p4}, LTe/B;->K5(LTe/J;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs O3([LTe/G;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object v0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    const/4 v2, 0x1

    array-length p0, p0

    invoke-virtual {v0, v1, v2, p0}, LTe/B;->w2(LXe/o;ZI)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static P2(Ljava/util/concurrent/Future;LTe/J;)LTe/B;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;",
            "LTe/J;",
            ")",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LTe/B;->M2(Ljava/util/concurrent/Future;)LTe/B;

    move-result-object p0

    invoke-virtual {p0, p1}, LTe/B;->K5(LTe/J;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static P3(LTe/G;)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/X;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-static {}, LTe/B;->V()I

    move-result v6

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lgf/X;-><init>(LTe/G;LXe/o;ZII)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Q2(Ljava/lang/Iterable;)LTe/B;
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
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/g0;

    invoke-direct {v0, p0}, Lgf/g0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Q3(LTe/G;I)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;I)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/X;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, LTe/B;->V()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lgf/X;-><init>(LTe/G;LXe/o;ZII)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Q6(JLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, LTe/B;->R6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Q7(LTe/G;)LTe/B;
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
            "LTe/G<",
            "TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LTe/B;

    if-eqz v0, :cond_0

    check-cast p0, LTe/B;

    invoke-static {p0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lgf/i0;

    invoke-direct {v0, p0}, Lgf/i0;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static R2(LCi/b;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "publisher is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/h0;

    invoke-direct {v0, p0}, Lgf/h0;-><init>(LCi/b;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static R3(LTe/G;LTe/G;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p1

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    invoke-virtual {p1, v1, p0, v0}, LTe/B;->w2(LXe/o;ZI)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static R6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 3
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
            "LTe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/A1;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/A1;-><init>(JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static R7(LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LXe/n;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LTe/G<",
            "+TT5;>;",
            "LTe/G<",
            "+TT6;>;",
            "LTe/G<",
            "+TT7;>;",
            "LTe/G<",
            "+TT8;>;",
            "LTe/G<",
            "+TT9;>;",
            "LXe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [LTe/G;

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

    invoke-static {p9, v2, v0, v1}, LTe/B;->d8(LXe/o;ZI[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static S2(LXe/g;)LTe/B;
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
            "LXe/g<",
            "LTe/k<",
            "TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, LZe/a;->u()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p0}, Lgf/p0;->m(LXe/g;)LXe/c;

    move-result-object p0

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    invoke-static {v0, p0, v1}, LTe/B;->W2(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static S3(LTe/G;LTe/G;LTe/G;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
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

    new-array v1, v0, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-static {v1}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p1

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, LTe/B;->w2(LXe/o;ZI)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static S7(LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LXe/m;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LTe/G<",
            "+TT5;>;",
            "LTe/G<",
            "+TT6;>;",
            "LTe/G<",
            "+TT7;>;",
            "LTe/G<",
            "+TT8;>;",
            "LXe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [LTe/G;

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

    invoke-static {p8, v2, v0, v1}, LTe/B;->d8(LXe/o;ZI[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static T2(Ljava/util/concurrent/Callable;LXe/b;)LTe/B;
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
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LXe/b<",
            "TS;",
            "LTe/k<",
            "TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lgf/p0;->l(LXe/b;)LXe/c;

    move-result-object p1

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, LTe/B;->W2(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static T3(LTe/G;LTe/G;LTe/G;LTe/G;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
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

    new-array v1, v0, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    invoke-static {v1}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p1

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, LTe/B;->w2(LXe/o;ZI)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static T7(LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LXe/l;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LTe/G<",
            "+TT5;>;",
            "LTe/G<",
            "+TT6;>;",
            "LTe/G<",
            "+TT7;>;",
            "LXe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [LTe/G;

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

    invoke-static {p7, v2, v0, v1}, LTe/B;->d8(LXe/o;ZI[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static U2(Ljava/util/concurrent/Callable;LXe/b;LXe/g;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lgf/p0;->l(LXe/b;)LXe/c;

    move-result-object p1

    invoke-static {p0, p1, p2}, LTe/B;->W2(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static U3(Ljava/lang/Iterable;)LTe/B;
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/B;->Q2(Ljava/lang/Iterable;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LTe/B;->v2(LXe/o;Z)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static U7(LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LXe/k;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LTe/G<",
            "+TT5;>;",
            "LTe/G<",
            "+TT6;>;",
            "LXe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [LTe/G;

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

    invoke-static {p6, v2, v0, v1}, LTe/B;->d8(LXe/o;ZI[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static V()I
    .locals 1

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    return v0
.end method

.method public static V2(Ljava/util/concurrent/Callable;LXe/c;)LTe/B;
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
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LXe/c<",
            "TS;",
            "LTe/k<",
            "TT;>;TS;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, LTe/B;->W2(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static V3(Ljava/lang/Iterable;I)LTe/B;
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "+TT;>;>;I)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/B;->Q2(Ljava/lang/Iterable;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LTe/B;->w2(LXe/o;ZI)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static V7(LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LXe/j;)LTe/B;
    .locals 3
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
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LTe/G<",
            "+TT5;>;",
            "LXe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [LTe/G;

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

    invoke-static {p5, v2, v0, v1}, LTe/B;->d8(LXe/o;ZI[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static W2(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialState is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposeState is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/j0;

    invoke-direct {v0, p0, p1, p2}, Lgf/j0;-><init>(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static W3(Ljava/lang/Iterable;II)LTe/B;
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
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "+TT;>;>;II)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LTe/B;->Q2(Ljava/lang/Iterable;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, LTe/B;->x2(LXe/o;ZII)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static W7(LTe/G;LTe/G;LTe/G;LTe/G;LXe/i;)LTe/B;
    .locals 3
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
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LXe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v2, v0, v1}, LTe/B;->d8(LXe/o;ZI[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static X5(LTe/G;)LTe/B;
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
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {p0, v0}, LTe/B;->Y5(LTe/G;I)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static X7(LTe/G;LTe/G;LTe/G;LXe/h;)LTe/B;
    .locals 3
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
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LXe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v2, v0, v1}, LTe/B;->d8(LXe/o;ZI[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Y5(LTe/G;I)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;I)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/n1;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lgf/n1;-><init>(LTe/G;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Y7(LTe/G;LTe/G;LXe/c;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LXe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LZe/a;->x(LXe/c;)LXe/o;

    move-result-object p2

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v2, v0, v1}, LTe/B;->d8(LXe/o;ZI[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Z5(LTe/G;)LTe/B;
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
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {p0, v0}, LTe/B;->a6(LTe/G;I)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static Z7(LTe/G;LTe/G;LXe/c;Z)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LXe/c<",
            "-TT1;-TT2;+TR;>;Z)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LZe/a;->x(LXe/c;)LXe/o;

    move-result-object p2

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, p3, v0, v1}, LTe/B;->d8(LXe/o;ZI[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static a6(LTe/G;I)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;I)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/n1;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lgf/n1;-><init>(LTe/G;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static a8(LTe/G;LTe/G;LXe/c;ZI)LTe/B;
    .locals 2
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LXe/c<",
            "-TT1;-TT2;+TR;>;ZI)",
            "LTe/B<",
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

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, p3, p4, v0}, LTe/B;->d8(LXe/o;ZI[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static b0(LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LXe/n;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LTe/G<",
            "+TT5;>;",
            "LTe/G<",
            "+TT6;>;",
            "LTe/G<",
            "+TT7;>;",
            "LTe/G<",
            "+TT8;>;",
            "LTe/G<",
            "+TT9;>;",
            "LXe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [LTe/G;

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

    invoke-static {p9, v0, v1}, LTe/B;->j0(LXe/o;I[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static b4()LTe/B;
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

    sget-object v0, Lgf/D0;->b:LTe/B;

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public static b8(LTe/G;LXe/o;)LTe/B;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/B1;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lgf/B1;-><init>(LTe/G;I)V

    invoke-static {p1}, Lgf/p0;->n(LXe/o;)LXe/o;

    move-result-object p0

    invoke-virtual {v0, p0}, LTe/B;->m2(LXe/o;)LTe/B;

    move-result-object p0

    invoke-static {p0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static c0(LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LXe/m;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LTe/G<",
            "+TT5;>;",
            "LTe/G<",
            "+TT6;>;",
            "LTe/G<",
            "+TT7;>;",
            "LTe/G<",
            "+TT8;>;",
            "LXe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [LTe/G;

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

    invoke-static {p8, v0, v1}, LTe/B;->j0(LXe/o;I[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static c8(Ljava/lang/Iterable;LXe/o;)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/M1;

    invoke-static {}, LTe/B;->V()I

    move-result v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lgf/M1;-><init>([LTe/G;Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static d0(LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LXe/l;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LTe/G<",
            "+TT5;>;",
            "LTe/G<",
            "+TT6;>;",
            "LTe/G<",
            "+TT7;>;",
            "LXe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [LTe/G;

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

    invoke-static {p7, v0, v1}, LTe/B;->j0(LXe/o;I[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs d8(LXe/o;ZI[LTe/G;)LTe/B;
    .locals 7
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
            "+TR;>;ZI[",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    array-length v0, p3

    if-nez v0, :cond_0

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/M1;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lgf/M1;-><init>([LTe/G;Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static e0(LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LXe/k;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LTe/G<",
            "+TT5;>;",
            "LTe/G<",
            "+TT6;>;",
            "LXe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [LTe/G;

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

    invoke-static {p6, v0, v1}, LTe/B;->j0(LXe/o;I[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static e5(LTe/G;LTe/G;)LTe/K;
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
            ">(",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LZe/b;->d()LXe/d;

    move-result-object v0

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, LTe/B;->h5(LTe/G;LTe/G;LXe/d;I)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static e8(Ljava/lang/Iterable;LXe/o;ZI)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/M1;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lgf/M1;-><init>([LTe/G;Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Iterable;)LTe/B;
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
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lgf/h;-><init>([LTe/G;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static f0(LTe/G;LTe/G;LTe/G;LTe/G;LTe/G;LXe/j;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LTe/G<",
            "+TT5;>;",
            "LXe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [LTe/G;

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

    invoke-static {p5, v0, v1}, LTe/B;->j0(LXe/o;I[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static f2()LTe/B;
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

    sget-object v0, Lgf/U;->b:LTe/B;

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public static f3(JJLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 6
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
            "LTe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LTe/B;->g3(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static f5(LTe/G;LTe/G;I)LTe/K;
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
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;I)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LZe/b;->d()LXe/d;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, LTe/B;->h5(LTe/G;LTe/G;LXe/d;I)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static g0(LTe/G;LTe/G;LTe/G;LTe/G;LXe/i;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LTe/G<",
            "+TT4;>;",
            "LXe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v0, v1}, LTe/B;->j0(LXe/o;I[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static g2(Ljava/lang/Throwable;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LZe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, LTe/B;->h2(Ljava/util/concurrent/Callable;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static g3(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/q0;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v1, v0

    move-wide v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lgf/q0;-><init>(JJLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static g5(LTe/G;LTe/G;LXe/d;)LTe/K;
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
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;",
            "LXe/d<",
            "-TT;-TT;>;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, LTe/B;->h5(LTe/G;LTe/G;LXe/d;I)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h([LTe/G;)LTe/B;
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
            ">([",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LTe/B;->Q7(LTe/G;)LTe/B;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lgf/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgf/h;-><init>([LTe/G;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static h0(LTe/G;LTe/G;LTe/G;LXe/h;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LTe/G<",
            "+TT3;>;",
            "LXe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v0, v1}, LTe/B;->j0(LXe/o;I[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static h2(Ljava/util/concurrent/Callable;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/V;

    invoke-direct {v0, p0}, Lgf/V;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static h3(JLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, LTe/B;->g3(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static h5(LTe/G;LTe/G;LXe/d;I)LTe/K;
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
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
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

    new-instance v0, Lgf/c1;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/c1;-><init>(LTe/G;LTe/G;LXe/d;I)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method public static i0(LTe/G;LTe/G;LXe/c;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT1;>;",
            "LTe/G<",
            "+TT2;>;",
            "LXe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LZe/a;->x(LXe/c;)LXe/o;

    move-result-object p2

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [LTe/G;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v0, v1}, LTe/B;->j0(LXe/o;I[LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static i3(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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
            "LTe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LTe/B;->g3(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs j0(LXe/o;I[LTe/G;)LTe/B;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I[",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p2, p0, p1}, LTe/B;->n0([LTe/G;LXe/o;I)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static j3(JJJJLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 10
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
            "LTe/B<",
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

    invoke-static/range {v0 .. v9}, LTe/B;->k3(JJJJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public static k0(Ljava/lang/Iterable;LXe/o;)LTe/B;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, LTe/B;->l0(Ljava/lang/Iterable;LXe/o;I)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static k3(JJJJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 16
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
            "LTe/B<",
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

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v9, v10}, LTe/B;->z1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

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

    new-instance v11, Lgf/r0;

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

    invoke-direct/range {v0 .. v10}, Lgf/r0;-><init>(JJJJLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v11}, Lqf/a;->R(LTe/B;)LTe/B;

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

.method public static l0(Ljava/lang/Iterable;LXe/o;I)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    new-instance p2, Lgf/u;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lgf/u;-><init>([LTe/G;Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {p2}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static m0([LTe/G;LXe/o;)LTe/B;
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
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LTe/G<",
            "+TT;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, LTe/B;->n0([LTe/G;LXe/o;I)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static n0([LTe/G;LXe/o;I)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+TT;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    new-instance p2, Lgf/u;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lgf/u;-><init>([LTe/G;Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {p2}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static n3(Ljava/lang/Object;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/t0;

    invoke-direct {v0, p0}, Lgf/t0;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static n7(LTe/G;)LTe/B;
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
            "LTe/G<",
            "TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LTe/B;

    if-nez v0, :cond_0

    new-instance v0, Lgf/i0;

    invoke-direct {v0, p0}, Lgf/i0;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Observable) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs o0(LXe/o;I[LTe/G;)LTe/B;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I[",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p2, p0, p1}, LTe/B;->s0([LTe/G;LXe/o;I)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static o3(Ljava/lang/Object;Ljava/lang/Object;)LTe/B;
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
            ">(TT;TT;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static o4(II)LTe/B;
    .locals 4
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LTe/B<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, LTe/B;->n3(Ljava/lang/Object;)LTe/B;

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

    new-instance v0, Lgf/J0;

    invoke-direct {v0, p0, p1}, Lgf/J0;-><init>(II)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

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

.method public static p0(Ljava/lang/Iterable;LXe/o;)LTe/B;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, LTe/B;->q0(Ljava/lang/Iterable;LXe/o;I)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static p3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/B;
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
            ">(TT;TT;TT;)",
            "LTe/B<",
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

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static p4(JJ)LTe/B;
    .locals 5
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "LTe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, p2, v2

    if-nez v4, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, LTe/B;->n3(Ljava/lang/Object;)LTe/B;

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
    new-instance v0, Lgf/K0;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/K0;-><init>(JJ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

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

.method public static p7(Ljava/util/concurrent/Callable;LXe/o;LXe/g;)LTe/B;
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
            "LTe/G<",
            "+TT;>;>;",
            "LXe/g<",
            "-TD;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LTe/B;->q7(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Ljava/lang/Iterable;LXe/o;I)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    new-instance p2, Lgf/u;

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lgf/u;-><init>([LTe/G;Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {p2}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static q3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/B;
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
            ">(TT;TT;TT;TT;)",
            "LTe/B<",
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

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static q7(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)LTe/B;
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
            "LTe/G<",
            "+TT;>;>;",
            "LXe/g<",
            "-TD;>;Z)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/E1;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/E1;-><init>(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static r0([LTe/G;LXe/o;)LTe/B;
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
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "LTe/G<",
            "+TT;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {p0, p1, v0}, LTe/B;->s0([LTe/G;LXe/o;I)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static r3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/B;
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
            ">(TT;TT;TT;TT;TT;)",
            "LTe/B<",
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

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static s0([LTe/G;LXe/o;I)LTe/B;
    .locals 6
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
            "LTe/G<",
            "+TT;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p0

    return-object p0

    :cond_0
    shl-int/lit8 v4, p2, 0x1

    new-instance p2, Lgf/u;

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lgf/u;-><init>([LTe/G;Ljava/lang/Iterable;LXe/o;IZ)V

    invoke-static {p2}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static s1(LTe/E;)LTe/B;
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
            "LTe/E<",
            "TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/C;

    invoke-direct {v0, p0}, Lgf/C;-><init>(LTe/E;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static s3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/B;
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
            ">(TT;TT;TT;TT;TT;TT;)",
            "LTe/B<",
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

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static t3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/B;
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
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "LTe/B<",
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

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static u0(LTe/G;)LTe/B;
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
            "LTe/G<",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-static {p0, v0}, LTe/B;->v0(LTe/G;I)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static u3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/B;
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
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LTe/B<",
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

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static v0(LTe/G;I)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT;>;>;I)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/v;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, p1, v2}, Lgf/v;-><init>(LTe/G;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static v3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/B;
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
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LTe/B<",
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

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static w0(LTe/G;LTe/G;)LTe/B;
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
            "+TT;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LTe/B;->A0([LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static w3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LTe/B;
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
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LTe/B<",
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

    invoke-static {p0}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static x0(LTe/G;LTe/G;LTe/G;)LTe/B;
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
            "+TT;>;",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
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

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LTe/B;->A0([LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static x1(Ljava/util/concurrent/Callable;)LTe/B;
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
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/F;

    invoke-direct {v0, p0}, Lgf/F;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static y0(LTe/G;LTe/G;LTe/G;LTe/G;)LTe/B;
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
            "+TT;>;",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
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

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LTe/B;->A0([LTe/G;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static z0(Ljava/lang/Iterable;)LTe/B;
    .locals 3
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
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LTe/B;->Q2(Ljava/lang/Iterable;)LTe/B;

    move-result-object p0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-static {}, LTe/B;->V()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LTe/B;->V0(LXe/o;IZ)LTe/B;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(LXe/g;LXe/g;)V
    .locals 1
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

    invoke-static {p0, p1, p2, v0}, Lgf/l;->c(LTe/G;LXe/g;LXe/g;LXe/a;)V

    return-void
.end method

.method public final A1(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;
    .locals 8
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/G;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lgf/G;-><init>(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A2(LXe/o;)LTe/B;
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
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/c0;

    invoke-direct {v0, p0, p1}, Lgf/c0;-><init>(LTe/G;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A3(LTe/F;)LTe/B;
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
            "LTe/F<",
            "+TR;-TT;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lifter is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/w0;

    invoke-direct {v0, p0, p1}, Lgf/w0;-><init>(LTe/G;LTe/F;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A4(LXe/o;IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 6
    .annotation runtime LUe/d;
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
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "unit is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p6, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lgf/p0;->i(LTe/B;IJLjava/util/concurrent/TimeUnit;LTe/J;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Lgf/S0;->z8(Ljava/util/concurrent/Callable;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A5(LTe/G;)LTe/B;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LTe/B;->A0([LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A6(JLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 0
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LTe/B;->t1(JLjava/util/concurrent/TimeUnit;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final A7(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 8
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
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, LTe/B;->C7(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B(LXe/g;LXe/g;LXe/a;)V
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lgf/l;->c(LTe/G;LXe/g;LXe/g;LXe/a;)V

    return-void
.end method

.method public final B1(JLjava/util/concurrent/TimeUnit;Z)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LTe/B;->A1(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B2(LXe/o;LXe/c;)LTe/B;
    .locals 7
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
            "LXe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TV;>;)",
            "LTe/B<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lgf/p0;->a(LXe/o;)LXe/o;

    move-result-object v2

    invoke-static {}, LTe/B;->V()I

    move-result v5

    invoke-static {}, LTe/B;->V()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, LTe/B;->s2(LXe/o;LXe/c;ZII)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B3(LXe/o;)LTe/B;
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
            "-TT;+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/x0;

    invoke-direct {v0, p0, p1}, Lgf/x0;-><init>(LTe/G;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B4(LXe/o;ILTe/J;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
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
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;I",
            "LTe/J;",
            ")",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p2}, Lgf/p0;->h(LTe/B;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p1, p3}, Lgf/p0;->k(LXe/o;LTe/J;)LXe/o;

    move-result-object p1

    invoke-static {p2, p1}, Lgf/S0;->z8(Ljava/util/concurrent/Callable;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B5(Ljava/lang/Iterable;)LTe/B;
    .locals 2
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LTe/B;->Q2(Ljava/lang/Iterable;)LTe/B;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LTe/B;->A0([LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LTe/B;->u1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final B7(JLjava/util/concurrent/TimeUnit;LTe/J;J)LTe/B;
    .locals 8
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
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, LTe/B;->C7(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C(I)LTe/B;
    .locals 0
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LTe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LTe/B;->D(II)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C1(LTe/G;LXe/o;)LTe/B;
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
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TU;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "TV;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LTe/B;->G1(LTe/G;)LTe/B;

    move-result-object p1

    invoke-virtual {p1, p2}, LTe/B;->D1(LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C2(LXe/o;)LTe/B;
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
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LTe/B;->D2(LXe/o;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C3()LTe/B;
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
            "LTe/A<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lgf/z0;

    invoke-direct {v0, p0}, Lgf/z0;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final C4(LXe/o;JLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 6
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
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/B;->D4(LXe/o;JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C5(Ljava/lang/Object;)LTe/B;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LTe/B;->n3(Ljava/lang/Object;)LTe/B;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LTe/B;->A0([LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final C6()LTe/B;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/B<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LTe/B;->F6(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final C7(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/B;
    .locals 9
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
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, LTe/B;->D7(JLjava/util/concurrent/TimeUnit;LTe/J;JZI)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final D(II)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LTe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LTe/B;->E(IILjava/util/concurrent/Callable;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final D1(LXe/o;)LTe/B;
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
            "-TT;+",
            "LTe/G<",
            "TU;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemDelay is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lgf/p0;->c(LXe/o;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/B;->m2(LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final D2(LXe/o;Z)LTe/B;
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
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;Z)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/a0;

    invoke-direct {v0, p0, p1, p2}, Lgf/a0;-><init>(LTe/G;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final D4(LXe/o;JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
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
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p2, p3, p4, p5}, Lgf/p0;->j(LTe/B;JLjava/util/concurrent/TimeUnit;LTe/J;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Lgf/S0;->z8(Ljava/util/concurrent/Callable;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final varargs D5([Ljava/lang/Object;)LTe/B;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LTe/B;->K2([Ljava/lang/Object;)LTe/B;

    move-result-object p1

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LTe/B;->A0([LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final D6(LTe/J;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, LTe/B;->F6(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final D7(JLjava/util/concurrent/TimeUnit;LTe/J;JZI)LTe/B;
    .locals 13
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
            "JZI)",
            "LTe/B<",
            "LTe/B<",
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

    new-instance v0, Lgf/J1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lgf/J1;-><init>(LTe/G;JJLjava/util/concurrent/TimeUnit;LTe/J;JIZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final E(IILjava/util/concurrent/Callable;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
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
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "skip"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "bufferSupplier is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/m;-><init>(LTe/G;IILjava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final E1(JLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/B;->F1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final E2(LXe/o;)LTe/B;
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
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LTe/B;->F2(LXe/o;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final E4(LXe/o;LTe/J;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
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
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;",
            "LTe/J;",
            ")",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lgf/p0;->g(LTe/B;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1, p2}, Lgf/p0;->k(LXe/o;LTe/J;)LXe/o;

    move-result-object p1

    invoke-static {v0, p1}, Lgf/S0;->z8(Ljava/util/concurrent/Callable;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final E5()LVe/c;
    .locals 4
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    sget-object v1, LZe/a;->f:LXe/g;

    sget-object v2, LZe/a;->c:LXe/a;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, LTe/B;->I5(LXe/g;LXe/g;LXe/a;LXe/g;)LVe/c;

    move-result-object v0

    return-object v0
.end method

.method public final E6(Ljava/util/concurrent/TimeUnit;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LTe/B;->F6(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final E7(LTe/G;)LTe/B;
    .locals 1
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
            "LTe/G<",
            "TB;>;)",
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LTe/B;->F7(LTe/G;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final F(ILjava/util/concurrent/Callable;)LTe/B;
    .locals 0
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
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p2}, LTe/B;->E(IILjava/util/concurrent/Callable;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final F1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LTe/B;->R6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/B;->G1(LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final F2(LXe/o;Z)LTe/B;
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
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;Z)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/b0;

    invoke-direct {v0, p0, p1, p2}, Lgf/b0;-><init>(LTe/G;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final F4()Lnf/a;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lgf/S0;->y8(LTe/G;)Lnf/a;

    move-result-object v0

    return-object v0
.end method

.method public final F5(LXe/g;)LVe/c;
    .locals 3
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

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, LTe/B;->I5(LXe/g;LXe/g;LXe/a;LXe/g;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final F6(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/x1;

    invoke-direct {v0, p0, p1, p2}, Lgf/x1;-><init>(LTe/G;Ljava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final F7(LTe/G;I)LTe/B;
    .locals 1
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
            "LTe/G<",
            "TB;>;I)",
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/G1;

    invoke-direct {v0, p0, p1, p2}, Lgf/G1;-><init>(LTe/G;LTe/G;I)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final G(JJLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 8
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
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v7}, LTe/B;->I(JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final G1(LTe/G;)LTe/B;
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
            "LTe/G<",
            "TU;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/H;

    invoke-direct {v0, p0, p1}, Lgf/H;-><init>(LTe/G;LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final G2(LXe/g;)LVe/c;
    .locals 0
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

    invoke-virtual {p0, p1}, LTe/B;->F5(LXe/g;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final G4(I)Lnf/a;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p1}, Lgf/S0;->u8(LTe/G;I)Lnf/a;

    move-result-object p1

    return-object p1
.end method

.method public final G5(LXe/g;LXe/g;)LVe/c;
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
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LVe/c;"
        }
    .end annotation

    sget-object v0, LZe/a;->c:LXe/a;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, LTe/B;->I5(LXe/g;LXe/g;LXe/a;LXe/g;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final G6(JLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/B;->O6(JLjava/util/concurrent/TimeUnit;LTe/G;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final G7(LTe/G;LXe/o;)LTe/B;
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
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TU;>;",
            "LXe/o<",
            "-TU;+",
            "LTe/G<",
            "TV;>;>;)",
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LTe/B;->H7(LTe/G;LXe/o;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final H(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 8
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
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v7}, LTe/B;->I(JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final H1()LTe/B;
    .locals 2
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
            "LTe/B<",
            "TT2;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lgf/I;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgf/I;-><init>(LTe/G;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final H2(LXe/r;)LVe/c;
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
            "-TT;>;)",
            "LVe/c;"
        }
    .end annotation

    sget-object v0, LZe/a;->f:LXe/g;

    sget-object v1, LZe/a;->c:LXe/a;

    invoke-virtual {p0, p1, v0, v1}, LTe/B;->J2(LXe/r;LXe/g;LXe/a;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final H4(IJLjava/util/concurrent/TimeUnit;)Lnf/a;
    .locals 6
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
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/B;->I4(IJLjava/util/concurrent/TimeUnit;LTe/J;)Lnf/a;

    move-result-object p1

    return-object p1
.end method

.method public final H5(LXe/g;LXe/g;LXe/a;)LVe/c;
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
            ">;",
            "LXe/a;",
            ")",
            "LVe/c;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/B;->I5(LXe/g;LXe/g;LXe/a;LXe/g;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final H6(JLjava/util/concurrent/TimeUnit;LTe/G;)LTe/B;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
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

    invoke-virtual/range {v1 .. v6}, LTe/B;->O6(JLjava/util/concurrent/TimeUnit;LTe/G;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final H7(LTe/G;LXe/o;I)LTe/B;
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
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TU;>;",
            "LXe/o<",
            "-TU;+",
            "LTe/G<",
            "TV;>;>;I)",
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/H1;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/H1;-><init>(LTe/G;LTe/G;LXe/o;I)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final I(JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;)LTe/B;
    .locals 12
    .annotation runtime LUe/d;
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
            "LTe/B<",
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

    new-instance v0, Lgf/q;

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v11}, Lgf/q;-><init>(LTe/G;JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final I1(LXe/o;)LTe/B;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;",
            "LTe/A<",
            "TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/I;

    invoke-direct {v0, p0, p1}, Lgf/I;-><init>(LTe/G;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final I2(LXe/r;LXe/g;)LVe/c;
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
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LVe/c;"
        }
    .end annotation

    sget-object v0, LZe/a;->c:LXe/a;

    invoke-virtual {p0, p1, p2, v0}, LTe/B;->J2(LXe/r;LXe/g;LXe/a;)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public final I4(IJLjava/util/concurrent/TimeUnit;LTe/J;)Lnf/a;
    .locals 6
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
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p1

    invoke-static/range {v0 .. v5}, Lgf/S0;->w8(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;I)Lnf/a;

    move-result-object p1

    return-object p1
.end method

.method public final I5(LXe/g;LXe/g;LXe/a;LXe/g;)LVe/c;
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
            ">;",
            "LXe/a;",
            "LXe/g<",
            "-",
            "LVe/c;",
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

    new-instance v0, Lbf/u;

    invoke-direct {v0, p1, p2, p3, p4}, Lbf/u;-><init>(LXe/g;LXe/g;LXe/a;LXe/g;)V

    invoke-virtual {p0, v0}, LTe/B;->b(LTe/I;)V

    return-object v0
.end method

.method public final I6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LTe/B;->O6(JLjava/util/concurrent/TimeUnit;LTe/G;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final I7(Ljava/util/concurrent/Callable;)LTe/B;
    .locals 1
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
            "LTe/G<",
            "TB;>;>;)",
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LTe/B;->J7(Ljava/util/concurrent/Callable;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final J(JLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v5}, LTe/B;->M(JLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final J1()LTe/B;
    .locals 2
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

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-static {}, LZe/a;->g()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LTe/B;->L1(LXe/o;Ljava/util/concurrent/Callable;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final J2(LXe/r;LXe/g;LXe/a;)LVe/c;
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

    new-instance v0, Lbf/p;

    invoke-direct {v0, p1, p2, p3}, Lbf/p;-><init>(LXe/r;LXe/g;LXe/a;)V

    invoke-virtual {p0, v0}, LTe/B;->b(LTe/I;)V

    return-object v0
.end method

.method public final J4(ILTe/J;)Lnf/a;
    .locals 1
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
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-virtual {p0, p1}, LTe/B;->G4(I)Lnf/a;

    move-result-object p1

    invoke-static {p1, p2}, Lgf/S0;->A8(Lnf/a;LTe/J;)Lnf/a;

    move-result-object p1

    return-object p1
.end method

.method public abstract J5(LTe/I;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final J6(JLjava/util/concurrent/TimeUnit;LTe/J;LTe/G;)LTe/B;
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
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v5}, LTe/B;->O6(JLjava/util/concurrent/TimeUnit;LTe/G;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final J7(Ljava/util/concurrent/Callable;I)LTe/B;
    .locals 1
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
            "LTe/G<",
            "TB;>;>;I)",
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/I1;

    invoke-direct {v0, p0, p1, p2}, Lgf/I1;-><init>(LTe/G;Ljava/util/concurrent/Callable;I)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final K(JLjava/util/concurrent/TimeUnit;I)LTe/B;
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
            "I)",
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v5}, LTe/B;->M(JLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final K1(LXe/o;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->g()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LTe/B;->L1(LXe/o;Ljava/util/concurrent/Callable;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final K4(JLjava/util/concurrent/TimeUnit;)Lnf/a;
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
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/B;->L4(JLjava/util/concurrent/TimeUnit;LTe/J;)Lnf/a;

    move-result-object p1

    return-object p1
.end method

.method public final K5(LTe/J;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/l1;

    invoke-direct {v0, p0, p1}, Lgf/l1;-><init>(LTe/G;LTe/J;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final K6(LTe/G;LXe/o;)LTe/B;
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
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TU;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "TV;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LTe/B;->P6(LTe/G;LXe/o;LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final K7(LTe/G;LTe/G;LTe/G;LTe/G;LXe/j;)LTe/B;
    .locals 2
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
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TT1;>;",
            "LTe/G<",
            "TT2;>;",
            "LTe/G<",
            "TT3;>;",
            "LTe/G<",
            "TT4;>;",
            "LXe/j<",
            "-TT;-TT1;-TT2;-TT3;-TT4;TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o3 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o4 is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p5}, LZe/a;->A(LXe/j;)LXe/o;

    move-result-object p5

    const/4 v0, 0x4

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    invoke-virtual {p0, v0, p5}, LTe/B;->P7([LTe/G;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final L(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 8
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
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v7}, LTe/B;->N(JLjava/util/concurrent/TimeUnit;LTe/J;ILjava/util/concurrent/Callable;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final L1(LXe/o;Ljava/util/concurrent/Callable;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionSupplier is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/K;

    invoke-direct {v0, p0, p1, p2}, Lgf/K;-><init>(LTe/G;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final L4(JLjava/util/concurrent/TimeUnit;LTe/J;)Lnf/a;
    .locals 1
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
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3, p4}, Lgf/S0;->v8(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;)Lnf/a;

    move-result-object p1

    return-object p1
.end method

.method public final L5(LTe/I;)LTe/I;
    .locals 0
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LTe/I<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LTe/B;->b(LTe/I;)V

    return-object p1
.end method

.method public final L6(LTe/G;LXe/o;LTe/G;)LTe/B;
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
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TU;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "TV;>;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "other is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, LTe/B;->P6(LTe/G;LXe/o;LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final L7(LTe/G;LTe/G;LTe/G;LXe/i;)LTe/B;
    .locals 2
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
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TT1;>;",
            "LTe/G<",
            "TT2;>;",
            "LTe/G<",
            "TT3;>;",
            "LXe/i<",
            "-TT;-TT1;-TT2;-TT3;TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o3 is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p4}, LZe/a;->z(LXe/i;)LXe/o;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, v0, p4}, LTe/B;->P7([LTe/G;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final M(JLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/B;
    .locals 8
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
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v7}, LTe/B;->N(JLjava/util/concurrent/TimeUnit;LTe/J;ILjava/util/concurrent/Callable;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final M1()LTe/B;
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

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/B;->O1(LXe/o;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final M4(LTe/J;)Lnf/a;
    .locals 1
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
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LTe/B;->F4()Lnf/a;

    move-result-object v0

    invoke-static {v0, p1}, Lgf/S0;->A8(Lnf/a;LTe/J;)Lnf/a;

    move-result-object p1

    return-object p1
.end method

.method public final M5(LTe/G;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/m1;

    invoke-direct {v0, p0, p1}, Lgf/m1;-><init>(LTe/G;LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final M6(LXe/o;)LTe/B;
    .locals 1
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
            "LTe/G<",
            "TV;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, LTe/B;->P6(LTe/G;LXe/o;LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final M7(LTe/G;LTe/G;LXe/h;)LTe/B;
    .locals 2
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
            "LTe/G<",
            "TT1;>;",
            "LTe/G<",
            "TT2;>;",
            "LXe/h<",
            "-TT;-TT1;-TT2;TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "o1 is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "o2 is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, LZe/a;->y(LXe/h;)LXe/o;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0, p3}, LTe/B;->P7([LTe/G;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final N(JLjava/util/concurrent/TimeUnit;LTe/J;ILjava/util/concurrent/Callable;Z)LTe/B;
    .locals 12
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
            "LTe/B<",
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

    new-instance v0, Lgf/q;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lgf/q;-><init>(LTe/G;JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final N0(LXe/o;)LTe/B;
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
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LTe/B;->O0(LXe/o;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final N1(LXe/d;)LTe/B;
    .locals 2
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/L;

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lgf/L;-><init>(LTe/G;LXe/o;LXe/d;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final N4()LTe/B;
    .locals 3
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

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {}, LZe/a;->c()LXe/r;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, LTe/B;->P4(JLXe/r;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final N5(LXe/o;)LTe/B;
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
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LTe/B;->O5(LXe/o;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final N6(LXe/o;LTe/G;)LTe/B;
    .locals 1
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
            "LTe/G<",
            "TV;>;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, LTe/B;->P6(LTe/G;LXe/o;LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final N7(LTe/G;LXe/c;)LTe/B;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "+TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/K1;

    invoke-direct {v0, p0, p2, p1}, Lgf/K1;-><init>(LTe/G;LXe/c;LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O(LTe/G;)LTe/B;
    .locals 1
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
            "LTe/G<",
            "TB;>;)",
            "LTe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LTe/B;->S(LTe/G;Ljava/util/concurrent/Callable;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O0(LXe/o;I)LTe/B;
    .locals 2
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
            "LTe/G<",
            "+TR;>;>;I)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Lgf/Y0;->a(Ljava/lang/Object;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lgf/v;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, p2, v1}, Lgf/v;-><init>(LTe/G;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O1(LXe/o;)LTe/B;
    .locals 2
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/L;

    invoke-static {}, LZe/b;->d()LXe/d;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lgf/L;-><init>(LTe/G;LXe/o;LXe/d;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O4(J)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->c()LXe/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LTe/B;->P4(JLXe/r;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O5(LXe/o;I)LTe/B;
    .locals 2
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
            "LTe/G<",
            "+TR;>;>;I)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Lgf/Y0;->a(Ljava/lang/Object;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lgf/n1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lgf/n1;-><init>(LTe/G;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O6(JLjava/util/concurrent/TimeUnit;LTe/G;LTe/J;)LTe/B;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/G<",
            "+TT;>;",
            "LTe/J;",
            ")",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeUnit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/z1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lgf/z1;-><init>(LTe/B;JLjava/util/concurrent/TimeUnit;LTe/J;LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final O7(Ljava/lang/Iterable;LXe/o;)LTe/B;
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
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "*>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/L1;

    invoke-direct {v0, p0, p1, p2}, Lgf/L1;-><init>(LTe/G;Ljava/lang/Iterable;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final P(LTe/G;I)LTe/B;
    .locals 1
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
            "LTe/G<",
            "TB;>;I)",
            "LTe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p2}, LZe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LTe/B;->S(LTe/G;Ljava/util/concurrent/Callable;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final P0(LXe/o;)LTe/c;
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
            "-TT;+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LTe/B;->Q0(LXe/o;I)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final P1(LXe/g;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/M;

    invoke-direct {v0, p0, p1}, Lgf/M;-><init>(LTe/G;LXe/g;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final P4(JLXe/r;)LTe/B;
    .locals 2
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "predicate is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/U0;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/U0;-><init>(LTe/B;JLXe/r;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

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

.method public final P5(LXe/o;)LTe/c;
    .locals 2
    .param p1    # LXe/o;
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

    new-instance v0, Lff/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lff/o;-><init>(LTe/B;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final P6(LTe/G;LXe/o;LTe/G;)LTe/B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TU;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "TV;>;>;",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemTimeoutIndicator is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/y1;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/y1;-><init>(LTe/B;LTe/G;LXe/o;LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final P7([LTe/G;LXe/o;)LTe/B;
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
            ">([",
            "LTe/G<",
            "*>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/L1;

    invoke-direct {v0, p0, p1, p2}, Lgf/L1;-><init>(LTe/G;[LTe/G;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Q(LTe/G;LXe/o;)LTe/B;
    .locals 1
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
            "LTe/G<",
            "+TTOpening;>;",
            "LXe/o<",
            "-TTOpening;+",
            "LTe/G<",
            "+TTClosing;>;>;)",
            "LTe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LTe/B;->R(LTe/G;LXe/o;Ljava/util/concurrent/Callable;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(LXe/o;I)LTe/c;
    .locals 2
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
            ">;I)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacityHint"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lff/l;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, Lff/l;-><init>(LTe/B;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final Q1(LXe/a;)LTe/B;
    .locals 3
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    sget-object v2, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, v1, v2, p1}, LTe/B;->W1(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Q4(LXe/d;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/T0;

    invoke-direct {v0, p0, p1}, Lgf/T0;-><init>(LTe/B;LXe/d;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Q5(LXe/o;)LTe/c;
    .locals 2
    .param p1    # LXe/o;
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

    new-instance v0, Lff/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lff/o;-><init>(LTe/B;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final R(LTe/G;LXe/o;Ljava/util/concurrent/Callable;)LTe/B;
    .locals 1
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
            "LTe/G<",
            "+TTOpening;>;",
            "LXe/o<",
            "-TTOpening;+",
            "LTe/G<",
            "+TTClosing;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/n;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/n;-><init>(LTe/G;LTe/G;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final R0(LXe/o;)LTe/c;
    .locals 2
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

    invoke-virtual {p0, p1, v0, v1}, LTe/B;->T0(LXe/o;ZI)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final R1(LXe/a;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/N;

    invoke-direct {v0, p0, p1}, Lgf/N;-><init>(LTe/G;LXe/a;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final R4(LXe/r;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, LTe/B;->P4(JLXe/r;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final R5(LXe/o;)LTe/B;
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
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LTe/B;->S5(LXe/o;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final S(LTe/G;Ljava/util/concurrent/Callable;)LTe/B;
    .locals 1
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
            "LTe/G<",
            "TB;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundary is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/p;

    invoke-direct {v0, p0, p1, p2}, Lgf/p;-><init>(LTe/G;LTe/G;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final S0(LXe/o;Z)LTe/c;
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
            "-TT;+",
            "LTe/i;",
            ">;Z)",
            "LTe/c;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LTe/B;->T0(LXe/o;ZI)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final S1(LXe/a;)LTe/B;
    .locals 3
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v1

    sget-object v2, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LTe/B;->W1(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final S4(LXe/e;)LTe/B;
    .locals 2
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p1}, LZe/a;->v(LXe/e;)LXe/r;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, LTe/B;->P4(JLXe/r;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final S5(LXe/o;I)LTe/B;
    .locals 2
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
            "LTe/G<",
            "+TR;>;>;I)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Lgf/Y0;->a(Ljava/lang/Object;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lgf/n1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lgf/n1;-><init>(LTe/G;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final S6()LTe/B;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/B<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LTe/B;->V6(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final T(Ljava/util/concurrent/Callable;)LTe/B;
    .locals 1
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
            "LTe/G<",
            "TB;>;>;)",
            "LTe/B<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LTe/B;->U(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final T0(LXe/o;ZI)LTe/c;
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

    new-instance v0, Lff/l;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lff/l;-><init>(LTe/B;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final T1(LXe/a;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LTe/B;->Y1(LXe/g;LXe/a;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final T4(LXe/o;)LTe/B;
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
            "LTe/B<",
            "Ljava/lang/Throwable;",
            ">;+",
            "LTe/G<",
            "*>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/V0;

    invoke-direct {v0, p0, p1}, Lgf/V0;-><init>(LTe/G;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final T5(LXe/o;)LTe/B;
    .locals 2
    .param p1    # LXe/o;
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
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lff/p;-><init>(LTe/B;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final T6(LTe/J;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, LTe/B;->V6(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final U(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)LTe/B;
    .locals 1
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
            "LTe/G<",
            "TB;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundarySupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/o;

    invoke-direct {v0, p0, p1, p2}, Lgf/o;-><init>(LTe/G;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final U0(LXe/o;)LTe/B;
    .locals 2
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
            "LTe/G<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, LTe/B;->V0(LXe/o;IZ)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final U1(LTe/I;)LTe/B;
    .locals 3
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lgf/p0;->f(LTe/I;)LXe/g;

    move-result-object v0

    invoke-static {p1}, Lgf/p0;->e(LTe/I;)LXe/g;

    move-result-object v1

    invoke-static {p1}, Lgf/p0;->d(LTe/I;)LXe/a;

    move-result-object p1

    sget-object v2, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LTe/B;->W1(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final U4(LTe/I;)V
    .locals 1
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lof/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LTe/B;->b(LTe/I;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lof/l;

    invoke-direct {v0, p1}, Lof/l;-><init>(LTe/I;)V

    invoke-virtual {p0, v0}, LTe/B;->b(LTe/I;)V

    :goto_0
    return-void
.end method

.method public final U5(LXe/o;)LTe/B;
    .locals 2
    .param p1    # LXe/o;
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
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/p;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lff/p;-><init>(LTe/B;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final U6(Ljava/util/concurrent/TimeUnit;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "Lsf/d<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LTe/B;->V6(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final V0(LXe/o;IZ)LTe/B;
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
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;IZ)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Lgf/Y0;->a(Ljava/lang/Object;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lgf/v;

    if-eqz p3, :cond_2

    sget-object p3, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_2
    sget-object p3, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lgf/v;-><init>(LTe/G;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final V1(LXe/g;)LTe/B;
    .locals 3
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
            "LTe/A<",
            "TT;>;>;)",
            "LTe/B<",
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

    invoke-virtual {p0, v0, v1, p1, v2}, LTe/B;->W1(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final V4(JLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/B;->W4(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final V5(LXe/o;)LTe/B;
    .locals 2
    .param p1    # LXe/o;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lff/q;-><init>(LTe/B;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final V6(Ljava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 1
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
            "LTe/B<",
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

    invoke-virtual {p0, p1}, LTe/B;->B3(LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final W()LTe/B;
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

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, LTe/B;->X(I)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final W0(LXe/o;)LTe/B;
    .locals 2
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
            "LTe/G<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LTe/B;->X0(LXe/o;II)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final W1(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/B;
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
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LXe/a;",
            "LXe/a;",
            ")",
            "LTe/B<",
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

    new-instance v0, Lgf/O;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lgf/O;-><init>(LTe/G;LXe/g;LXe/g;LXe/a;LXe/a;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final W4(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 8
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/W0;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lgf/W0;-><init>(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final W5(LXe/o;)LTe/B;
    .locals 2
    .param p1    # LXe/o;
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lff/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lff/q;-><init>(LTe/B;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final W6(LXe/o;)Ljava/lang/Object;
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
            "LTe/B<",
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

.method public final X(I)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/r;

    invoke-direct {v0, p0, p1}, Lgf/r;-><init>(LTe/B;I)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X0(LXe/o;II)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+TR;>;>;II)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/w;

    sget-object v4, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lgf/w;-><init>(LTe/G;LXe/o;Lio/reactivex/internal/util/j;II)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X1(LXe/g;)LTe/B;
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
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    sget-object v1, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, p1, v1, v1}, LTe/B;->W1(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X2(LXe/o;)LTe/B;
    .locals 3
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
            "LTe/B<",
            "Lnf/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, LTe/B;->a3(LXe/o;LXe/o;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X3(LTe/i;)LTe/B;
    .locals 1
    .param p1    # LTe/i;
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
            "(",
            "LTe/i;",
            ")",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/A0;

    invoke-direct {v0, p0, p1}, Lgf/A0;-><init>(LTe/B;LTe/i;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X4(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;
    .locals 8
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/W0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lgf/W0;-><init>(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final X6(LTe/b;)LTe/l;
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
            "(",
            "LTe/b;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/l0;

    invoke-direct {v0, p0}, Ldf/l0;-><init>(LTe/B;)V

    sget-object v1, LTe/B$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, LTe/l;->r4()LTe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ldf/O0;

    invoke-direct {p1, v0}, Ldf/O0;-><init>(LTe/l;)V

    invoke-static {p1}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v0}, LTe/l;->B4()LTe/l;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v0}, LTe/l;->z4()LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y(Ljava/lang/Class;)LTe/B;
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
            "Ljava/lang/Class<",
            "TU;>;)",
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->e(Ljava/lang/Class;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/B;->B3(LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(LXe/o;IIZ)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+TR;>;>;IIZ)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/w;

    if-eqz p4, :cond_0

    sget-object p4, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    :goto_0
    move-object v4, p4

    goto :goto_1

    :cond_0
    sget-object p4, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    goto :goto_0

    :goto_1
    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lgf/w;-><init>(LTe/G;LXe/o;Lio/reactivex/internal/util/j;II)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y1(LXe/g;LXe/a;)LTe/B;
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
            "-",
            "LVe/c;",
            ">;",
            "LXe/a;",
            ")",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onDispose is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/P;

    invoke-direct {v0, p0, p1, p2}, Lgf/P;-><init>(LTe/B;LXe/g;LXe/a;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y2(LXe/o;LXe/o;)LTe/B;
    .locals 2
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
            "LTe/B<",
            "Lnf/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, LTe/B;->a3(LXe/o;LXe/o;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y3(LTe/y;)LTe/B;
    .locals 1
    .param p1    # LTe/y;
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
            "(",
            "LTe/y<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/B0;

    invoke-direct {v0, p0, p1}, Lgf/B0;-><init>(LTe/B;LTe/y;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y4(JLjava/util/concurrent/TimeUnit;Z)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LTe/B;->X4(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Y6()Ljava/util/concurrent/Future;
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

    new-instance v0, Lbf/q;

    invoke-direct {v0}, Lbf/q;-><init>()V

    invoke-virtual {p0, v0}, LTe/B;->L5(LTe/I;)LTe/I;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final Z(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;
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
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "LXe/b<",
            "-TU;-TT;>;)",
            "LTe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialValueSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/t;

    invoke-direct {v0, p0, p1, p2}, Lgf/t;-><init>(LTe/G;Ljava/util/concurrent/Callable;LXe/b;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final Z0(LXe/o;Z)LTe/B;
    .locals 2
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
            "LTe/G<",
            "+TR;>;>;Z)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, LTe/B;->Y0(LXe/o;IIZ)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Z1(LXe/g;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    sget-object v1, LZe/a;->c:LXe/a;

    invoke-virtual {p0, p1, v0, v1, v1}, LTe/B;->W1(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Z2(LXe/o;LXe/o;Z)LTe/B;
    .locals 1
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
            "LTe/B<",
            "Lnf/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/B;->a3(LXe/o;LXe/o;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Z3(LTe/G;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LTe/B;->F3(LTe/G;LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Z4(LTe/G;)LTe/B;
    .locals 2
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
            "LTe/G<",
            "TU;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/X0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgf/X0;-><init>(LTe/G;LTe/G;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final Z6()LTe/K;
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
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, LTe/B;->a7(I)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final a0(Ljava/lang/Object;LXe/b;)LTe/K;
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
            ">(TU;",
            "LXe/b<",
            "-TU;-TT;>;)",
            "LTe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LTe/B;->Z(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final a1(LXe/o;)LTe/B;
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
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/c0;

    invoke-direct {v0, p0, p1}, Lgf/c0;-><init>(LTe/G;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final a2(LXe/g;)LTe/B;
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
            "-",
            "LVe/c;",
            ">;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LZe/a;->c:LXe/a;

    invoke-virtual {p0, p1, v0}, LTe/B;->Y1(LXe/g;LXe/a;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final a3(LXe/o;LXe/o;ZI)LTe/B;
    .locals 7
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
            "-TT;+TV;>;ZI)",
            "LTe/B<",
            "Lnf/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/k0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lgf/k0;-><init>(LTe/G;LXe/o;LXe/o;IZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final a4(LTe/Q;)LTe/B;
    .locals 1
    .param p1    # LTe/Q;
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
            "(",
            "LTe/Q<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/C0;

    invoke-direct {v0, p0, p1}, Lgf/C0;-><init>(LTe/B;LTe/Q;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final a5(LTe/G;Z)LTe/B;
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
            "LTe/G<",
            "TU;>;Z)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/X0;

    invoke-direct {v0, p0, p1, p2}, Lgf/X0;-><init>(LTe/G;LTe/G;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final a7(I)LTe/K;
    .locals 1
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

    new-instance v0, Lgf/C1;

    invoke-direct {v0, p0, p1}, Lgf/C1;-><init>(LTe/G;I)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final b(LTe/I;)V
    .locals 2
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, p1}, Lqf/a;->g0(LTe/B;LTe/I;)LTe/I;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LTe/B;->J5(LTe/I;)V
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

.method public final b1(LXe/o;I)LTe/B;
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
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;I)",
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p1}, Lgf/p0;->a(LXe/o;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LTe/B;->O0(LXe/o;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final b2(LXe/a;)LTe/B;
    .locals 3
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-static {p1}, LZe/a;->a(LXe/a;)LXe/g;

    move-result-object v1

    sget-object v2, LZe/a;->c:LXe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LTe/B;->W1(LXe/g;LXe/g;LXe/a;LXe/a;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final b3(LXe/o;Z)LTe/B;
    .locals 2
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
            "LTe/B<",
            "Lnf/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, LTe/B;->a3(LXe/o;LXe/o;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final b5(LXe/c;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/c<",
            "TT;TT;TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "accumulator is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/Z0;

    invoke-direct {v0, p0, p1}, Lgf/Z0;-><init>(LTe/G;LXe/c;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final b6(J)LTe/B;
    .locals 3
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Lgf/o1;

    invoke-direct {v0, p0, p1, p2}, Lgf/o1;-><init>(LTe/G;J)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

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

.method public final b7(Ljava/util/concurrent/Callable;)LTe/K;
    .locals 1
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

    new-instance v0, Lgf/C1;

    invoke-direct {v0, p0, p1}, Lgf/C1;-><init>(LTe/G;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final c1(LXe/o;)LTe/B;
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
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LTe/B;->d1(LXe/o;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final c2(J)LTe/s;
    .locals 3
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

    new-instance v0, Lgf/S;

    invoke-direct {v0, p0, p1, p2}, Lgf/S;-><init>(LTe/G;J)V

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

.method public final c3(LTe/G;LXe/o;LXe/o;LXe/c;)LTe/B;
    .locals 7
    .annotation runtime LUe/d;
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
            "LTe/G<",
            "+TTRight;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LXe/o<",
            "-TTRight;+",
            "LTe/G<",
            "TTRightEnd;>;>;",
            "LXe/c<",
            "-TT;-",
            "LTe/B<",
            "TTRight;>;+TR;>;)",
            "LTe/B<",
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

    new-instance v0, Lgf/l0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lgf/l0;-><init>(LTe/G;LTe/G;LXe/o;LXe/o;LXe/c;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final c4(LTe/J;)LTe/B;
    .locals 2
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LTe/B;->e4(LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final c5(Ljava/lang/Object;LXe/c;)LTe/B;
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
            ">(TR;",
            "LXe/c<",
            "TR;-TT;TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LTe/B;->d5(Ljava/util/concurrent/Callable;LXe/c;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final c6(JLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 0
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LTe/B;->Q6(JLjava/util/concurrent/TimeUnit;)LTe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/B;->n6(LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final c7(LXe/o;)LTe/K;
    .locals 1
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
            "TK;TT;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1}, LZe/a;->F(LXe/o;)LXe/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LTe/B;->Z(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final d(LXe/r;)LTe/K;
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
            "-TT;>;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/g;

    invoke-direct {v0, p0, p1}, Lgf/g;-><init>(LTe/G;LXe/r;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final d1(LXe/o;I)LTe/B;
    .locals 2
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
            "+TR;>;>;I)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lff/m;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, Lff/m;-><init>(LTe/B;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final d2(JLjava/lang/Object;)LTe/K;
    .locals 2
    .annotation runtime LUe/d;
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

    new-instance v0, Lgf/T;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/T;-><init>(LTe/G;JLjava/lang/Object;)V

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

.method public final d3()LTe/B;
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

    new-instance v0, Lgf/m0;

    invoke-direct {v0, p0}, Lgf/m0;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final d4(LTe/J;Z)LTe/B;
    .locals 1
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LTe/B;->e4(LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final d5(Ljava/util/concurrent/Callable;LXe/c;)LTe/B;
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
            "LXe/c<",
            "TR;-TT;TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "accumulator is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/a1;

    invoke-direct {v0, p0, p1, p2}, Lgf/a1;-><init>(LTe/G;Ljava/util/concurrent/Callable;LXe/c;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final d6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LTe/B;->R6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/B;->n6(LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final d7(LXe/o;LXe/o;)LTe/K;
    .locals 1
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

    invoke-virtual {p0, v0, p1}, LTe/B;->Z(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final e1(LXe/o;)LTe/B;
    .locals 2
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
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LTe/B;->g1(LXe/o;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final e2(J)LTe/K;
    .locals 3
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

    new-instance v0, Lgf/T;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lgf/T;-><init>(LTe/G;JLjava/lang/Object;)V

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

.method public final e3()LTe/c;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    new-instance v0, Lgf/o0;

    invoke-direct {v0, p0}, Lgf/o0;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object v0

    return-object v0
.end method

.method public final e4(LTe/J;ZI)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/J;",
            "ZI)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/E0;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/E0;-><init>(LTe/G;LTe/J;ZI)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final e6(I)LTe/B;
    .locals 3
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    new-instance p1, Lgf/n0;

    invoke-direct {p1, p0}, Lgf/n0;-><init>(LTe/G;)V

    invoke-static {p1}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lgf/q1;

    invoke-direct {p1, p0}, Lgf/q1;-><init>(LTe/G;)V

    invoke-static {p1}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lgf/p1;

    invoke-direct {v0, p0, p1}, Lgf/p1;-><init>(LTe/G;I)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

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

.method public final e7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;)LTe/K;
    .locals 1
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

    const-string v0, "mapSupplier is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, LZe/a;->G(LXe/o;LXe/o;)LXe/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, LTe/B;->Z(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final f1(LXe/o;Z)LTe/B;
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
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;Z)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LTe/B;->g1(LXe/o;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final f4(Ljava/lang/Class;)LTe/B;
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
            "Ljava/lang/Class<",
            "TU;>;)",
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->l(Ljava/lang/Class;)LXe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/B;->i2(LXe/r;)LTe/B;

    move-result-object v0

    invoke-virtual {v0, p1}, LTe/B;->Y(Ljava/lang/Class;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final f6(JJLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 9
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:trampoline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->i()LTe/J;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, LTe/B;->h6(JJLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final f7(LXe/o;)LTe/K;
    .locals 3
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

    invoke-virtual {p0, p1, v0, v1, v2}, LTe/B;->i7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final f8(LTe/G;LXe/c;)LTe/B;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "+TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2}, LTe/B;->Y7(LTe/G;LTe/G;LXe/c;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final g1(LXe/o;ZI)LTe/B;
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
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;ZI)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lff/m;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lff/m;-><init>(LTe/B;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final g4(LTe/G;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->n(Ljava/lang/Object;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/B;->h4(LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final g6(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 9
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, LTe/B;->h6(JJLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final g7(LXe/o;LXe/o;)LTe/K;
    .locals 2
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

    invoke-virtual {p0, p1, p2, v0, v1}, LTe/B;->i7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final g8(LTe/G;LXe/c;Z)LTe/B;
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
            "LTe/G<",
            "+TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;Z)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, LTe/B;->Z7(LTe/G;LTe/G;LXe/c;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final h1(LXe/o;)LTe/B;
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
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LTe/B;->i1(LXe/o;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final h4(LXe/o;)LTe/B;
    .locals 2
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
            "Ljava/lang/Throwable;",
            "+",
            "LTe/G<",
            "+TT;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/F0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgf/F0;-><init>(LTe/G;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final h6(JJLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;
    .locals 11
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
            "ZI)",
            "LTe/B<",
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

    new-instance v10, Lgf/r1;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lgf/r1;-><init>(LTe/G;JJLjava/util/concurrent/TimeUnit;LTe/J;IZ)V

    invoke-static {v10}, Lqf/a;->R(LTe/B;)LTe/B;

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

.method public final h7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;)LTe/K;
    .locals 1
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

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/B;->i7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final h8(LTe/G;LXe/c;ZI)LTe/B;
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
            "LTe/G<",
            "+TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;ZI)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, LTe/B;->a8(LTe/G;LTe/G;LXe/c;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i(LTe/G;)LTe/B;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LTe/G;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LTe/B;->h([LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i1(LXe/o;I)LTe/B;
    .locals 2
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
            "+TR;>;>;I)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lff/n;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, Lff/n;-><init>(LTe/B;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i2(LXe/r;)LTe/B;
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
            "-TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/W;

    invoke-direct {v0, p0, p1}, Lgf/W;-><init>(LTe/G;LXe/r;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i4(LXe/o;)LTe/B;
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
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/G0;

    invoke-direct {v0, p0, p1}, Lgf/G0;-><init>(LTe/G;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i5()LTe/B;
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

    new-instance v0, Lgf/d1;

    invoke-direct {v0, p0}, Lgf/d1;-><init>(LTe/B;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final i6(JLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:trampoline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->i()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, LTe/B;->l6(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i7(LXe/o;LXe/o;Ljava/util/concurrent/Callable;LXe/o;)LTe/K;
    .locals 1
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

    invoke-virtual {p0, p3, p1}, LTe/B;->Z(Ljava/util/concurrent/Callable;LXe/b;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final i8(Ljava/lang/Iterable;LXe/c;)LTe/B;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TU;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/N1;

    invoke-direct {v0, p0, p1, p2}, Lgf/N1;-><init>(LTe/B;Ljava/lang/Iterable;LXe/c;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final j(LXe/r;)LTe/K;
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
            "-TT;>;)",
            "LTe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/j;

    invoke-direct {v0, p0, p1}, Lgf/j;-><init>(LTe/G;LXe/r;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final j1(LXe/o;)LTe/B;
    .locals 2
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
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LTe/B;->l1(LXe/o;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final j2(Ljava/lang/Object;)LTe/K;
    .locals 2
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

    invoke-virtual {p0, v0, v1, p1}, LTe/B;->d2(JLjava/lang/Object;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final j4(Ljava/lang/Object;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->n(Ljava/lang/Object;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/B;->i4(LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final j5()LTe/B;
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

    invoke-virtual {p0}, LTe/B;->n4()Lnf/a;

    move-result-object v0

    invoke-virtual {v0}, Lnf/a;->o8()LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final j6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 7
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, LTe/B;->l6(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final j7()LTe/K;
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
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->q()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/B;->l7(Ljava/util/Comparator;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final k(LTe/C;)Ljava/lang/Object;
    .locals 1
    .param p1    # LTe/C;
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
            "LTe/C<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/C;

    invoke-interface {p1, p0}, LTe/C;->a(LTe/B;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k1(LXe/o;Z)LTe/B;
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
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;Z)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LTe/B;->l1(LXe/o;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final k2()LTe/s;
    .locals 2
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

    invoke-virtual {p0, v0, v1}, LTe/B;->c2(J)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final k4(LTe/G;)LTe/B;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/F0;

    invoke-static {p1}, LZe/a;->n(Ljava/lang/Object;)LXe/o;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lgf/F0;-><init>(LTe/G;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final k5(Ljava/lang/Object;)LTe/K;
    .locals 1
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

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/f1;

    invoke-direct {v0, p0, p1}, Lgf/f1;-><init>(LTe/G;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final k6(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;
    .locals 7
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, LTe/B;->l6(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final k7(I)LTe/K;
    .locals 1
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

    invoke-static {}, LZe/a;->q()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LTe/B;->m7(Ljava/util/Comparator;I)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final l()Ljava/lang/Object;
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

    new-instance v0, Lbf/f;

    invoke-direct {v0}, Lbf/f;-><init>()V

    invoke-virtual {p0, v0}, LTe/B;->b(LTe/I;)V

    invoke-virtual {v0}, Lbf/e;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final l1(LXe/o;ZI)LTe/B;
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
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;ZI)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lff/n;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lff/n;-><init>(LTe/B;LXe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final l2()LTe/K;
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

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LTe/B;->e2(J)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final l3()LTe/K;
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

    invoke-static {}, LZe/a;->b()LXe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LTe/B;->d(LXe/r;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final l4()LTe/B;
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

    new-instance v0, Lgf/J;

    invoke-direct {v0, p0}, Lgf/J;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final l5()LTe/s;
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

    new-instance v0, Lgf/e1;

    invoke-direct {v0, p0}, Lgf/e1;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final l6(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;
    .locals 9
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
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v8}, LTe/B;->h6(JJLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final l7(Ljava/util/Comparator;)LTe/K;
    .locals 1
    .annotation runtime LUe/d;
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

    invoke-virtual {p0}, LTe/B;->Z6()LTe/K;

    move-result-object v0

    invoke-static {p1}, LZe/a;->o(Ljava/util/Comparator;)LXe/o;

    move-result-object p1

    invoke-virtual {v0, p1}, LTe/K;->u0(LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/Object;)Ljava/lang/Object;
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

    new-instance v0, Lbf/f;

    invoke-direct {v0}, Lbf/f;-><init>()V

    invoke-virtual {p0, v0}, LTe/B;->b(LTe/I;)V

    invoke-virtual {v0}, Lbf/e;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final m1(LTe/i;)LTe/B;
    .locals 1
    .param p1    # LTe/i;
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
            "(",
            "LTe/i;",
            ")",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/x;

    invoke-direct {v0, p0, p1}, Lgf/x;-><init>(LTe/B;LTe/i;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m2(LXe/o;)LTe/B;
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
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LTe/B;->v2(LXe/o;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m3(LTe/G;LXe/o;LXe/o;LXe/c;)LTe/B;
    .locals 7
    .annotation runtime LUe/d;
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
            "LTe/G<",
            "+TTRight;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LXe/o<",
            "-TTRight;+",
            "LTe/G<",
            "TTRightEnd;>;>;",
            "LXe/c<",
            "-TT;-TTRight;+TR;>;)",
            "LTe/B<",
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

    new-instance v0, Lgf/s0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lgf/s0;-><init>(LTe/G;LTe/G;LXe/o;LXe/o;LXe/c;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m4(LXe/o;)LTe/B;
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
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/I0;

    invoke-direct {v0, p0, p1}, Lgf/I0;-><init>(LTe/G;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m5()LTe/K;
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

    new-instance v0, Lgf/f1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgf/f1;-><init>(LTe/G;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final m6(JLjava/util/concurrent/TimeUnit;Z)LTe/B;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:trampoline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->i()LTe/J;

    move-result-object v4

    invoke-static {}, LTe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, LTe/B;->l6(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m7(Ljava/util/Comparator;I)LTe/K;
    .locals 1
    .annotation runtime LUe/d;
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

    invoke-virtual {p0, p2}, LTe/B;->a7(I)LTe/K;

    move-result-object p2

    invoke-static {p1}, LZe/a;->o(Ljava/util/Comparator;)LXe/o;

    move-result-object p1

    invoke-virtual {p2, p1}, LTe/K;->u0(LXe/o;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final n(LXe/g;)V
    .locals 2
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

    invoke-virtual {p0}, LTe/B;->o()Ljava/lang/Iterable;

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

.method public final n1(LTe/y;)LTe/B;
    .locals 1
    .param p1    # LTe/y;
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
            "(",
            "LTe/y<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/y;

    invoke-direct {v0, p0, p1}, Lgf/y;-><init>(LTe/B;LTe/y;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final n2(LXe/o;I)LTe/B;
    .locals 2
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
            "LTe/G<",
            "+TR;>;>;I)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, LTe/B;->x2(LXe/o;ZII)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final n4()Lnf/a;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lgf/H0;->u8(LTe/G;)Lnf/a;

    move-result-object v0

    return-object v0
.end method

.method public final n5(J)LTe/B;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lgf/g1;

    invoke-direct {v0, p0, p1, p2}, Lgf/g1;-><init>(LTe/G;J)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final n6(LTe/G;)LTe/B;
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
            "LTe/G<",
            "TU;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/s1;

    invoke-direct {v0, p0, p1}, Lgf/s1;-><init>(LTe/G;LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final o()Ljava/lang/Iterable;
    .locals 1
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

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-virtual {p0, v0}, LTe/B;->p(I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final o1(LTe/G;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LTe/B;->w0(LTe/G;LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final o2(LXe/o;LXe/c;)LTe/B;
    .locals 6
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
            "LTe/G<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v4

    invoke-static {}, LTe/B;->V()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, LTe/B;->s2(LXe/o;LXe/c;ZII)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final o5(JLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 0
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LTe/B;->Q6(JLjava/util/concurrent/TimeUnit;)LTe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/B;->w5(LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final o6(LXe/r;)LTe/B;
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
            "-TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stopPredicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/t1;

    invoke-direct {v0, p0, p1}, Lgf/t1;-><init>(LTe/G;LXe/r;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final o7(LTe/J;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/D1;

    invoke-direct {v0, p0, p1}, Lgf/D1;-><init>(LTe/G;LTe/J;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final p(I)Ljava/lang/Iterable;
    .locals 1
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

    new-instance v0, Lgf/b;

    invoke-direct {v0, p0, p1}, Lgf/b;-><init>(LTe/G;I)V

    return-object v0
.end method

.method public final p1(LTe/Q;)LTe/B;
    .locals 1
    .param p1    # LTe/Q;
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
            "(",
            "LTe/Q<",
            "+TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/z;

    invoke-direct {v0, p0, p1}, Lgf/z;-><init>(LTe/B;LTe/Q;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final p2(LXe/o;LXe/c;I)LTe/B;
    .locals 6
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
            "LTe/G<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;I)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, LTe/B;->s2(LXe/o;LXe/c;ZII)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final p5(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LTe/B;->R6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/B;->w5(LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final p6(LXe/r;)LTe/B;
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
            "-TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/u1;

    invoke-direct {v0, p0, p1}, Lgf/u1;-><init>(LTe/G;LXe/r;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final q()Ljava/lang/Object;
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

    new-instance v0, Lbf/g;

    invoke-direct {v0}, Lbf/g;-><init>()V

    invoke-virtual {p0, v0}, LTe/B;->b(LTe/I;)V

    invoke-virtual {v0}, Lbf/e;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final q1(Ljava/lang/Object;)LTe/K;
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

    const-string v0, "element is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LZe/a;->i(Ljava/lang/Object;)LXe/r;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/B;->j(LXe/r;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final q2(LXe/o;LXe/c;Z)LTe/B;
    .locals 6
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
            "LTe/G<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;Z)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v4

    invoke-static {}, LTe/B;->V()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/B;->s2(LXe/o;LXe/c;ZII)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final q4(LXe/c;)LTe/s;
    .locals 1
    .annotation runtime LUe/d;
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

    new-instance v0, Lgf/L0;

    invoke-direct {v0, p0, p1}, Lgf/L0;-><init>(LTe/G;LXe/c;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object p1

    return-object p1
.end method

.method public final q5(I)LTe/B;
    .locals 3
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    invoke-static {p0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lgf/h1;

    invoke-direct {v0, p0, p1}, Lgf/h1;-><init>(LTe/G;I)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

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

.method public final q6()Lof/n;
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

    invoke-virtual {p0, v0}, LTe/B;->b(LTe/I;)V

    return-object v0
.end method

.method public final r(Ljava/lang/Object;)Ljava/lang/Object;
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

    new-instance v0, Lbf/g;

    invoke-direct {v0}, Lbf/g;-><init>()V

    invoke-virtual {p0, v0}, LTe/B;->b(LTe/I;)V

    invoke-virtual {v0}, Lbf/e;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final r1()LTe/K;
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

    new-instance v0, Lgf/B;

    invoke-direct {v0, p0}, Lgf/B;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final r2(LXe/o;LXe/c;ZI)LTe/B;
    .locals 6
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
            "LTe/G<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;ZI)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/B;->s2(LXe/o;LXe/c;ZII)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final r4(Ljava/lang/Object;LXe/c;)LTe/K;
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

    new-instance v0, Lgf/M0;

    invoke-direct {v0, p0, p1, p2}, Lgf/M0;-><init>(LTe/G;Ljava/lang/Object;LXe/c;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final r5(JLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:trampoline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->i()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, LTe/B;->u5(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final r6(Z)Lof/n;
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

    invoke-virtual {v0}, Lof/n;->dispose()V

    :cond_0
    invoke-virtual {p0, v0}, LTe/B;->b(LTe/I;)V

    return-object v0
.end method

.method public final r7(J)LTe/B;
    .locals 6
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, LTe/B;->t7(JJI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ljava/lang/Iterable;
    .locals 1
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

    new-instance v0, Lgf/c;

    invoke-direct {v0, p0}, Lgf/c;-><init>(LTe/G;)V

    return-object v0
.end method

.method public final s2(LXe/o;LXe/c;ZII)LTe/B;
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;ZII)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lgf/p0;->b(LXe/o;LXe/c;)LXe/o;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, LTe/B;->x2(LXe/o;ZII)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final s4(Ljava/util/concurrent/Callable;LXe/c;)LTe/K;
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

    new-instance v0, Lgf/N0;

    invoke-direct {v0, p0, p1, p2}, Lgf/N0;-><init>(LTe/G;Ljava/util/concurrent/Callable;LXe/c;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final s5(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 7
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, LTe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, LTe/B;->u5(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final s6(JLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/B;->t6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final s7(JJ)LTe/B;
    .locals 6
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/B;->t7(JJI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
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

    new-instance v0, Lgf/d;

    invoke-direct {v0, p0, p1}, Lgf/d;-><init>(LTe/G;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final t0(LTe/H;)LTe/B;
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
            "LTe/H<",
            "-TT;+TR;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/H;

    invoke-interface {p1, p0}, LTe/H;->a(LTe/B;)LTe/G;

    move-result-object p1

    invoke-static {p1}, LTe/B;->Q7(LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t1(JLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/B;->u1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t2(LXe/o;LXe/o;Ljava/util/concurrent/Callable;)LTe/B;
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
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/G<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/G<",
            "+TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/y0;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/y0;-><init>(LTe/G;LXe/o;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LTe/B;->D3(LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t4()LTe/B;
    .locals 2
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

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, LTe/B;->u4(J)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final t5(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;
    .locals 7
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, LTe/B;->u5(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 7
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/v1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lgf/v1;-><init>(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t7(JJI)LTe/B;
    .locals 8
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p1, p2, v0}, LZe/b;->i(JLjava/lang/String;)J

    const-string v0, "skip"

    invoke-static {p3, p4, v0}, LZe/b;->i(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    invoke-static {p5, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Lgf/F1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lgf/F1;-><init>(LTe/G;JJI)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final u()Ljava/lang/Iterable;
    .locals 1
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

    new-instance v0, Lgf/e;

    invoke-direct {v0, p0}, Lgf/e;-><init>(LTe/G;)V

    return-object v0
.end method

.method public final u1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 7
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/E;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lgf/E;-><init>(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final u2(LXe/o;LXe/o;Ljava/util/concurrent/Callable;I)LTe/B;
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
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;",
            "LXe/o<",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/G<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/G<",
            "+TR;>;>;I)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/y0;

    invoke-direct {v0, p0, p1, p2, p3}, Lgf/y0;-><init>(LTe/G;LXe/o;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0, p4}, LTe/B;->E3(LTe/G;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final u4(J)LTe/B;
    .locals 3
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lgf/P0;

    invoke-direct {v0, p0, p1, p2}, Lgf/P0;-><init>(LTe/B;J)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

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

.method public final u5(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;
    .locals 9
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
            "LTe/B<",
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

    new-instance p6, Lgf/i1;

    move-object v1, p6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lgf/i1;-><init>(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;IZ)V

    invoke-static {p6}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final u6(JLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 0
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LTe/B;->V4(JLjava/util/concurrent/TimeUnit;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final u7(JJLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 8
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
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v6

    invoke-static {}, LTe/B;->V()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, LTe/B;->w7(JJLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v()Ljava/lang/Object;
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

    invoke-virtual {p0}, LTe/B;->l5()LTe/s;

    move-result-object v0

    invoke-virtual {v0}, LTe/s;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final v1(LXe/o;)LTe/B;
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
            "-TT;+",
            "LTe/G<",
            "TU;>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "debounceSelector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/D;

    invoke-direct {v0, p0, p1}, Lgf/D;-><init>(LTe/G;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v2(LXe/o;Z)LTe/B;
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
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;Z)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, LTe/B;->w2(LXe/o;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v4(LXe/e;)LTe/B;
    .locals 1
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/Q0;

    invoke-direct {v0, p0, p1}, Lgf/Q0;-><init>(LTe/B;LXe/e;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v5(JLjava/util/concurrent/TimeUnit;Z)LTe/B;
    .locals 7
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "io.reactivex:trampoline"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->i()LTe/J;

    move-result-object v4

    invoke-static {}, LTe/B;->V()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, LTe/B;->u5(JLjava/util/concurrent/TimeUnit;LTe/J;ZI)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LTe/B;->W4(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final v7(JJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 8
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
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, LTe/B;->w7(JJLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    invoke-virtual {p0, p1}, LTe/B;->k5(Ljava/lang/Object;)LTe/K;

    move-result-object p1

    invoke-virtual {p1}, LTe/K;->k()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final w1(Ljava/lang/Object;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LTe/B;->n3(Ljava/lang/Object;)LTe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LTe/B;->M5(LTe/G;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w2(LXe/o;ZI)LTe/B;
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
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;ZI)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, LTe/B;->x2(LXe/o;ZII)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w4(LXe/o;)LTe/B;
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
            "LTe/B<",
            "Ljava/lang/Object;",
            ">;+",
            "LTe/G<",
            "*>;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/R0;

    invoke-direct {v0, p0, p1}, Lgf/R0;-><init>(LTe/G;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w5(LTe/G;)LTe/B;
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
            "LTe/G<",
            "TU;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/j1;

    invoke-direct {v0, p0, p1}, Lgf/j1;-><init>(LTe/G;LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w6(JLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/B;->y6(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final w7(JJLjava/util/concurrent/TimeUnit;LTe/J;I)LTe/B;
    .locals 13
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
            "I)",
            "LTe/B<",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "timespan"

    move-wide v3, p1

    invoke-static {p1, p2, v0}, LZe/b;->i(JLjava/lang/String;)J

    const-string v0, "timeskip"

    move-wide/from16 v5, p3

    invoke-static {v5, v6, v0}, LZe/b;->i(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    move/from16 v11, p7

    invoke-static {v11, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/J1;

    const-wide v9, 0x7fffffffffffffffL

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lgf/J1;-><init>(LTe/G;JJLjava/util/concurrent/TimeUnit;LTe/J;JIZ)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final x()V
    .locals 0
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    invoke-static {p0}, Lgf/l;->a(LTe/G;)V

    return-void
.end method

.method public final x2(LXe/o;ZII)LTe/B;
    .locals 7
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
            "LTe/G<",
            "+TR;>;>;ZII)",
            "LTe/B<",
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

    invoke-static {}, LTe/B;->f2()LTe/B;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Lgf/Y0;->a(Ljava/lang/Object;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v6, Lgf/X;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lgf/X;-><init>(LTe/G;LXe/o;ZII)V

    invoke-static {v6}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final x3(Ljava/lang/Object;)LTe/K;
    .locals 1
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

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/v0;

    invoke-direct {v0, p0, p1}, Lgf/v0;-><init>(LTe/G;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object p1

    return-object p1
.end method

.method public final x4(LXe/o;)LTe/B;
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
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lgf/p0;->g(LTe/B;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0, p1}, Lgf/S0;->z8(Ljava/util/concurrent/Callable;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final x5(LXe/r;)LTe/B;
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
            "-TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/k1;

    invoke-direct {v0, p0, p1}, Lgf/k1;-><init>(LTe/G;LXe/r;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final x6(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/B;->y6(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final x7(JLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 8
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
            "LTe/B<",
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v7}, LTe/B;->C7(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final y(LTe/I;)V
    .locals 0
    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lgf/l;->b(LTe/G;LTe/I;)V

    return-void
.end method

.method public final y1(JLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LTe/B;->A1(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final y2(LXe/o;)LTe/c;
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
            "-TT;+",
            "LTe/i;",
            ">;)",
            "LTe/c;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LTe/B;->z2(LXe/o;Z)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final y3()LTe/s;
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

    new-instance v0, Lgf/u0;

    invoke-direct {v0, p0}, Lgf/u0;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->Q(LTe/s;)LTe/s;

    move-result-object v0

    return-object v0
.end method

.method public final y4(LXe/o;I)LTe/B;
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
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;I)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LZe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p2}, Lgf/p0;->h(LTe/B;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, Lgf/S0;->z8(Ljava/util/concurrent/Callable;LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final y5()LTe/B;
    .locals 2
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

    invoke-virtual {p0}, LTe/B;->Z6()LTe/K;

    move-result-object v0

    invoke-virtual {v0}, LTe/K;->x1()LTe/B;

    move-result-object v0

    invoke-static {}, LZe/a;->p()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, LZe/a;->o(Ljava/util/Comparator;)LXe/o;

    move-result-object v1

    invoke-virtual {v0, v1}, LTe/B;->B3(LXe/o;)LTe/B;

    move-result-object v0

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v1

    invoke-virtual {v0, v1}, LTe/B;->A2(LXe/o;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final y6(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;
    .locals 8
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/w1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lgf/w1;-><init>(LTe/B;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final y7(JLjava/util/concurrent/TimeUnit;J)LTe/B;
    .locals 8
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
            "LTe/B<",
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v7}, LTe/B;->C7(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final z(LXe/g;)V
    .locals 2
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

    invoke-static {p0, p1, v0, v1}, Lgf/l;->c(LTe/G;LXe/g;LXe/g;LXe/a;)V

    return-void
.end method

.method public final z1(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LTe/B;->A1(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final z2(LXe/o;Z)LTe/c;
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
            "-TT;+",
            "LTe/i;",
            ">;Z)",
            "LTe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/Z;

    invoke-direct {v0, p0, p1, p2}, Lgf/Z;-><init>(LTe/G;LXe/o;Z)V

    invoke-static {v0}, Lqf/a;->O(LTe/c;)LTe/c;

    move-result-object p1

    return-object p1
.end method

.method public final z3()LTe/K;
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

    new-instance v0, Lgf/v0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgf/v0;-><init>(LTe/G;Ljava/lang/Object;)V

    invoke-static {v0}, Lqf/a;->S(LTe/K;)LTe/K;

    move-result-object v0

    return-object v0
.end method

.method public final z4(LXe/o;IJLjava/util/concurrent/TimeUnit;)LTe/B;
    .locals 7
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
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v6}, LTe/B;->A4(LXe/o;IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final z5(Ljava/util/Comparator;)LTe/B;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation runtime LUe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sortFunction is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LTe/B;->Z6()LTe/K;

    move-result-object v0

    invoke-virtual {v0}, LTe/K;->x1()LTe/B;

    move-result-object v0

    invoke-static {p1}, LZe/a;->o(Ljava/util/Comparator;)LXe/o;

    move-result-object p1

    invoke-virtual {v0, p1}, LTe/B;->B3(LXe/o;)LTe/B;

    move-result-object p1

    invoke-static {}, LZe/a;->k()LXe/o;

    move-result-object v0

    invoke-virtual {p1, v0}, LTe/B;->A2(LXe/o;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final z6(JLjava/util/concurrent/TimeUnit;Z)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LTe/B;->y6(JLjava/util/concurrent/TimeUnit;LTe/J;Z)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final z7(JLjava/util/concurrent/TimeUnit;JZ)LTe/B;
    .locals 8
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
            "LTe/B<",
            "LTe/B<",
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

    invoke-virtual/range {v0 .. v7}, LTe/B;->C7(JLjava/util/concurrent/TimeUnit;LTe/J;JZ)LTe/B;

    move-result-object p1

    return-object p1
.end method
