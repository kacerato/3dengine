.class public Lorg/hull/VectorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 2

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p2, Ljavax/vecmath/Tuple3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    .line 2
    iget v0, p1, Ljavax/vecmath/Tuple3f;->y:F

    iget v1, p2, Ljavax/vecmath/Tuple3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->y:F

    .line 3
    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    iget p2, p2, Ljavax/vecmath/Tuple3f;->z:F

    add-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public static add(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 2

    .line 4
    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p2, Ljavax/vecmath/Tuple3f;->x:F

    add-float/2addr v0, v1

    iget v1, p3, Ljavax/vecmath/Tuple3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    .line 5
    iget v0, p1, Ljavax/vecmath/Tuple3f;->y:F

    iget v1, p2, Ljavax/vecmath/Tuple3f;->y:F

    add-float/2addr v0, v1

    iget v1, p3, Ljavax/vecmath/Tuple3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->y:F

    .line 6
    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    iget p2, p2, Ljavax/vecmath/Tuple3f;->z:F

    add-float/2addr p1, p2

    iget p2, p3, Ljavax/vecmath/Tuple3f;->z:F

    add-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public static add(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 2

    .line 7
    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p2, Ljavax/vecmath/Tuple3f;->x:F

    add-float/2addr v0, v1

    iget v1, p3, Ljavax/vecmath/Tuple3f;->x:F

    add-float/2addr v0, v1

    iget v1, p4, Ljavax/vecmath/Tuple3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    .line 8
    iget v0, p1, Ljavax/vecmath/Tuple3f;->y:F

    iget v1, p2, Ljavax/vecmath/Tuple3f;->y:F

    add-float/2addr v0, v1

    iget v1, p3, Ljavax/vecmath/Tuple3f;->y:F

    add-float/2addr v0, v1

    iget v1, p4, Ljavax/vecmath/Tuple3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->y:F

    .line 9
    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    iget p2, p2, Ljavax/vecmath/Tuple3f;->z:F

    add-float/2addr p1, p2

    iget p2, p3, Ljavax/vecmath/Tuple3f;->z:F

    add-float/2addr p1, p2

    iget p2, p4, Ljavax/vecmath/Tuple3f;->z:F

    add-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public static closestAxis4(Ljavax/vecmath/Vector4f;)I
    .locals 1

    new-instance v0, Ljavax/vecmath/Vector4f;

    invoke-direct {v0, p0}, Ljavax/vecmath/Vector4f;-><init>(Ljavax/vecmath/Vector4f;)V

    invoke-virtual {v0}, Ljavax/vecmath/Tuple4f;->absolute()V

    invoke-static {v0}, Lorg/hull/VectorUtil;->maxAxis4(Ljavax/vecmath/Vector4f;)I

    move-result p0

    return p0
.end method

.method public static cross3(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector4f;Ljavax/vecmath/Vector4f;)V
    .locals 6

    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    iget v1, p2, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v2, v0, v1

    iget v3, p1, Ljavax/vecmath/Tuple4f;->z:F

    iget v4, p2, Ljavax/vecmath/Tuple4f;->y:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget p2, p2, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v3, p2

    iget p1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v1, p1

    sub-float/2addr v3, v1

    mul-float/2addr p1, v4

    mul-float/2addr v0, p2

    sub-float/2addr p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    iput v2, p0, Ljavax/vecmath/Tuple3f;->x:F

    iput v3, p0, Ljavax/vecmath/Tuple3f;->y:F

    return-void
.end method

.method public static div(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 2

    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p2, Ljavax/vecmath/Tuple3f;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v0, p1, Ljavax/vecmath/Tuple3f;->y:F

    iget v1, p2, Ljavax/vecmath/Tuple3f;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    iget p2, p2, Ljavax/vecmath/Tuple3f;->z:F

    div-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public static dot3(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector4f;)F
    .locals 3

    .line 3
    iget v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Ljavax/vecmath/Tuple3f;->z:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static dot3(Ljavax/vecmath/Vector4f;Ljavax/vecmath/Vector3f;)F
    .locals 3

    .line 1
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Ljavax/vecmath/Tuple4f;->z:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static dot3(Ljavax/vecmath/Vector4f;Ljavax/vecmath/Vector4f;)F
    .locals 3

    .line 2
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Ljavax/vecmath/Tuple4f;->z:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static getCoord(Ljavax/vecmath/Vector3f;I)F
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p0, p0, Ljavax/vecmath/Tuple3f;->z:F

    return p0

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    :cond_1
    iget p0, p0, Ljavax/vecmath/Tuple3f;->y:F

    return p0

    :cond_2
    iget p0, p0, Ljavax/vecmath/Tuple3f;->x:F

    return p0
.end method

.method public static lengthSquared3(Ljavax/vecmath/Vector4f;)F
    .locals 2

    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget p0, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public static maxAxis(Ljavax/vecmath/Vector3f;)I
    .locals 5

    iget v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    const v1, -0xeb60d36    # -1.0E30f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget v2, p0, Ljavax/vecmath/Tuple3f;->y:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    const/4 v1, 0x1

    move v0, v2

    :cond_1
    iget p0, p0, Ljavax/vecmath/Tuple3f;->z:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    const/4 v1, 0x2

    :cond_2
    return v1
.end method

.method public static maxAxis4(Ljavax/vecmath/Vector4f;)I
    .locals 5

    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    const v1, -0xeb60d36    # -1.0E30f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget v2, p0, Ljavax/vecmath/Tuple4f;->y:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    const/4 v1, 0x1

    move v0, v2

    :cond_1
    iget v2, p0, Ljavax/vecmath/Tuple4f;->z:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_2

    const/4 v1, 0x2

    move v0, v2

    :cond_2
    iget p0, p0, Ljavax/vecmath/Tuple4f;->w:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_3

    const/4 v1, 0x3

    :cond_3
    return v1
.end method

.method public static mul(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 2

    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p2, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v0, p1, Ljavax/vecmath/Tuple3f;->y:F

    iget v1, p2, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    iget p2, p2, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public static mulCoord(Ljavax/vecmath/Vector3f;IF)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    :cond_1
    iget p1, p0, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple3f;->y:F

    goto :goto_0

    :cond_2
    iget p1, p0, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple3f;->x:F

    :goto_0
    return-void
.end method

.method public static normalize3(Ljavax/vecmath/Vector4f;)V
    .locals 4

    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    iget v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public static setCoord(Ljavax/vecmath/Vector3f;IF)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Ljavax/vecmath/Tuple3f;->z:F

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    :cond_1
    iput p2, p0, Ljavax/vecmath/Tuple3f;->y:F

    goto :goto_0

    :cond_2
    iput p2, p0, Ljavax/vecmath/Tuple3f;->x:F

    :goto_0
    return-void
.end method

.method public static setInterpolate3(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v1, v0

    iget v2, p2, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v1, v0

    iget v2, p2, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr v0, p1

    iget p1, p2, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr p3, p1

    add-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public static setMax(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 2

    iget v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v0, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget v0, p0, Ljavax/vecmath/Tuple3f;->z:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method

.method public static setMin(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 2

    iget v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v0, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget v0, p0, Ljavax/vecmath/Tuple3f;->z:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method
