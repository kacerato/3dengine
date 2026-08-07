.class public LEi/T;
.super LEi/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LEi/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LSi/c;LRi/q;FFFIIZ)LEi/q;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "geom",
            "rcConfig",
            "agentHeight",
            "agentRadius",
            "agentMaxClimb",
            "x",
            "y",
            "applyRecastDemoFlags"
        }
    .end annotation

    new-instance v0, LRi/p;

    invoke-direct {v0}, LRi/p;-><init>()V

    invoke-virtual {v0, p1, p2}, LRi/p;->c(LSi/c;LRi/q;)LRi/p$b;

    move-result-object p1

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object v2

    if-eqz p8, :cond_5

    const/4 p8, 0x0

    :goto_0
    iget v0, v2, LRi/k;->f:I

    if-ge p8, v0, :cond_5

    iget-object v0, v2, LRi/k;->d:[I

    aget v1, v0, p8

    sget v3, LEi/P;->b:I

    if-eq v1, v3, :cond_2

    sget v3, LEi/P;->f:I

    if-eq v1, v3, :cond_2

    sget v3, LEi/P;->d:I

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    sget v3, LEi/P;->c:I

    if-ne v1, v3, :cond_1

    iget-object v1, v2, LRi/k;->i:[I

    const/4 v3, 0x2

    aput v3, v1, p8

    goto :goto_2

    :cond_1
    sget v3, LEi/P;->e:I

    if-ne v1, v3, :cond_3

    iget-object v1, v2, LRi/k;->i:[I

    const/4 v3, 0x5

    aput v3, v1, p8

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, v2, LRi/k;->i:[I

    const/4 v3, 0x1

    aput v3, v1, p8

    :cond_3
    :goto_2
    aget v1, v0, p8

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p8

    :cond_4
    add-int/lit8 p8, p8, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, LRi/p$b;->d()LRi/l;

    move-result-object v3

    iget-object v1, p2, LRi/q;->a:LRi/t;

    move-object v0, p0

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, LEi/T;->c(LRi/t;LRi/k;LRi/l;FFF)LEi/x;

    move-result-object p1

    invoke-virtual {p0, p1, p6, p7}, LEi/f;->a(LEi/x;II)LEi/q;

    move-result-object p1

    return-object p1
.end method

.method public c(LRi/t;LRi/k;LRi/l;FFF)LEi/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rcConfig",
            "pmesh",
            "dmesh",
            "agentHeight",
            "agentRadius",
            "agentMaxClimb"
        }
    .end annotation

    new-instance v0, LEi/x;

    invoke-direct {v0}, LEi/x;-><init>()V

    iget-object v1, p2, LRi/k;->a:[I

    iput-object v1, v0, LEi/x;->a:[I

    iget v1, p2, LRi/k;->e:I

    iput v1, v0, LEi/x;->b:I

    iget-object v1, p2, LRi/k;->b:[I

    iput-object v1, v0, LEi/x;->c:[I

    iget-object v1, p2, LRi/k;->d:[I

    iput-object v1, v0, LEi/x;->e:[I

    iget-object v1, p2, LRi/k;->i:[I

    iput-object v1, v0, LEi/x;->d:[I

    iget v1, p2, LRi/k;->f:I

    iput v1, v0, LEi/x;->f:I

    iget v1, p2, LRi/k;->g:I

    iput v1, v0, LEi/x;->g:I

    if-eqz p3, :cond_0

    iget-object v1, p3, LRi/l;->a:[I

    iput-object v1, v0, LEi/x;->h:[I

    iget-object v1, p3, LRi/l;->b:[F

    iput-object v1, v0, LEi/x;->i:[F

    iget v1, p3, LRi/l;->e:I

    iput v1, v0, LEi/x;->j:I

    iget-object v1, p3, LRi/l;->c:[I

    iput-object v1, v0, LEi/x;->k:[I

    iget p3, p3, LRi/l;->f:I

    iput p3, v0, LEi/x;->l:I

    :cond_0
    iput p4, v0, LEi/x;->z:F

    iput p5, v0, LEi/x;->A:F

    iput p6, v0, LEi/x;->B:F

    iget-object p3, p2, LRi/k;->j:[F

    iput-object p3, v0, LEi/x;->x:[F

    iget-object p2, p2, LRi/k;->k:[F

    iput-object p2, v0, LEi/x;->y:[F

    iget p2, p1, LRi/t;->e:F

    iput p2, v0, LEi/x;->C:F

    iget p1, p1, LRi/t;->f:F

    iput p1, v0, LEi/x;->D:F

    const/4 p1, 0x1

    iput-boolean p1, v0, LEi/x;->E:Z

    return-object v0
.end method
