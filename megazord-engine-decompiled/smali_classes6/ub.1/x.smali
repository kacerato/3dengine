.class public Lub/x;
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
        "Lub/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:J = 0x354a9d4dc2f0cbeaL

.field public static final f:Lub/x;

.field public static final g:Lub/x;

.field public static final h:Lub/x;

.field public static final i:Lub/x;

.field public static final j:Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;


# instance fields
.field public b:F

.field public c:F

.field public d:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lub/x;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lub/x;-><init>(FFF)V

    sput-object v0, Lub/x;->f:Lub/x;

    new-instance v0, Lub/x;

    invoke-direct {v0, v2, v1, v2}, Lub/x;-><init>(FFF)V

    sput-object v0, Lub/x;->g:Lub/x;

    new-instance v0, Lub/x;

    invoke-direct {v0, v2, v2, v1}, Lub/x;-><init>(FFF)V

    sput-object v0, Lub/x;->h:Lub/x;

    new-instance v0, Lub/x;

    invoke-direct {v0, v2, v2, v2}, Lub/x;-><init>(FFF)V

    sput-object v0, Lub/x;->i:Lub/x;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;-><init>()V

    sput-object v0, Lub/x;->j:Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lub/x;->O0(FFF)Lub/x;

    return-void
.end method

.method public constructor <init>(Lub/w;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "vector",
            "z"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget v0, p1, Lub/w;->b:F

    iget p1, p1, Lub/w;->c:F

    invoke-virtual {p0, v0, p1, p2}, Lub/x;->O0(FFF)Lub/x;

    return-void
.end method

.method public constructor <init>(Lub/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "vector"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lub/x;->Q0(Lub/x;)Lub/x;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "values"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lub/x;->O0(FFF)Lub/x;

    return-void
.end method

.method public static U(FFFFFF)F
    .locals 0
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
            "x1",
            "y1",
            "z1",
            "x2",
            "y2",
            "z2"
        }
    .end annotation

    mul-float/2addr p0, p3

    mul-float/2addr p1, p4

    add-float/2addr p0, p1

    mul-float/2addr p2, p5

    add-float/2addr p0, p2

    return p0
.end method

.method public static X(FFFFFF)F
    .locals 0
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

    sub-float/2addr p3, p0

    sub-float/2addr p4, p1

    sub-float/2addr p5, p2

    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p3, p4

    mul-float/2addr p5, p5

    add-float/2addr p3, p5

    float-to-double p0, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static a0(FFFFFF)F
    .locals 0
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

    sub-float/2addr p3, p0

    sub-float/2addr p4, p1

    sub-float/2addr p5, p2

    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p3, p4

    mul-float/2addr p5, p5

    add-float/2addr p3, p5

    return p3
.end method

.method public static t0(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static u0(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

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

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1, p2}, Lub/x;->m0(Lub/x;F)Z

    move-result p1

    return p1
.end method

.method public A0(Lub/p;)Lub/x;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "quat"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lub/p;->h0(Lub/x;)Lub/x;

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

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->n0(Lub/x;)Z

    move-result p1

    return p1
.end method

.method public B0([F)Lub/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lub/x;->c:F

    const/4 v3, 0x3

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lub/x;->d:F

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/16 v4, 0x9

    aget v4, p1, v4

    add-float/2addr v1, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x4

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p1, v5

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    const/16 v2, 0xb

    aget p1, p1, v2

    add-float/2addr v0, p1

    invoke-virtual {p0, v1, v4, v0}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic C(Lub/y;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "point"
        }
    .end annotation

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->b0(Lub/x;)F

    move-result p1

    return p1
.end method

.method public C0(Lub/x;F)Lub/x;
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

    iget v0, p0, Lub/x;->b:F

    iget v1, p1, Lub/x;->b:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lub/x;->b:F

    iget v0, p0, Lub/x;->c:F

    iget v1, p1, Lub/x;->c:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lub/x;->c:F

    iget v0, p0, Lub/x;->d:F

    iget p1, p1, Lub/x;->d:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lub/x;->d:F

    return-object p0
.end method

.method public bridge synthetic D(Lub/y;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "vector"
        }
    .end annotation

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->Y(Lub/x;)F

    move-result p1

    return p1
.end method

.method public D0(Lub/x;Lub/x;)Lub/x;
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

    iget v0, p0, Lub/x;->b:F

    iget v1, p1, Lub/x;->b:F

    iget v2, p2, Lub/x;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lub/x;->b:F

    iget v0, p0, Lub/x;->c:F

    iget v1, p1, Lub/x;->c:F

    iget v2, p2, Lub/x;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lub/x;->c:F

    iget v0, p0, Lub/x;->d:F

    iget p1, p1, Lub/x;->d:F

    iget p2, p2, Lub/x;->d:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lub/x;->d:F

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

    invoke-virtual {p0}, Lub/x;->q()F

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

.method public E0()Lub/x;
    .locals 4

    invoke-virtual {p0}, Lub/x;->q()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lub/x;->L0(F)Lub/x;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic F(Lub/y;)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "vector"
        }
    .end annotation

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->Q0(Lub/x;)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public F0(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/x;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->b:[F

    iget v0, p0, Lub/x;->b:F

    const/4 v1, 0x3

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lub/x;->c:F

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lub/x;->d:F

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/16 v4, 0xf

    aget v4, p1, v4

    add-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    const/4 v5, 0x4

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v1, v5

    const/16 v5, 0x8

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    const/16 v5, 0xc

    aget v5, p1, v5

    add-float/2addr v1, v5

    mul-float/2addr v1, v4

    const/4 v5, 0x1

    aget v5, p1, v5

    mul-float/2addr v5, v0

    const/4 v6, 0x5

    aget v6, p1, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, p1, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p1, v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v4

    const/4 v6, 0x2

    aget v6, p1, v6

    mul-float/2addr v0, v6

    const/4 v6, 0x6

    aget v6, p1, v6

    mul-float/2addr v2, v6

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    const/16 v2, 0xe

    aget p1, p1, v2

    add-float/2addr v0, p1

    mul-float/2addr v0, v4

    invoke-virtual {p0, v1, v5, v0}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1}, Lub/x;->w0(F)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public G0(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->b:[F

    iget v0, p0, Lub/x;->b:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lub/x;->c:F

    const/4 v3, 0x4

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lub/x;->d:F

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget p1, p1, v2

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v4, v0}, Lub/x;->O0(FFF)Lub/x;

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

    invoke-virtual {p0}, Lub/x;->q()F

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

.method public H0(FFFF)Lub/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "degrees",
            "axisX",
            "axisY",
            "axisZ"
        }
    .end annotation

    sget-object v0, Lub/x;->j:Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->m0(FFFF)Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lub/x;->y0(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic I(Lub/y;)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "other"
        }
    .end annotation

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->N0(Lub/x;)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public I0(Lub/x;F)Lub/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "axis",
            "degrees"
        }
    .end annotation

    sget-object v0, Lub/x;->j:Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->o0(Lub/x;F)Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;

    invoke-virtual {p0, v0}, Lub/x;->y0(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/x;

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

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1, p2}, Lub/x;->o0(Lub/x;F)Z

    move-result p1

    return p1
.end method

.method public J0(FFFF)Lub/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "radians",
            "axisX",
            "axisY",
            "axisZ"
        }
    .end annotation

    sget-object v0, Lub/x;->j:Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->q0(FFFF)Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lub/x;->y0(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/x;

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

    check-cast p1, Lub/x;

    check-cast p2, Lub/x;

    invoke-virtual {p0, p1, p2}, Lub/x;->D0(Lub/x;Lub/x;)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public K0(Lub/x;F)Lub/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "axis",
            "radians"
        }
    .end annotation

    sget-object v0, Lub/x;->j:Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->r0(Lub/x;F)Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;

    invoke-virtual {p0, v0}, Lub/x;->y0(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/x;

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

    invoke-virtual {p0, p1, p2}, Lub/x;->P(FF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public L0(F)Lub/x;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalar"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    mul-float/2addr v0, p1

    iget v1, p0, Lub/x;->c:F

    mul-float/2addr v1, p1

    iget v2, p0, Lub/x;->d:F

    mul-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public M(F)Lub/x;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    add-float/2addr v0, p1

    iget v1, p0, Lub/x;->c:F

    add-float/2addr v1, p1

    iget v2, p0, Lub/x;->d:F

    add-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public M0(FFF)Lub/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vx",
            "vy",
            "vz"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    mul-float/2addr v0, p1

    iget p1, p0, Lub/x;->c:F

    mul-float/2addr p1, p2

    iget p2, p0, Lub/x;->d:F

    mul-float/2addr p2, p3

    invoke-virtual {p0, v0, p1, p2}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public N(FFF)Lub/x;
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
            "z"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    add-float/2addr v0, p1

    iget p1, p0, Lub/x;->c:F

    add-float/2addr p1, p2

    iget p2, p0, Lub/x;->d:F

    add-float/2addr p2, p3

    invoke-virtual {p0, v0, p1, p2}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public N0(Lub/x;)Lub/x;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    iget v1, p1, Lub/x;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lub/x;->c:F

    iget v2, p1, Lub/x;->c:F

    mul-float/2addr v1, v2

    iget v2, p0, Lub/x;->d:F

    iget p1, p1, Lub/x;->d:F

    mul-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public O(Lub/x;)Lub/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p1, Lub/x;->b:F

    iget v1, p1, Lub/x;->c:F

    iget p1, p1, Lub/x;->d:F

    invoke-virtual {p0, v0, v1, p1}, Lub/x;->N(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public O0(FFF)Lub/x;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    iput p1, p0, Lub/x;->b:F

    iput p2, p0, Lub/x;->c:F

    iput p3, p0, Lub/x;->d:F

    return-object p0
.end method

.method public P(FF)Lub/x;
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

    invoke-virtual {p0}, Lub/x;->q()F

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

    invoke-virtual {p0, p1}, Lub/x;->L0(F)Lub/x;

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

    invoke-virtual {p0, p1}, Lub/x;->L0(F)Lub/x;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0
.end method

.method public P0(Lub/w;F)Lub/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "vector",
            "z"
        }
    .end annotation

    iget v0, p1, Lub/w;->b:F

    iget p1, p1, Lub/w;->c:F

    invoke-virtual {p0, v0, p1, p2}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public Q()Lub/x;
    .locals 1

    new-instance v0, Lub/x;

    invoke-direct {v0, p0}, Lub/x;-><init>(Lub/x;)V

    return-object v0
.end method

.method public Q0(Lub/x;)Lub/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p1, Lub/x;->b:F

    iget v1, p1, Lub/x;->c:F

    iget p1, p1, Lub/x;->d:F

    invoke-virtual {p0, v0, v1, p1}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public R(FFF)Lub/x;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    iget v0, p0, Lub/x;->c:F

    mul-float v1, v0, p3

    iget v2, p0, Lub/x;->d:F

    mul-float v3, v2, p2

    sub-float/2addr v1, v3

    mul-float/2addr v2, p1

    iget v3, p0, Lub/x;->b:F

    mul-float/2addr p3, v3

    sub-float/2addr v2, p3

    mul-float/2addr v3, p2

    mul-float/2addr v0, p1

    sub-float/2addr v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public R0([F)Lub/x;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "values"
        }
    .end annotation

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public S(Lub/x;)Lub/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p0, Lub/x;->c:F

    iget v1, p1, Lub/x;->d:F

    mul-float v2, v0, v1

    iget v3, p0, Lub/x;->d:F

    iget v4, p1, Lub/x;->c:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget p1, p1, Lub/x;->b:F

    mul-float/2addr v3, p1

    iget v5, p0, Lub/x;->b:F

    mul-float/2addr v1, v5

    sub-float/2addr v3, v1

    mul-float/2addr v5, v4

    mul-float/2addr v0, p1

    sub-float/2addr v5, v0

    invoke-virtual {p0, v2, v3, v5}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public S0(FF)Lub/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "azimuthalAngle",
            "polarAngle"
        }
    .end annotation

    invoke-static {p2}, Lub/h;->m(F)F

    move-result v0

    invoke-static {p2}, Lub/h;->T(F)F

    move-result p2

    invoke-static {p1}, Lub/h;->m(F)F

    move-result v1

    invoke-static {p1}, Lub/h;->T(F)F

    move-result p1

    mul-float/2addr v1, p2

    mul-float/2addr p1, p2

    invoke-virtual {p0, v1, p1, v0}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public T(FFF)F
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
            "z"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    mul-float/2addr v0, p1

    iget p1, p0, Lub/x;->c:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iget p1, p0, Lub/x;->d:F

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    return v0
.end method

.method public T0(F)Lub/x;
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

    invoke-virtual {p0, p1}, Lub/x;->U0(F)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public U0(F)Lub/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len2"
        }
    .end annotation

    invoke-virtual {p0}, Lub/x;->q()F

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

    invoke-virtual {p0, p1}, Lub/x;->L0(F)Lub/x;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public V(Lub/x;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    iget v1, p1, Lub/x;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lub/x;->c:F

    iget v2, p1, Lub/x;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lub/x;->d:F

    iget p1, p1, Lub/x;->d:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public V0()Lub/x;
    .locals 3

    invoke-static {}, Lub/h;->D()F

    move-result v0

    invoke-static {}, Lub/h;->D()F

    move-result v1

    const v2, 0x40c90fdb

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lub/x;->S0(FF)Lub/x;

    move-result-object v0

    return-object v0
.end method

.method public W(FFF)F
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
            "z"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    sub-float/2addr p1, v0

    iget v0, p0, Lub/x;->c:F

    sub-float/2addr p2, v0

    iget v0, p0, Lub/x;->d:F

    sub-float/2addr p3, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    mul-float/2addr p3, p3

    add-float/2addr p1, p3

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public W0()Lub/x;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lub/x;->b:F

    iput v0, p0, Lub/x;->c:F

    iput v0, p0, Lub/x;->d:F

    return-object p0
.end method

.method public X0(Lub/x;F)Lub/x;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "target",
            "alpha"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/x;->V(Lub/x;)F

    move-result v0

    float-to-double v1, v0

    const-wide v3, 0x3feffbe76c8b4396L    # 0.9995

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_2

    const-wide v3, -0x401004189374bc6aL    # -0.9995

    cmpg-double v3, v1, v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p2, v3

    iget v3, p1, Lub/x;->b:F

    iget v4, p0, Lub/x;->b:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget v4, p1, Lub/x;->c:F

    iget v5, p0, Lub/x;->c:F

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    iget p1, p1, Lub/x;->d:F

    iget v5, p0, Lub/x;->d:F

    mul-float/2addr v5, v0

    sub-float/2addr p1, v5

    mul-float v0, v3, v3

    mul-float v5, v4, v4

    add-float/2addr v0, v5

    mul-float v5, p1, p1

    add-float/2addr v0, v5

    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v5, v0, v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v0, v7

    div-float/2addr v6, v0

    :goto_0
    mul-float/2addr p2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lub/x;->L0(F)Lub/x;

    move-result-object v0

    mul-float/2addr v3, p2

    mul-float/2addr v4, p2

    mul-float/2addr p1, p2

    invoke-virtual {v0, v3, v4, p1}, Lub/x;->N(FFF)Lub/x;

    move-result-object p1

    invoke-virtual {p1}, Lub/x;->E0()Lub/x;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lub/x;->v0(Lub/x;F)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public Y(Lub/x;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p1, Lub/x;->b:F

    iget v1, p0, Lub/x;->b:F

    sub-float/2addr v0, v1

    iget v1, p1, Lub/x;->c:F

    iget v2, p0, Lub/x;->c:F

    sub-float/2addr v1, v2

    iget p1, p1, Lub/x;->d:F

    iget v2, p0, Lub/x;->d:F

    sub-float/2addr p1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public Y0(F)Lub/x;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    sub-float/2addr v0, p1

    iget v1, p0, Lub/x;->c:F

    sub-float/2addr v1, p1

    iget v2, p0, Lub/x;->d:F

    sub-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public Z(FFF)F
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
            "z"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    sub-float/2addr p1, v0

    iget v0, p0, Lub/x;->c:F

    sub-float/2addr p2, v0

    iget v0, p0, Lub/x;->d:F

    sub-float/2addr p3, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    mul-float/2addr p3, p3

    add-float/2addr p1, p3

    return p1
.end method

.method public Z0(FFF)Lub/x;
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
            "z"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    sub-float/2addr v0, p1

    iget p1, p0, Lub/x;->c:F

    sub-float/2addr p1, p2

    iget p2, p0, Lub/x;->d:F

    sub-float/2addr p2, p3

    invoke-virtual {p0, v0, p1, p2}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lub/x;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lub/x;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lub/x;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a1(Lub/x;)Lub/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "a_vec"
        }
    .end annotation

    iget v0, p1, Lub/x;->b:F

    iget v1, p1, Lub/x;->c:F

    iget p1, p1, Lub/x;->d:F

    invoke-virtual {p0, v0, v1, p1}, Lub/x;->Z0(FFF)Lub/x;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1}, Lub/x;->T0(F)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public b0(Lub/x;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    iget v0, p1, Lub/x;->b:F

    iget v1, p0, Lub/x;->b:F

    sub-float/2addr v0, v1

    iget v1, p1, Lub/x;->c:F

    iget v2, p0, Lub/x;->c:F

    sub-float/2addr v1, v2

    iget p1, p1, Lub/x;->d:F

    iget v2, p0, Lub/x;->d:F

    sub-float/2addr p1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public b1(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->b:[F

    iget v0, p0, Lub/x;->b:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lub/x;->c:F

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lub/x;->d:F

    const/4 v4, 0x2

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    add-float/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p1, v5

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    const/16 v2, 0xb

    aget p1, p1, v2

    add-float/2addr v0, p1

    invoke-virtual {p0, v1, v4, v0}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lub/y;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "vector"
        }
    .end annotation

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->V(Lub/x;)F

    move-result p1

    return p1
.end method

.method public c0(FFF)Z
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
            "z"
        }
    .end annotation

    const v0, 0x358637bd    # 1.0E-6f

    invoke-virtual {p0, p1, p2, p3, v0}, Lub/x;->d0(FFFF)Z

    move-result p1

    return p1
.end method

.method public c1(Lub/i;)Lub/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object p1, p1, Lub/i;->b:[F

    iget v0, p0, Lub/x;->b:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lub/x;->c:F

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lub/x;->d:F

    const/4 v4, 0x2

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x4

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/4 v5, 0x7

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0x8

    aget p1, p1, v2

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v4, v0}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
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

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->h0(Lub/x;)Z

    move-result p1

    return p1
.end method

.method public d0(FFFF)Z
    .locals 1
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
            "epsilon"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p4

    const/4 v0, 0x0

    if-lez p1, :cond_0

    return v0

    :cond_0
    iget p1, p0, Lub/x;->c:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p4

    if-lez p1, :cond_1

    return v0

    :cond_1
    iget p1, p0, Lub/x;->d:F

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p4

    if-lez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public d1(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->b:[F

    iget v0, p0, Lub/x;->b:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lub/x;->c:F

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lub/x;->d:F

    const/4 v4, 0x2

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget p1, p1, v2

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v4, v0}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1}, Lub/x;->L0(F)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public e0(Lub/x;)Z
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

    invoke-virtual {p0, p1, v0}, Lub/x;->f0(Lub/x;F)Z

    move-result p1

    return p1
.end method

.method public e1(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->b:[F

    iget v0, p0, Lub/x;->b:F

    const/16 v1, 0xc

    aget v1, p1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lub/x;->b:F

    iget v2, p0, Lub/x;->c:F

    sub-float/2addr v2, v1

    iput v2, p0, Lub/x;->c:F

    iget v3, p0, Lub/x;->d:F

    sub-float/2addr v3, v1

    iput v3, p0, Lub/x;->d:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    const/4 v4, 0x2

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget p1, p1, v2

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v4, v0}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
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
    check-cast p1, Lub/x;

    iget v2, p0, Lub/x;->b:F

    invoke-static {v2}, Lub/k;->b(F)I

    move-result v2

    iget v3, p1, Lub/x;->b:F

    invoke-static {v3}, Lub/k;->b(F)I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lub/x;->c:F

    invoke-static {v2}, Lub/k;->b(F)I

    move-result v2

    iget v3, p1, Lub/x;->c:F

    invoke-static {v3}, Lub/k;->b(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lub/x;->d:F

    invoke-static {v2}, Lub/k;->b(F)I

    move-result v2

    iget p1, p1, Lub/x;->d:F

    invoke-static {p1}, Lub/k;->b(F)I

    move-result p1

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
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

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->l0(Lub/x;)Z

    move-result p1

    return p1
.end method

.method public f0(Lub/x;F)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
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
    iget v1, p1, Lub/x;->b:F

    iget v2, p0, Lub/x;->b:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget v1, p1, Lub/x;->c:F

    iget v2, p0, Lub/x;->c:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_2

    return v0

    :cond_2
    iget p1, p1, Lub/x;->d:F

    iget v1, p0, Lub/x;->d:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

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

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->r0(Lub/x;)Z

    move-result p1

    return p1
.end method

.method public g0(Ljava/lang/String;)Lub/x;
    .locals 6
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

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-ne v4, v5, :cond_0

    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed Vector3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic h()Lub/y;
    .locals 1

    invoke-virtual {p0}, Lub/x;->V0()Lub/x;

    move-result-object v0

    return-object v0
.end method

.method public h0(Lub/x;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/x;->V(Lub/x;)F

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

.method public hashCode()I
    .locals 3

    iget v0, p0, Lub/x;->b:F

    invoke-static {v0}, Lub/k;->b(F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lub/x;->c:F

    invoke-static {v2}, Lub/k;->b(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lub/x;->d:F

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

    invoke-virtual {p0, p1}, Lub/x;->x0(F)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lub/x;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/x;->V(Lub/x;)F

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

.method public j()F
    .locals 2

    iget v0, p0, Lub/x;->b:F

    mul-float/2addr v0, v0

    iget v1, p0, Lub/x;->c:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lub/x;->d:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public j0(Lub/x;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    iget v1, p1, Lub/x;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lub/x;->c:F

    iget v1, p1, Lub/x;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lub/x;->d:F

    iget p1, p1, Lub/x;->d:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic k(Lub/y;)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "vector"
        }
    .end annotation

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->O(Lub/x;)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public k0(Lub/x;FLub/g;)Lub/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "alpha",
            "interpolator"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0, v1, p2}, Lub/g;->b(FFF)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lub/x;->v0(Lub/x;F)Lub/x;

    move-result-object p1

    return-object p1
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
            "interpolator"
        }
    .end annotation

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1, p2, p3}, Lub/x;->k0(Lub/x;FLub/g;)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public l0(Lub/x;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/x;->p0(Lub/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lub/x;->i0(Lub/x;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic m(Lub/y;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "other",
            "epsilon"
        }
    .end annotation

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1, p2}, Lub/x;->f0(Lub/x;F)Z

    move-result p1

    return p1
.end method

.method public m0(Lub/x;F)Z
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

    invoke-virtual {p0, p1, p2}, Lub/x;->q0(Lub/x;F)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lub/x;->i0(Lub/x;)Z

    move-result p1

    if-eqz p1, :cond_0

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

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1, p2}, Lub/x;->q0(Lub/x;F)Z

    move-result p1

    return p1
.end method

.method public n0(Lub/x;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/x;->p0(Lub/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lub/x;->h0(Lub/x;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic o()Lub/y;
    .locals 1

    invoke-virtual {p0}, Lub/x;->E0()Lub/x;

    move-result-object v0

    return-object v0
.end method

.method public o0(Lub/x;F)Z
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

    invoke-virtual {p0, p1, p2}, Lub/x;->q0(Lub/x;F)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lub/x;->h0(Lub/x;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->i0(Lub/x;)Z

    move-result p1

    return p1
.end method

.method public p0(Lub/x;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p0, Lub/x;->c:F

    iget v1, p1, Lub/x;->d:F

    mul-float v2, v0, v1

    iget v3, p0, Lub/x;->d:F

    iget v4, p1, Lub/x;->c:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget p1, p1, Lub/x;->b:F

    mul-float/2addr v3, p1

    iget v5, p0, Lub/x;->b:F

    mul-float/2addr v1, v5

    sub-float/2addr v3, v1

    mul-float/2addr v5, v4

    mul-float/2addr v0, p1

    sub-float/2addr v5, v0

    invoke-static {v2, v3, v5}, Lub/x;->u0(FFF)F

    move-result p1

    const v0, 0x358637bd    # 1.0E-6f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q()F
    .locals 2

    iget v0, p0, Lub/x;->b:F

    mul-float/2addr v0, v0

    iget v1, p0, Lub/x;->c:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lub/x;->d:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public q0(Lub/x;F)Z
    .locals 6
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

    iget v0, p0, Lub/x;->c:F

    iget v1, p1, Lub/x;->d:F

    mul-float v2, v0, v1

    iget v3, p0, Lub/x;->d:F

    iget v4, p1, Lub/x;->c:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget p1, p1, Lub/x;->b:F

    mul-float/2addr v3, p1

    iget v5, p0, Lub/x;->b:F

    mul-float/2addr v1, v5

    sub-float/2addr v3, v1

    mul-float/2addr v5, v4

    mul-float/2addr v0, p1

    sub-float/2addr v5, v0

    invoke-static {v2, v3, v5}, Lub/x;->u0(FFF)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

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

    invoke-virtual {p0, p1}, Lub/x;->U0(F)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public r0(Lub/x;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lub/x;->V(Lub/x;)F

    move-result p1

    invoke-static {p1}, Lub/h;->t(F)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic s()Lub/y;
    .locals 1

    invoke-virtual {p0}, Lub/x;->W0()Lub/x;

    move-result-object v0

    return-object v0
.end method

.method public s0(Lub/x;F)Z
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

    invoke-virtual {p0, p1}, Lub/x;->V(Lub/x;)F

    move-result p1

    invoke-static {p1, p2}, Lub/h;->u(FF)Z

    move-result p1

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

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1, p2}, Lub/x;->s0(Lub/x;F)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lub/x;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lub/x;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lub/x;->d:F

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

    invoke-virtual {p0, v0}, Lub/x;->E(F)Z

    move-result v0

    return v0
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

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->p0(Lub/x;)Z

    move-result p1

    return p1
.end method

.method public v0(Lub/x;F)Lub/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "target",
            "alpha"
        }
    .end annotation

    iget v0, p0, Lub/x;->b:F

    iget v1, p1, Lub/x;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lub/x;->b:F

    iget v0, p0, Lub/x;->c:F

    iget v1, p1, Lub/x;->c:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lub/x;->c:F

    iget v0, p0, Lub/x;->d:F

    iget p1, p1, Lub/x;->d:F

    sub-float/2addr p1, v0

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lub/x;->d:F

    return-object p0
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

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1, p2}, Lub/x;->C0(Lub/x;F)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public w0(F)Lub/x;
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

    invoke-virtual {p0, p1}, Lub/x;->x0(F)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x()Lub/y;
    .locals 1

    invoke-virtual {p0}, Lub/x;->Q()Lub/x;

    move-result-object v0

    return-object v0
.end method

.method public x0(F)Lub/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit2"
        }
    .end annotation

    invoke-virtual {p0}, Lub/x;->q()F

    move-result v0

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Lub/x;->L0(F)Lub/x;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic y(Lub/y;F)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "target",
            "alpha"
        }
    .end annotation

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1, p2}, Lub/x;->v0(Lub/x;F)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public y0(Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;)Lub/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/Matrix4;->b:[F

    iget v0, p0, Lub/x;->b:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lub/x;->c:F

    const/4 v3, 0x4

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lub/x;->d:F

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/16 v4, 0xc

    aget v4, p1, v4

    add-float/2addr v1, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/16 v5, 0xd

    aget v5, p1, v5

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    const/16 v2, 0xe

    aget p1, p1, v2

    add-float/2addr v0, p1

    invoke-virtual {p0, v1, v4, v0}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Lub/y;)Lub/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "a_vec"
        }
    .end annotation

    check-cast p1, Lub/x;

    invoke-virtual {p0, p1}, Lub/x;->a1(Lub/x;)Lub/x;

    move-result-object p1

    return-object p1
.end method

.method public z0(Lub/i;)Lub/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget-object p1, p1, Lub/i;->b:[F

    iget v0, p0, Lub/x;->b:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lub/x;->c:F

    const/4 v3, 0x3

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lub/x;->d:F

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x4

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0x8

    aget p1, p1, v2

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v4, v0}, Lub/x;->O0(FFF)Lub/x;

    move-result-object p1

    return-object p1
.end method
