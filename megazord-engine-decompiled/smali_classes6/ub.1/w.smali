.class public Lub/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lub/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lub/y<",
        "Lub/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:J = 0xcaed5be6c419bb3L

.field public static final e:Lub/w;

.field public static final f:Lub/w;

.field public static final g:Lub/w;


# instance fields
.field public b:F

.field public c:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lub/w;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lub/w;-><init>(FF)V

    sput-object v0, Lub/w;->e:Lub/w;

    new-instance v0, Lub/w;

    invoke-direct {v0, v2, v1}, Lub/w;-><init>(FF)V

    sput-object v0, Lub/w;->f:Lub/w;

    new-instance v0, Lub/w;

    invoke-direct {v0, v2, v2}, Lub/w;-><init>(FF)V

    sput-object v0, Lub/w;->g:Lub/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lub/w;->b:F

    .line 4
    iput p2, p0, Lub/w;->c:F

    return-void
.end method

.method public constructor <init>(Lub/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lub/w;->R0(Lub/w;)Lub/w;

    return-void
.end method

.method public static Z(FFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x1",
            "y1",
            "x2",
            "y2"
        }
    .end annotation

    mul-float/2addr p0, p2

    mul-float/2addr p1, p3

    add-float/2addr p0, p1

    return p0
.end method

.method public static c0(FFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x1",
            "y1",
            "x2",
            "y2"
        }
    .end annotation

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    float-to-double p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static f0(FFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x1",
            "y1",
            "x2",
            "y2"
        }
    .end annotation

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    return p2
.end method

.method public static x0(FF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static y0(FF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public bridge synthetic A(Lub/y;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "other",
            "epsilon"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1, p2}, Lub/w;->q0(Lub/w;F)Z

    move-result p1

    return p1
.end method

.method public A0(F)Lub/w;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    mul-float/2addr p1, p1

    invoke-virtual {p0, p1}, Lub/w;->B0(F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic B(Lub/y;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->r0(Lub/w;)Z

    move-result p1

    return p1
.end method

.method public B0(F)Lub/w;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit2"
        }
    .end annotation

    invoke-virtual {p0}, Lub/w;->q()F

    move-result v0

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Lub/w;->N0(F)Lub/w;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public bridge synthetic C(Lub/y;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->g0(Lub/w;)F

    move-result p1

    return p1
.end method

.method public C0(Lub/i;)Lub/w;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    iget-object p1, p1, Lub/i;->b:[F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lub/w;->c:F

    const/4 v3, 0x3

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    const/4 v3, 0x6

    aget v3, p1, v3

    add-float/2addr v1, v3

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-float/2addr v0, v3

    const/4 v3, 0x4

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    const/4 v2, 0x7

    aget p1, p1, v2

    add-float/2addr v0, p1

    iput v1, p0, Lub/w;->b:F

    iput v0, p0, Lub/w;->c:F

    return-object p0
.end method

.method public bridge synthetic D(Lub/y;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->d0(Lub/w;)F

    move-result p1

    return p1
.end method

.method public D0(Lub/w;F)Lub/w;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "scalar"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    iget v1, p1, Lub/w;->b:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lub/w;->b:F

    iget v0, p0, Lub/w;->c:F

    iget p1, p1, Lub/w;->c:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lub/w;->c:F

    return-object p0
.end method

.method public E(F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "margin"
        }
    .end annotation

    invoke-virtual {p0}, Lub/w;->q()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public E0(Lub/w;Lub/w;)Lub/w;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "mulVec"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    iget v1, p1, Lub/w;->b:F

    iget v2, p2, Lub/w;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lub/w;->b:F

    iget v0, p0, Lub/w;->c:F

    iget p1, p1, Lub/w;->c:F

    iget p2, p2, Lub/w;->c:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lub/w;->c:F

    return-object p0
.end method

.method public bridge synthetic F(Lub/y;)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->R0(Lub/w;)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public F0()Lub/w;
    .locals 2

    invoke-virtual {p0}, Lub/w;->j()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lub/w;->b:F

    div-float/2addr v1, v0

    iput v1, p0, Lub/w;->b:F

    iget v1, p0, Lub/w;->c:F

    div-float/2addr v1, v0

    iput v1, p0, Lub/w;->c:F

    :cond_0
    return-object p0
.end method

.method public bridge synthetic G(F)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "limit"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->A0(F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public G0(F)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lub/w;->M0(F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public H(F)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "margin"
        }
    .end annotation

    invoke-virtual {p0}, Lub/w;->q()F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public H0(I)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    if-ltz p1, :cond_0

    iget p1, p0, Lub/w;->c:F

    neg-float p1, p1

    iput p1, p0, Lub/w;->b:F

    iput v0, p0, Lub/w;->c:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lub/w;->c:F

    iput p1, p0, Lub/w;->b:F

    neg-float p1, v0

    iput p1, p0, Lub/w;->c:F

    :goto_0
    return-object p0
.end method

.method public bridge synthetic I(Lub/y;)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->P0(Lub/w;)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public I0(Lub/w;F)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reference",
            "degrees"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->a1(Lub/w;)Lub/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lub/w;->L0(F)Lub/w;

    move-result-object p2

    invoke-virtual {p2, p1}, Lub/w;->N(Lub/w;)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic J(Lub/y;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "other",
            "epsilon"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1, p2}, Lub/w;->s0(Lub/w;F)Z

    move-result p1

    return p1
.end method

.method public J0(Lub/w;F)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reference",
            "degrees"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->a1(Lub/w;)Lub/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lub/w;->L0(F)Lub/w;

    move-result-object p2

    invoke-virtual {p2, p1}, Lub/w;->N(Lub/w;)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic K(Lub/y;Lub/y;)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "vec",
            "mulVec"
        }
    .end annotation

    check-cast p1, Lub/w;

    check-cast p2, Lub/w;

    invoke-virtual {p0, p1, p2}, Lub/w;->E0(Lub/w;Lub/w;)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public K0(Lub/w;F)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reference",
            "radians"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->a1(Lub/w;)Lub/w;

    move-result-object v0

    invoke-virtual {v0, p2}, Lub/w;->M0(F)Lub/w;

    move-result-object p2

    invoke-virtual {p2, p1}, Lub/w;->N(Lub/w;)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic L(FF)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lub/w;->U(FF)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public L0(F)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lub/w;->M0(F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public M(FF)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lub/w;->b:F

    iget p1, p0, Lub/w;->c:F

    add-float/2addr p1, p2

    iput p1, p0, Lub/w;->c:F

    return-object p0
.end method

.method public M0(F)Lub/w;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radians"
        }
    .end annotation

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lub/w;->b:F

    mul-float v2, v1, p1

    iget v3, p0, Lub/w;->c:F

    mul-float v4, v3, v0

    sub-float/2addr v2, v4

    mul-float/2addr v1, v0

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    iput v2, p0, Lub/w;->b:F

    iput v1, p0, Lub/w;->c:F

    return-object p0
.end method

.method public N(Lub/w;)Lub/w;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    iget v1, p1, Lub/w;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lub/w;->b:F

    iget v0, p0, Lub/w;->c:F

    iget p1, p1, Lub/w;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lub/w;->c:F

    return-object p0
.end method

.method public N0(F)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalar"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lub/w;->b:F

    iget v0, p0, Lub/w;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lub/w;->c:F

    return-object p0
.end method

.method public O()F
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lub/w;->c:F

    float-to-double v0, v0

    iget v2, p0, Lub/w;->b:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public O0(FF)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lub/w;->b:F

    iget p1, p0, Lub/w;->c:F

    mul-float/2addr p1, p2

    iput p1, p0, Lub/w;->c:F

    return-object p0
.end method

.method public P(Lub/w;)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->X(Lub/w;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, p1}, Lub/w;->a0(Lub/w;)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x42652ee0

    mul-float/2addr p1, v0

    return p1
.end method

.method public P0(Lub/w;)Lub/w;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    iget v1, p1, Lub/w;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lub/w;->b:F

    iget v0, p0, Lub/w;->c:F

    iget p1, p1, Lub/w;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lub/w;->c:F

    return-object p0
.end method

.method public Q()F
    .locals 4

    iget v0, p0, Lub/w;->c:F

    float-to-double v0, v0

    iget v2, p0, Lub/w;->b:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public Q0(FF)Lub/w;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iput p1, p0, Lub/w;->b:F

    iput p2, p0, Lub/w;->c:F

    return-object p0
.end method

.method public R(Lub/w;)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lub/w;->X(Lub/w;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1, p0}, Lub/w;->a0(Lub/w;)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x42652ee0

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method public R0(Lub/w;)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p1, Lub/w;->b:F

    iput v0, p0, Lub/w;->b:F

    iget p1, p1, Lub/w;->c:F

    iput p1, p0, Lub/w;->c:F

    return-object p0
.end method

.method public S()F
    .locals 4

    iget v0, p0, Lub/w;->c:F

    float-to-double v0, v0

    iget v2, p0, Lub/w;->b:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public S0(F)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lub/w;->U0(F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public T(Lub/w;)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lub/w;->X(Lub/w;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1, p0}, Lub/w;->a0(Lub/w;)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public T0(F)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lub/w;->U0(F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public U(FF)Lub/w;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    invoke-virtual {p0}, Lub/w;->q()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    mul-float/2addr p2, p2

    cmpl-float v1, v0, p2

    if-lez v1, :cond_1

    div-float/2addr p2, v0

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lub/w;->N0(F)Lub/w;

    move-result-object p1

    return-object p1

    :cond_1
    mul-float/2addr p1, p1

    cmpg-float p2, v0, p1

    if-gez p2, :cond_2

    div-float/2addr p1, v0

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lub/w;->N0(F)Lub/w;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0
.end method

.method public U0(F)Lub/w;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radians"
        }
    .end annotation

    invoke-virtual {p0}, Lub/w;->j()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lub/w;->Q0(FF)Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->M0(F)Lub/w;

    return-object p0
.end method

.method public V()Lub/w;
    .locals 1

    new-instance v0, Lub/w;

    invoke-direct {v0, p0}, Lub/w;-><init>(Lub/w;)V

    return-object v0
.end method

.method public V0(F)Lub/w;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    mul-float/2addr p1, p1

    invoke-virtual {p0, p1}, Lub/w;->W0(F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public W(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    mul-float/2addr v0, p2

    iget p2, p0, Lub/w;->c:F

    mul-float/2addr p2, p1

    sub-float/2addr v0, p2

    return v0
.end method

.method public W0(F)Lub/w;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len2"
        }
    .end annotation

    invoke-virtual {p0}, Lub/w;->q()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Lub/w;->N0(F)Lub/w;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public X(Lub/w;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    iget v1, p1, Lub/w;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lub/w;->c:F

    iget p1, p1, Lub/w;->b:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public X0()Lub/w;
    .locals 2

    const/4 v0, 0x0

    const v1, 0x40c90fdb

    invoke-static {v0, v1}, Lub/h;->F(FF)F

    move-result v0

    invoke-static {v0}, Lub/h;->m(F)F

    move-result v1

    invoke-static {v0}, Lub/h;->T(F)F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lub/w;->Q0(FF)Lub/w;

    move-result-object v0

    return-object v0
.end method

.method public Y(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ox",
            "oy"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    mul-float/2addr v0, p1

    iget p1, p0, Lub/w;->c:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public Y0()Lub/w;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lub/w;->b:F

    iput v0, p0, Lub/w;->c:F

    return-object p0
.end method

.method public Z0(FF)Lub/w;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    sub-float/2addr v0, p1

    iput v0, p0, Lub/w;->b:F

    iget p1, p0, Lub/w;->c:F

    sub-float/2addr p1, p2

    iput p1, p0, Lub/w;->c:F

    return-object p0
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lub/w;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lub/w;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a0(Lub/w;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    iget v1, p1, Lub/w;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lub/w;->c:F

    iget p1, p1, Lub/w;->c:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public a1(Lub/w;)Lub/w;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    iget v1, p1, Lub/w;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lub/w;->b:F

    iget v0, p0, Lub/w;->c:F

    iget p1, p1, Lub/w;->c:F

    sub-float/2addr v0, p1

    iput v0, p0, Lub/w;->c:F

    return-object p0
.end method

.method public bridge synthetic b(F)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "len"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->V0(F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public b0(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    sub-float/2addr p1, v0

    iget v0, p0, Lub/w;->c:F

    sub-float/2addr p2, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public bridge synthetic c(Lub/y;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->a0(Lub/w;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic d(Lub/y;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vector"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->m0(Lub/w;)Z

    move-result p1

    return p1
.end method

.method public d0(Lub/w;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p1, Lub/w;->b:F

    iget v1, p0, Lub/w;->b:F

    sub-float/2addr v0, v1

    iget p1, p1, Lub/w;->c:F

    iget v1, p0, Lub/w;->c:F

    sub-float/2addr p1, v1

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public bridge synthetic e(F)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scalar"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->N0(F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public e0(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    sub-float/2addr p1, v0

    iget v0, p0, Lub/w;->c:F

    sub-float/2addr p2, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lub/w;

    iget v2, p0, Lub/w;->b:F

    invoke-static {v2}, Lub/k;->b(F)I

    move-result v2

    iget v3, p1, Lub/w;->b:F

    invoke-static {v3}, Lub/k;->b(F)I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lub/w;->c:F

    invoke-static {v2}, Lub/k;->b(F)I

    move-result v2

    iget p1, p1, Lub/w;->c:F

    invoke-static {p1}, Lub/k;->b(F)I

    move-result p1

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public bridge synthetic f(Lub/y;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->p0(Lub/w;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic g(Lub/y;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vector"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->v0(Lub/w;)Z

    move-result p1

    return p1
.end method

.method public g0(Lub/w;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p1, Lub/w;->b:F

    iget v1, p0, Lub/w;->b:F

    sub-float/2addr v0, v1

    iget p1, p1, Lub/w;->c:F

    iget v1, p0, Lub/w;->c:F

    sub-float/2addr p1, v1

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public bridge synthetic h()Lub/y;
    .locals 1

    invoke-virtual {p0}, Lub/w;->X0()Lub/w;

    move-result-object v0

    return-object v0
.end method

.method public h0(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    const v0, 0x358637bd    # 1.0E-6f

    invoke-virtual {p0, p1, p2, v0}, Lub/w;->i0(FFF)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lub/w;->b:F

    invoke-static {v0}, Lub/k;->b(F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lub/w;->c:F

    invoke-static {v1}, Lub/k;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic i(F)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "limit2"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->B0(F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public i0(FFF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "epsilon"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    return v0

    :cond_0
    iget p1, p0, Lub/w;->c:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p3

    if-lez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public j()F
    .locals 2

    iget v0, p0, Lub/w;->b:F

    mul-float/2addr v0, v0

    iget v1, p0, Lub/w;->c:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public j0(Lub/w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    const v0, 0x358637bd    # 1.0E-6f

    invoke-virtual {p0, p1, v0}, Lub/w;->k0(Lub/w;F)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic k(Lub/y;)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->N(Lub/w;)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public k0(Lub/w;F)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "epsilon"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lub/w;->b:F

    iget v2, p0, Lub/w;->b:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget p1, p1, Lub/w;->c:F

    iget v1, p0, Lub/w;->c:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic l(Lub/y;FLub/g;)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "target",
            "alpha",
            "interpolation"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1, p2, p3}, Lub/w;->o0(Lub/w;FLub/g;)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public l0(Ljava/lang/String;)Lub/w;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/16 v0, 0x2c

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v2, v0}, Lub/w;->Q0(FF)Lub/w;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed Vector2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic m(Lub/y;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "other",
            "epsilon"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1, p2}, Lub/w;->k0(Lub/w;F)Z

    move-result p1

    return p1
.end method

.method public m0(Lub/w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->a0(Lub/w;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic n(Lub/y;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "other",
            "epsilon"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1, p2}, Lub/w;->u0(Lub/w;F)Z

    move-result p1

    return p1
.end method

.method public n0(Lub/w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->a0(Lub/w;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic o()Lub/y;
    .locals 1

    invoke-virtual {p0}, Lub/w;->F0()Lub/w;

    move-result-object v0

    return-object v0
.end method

.method public o0(Lub/w;FLub/g;)Lub/w;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "alpha",
            "interpolation"
        }
    .end annotation

    invoke-virtual {p3, p2}, Lub/g;->a(F)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lub/w;->z0(Lub/w;F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic p(Lub/y;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "vector"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->n0(Lub/w;)Z

    move-result p1

    return p1
.end method

.method public p0(Lub/w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->t0(Lub/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lub/w;->a0(Lub/w;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q()F
    .locals 2

    iget v0, p0, Lub/w;->b:F

    mul-float/2addr v0, v0

    iget v1, p0, Lub/w;->c:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public q0(Lub/w;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "epsilon"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lub/w;->u0(Lub/w;F)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lub/w;->a0(Lub/w;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic r(F)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "len2"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->W0(F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public r0(Lub/w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->t0(Lub/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lub/w;->a0(Lub/w;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic s()Lub/y;
    .locals 1

    invoke-virtual {p0}, Lub/w;->Y0()Lub/w;

    move-result-object v0

    return-object v0
.end method

.method public s0(Lub/w;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "epsilon"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lub/w;->u0(Lub/w;F)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lub/w;->a0(Lub/w;)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic t(Lub/y;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "vector",
            "epsilon"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1, p2}, Lub/w;->w0(Lub/w;F)Z

    move-result p1

    return p1
.end method

.method public t0(Lub/w;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    iget v1, p1, Lub/w;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lub/w;->c:F

    iget p1, p1, Lub/w;->b:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Lub/h;->t(F)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lub/w;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lub/w;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    const v0, 0x3089705f    # 1.0E-9f

    invoke-virtual {p0, v0}, Lub/w;->E(F)Z

    move-result v0

    return v0
.end method

.method public u0(Lub/w;F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "epsilon"
        }
    .end annotation

    iget v0, p0, Lub/w;->b:F

    iget v1, p1, Lub/w;->c:F

    mul-float/2addr v0, v1

    iget v1, p0, Lub/w;->c:F

    iget p1, p1, Lub/w;->b:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0, p2}, Lub/h;->u(FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic v(Lub/y;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->t0(Lub/w;)Z

    move-result p1

    return p1
.end method

.method public v0(Lub/w;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->a0(Lub/w;)F

    move-result p1

    invoke-static {p1}, Lub/h;->t(F)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic w(Lub/y;F)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "vec",
            "scalar"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1, p2}, Lub/w;->D0(Lub/w;F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public w0(Lub/w;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector",
            "epsilon"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/w;->a0(Lub/w;)F

    move-result p1

    invoke-static {p1, p2}, Lub/h;->u(FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic x()Lub/y;
    .locals 1

    invoke-virtual {p0}, Lub/w;->V()Lub/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic y(Lub/y;F)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "target",
            "alpha"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1, p2}, Lub/w;->z0(Lub/w;F)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lub/y;)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    check-cast p1, Lub/w;

    invoke-virtual {p0, p1}, Lub/w;->a1(Lub/w;)Lub/w;

    move-result-object p1

    return-object p1
.end method

.method public z0(Lub/w;F)Lub/w;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "alpha"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget v1, p0, Lub/w;->b:F

    mul-float/2addr v1, v0

    iget v2, p1, Lub/w;->b:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lub/w;->b:F

    iget v1, p0, Lub/w;->c:F

    mul-float/2addr v1, v0

    iget p1, p1, Lub/w;->c:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    iput v1, p0, Lub/w;->c:F

    return-object p0
.end method
