.class public Lub/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = -0x6a54731e78ad5e10L

.field public static g:Lub/p;

.field public static h:Lub/p;


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lub/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lub/p;-><init>(FFFF)V

    sput-object v0, Lub/p;->g:Lub/p;

    new-instance v0, Lub/p;

    invoke-direct {v0, v1, v1, v1, v1}, Lub/p;-><init>(FFFF)V

    sput-object v0, Lub/p;->h:Lub/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Lub/p;->z()Lub/p;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lub/p;->M(FFFF)Lub/p;

    return-void
.end method

.method public constructor <init>(Lub/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quaternion"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lub/p;->N(Lub/p;)Lub/p;

    return-void
.end method

.method public constructor <init>(Lub/x;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "axis",
            "angle"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1, p2}, Lub/p;->O(Lub/x;F)Lub/p;

    return-void
.end method

.method public static final D(FFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    mul-float/2addr p3, p3

    add-float/2addr p0, p3

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final F(FFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    mul-float/2addr p3, p3

    add-float/2addr p0, p3

    return p0
.end method

.method public static final f(FFFFFFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "x1",
            "y1",
            "z1",
            "w1",
            "x2",
            "y2",
            "z2",
            "w2"
        }
    .end annotation

    mul-float/2addr p0, p4

    mul-float/2addr p1, p5

    add-float/2addr p0, p1

    mul-float/2addr p2, p6

    add-float/2addr p0, p2

    mul-float/2addr p3, p7

    add-float/2addr p0, p3

    return p0
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget v0, p0, Lub/p;->b:F

    invoke-static {v0}, Lub/h;->t(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lub/p;->c:F

    invoke-static {v0}, Lub/h;->t(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lub/p;->d:F

    invoke-static {v0}, Lub/h;->t(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lub/p;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lub/h;->q(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B(F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tolerance"
        }
    .end annotation

    iget v0, p0, Lub/p;->b:F

    invoke-static {v0, p1}, Lub/h;->u(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lub/p;->c:F

    invoke-static {v0, p1}, Lub/h;->u(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lub/p;->d:F

    invoke-static {v0, p1}, Lub/h;->u(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lub/p;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Lub/h;->r(FFF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C()F
    .locals 2

    iget v0, p0, Lub/p;->b:F

    mul-float/2addr v0, v0

    iget v1, p0, Lub/p;->c:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lub/p;->d:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lub/p;->e:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public E()F
    .locals 2

    iget v0, p0, Lub/p;->b:F

    mul-float/2addr v0, v0

    iget v1, p0, Lub/p;->c:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lub/p;->d:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lub/p;->e:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public G(F)Lub/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalar"
        }
    .end annotation

    iget v0, p0, Lub/p;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lub/p;->b:F

    iget v0, p0, Lub/p;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lub/p;->c:F

    iget v0, p0, Lub/p;->d:F

    mul-float/2addr v0, p1

    iput v0, p0, Lub/p;->d:F

    iget v0, p0, Lub/p;->e:F

    mul-float/2addr v0, p1

    iput v0, p0, Lub/p;->e:F

    return-object p0
.end method

.method public H(FFFF)Lub/p;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    iget v0, p0, Lub/p;->e:F

    mul-float v1, v0, p1

    iget v2, p0, Lub/p;->b:F

    mul-float v3, v2, p4

    add-float/2addr v1, v3

    iget v3, p0, Lub/p;->c:F

    mul-float v4, v3, p3

    add-float/2addr v1, v4

    iget v4, p0, Lub/p;->d:F

    mul-float v5, v4, p2

    sub-float/2addr v1, v5

    mul-float v5, v0, p2

    mul-float v6, v3, p4

    add-float/2addr v5, v6

    mul-float v6, v4, p1

    add-float/2addr v5, v6

    mul-float v6, v2, p3

    sub-float/2addr v5, v6

    mul-float v6, v0, p3

    mul-float v7, v4, p4

    add-float/2addr v6, v7

    mul-float v7, v2, p2

    add-float/2addr v6, v7

    mul-float v7, v3, p1

    sub-float/2addr v6, v7

    mul-float/2addr v0, p4

    mul-float/2addr v2, p1

    sub-float/2addr v0, v2

    mul-float/2addr v3, p2

    sub-float/2addr v0, v3

    mul-float/2addr v4, p3

    sub-float/2addr v0, v4

    iput v1, p0, Lub/p;->b:F

    iput v5, p0, Lub/p;->c:F

    iput v6, p0, Lub/p;->d:F

    iput v0, p0, Lub/p;->e:F

    return-object p0
.end method

.method public I(Lub/p;)Lub/p;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p0, Lub/p;->e:F

    iget v1, p1, Lub/p;->b:F

    mul-float v2, v0, v1

    iget v3, p0, Lub/p;->b:F

    iget v4, p1, Lub/p;->e:F

    mul-float v5, v3, v4

    add-float/2addr v2, v5

    iget v5, p0, Lub/p;->c:F

    iget v6, p1, Lub/p;->d:F

    mul-float v7, v5, v6

    add-float/2addr v2, v7

    iget v7, p0, Lub/p;->d:F

    iget p1, p1, Lub/p;->c:F

    mul-float v8, v7, p1

    sub-float/2addr v2, v8

    mul-float v8, v0, p1

    mul-float v9, v5, v4

    add-float/2addr v8, v9

    mul-float v9, v7, v1

    add-float/2addr v8, v9

    mul-float v9, v3, v6

    sub-float/2addr v8, v9

    mul-float v9, v0, v6

    mul-float v10, v7, v4

    add-float/2addr v9, v10

    mul-float v10, v3, p1

    add-float/2addr v9, v10

    mul-float v10, v5, v1

    sub-float/2addr v9, v10

    mul-float/2addr v0, v4

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    mul-float/2addr v5, p1

    sub-float/2addr v0, v5

    mul-float/2addr v7, v6

    sub-float/2addr v0, v7

    iput v2, p0, Lub/p;->b:F

    iput v8, p0, Lub/p;->c:F

    iput v9, p0, Lub/p;->d:F

    iput v0, p0, Lub/p;->e:F

    return-object p0
.end method

.method public J(FFFF)Lub/p;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    iget v0, p0, Lub/p;->b:F

    mul-float v1, p4, v0

    iget v2, p0, Lub/p;->e:F

    mul-float v3, p1, v2

    add-float/2addr v1, v3

    iget v3, p0, Lub/p;->d:F

    mul-float v4, p2, v3

    add-float/2addr v1, v4

    iget v4, p0, Lub/p;->c:F

    mul-float v5, p3, v4

    sub-float/2addr v1, v5

    mul-float v5, p4, v4

    mul-float v6, p2, v2

    add-float/2addr v5, v6

    mul-float v6, p3, v0

    add-float/2addr v5, v6

    mul-float v6, p1, v3

    sub-float/2addr v5, v6

    mul-float v6, p4, v3

    mul-float v7, p3, v2

    add-float/2addr v6, v7

    mul-float v7, p1, v4

    add-float/2addr v6, v7

    mul-float v7, p2, v0

    sub-float/2addr v6, v7

    mul-float/2addr p4, v2

    mul-float/2addr p1, v0

    sub-float/2addr p4, p1

    mul-float/2addr p2, v4

    sub-float/2addr p4, p2

    mul-float/2addr p3, v3

    sub-float/2addr p4, p3

    iput v1, p0, Lub/p;->b:F

    iput v5, p0, Lub/p;->c:F

    iput v6, p0, Lub/p;->d:F

    iput p4, p0, Lub/p;->e:F

    return-object p0
.end method

.method public K(Lub/p;)Lub/p;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p1, Lub/p;->e:F

    iget v1, p0, Lub/p;->b:F

    mul-float v2, v0, v1

    iget v3, p1, Lub/p;->b:F

    iget v4, p0, Lub/p;->e:F

    mul-float v5, v3, v4

    add-float/2addr v2, v5

    iget v5, p1, Lub/p;->c:F

    iget v6, p0, Lub/p;->d:F

    mul-float v7, v5, v6

    add-float/2addr v2, v7

    iget p1, p1, Lub/p;->d:F

    iget v7, p0, Lub/p;->c:F

    mul-float v8, p1, v7

    sub-float/2addr v2, v8

    mul-float v8, v0, v7

    mul-float v9, v5, v4

    add-float/2addr v8, v9

    mul-float v9, p1, v1

    add-float/2addr v8, v9

    mul-float v9, v3, v6

    sub-float/2addr v8, v9

    mul-float v9, v0, v6

    mul-float v10, p1, v4

    add-float/2addr v9, v10

    mul-float v10, v3, v7

    add-float/2addr v9, v10

    mul-float v10, v5, v1

    sub-float/2addr v9, v10

    mul-float/2addr v0, v4

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    mul-float/2addr v5, v7

    sub-float/2addr v0, v5

    mul-float/2addr p1, v6

    sub-float/2addr v0, p1

    iput v2, p0, Lub/p;->b:F

    iput v8, p0, Lub/p;->c:F

    iput v9, p0, Lub/p;->d:F

    iput v0, p0, Lub/p;->e:F

    return-object p0
.end method

.method public L()Lub/p;
    .locals 2

    invoke-virtual {p0}, Lub/p;->E()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lub/h;->q(FF)Z

    move-result v1

    if-nez v1, :cond_0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lub/p;->e:F

    div-float/2addr v1, v0

    iput v1, p0, Lub/p;->e:F

    iget v1, p0, Lub/p;->b:F

    div-float/2addr v1, v0

    iput v1, p0, Lub/p;->b:F

    iget v1, p0, Lub/p;->c:F

    div-float/2addr v1, v0

    iput v1, p0, Lub/p;->c:F

    iget v1, p0, Lub/p;->d:F

    div-float/2addr v1, v0

    iput v1, p0, Lub/p;->d:F

    :cond_0
    return-object p0
.end method

.method public M(FFFF)Lub/p;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    iput p1, p0, Lub/p;->b:F

    iput p2, p0, Lub/p;->c:F

    iput p3, p0, Lub/p;->d:F

    iput p4, p0, Lub/p;->e:F

    return-object p0
.end method

.method public N(Lub/p;)Lub/p;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quaternion"
        }
    .end annotation

    iget v0, p1, Lub/p;->b:F

    iget v1, p1, Lub/p;->c:F

    iget v2, p1, Lub/p;->d:F

    iget p1, p1, Lub/p;->e:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lub/p;->M(FFFF)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public O(Lub/x;F)Lub/p;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "axis",
            "angle"
        }
    .end annotation

    iget v0, p1, Lub/x;->b:F

    iget v1, p1, Lub/x;->c:F

    iget p1, p1, Lub/x;->d:F

    invoke-virtual {p0, v0, v1, p1, p2}, Lub/p;->T(FFFF)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public P(FFF)Lub/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "yaw",
            "pitch",
            "roll"
        }
    .end annotation

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, Lub/p;->Q(FFF)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public Q(FFF)Lub/p;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "yaw",
            "pitch",
            "roll"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p3, v0

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p2, v0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr p1, v0

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float p1, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v0, v3

    mul-float v3, v0, p2

    mul-float v4, p1, v2

    mul-float/2addr v0, v2

    mul-float/2addr p1, p2

    mul-float p2, v3, v1

    mul-float v2, v4, p3

    add-float/2addr p2, v2

    iput p2, p0, Lub/p;->b:F

    mul-float/2addr v4, v1

    mul-float/2addr v3, p3

    sub-float/2addr v4, v3

    iput v4, p0, Lub/p;->c:F

    mul-float p2, v0, p3

    mul-float v2, p1, v1

    sub-float/2addr p2, v2

    iput p2, p0, Lub/p;->d:F

    mul-float/2addr v0, v1

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    iput v0, p0, Lub/p;->e:F

    return-object p0
.end method

.method public R(FFFFFFFFF)Lub/p;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "xx",
            "xy",
            "xz",
            "yx",
            "yy",
            "yz",
            "zx",
            "zy",
            "zz"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lub/p;->S(ZFFFFFFFFF)Lub/p;

    move-result-object v0

    return-object v0
.end method

.method public S(ZFFFFFFFFF)Lub/p;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "normalizeAxes",
            "xx",
            "xy",
            "xz",
            "yx",
            "yy",
            "yz",
            "zx",
            "zy",
            "zz"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    invoke-static {p2, p3, p4}, Lub/x;->t0(FFF)F

    move-result p1

    div-float p1, v0, p1

    invoke-static {p5, p6, p7}, Lub/x;->t0(FFF)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {p8, p9, p10}, Lub/x;->t0(FFF)F

    move-result v2

    div-float v2, v0, v2

    mul-float/2addr p2, p1

    mul-float/2addr p3, p1

    mul-float/2addr p4, p1

    mul-float/2addr p5, v1

    mul-float/2addr p6, v1

    mul-float/2addr p7, v1

    mul-float/2addr p8, v2

    mul-float/2addr p9, v2

    mul-float/2addr p10, v2

    :cond_0
    add-float p1, p2, p6

    add-float/2addr p1, p10

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    if-ltz v1, :cond_1

    add-float/2addr p1, v0

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p2, p1, v2

    iput p2, p0, Lub/p;->e:F

    div-float/2addr v2, p1

    sub-float/2addr p9, p7

    mul-float/2addr p9, v2

    iput p9, p0, Lub/p;->b:F

    sub-float/2addr p4, p8

    mul-float/2addr p4, v2

    iput p4, p0, Lub/p;->c:F

    sub-float/2addr p5, p3

    mul-float/2addr p5, v2

    iput p5, p0, Lub/p;->d:F

    goto :goto_0

    :cond_1
    cmpl-float p1, p2, p6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-lez p1, :cond_2

    cmpl-float p1, p2, p10

    if-lez p1, :cond_2

    float-to-double p1, p2

    add-double/2addr p1, v0

    float-to-double v0, p6

    sub-double/2addr p1, v0

    float-to-double v0, p10

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p2, p1, v2

    iput p2, p0, Lub/p;->b:F

    div-float/2addr v2, p1

    add-float/2addr p5, p3

    mul-float/2addr p5, v2

    iput p5, p0, Lub/p;->c:F

    add-float/2addr p4, p8

    mul-float/2addr p4, v2

    iput p4, p0, Lub/p;->d:F

    sub-float/2addr p9, p7

    mul-float/2addr p9, v2

    iput p9, p0, Lub/p;->e:F

    goto :goto_0

    :cond_2
    cmpl-float p1, p6, p10

    if-lez p1, :cond_3

    float-to-double v3, p6

    add-double/2addr v3, v0

    float-to-double p1, p2

    sub-double/2addr v3, p1

    float-to-double p1, p10

    sub-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p2, p1, v2

    iput p2, p0, Lub/p;->c:F

    div-float/2addr v2, p1

    add-float/2addr p5, p3

    mul-float/2addr p5, v2

    iput p5, p0, Lub/p;->b:F

    add-float/2addr p9, p7

    mul-float/2addr p9, v2

    iput p9, p0, Lub/p;->d:F

    sub-float/2addr p4, p8

    mul-float/2addr p4, v2

    iput p4, p0, Lub/p;->e:F

    goto :goto_0

    :cond_3
    float-to-double v3, p10

    add-double/2addr v3, v0

    float-to-double p1, p2

    sub-double/2addr v3, p1

    float-to-double p1, p6

    sub-double/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p2, p1, v2

    iput p2, p0, Lub/p;->d:F

    div-float/2addr v2, p1

    add-float/2addr p4, p8

    mul-float/2addr p4, v2

    iput p4, p0, Lub/p;->b:F

    add-float/2addr p9, p7

    mul-float/2addr p9, v2

    iput p9, p0, Lub/p;->c:F

    sub-float/2addr p5, p3

    mul-float/2addr p5, v2

    iput p5, p0, Lub/p;->e:F

    :goto_0
    return-object p0
.end method

.method public T(FFFF)Lub/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z",
            "degrees"
        }
    .end annotation

    const v0, 0x3c8efa35

    mul-float/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lub/p;->V(FFFF)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public U(Lub/x;F)Lub/p;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "axis",
            "degrees"
        }
    .end annotation

    iget v0, p1, Lub/x;->b:F

    iget v1, p1, Lub/x;->c:F

    iget p1, p1, Lub/x;->d:F

    invoke-virtual {p0, v0, v1, p1, p2}, Lub/p;->T(FFFF)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public V(FFFF)Lub/p;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z",
            "radians"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lub/x;->t0(FFF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lub/p;->z()Lub/p;

    move-result-object p1

    return-object p1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    cmpg-float v0, p4, v1

    const v1, 0x40c90fdb

    if-gez v0, :cond_1

    neg-float p4, p4

    rem-float/2addr p4, v1

    sub-float/2addr v1, p4

    goto :goto_0

    :cond_1
    rem-float v1, p4, v1

    :goto_0
    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr v1, p4

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p4, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr p1, v2

    mul-float/2addr p1, p4

    mul-float/2addr p2, v2

    mul-float/2addr p2, p4

    mul-float/2addr v2, p3

    mul-float/2addr v2, p4

    invoke-virtual {p0, p1, p2, v2, v0}, Lub/p;->M(FFFF)Lub/p;

    move-result-object p1

    invoke-virtual {p1}, Lub/p;->L()Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public W(Lub/x;F)Lub/p;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "axis",
            "radians"
        }
    .end annotation

    iget v0, p1, Lub/x;->b:F

    iget v1, p1, Lub/x;->c:F

    iget p1, p1, Lub/x;->d:F

    invoke-virtual {p0, v0, v1, p1, p2}, Lub/p;->V(FFFF)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public X(FFFFFF)Lub/p;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "x1",
            "y1",
            "z1",
            "x2",
            "y2",
            "z2"
        }
    .end annotation

    invoke-static/range {p1 .. p6}, Lub/x;->U(FFFFFF)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lub/h;->i(FFF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p2, p6

    mul-float v2, p3, p5

    sub-float/2addr v1, v2

    mul-float/2addr p3, p4

    mul-float/2addr p6, p1

    sub-float/2addr p3, p6

    mul-float/2addr p1, p5

    mul-float/2addr p2, p4

    sub-float/2addr p1, p2

    invoke-virtual {p0, v1, p3, p1, v0}, Lub/p;->V(FFFF)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public Y(Lub/x;Lub/x;)Lub/p;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v1",
            "v2"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lub/x;->V(Lub/x;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lub/h;->i(FFF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Lub/x;->c:F

    iget v2, p2, Lub/x;->d:F

    mul-float v3, v1, v2

    iget v4, p1, Lub/x;->d:F

    iget v5, p2, Lub/x;->c:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget p2, p2, Lub/x;->b:F

    mul-float/2addr v4, p2

    iget p1, p1, Lub/x;->b:F

    mul-float/2addr v2, p1

    sub-float/2addr v4, v2

    mul-float/2addr p1, v5

    mul-float/2addr v1, p2

    sub-float/2addr p1, v1

    invoke-virtual {p0, v3, v4, p1, v0}, Lub/p;->V(FFFF)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public Z(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lub/p;->b0(ZLcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public a(FFFF)Lub/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "qx",
            "qy",
            "qz",
            "qw"
        }
    .end annotation

    iget v0, p0, Lub/p;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lub/p;->b:F

    iget p1, p0, Lub/p;->c:F

    add-float/2addr p1, p2

    iput p1, p0, Lub/p;->c:F

    iget p1, p0, Lub/p;->d:F

    add-float/2addr p1, p3

    iput p1, p0, Lub/p;->d:F

    iget p1, p0, Lub/p;->e:F

    add-float/2addr p1, p4

    iput p1, p0, Lub/p;->e:F

    return-object p0
.end method

.method public a0(Lub/i;)Lub/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lub/p;->c0(ZLub/i;)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public b(Lub/p;)Lub/p;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quaternion"
        }
    .end annotation

    iget v0, p0, Lub/p;->b:F

    iget v1, p1, Lub/p;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lub/p;->b:F

    iget v0, p0, Lub/p;->c:F

    iget v1, p1, Lub/p;->c:F

    add-float/2addr v0, v1

    iput v0, p0, Lub/p;->c:F

    iget v0, p0, Lub/p;->d:F

    iget v1, p1, Lub/p;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lub/p;->d:F

    iget v0, p0, Lub/p;->e:F

    iget p1, p1, Lub/p;->e:F

    add-float/2addr v0, p1

    iput v0, p0, Lub/p;->e:F

    return-object p0
.end method

.method public b0(ZLcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/p;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "normalizeAxes",
            "matrix"
        }
    .end annotation

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->b:[F

    const/4 v0, 0x0

    aget v3, p2, v0

    const/4 v0, 0x4

    aget v4, p2, v0

    const/16 v0, 0x8

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/4 v0, 0x5

    aget v7, p2, v0

    const/16 v0, 0x9

    aget v8, p2, v0

    const/4 v0, 0x2

    aget v9, p2, v0

    const/4 v0, 0x6

    aget v10, p2, v0

    const/16 v0, 0xa

    aget v11, p2, v0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v11}, Lub/p;->S(ZFFFFFFFFF)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public c()Lub/p;
    .locals 1

    iget v0, p0, Lub/p;->b:F

    neg-float v0, v0

    iput v0, p0, Lub/p;->b:F

    iget v0, p0, Lub/p;->c:F

    neg-float v0, v0

    iput v0, p0, Lub/p;->c:F

    iget v0, p0, Lub/p;->d:F

    neg-float v0, v0

    iput v0, p0, Lub/p;->d:F

    return-object p0
.end method

.method public c0(ZLub/i;)Lub/p;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "normalizeAxes",
            "matrix"
        }
    .end annotation

    iget-object p2, p2, Lub/i;->b:[F

    const/4 v0, 0x0

    aget v3, p2, v0

    const/4 v0, 0x3

    aget v4, p2, v0

    const/4 v0, 0x6

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/4 v0, 0x4

    aget v7, p2, v0

    const/4 v0, 0x7

    aget v8, p2, v0

    const/4 v0, 0x2

    aget v9, p2, v0

    const/4 v0, 0x5

    aget v10, p2, v0

    const/16 v0, 0x8

    aget v11, p2, v0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v11}, Lub/p;->S(ZFFFFFFFFF)Lub/p;

    move-result-object p1

    return-object p1
.end method

.method public d()Lub/p;
    .locals 1

    new-instance v0, Lub/p;

    invoke-direct {v0, p0}, Lub/p;-><init>(Lub/p;)V

    return-object v0
.end method

.method public d0(Lub/p;F)Lub/p;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "end",
            "alpha"
        }
    .end annotation

    iget v0, p0, Lub/p;->b:F

    iget v1, p1, Lub/p;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lub/p;->c:F

    iget v2, p1, Lub/p;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lub/p;->d:F

    iget v2, p1, Lub/p;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lub/p;->e:F

    iget v2, p1, Lub/p;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p2

    sub-float v4, v2, v0

    float-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr v2, v4

    mul-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    mul-float/2addr p2, v0

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p2, v4

    mul-float/2addr p2, v2

    :cond_1
    if-gez v1, :cond_2

    neg-float p2, p2

    :cond_2
    iget v0, p0, Lub/p;->b:F

    mul-float/2addr v0, v3

    iget v1, p1, Lub/p;->b:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lub/p;->b:F

    iget v0, p0, Lub/p;->c:F

    mul-float/2addr v0, v3

    iget v1, p1, Lub/p;->c:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lub/p;->c:F

    iget v0, p0, Lub/p;->d:F

    mul-float/2addr v0, v3

    iget v1, p1, Lub/p;->d:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lub/p;->d:F

    iget v0, p0, Lub/p;->e:F

    mul-float/2addr v3, v0

    iget p1, p1, Lub/p;->e:F

    mul-float/2addr p2, p1

    add-float/2addr v3, p2

    iput v3, p0, Lub/p;->e:F

    return-object p0
.end method

.method public e(FFFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    iget v0, p0, Lub/p;->b:F

    mul-float/2addr v0, p1

    iget p1, p0, Lub/p;->c:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iget p1, p0, Lub/p;->d:F

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    iget p1, p0, Lub/p;->e:F

    mul-float/2addr p1, p4

    add-float/2addr v0, p1

    return v0
.end method

.method public e0([Lub/p;)Lub/p;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    array-length v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lub/p;->N(Lub/p;)Lub/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lub/p;->h(F)Lub/p;

    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    sget-object v2, Lub/p;->g:Lub/p;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lub/p;->N(Lub/p;)Lub/p;

    move-result-object v2

    invoke-virtual {v2, v1}, Lub/p;->h(F)Lub/p;

    move-result-object v2

    invoke-virtual {p0, v2}, Lub/p;->I(Lub/p;)Lub/p;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lub/p;->L()Lub/p;

    return-object p0
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
    instance-of v2, p1, Lub/p;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lub/p;

    iget v2, p0, Lub/p;->e:F

    invoke-static {v2}, Lub/k;->d(F)I

    move-result v2

    iget v3, p1, Lub/p;->e:F

    invoke-static {v3}, Lub/k;->d(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lub/p;->b:F

    invoke-static {v2}, Lub/k;->d(F)I

    move-result v2

    iget v3, p1, Lub/p;->b:F

    invoke-static {v3}, Lub/k;->d(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lub/p;->c:F

    invoke-static {v2}, Lub/k;->d(F)I

    move-result v2

    iget v3, p1, Lub/p;->c:F

    invoke-static {v3}, Lub/k;->d(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lub/p;->d:F

    invoke-static {v2}, Lub/k;->d(F)I

    move-result v2

    iget p1, p1, Lub/p;->d:F

    invoke-static {p1}, Lub/k;->d(F)I

    move-result p1

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public f0([Lub/p;[F)Lub/p;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "q",
            "w"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lub/p;->N(Lub/p;)Lub/p;

    move-result-object v1

    aget v0, p2, v0

    invoke-virtual {v1, v0}, Lub/p;->h(F)Lub/p;

    const/4 v0, 0x1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    sget-object v1, Lub/p;->g:Lub/p;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lub/p;->N(Lub/p;)Lub/p;

    move-result-object v1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Lub/p;->h(F)Lub/p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lub/p;->I(Lub/p;)Lub/p;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lub/p;->L()Lub/p;

    return-object p0
.end method

.method public g(Lub/p;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p0, Lub/p;->b:F

    iget v1, p1, Lub/p;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lub/p;->c:F

    iget v2, p1, Lub/p;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lub/p;->d:F

    iget v2, p1, Lub/p;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lub/p;->e:F

    iget p1, p1, Lub/p;->e:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public g0([F)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "matrix"
        }
    .end annotation

    iget v0, p0, Lub/p;->b:F

    mul-float v1, v0, v0

    iget v2, p0, Lub/p;->c:F

    mul-float v3, v0, v2

    iget v4, p0, Lub/p;->d:F

    mul-float v5, v0, v4

    iget v6, p0, Lub/p;->e:F

    mul-float/2addr v0, v6

    mul-float v7, v2, v2

    mul-float v8, v2, v4

    mul-float/2addr v2, v6

    mul-float v9, v4, v4

    mul-float/2addr v4, v6

    add-float v6, v7, v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v6, v11, v6

    const/4 v12, 0x0

    aput v6, p1, v12

    sub-float v6, v3, v4

    mul-float/2addr v6, v10

    const/4 v12, 0x4

    aput v6, p1, v12

    add-float v6, v5, v2

    mul-float/2addr v6, v10

    const/16 v12, 0x8

    aput v6, p1, v12

    const/16 v6, 0xc

    const/4 v12, 0x0

    aput v12, p1, v6

    add-float/2addr v3, v4

    mul-float/2addr v3, v10

    const/4 v4, 0x1

    aput v3, p1, v4

    add-float/2addr v9, v1

    mul-float/2addr v9, v10

    sub-float v3, v11, v9

    const/4 v4, 0x5

    aput v3, p1, v4

    sub-float v3, v8, v0

    mul-float/2addr v3, v10

    const/16 v4, 0x9

    aput v3, p1, v4

    const/16 v3, 0xd

    aput v12, p1, v3

    sub-float/2addr v5, v2

    mul-float/2addr v5, v10

    const/4 v2, 0x2

    aput v5, p1, v2

    add-float/2addr v8, v0

    mul-float/2addr v8, v10

    const/4 v0, 0x6

    aput v8, p1, v0

    add-float/2addr v1, v7

    mul-float/2addr v1, v10

    sub-float v0, v11, v1

    const/16 v1, 0xa

    aput v0, p1, v1

    const/16 v0, 0xe

    aput v12, p1, v0

    const/4 v0, 0x3

    aput v12, p1, v0

    const/4 v0, 0x7

    aput v12, p1, v0

    const/16 v0, 0xb

    aput v12, p1, v0

    const/16 v0, 0xf

    aput v11, p1, v0

    return-void
.end method

.method public h(F)Lub/p;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->C()F

    move-result v0

    float-to-double v1, v0

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lub/p;->e:F

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    mul-float v1, v3, p1

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    float-to-double v5, v3

    mul-float v0, p1, v4

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v1, v7

    div-double/2addr v5, v1

    double-to-float v1, v5

    :goto_0
    float-to-double v2, v3

    mul-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float p1, v2

    iput p1, p0, Lub/p;->e:F

    iget p1, p0, Lub/p;->b:F

    mul-float/2addr p1, v1

    iput p1, p0, Lub/p;->b:F

    iget p1, p0, Lub/p;->c:F

    mul-float/2addr p1, v1

    iput p1, p0, Lub/p;->c:F

    iget p1, p0, Lub/p;->d:F

    mul-float/2addr p1, v1

    iput p1, p0, Lub/p;->d:F

    invoke-virtual {p0}, Lub/p;->L()Lub/p;

    return-object p0
.end method

.method public h0(Lub/x;)Lub/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    sget-object v0, Lub/p;->h:Lub/p;

    invoke-virtual {v0, p0}, Lub/p;->N(Lub/p;)Lub/p;

    sget-object v0, Lub/p;->h:Lub/p;

    invoke-virtual {v0}, Lub/p;->c()Lub/p;

    sget-object v0, Lub/p;->h:Lub/p;

    sget-object v1, Lub/p;->g:Lub/p;

    iget v2, p1, Lub/x;->b:F

    iget v3, p1, Lub/x;->c:F

    iget v4, p1, Lub/x;->d:F

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lub/p;->M(FFFF)Lub/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lub/p;->K(Lub/p;)Lub/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lub/p;->K(Lub/p;)Lub/p;

    sget-object v0, Lub/p;->h:Lub/p;

    iget v1, v0, Lub/p;->b:F

    iput v1, p1, Lub/x;->b:F

    iget v1, v0, Lub/p;->c:F

    iput v1, p1, Lub/x;->c:F

    iget v0, v0, Lub/p;->d:F

    iput v0, p1, Lub/x;->d:F

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lub/p;->e:F

    invoke-static {v0}, Lub/k;->d(F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lub/p;->b:F

    invoke-static {v2}, Lub/k;->d(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lub/p;->c:F

    invoke-static {v2}, Lub/k;->d(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lub/p;->d:F

    invoke-static {v1}, Lub/k;->d(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()F
    .locals 2

    invoke-virtual {p0}, Lub/p;->n()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public j(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "axisX",
            "axisY",
            "axisZ"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lub/p;->l(FFF)F

    move-result p1

    const p2, 0x42652ee0

    mul-float/2addr p1, p2

    return p1
.end method

.method public k(Lub/x;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "axis"
        }
    .end annotation

    iget v0, p1, Lub/x;->b:F

    iget v1, p1, Lub/x;->c:F

    iget p1, p1, Lub/x;->d:F

    invoke-virtual {p0, v0, v1, p1}, Lub/p;->j(FFF)F

    move-result p1

    return p1
.end method

.method public l(FFF)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "axisX",
            "axisY",
            "axisZ"
        }
    .end annotation

    iget v0, p0, Lub/p;->b:F

    iget v1, p0, Lub/p;->c:F

    iget v2, p0, Lub/p;->d:F

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lub/x;->U(FFFFFF)F

    move-result v0

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    iget v1, p0, Lub/p;->e:F

    invoke-static {p1, p2, p3, v1}, Lub/p;->F(FFFF)F

    move-result p1

    invoke-static {p1}, Lub/h;->t(F)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float p2, v0, p3

    if-gez p2, :cond_1

    iget p2, p0, Lub/p;->e:F

    neg-float p2, p2

    goto :goto_0

    :cond_1
    iget p2, p0, Lub/p;->e:F

    :goto_0
    float-to-double p2, p2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr p2, v0

    double-to-float p1, p2

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3}, Lub/h;->i(FFF)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v0

    double-to-float p3, p1

    :goto_1
    return p3
.end method

.method public m(Lub/x;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "axis"
        }
    .end annotation

    iget v0, p1, Lub/x;->b:F

    iget v1, p1, Lub/x;->c:F

    iget p1, p1, Lub/x;->d:F

    invoke-virtual {p0, v0, v1, p1}, Lub/p;->l(FFF)F

    move-result p1

    return p1
.end method

.method public n()F
    .locals 4

    iget v0, p0, Lub/p;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lub/p;->C()F

    move-result v1

    div-float/2addr v0, v1

    :cond_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public o(Lub/x;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axis"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/p;->p(Lub/x;)F

    move-result p1

    const v0, 0x42652ee0

    mul-float/2addr p1, v0

    return p1
.end method

.method public p(Lub/x;)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axis"
        }
    .end annotation

    iget v0, p0, Lub/p;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lub/p;->L()Lub/p;

    :cond_0
    iget v0, p0, Lub/p;->e:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iget v2, p0, Lub/p;->e:F

    mul-float/2addr v2, v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    cmpg-double v3, v1, v3

    if-gez v3, :cond_1

    iget v1, p0, Lub/p;->b:F

    iput v1, p1, Lub/x;->b:F

    iget v1, p0, Lub/p;->c:F

    iput v1, p1, Lub/x;->c:F

    iget v1, p0, Lub/p;->d:F

    iput v1, p1, Lub/x;->d:F

    goto :goto_0

    :cond_1
    iget v3, p0, Lub/p;->b:F

    float-to-double v3, v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    iput v3, p1, Lub/x;->b:F

    iget v3, p0, Lub/p;->c:F

    float-to-double v3, v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    iput v3, p1, Lub/x;->c:F

    iget v3, p0, Lub/p;->d:F

    float-to-double v3, v3

    div-double/2addr v3, v1

    double-to-float v1, v3

    iput v1, p1, Lub/x;->d:F

    :goto_0
    return v0
.end method

.method public q()I
    .locals 3

    iget v0, p0, Lub/p;->c:F

    iget v1, p0, Lub/p;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lub/p;->d:F

    iget v2, p0, Lub/p;->e:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3eff7cee    # 0.499f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const v1, -0x41008312    # -0.499f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()F
    .locals 2

    invoke-virtual {p0}, Lub/p;->s()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public s()F
    .locals 3

    invoke-virtual {p0}, Lub/p;->q()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lub/p;->e:F

    iget v1, p0, Lub/p;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lub/p;->d:F

    iget v2, p0, Lub/p;->c:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lub/h;->i(FFF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public t()F
    .locals 2

    invoke-virtual {p0}, Lub/p;->u()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lub/p;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lub/p;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lub/p;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lub/p;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()F
    .locals 5

    invoke-virtual {p0}, Lub/p;->q()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    iget v0, p0, Lub/p;->e:F

    iget v2, p0, Lub/p;->d:F

    mul-float/2addr v0, v2

    iget v3, p0, Lub/p;->c:F

    iget v4, p0, Lub/p;->b:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    mul-float/2addr v0, v1

    mul-float/2addr v4, v4

    mul-float/2addr v2, v2

    add-float/2addr v4, v2

    mul-float/2addr v4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    invoke-static {v0, v1}, Lub/h;->d(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lub/p;->c:F

    iget v2, p0, Lub/p;->e:F

    invoke-static {v1, v2}, Lub/h;->d(FF)F

    move-result v1

    mul-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public v(FFFLub/p;Lub/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "axisX",
            "axisY",
            "axisZ",
            "swing",
            "twist"
        }
    .end annotation

    iget v0, p0, Lub/p;->b:F

    iget v1, p0, Lub/p;->c:F

    iget v2, p0, Lub/p;->d:F

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lub/x;->U(FFFFFF)F

    move-result v0

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    iget v1, p0, Lub/p;->e:F

    invoke-virtual {p5, p1, p2, p3, v1}, Lub/p;->M(FFFF)Lub/p;

    move-result-object p1

    invoke-virtual {p1}, Lub/p;->L()Lub/p;

    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p5, p1}, Lub/p;->G(F)Lub/p;

    :cond_0
    invoke-virtual {p4, p5}, Lub/p;->N(Lub/p;)Lub/p;

    move-result-object p1

    invoke-virtual {p1}, Lub/p;->c()Lub/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Lub/p;->K(Lub/p;)Lub/p;

    return-void
.end method

.method public w(Lub/x;Lub/p;Lub/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "axis",
            "swing",
            "twist"
        }
    .end annotation

    iget v1, p1, Lub/x;->b:F

    iget v2, p1, Lub/x;->c:F

    iget v3, p1, Lub/x;->d:F

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lub/p;->v(FFFLub/p;Lub/p;)V

    return-void
.end method

.method public x()F
    .locals 2

    invoke-virtual {p0}, Lub/p;->y()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public y()F
    .locals 4

    invoke-virtual {p0}, Lub/p;->q()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lub/p;->c:F

    iget v1, p0, Lub/p;->e:F

    mul-float/2addr v1, v0

    iget v2, p0, Lub/p;->b:F

    iget v3, p0, Lub/p;->d:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    mul-float/2addr v0, v3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Lub/h;->d(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Lub/p;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, v1}, Lub/p;->M(FFFF)Lub/p;

    move-result-object v0

    return-object v0
.end method
