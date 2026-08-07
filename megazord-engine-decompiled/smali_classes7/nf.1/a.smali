.class public abstract Lnf/a;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LTe/B;-><init>()V

    return-void
.end method


# virtual methods
.method public j8()LTe/B;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnf/a;->k8(I)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public k8(I)LTe/B;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnf/a;->l8(ILXe/g;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public l8(ILXe/g;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    invoke-virtual {p0, p2}, Lnf/a;->n8(LXe/g;)V

    invoke-static {p0}, Lqf/a;->U(Lnf/a;)Lnf/a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lgf/k;

    invoke-direct {v0, p0, p1, p2}, Lgf/k;-><init>(Lnf/a;ILXe/g;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final m8()LVe/c;
    .locals 1

    new-instance v0, Lio/reactivex/internal/util/g;

    invoke-direct {v0}, Lio/reactivex/internal/util/g;-><init>()V

    invoke-virtual {p0, v0}, Lnf/a;->n8(LXe/g;)V

    iget-object v0, v0, Lio/reactivex/internal/util/g;->b:LVe/c;

    return-object v0
.end method

.method public abstract n8(LXe/g;)V
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

.method public o8()LTe/B;
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
            "()",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lgf/O0;

    invoke-direct {v0, p0}, Lgf/O0;-><init>(Lnf/a;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public final p8(I)LTe/B;
    .locals 6
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

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lsf/b;->i()LTe/J;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lnf/a;->r8(IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final q8(IJLjava/util/concurrent/TimeUnit;)LTe/B;
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lnf/a;->r8(IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final r8(IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
    .locals 8
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
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriberCount"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lgf/O0;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lgf/O0;-><init>(Lnf/a;IJLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final s8(JLjava/util/concurrent/TimeUnit;)LTe/B;
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

    const/4 v1, 0x1

    invoke-static {}, Lsf/b;->a()LTe/J;

    move-result-object v5

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lnf/a;->r8(IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method

.method public final t8(JLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;
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

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lnf/a;->r8(IJLjava/util/concurrent/TimeUnit;LTe/J;)LTe/B;

    move-result-object p1

    return-object p1
.end method
