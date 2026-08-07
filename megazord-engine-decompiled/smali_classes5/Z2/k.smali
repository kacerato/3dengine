.class public final LZ2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/a;
.end annotation

.annotation build LQ2/c;
.end annotation

.annotation runtime LZ2/e;
.end annotation


# instance fields
.field public final a:LZ2/o;

.field public final b:LZ2/o;

.field public c:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LZ2/o;

    invoke-direct {v0}, LZ2/o;-><init>()V

    iput-object v0, p0, LZ2/k;->a:LZ2/o;

    new-instance v0, LZ2/o;

    invoke-direct {v0}, LZ2/o;-><init>()V

    iput-object v0, p0, LZ2/k;->b:LZ2/o;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LZ2/k;->c:D

    return-void
.end method

.method public static d(D)D
    .locals 6

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/primitives/d;->f(DDD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public a(DD)V
    .locals 4

    iget-object v0, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {v0, p1, p2}, LZ2/o;->a(D)V

    invoke-static {p1, p2}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Lcom/google/common/primitives/d;->n(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, LZ2/k;->c:D

    iget-object v2, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {v2}, LZ2/o;->l()D

    move-result-wide v2

    sub-double/2addr p1, v2

    iget-object v2, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {v2}, LZ2/o;->l()D

    move-result-wide v2

    sub-double v2, p3, v2

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, LZ2/k;->c:D

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    iput-wide p1, p0, LZ2/k;->c:D

    :cond_1
    :goto_0
    iget-object p1, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {p1, p3, p4}, LZ2/o;->a(D)V

    return-void
.end method

.method public b(LZ2/j;)V
    .locals 10

    invoke-virtual {p1}, LZ2/j;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {p1}, LZ2/j;->k()LZ2/n;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ2/o;->b(LZ2/n;)V

    iget-object v0, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->j()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, LZ2/j;->i()D

    move-result-wide v0

    iput-wide v0, p0, LZ2/k;->c:D

    goto :goto_0

    :cond_1
    iget-wide v0, p0, LZ2/k;->c:D

    invoke-virtual {p1}, LZ2/j;->i()D

    move-result-wide v2

    invoke-virtual {p1}, LZ2/j;->k()LZ2/n;

    move-result-object v4

    invoke-virtual {v4}, LZ2/n;->d()D

    move-result-wide v4

    iget-object v6, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {v6}, LZ2/o;->l()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p1}, LZ2/j;->l()LZ2/n;

    move-result-object v6

    invoke-virtual {v6}, LZ2/n;->d()D

    move-result-wide v6

    iget-object v8, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {v8}, LZ2/o;->l()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    invoke-virtual {p1}, LZ2/j;->a()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, LZ2/k;->c:D

    :goto_0
    iget-object v0, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {p1}, LZ2/j;->l()LZ2/n;

    move-result-object p1

    invoke-virtual {v0, p1}, LZ2/o;->b(LZ2/n;)V

    return-void
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(D)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public final f()LZ2/g;
    .locals 7

    invoke-virtual {p0}, LZ2/k;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LR2/H;->g0(Z)V

    iget-wide v3, p0, LZ2/k;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LZ2/g;->a()LZ2/g;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->u()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_3

    iget-object v0, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->u()D

    move-result-wide v0

    cmpl-double v0, v0, v5

    if-lez v0, :cond_2

    iget-object v0, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->l()D

    move-result-wide v0

    iget-object v2, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {v2}, LZ2/o;->l()D

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, LZ2/g;->f(DD)LZ2/g$b;

    move-result-object v0

    iget-wide v1, p0, LZ2/k;->c:D

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, LZ2/g$b;->b(D)LZ2/g;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->l()D

    move-result-wide v0

    invoke-static {v0, v1}, LZ2/g;->b(D)LZ2/g;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->u()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v1}, LR2/H;->g0(Z)V

    iget-object v0, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->l()D

    move-result-wide v0

    invoke-static {v0, v1}, LZ2/g;->i(D)LZ2/g;

    move-result-object v0

    return-object v0
.end method

.method public final g()D
    .locals 9

    invoke-virtual {p0}, LZ2/k;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, LR2/H;->g0(Z)V

    iget-wide v3, p0, LZ2/k;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_1
    iget-object v0, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->u()D

    move-result-wide v3

    iget-object v0, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->u()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v0, v3, v7

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {v0}, LR2/H;->g0(Z)V

    cmpl-double v0, v5, v7

    if-lez v0, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v1}, LR2/H;->g0(Z)V

    mul-double/2addr v3, v5

    invoke-virtual {p0, v3, v4}, LZ2/k;->e(D)D

    move-result-wide v0

    iget-wide v2, p0, LZ2/k;->c:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, LZ2/k;->d(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public h()D
    .locals 4

    invoke-virtual {p0}, LZ2/k;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LR2/H;->g0(Z)V

    iget-wide v0, p0, LZ2/k;->c:D

    invoke-virtual {p0}, LZ2/k;->c()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final i()D
    .locals 6

    invoke-virtual {p0}, LZ2/k;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LR2/H;->g0(Z)V

    iget-wide v0, p0, LZ2/k;->c:D

    invoke-virtual {p0}, LZ2/k;->c()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public j()LZ2/j;
    .locals 5

    new-instance v0, LZ2/j;

    iget-object v1, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {v1}, LZ2/o;->s()LZ2/n;

    move-result-object v1

    iget-object v2, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {v2}, LZ2/o;->s()LZ2/n;

    move-result-object v2

    iget-wide v3, p0, LZ2/k;->c:D

    invoke-direct {v0, v1, v2, v3, v4}, LZ2/j;-><init>(LZ2/n;LZ2/n;D)V

    return-object v0
.end method

.method public k()LZ2/n;
    .locals 1

    iget-object v0, p0, LZ2/k;->a:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->s()LZ2/n;

    move-result-object v0

    return-object v0
.end method

.method public l()LZ2/n;
    .locals 1

    iget-object v0, p0, LZ2/k;->b:LZ2/o;

    invoke-virtual {v0}, LZ2/o;->s()LZ2/n;

    move-result-object v0

    return-object v0
.end method
