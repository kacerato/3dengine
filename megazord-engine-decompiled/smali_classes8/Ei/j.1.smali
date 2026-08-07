.class public LEi/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LEi/I;


# instance fields
.field public final a:LEi/A;

.field public final b:[F

.field public c:J

.field public d:[F

.field public e:Z

.field public f:F


# direct methods
.method public constructor <init>(LEi/A;[F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "query",
            "center"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEi/j;->a:LEi/A;

    iput-object p2, p0, LEi/j;->b:[F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, LEi/j;->f:F

    const/4 p1, 0x0

    aget v0, p2, p1

    const/4 v1, 0x1

    aget v2, p2, v1

    const/4 v3, 0x2

    aget p2, p2, v3

    const/4 v4, 0x3

    new-array v4, v4, [F

    aput v0, v4, p1

    aput v2, v4, v1

    aput p2, v4, v3

    iput-object v4, p0, LEi/j;->d:[F

    return-void
.end method


# virtual methods
.method public a(LEi/s;LEi/G;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "poly",
            "ref"
        }
    .end annotation

    iget-object p2, p0, LEi/j;->a:LEi/A;

    iget-object v0, p0, LEi/j;->b:[F

    invoke-virtual {p2, p3, p4, v0}, LEi/A;->d(J[F)LEi/O;

    move-result-object p2

    iget-object v0, p2, LEi/O;->a:Ljava/lang/Object;

    check-cast v0, LEi/b;

    invoke-virtual {v0}, LEi/b;->b()Z

    move-result v0

    iget-object p2, p2, LEi/O;->a:Ljava/lang/Object;

    check-cast p2, LEi/b;

    invoke-virtual {p2}, LEi/b;->a()[F

    move-result-object p2

    iget-object v1, p0, LEi/j;->b:[F

    invoke-static {v1, p2}, LEi/g;->W([F[F)[F

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object p1, p1, LEi/s;->c:LEi/q;

    iget-object p1, p1, LEi/q;->a:LEi/r;

    iget p1, p1, LEi/r;->r:F

    sub-float/2addr v1, p1

    const/4 p1, 0x0

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    mul-float p1, v1, v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, LEi/g;->L([F)F

    move-result p1

    :cond_1
    :goto_0
    iget v1, p0, LEi/j;->f:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iput-object p2, p0, LEi/j;->d:[F

    iput p1, p0, LEi/j;->f:F

    iput-wide p3, p0, LEi/j;->c:J

    iput-boolean v0, p0, LEi/j;->e:Z

    :cond_2
    return-void
.end method

.method public b()LEi/k;
    .locals 5

    new-instance v0, LEi/k;

    iget-wide v1, p0, LEi/j;->c:J

    iget-object v3, p0, LEi/j;->d:[F

    iget-boolean v4, p0, LEi/j;->e:Z

    invoke-direct {v0, v1, v2, v3, v4}, LEi/k;-><init>(J[FZ)V

    return-object v0
.end method
