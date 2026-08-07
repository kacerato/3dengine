.class public abstract LWe/a;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LTe/l;-><init>()V

    return-void
.end method


# virtual methods
.method public O8()LTe/l;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LWe/a;->P8(I)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public P8(I)LTe/l;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LWe/a;->Q8(ILXe/g;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public Q8(ILXe/g;)LTe/l;
    .locals 1
    .param p2    # LXe/g;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    invoke-virtual {p0, p2}, LWe/a;->S8(LXe/g;)V

    invoke-static {p0}, Lqf/a;->T(LWe/a;)LWe/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ldf/k;

    invoke-direct {v0, p0, p1, p2}, Ldf/k;-><init>(LWe/a;ILXe/g;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R8()LVe/c;
    .locals 1

    new-instance v0, Lio/reactivex/internal/util/g;

    invoke-direct {v0}, Lio/reactivex/internal/util/g;-><init>()V

    invoke-virtual {p0, v0}, LWe/a;->S8(LXe/g;)V

    iget-object v0, v0, Lio/reactivex/internal/util/g;->b:LVe/c;

    return-object v0
.end method

.method public abstract S8(LXe/g;)V
    .param p1    # LXe/g;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public T8()LTe/l;
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
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/a1;

    invoke-direct {v0, p0}, Ldf/a1;-><init>(LWe/a;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public final U8(I)LTe/l;
    .locals 6
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
            "(I)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lsf/b;->i()LTe/J;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, LWe/a;->W8(IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final V8(IJLjava/util/concurrent/TimeUnit;)LTe/l;
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
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LWe/a;->W8(IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final W8(IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
    .locals 8
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
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriberCount"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldf/a1;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ldf/a1;-><init>(LWe/a;IJLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final X8(JLjava/util/concurrent/TimeUnit;)LTe/l;
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

    const/4 v1, 0x1

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, LWe/a;->W8(IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y8(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;
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

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LWe/a;->W8(IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/l;

    move-result-object p1

    return-object p1
.end method
