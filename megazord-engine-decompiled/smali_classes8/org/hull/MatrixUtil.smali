.class public Lorg/hull/MatrixUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONVEX_DISTANCE_MARGIN:F = 0.04f

.field public static final FLT_EPSILON:F = 1.1920929E-7f

.field public static final SIMD_2_PI:F = 6.2831855f

.field public static final SIMD_DEGS_PER_RAD:F = 57.295776f

.field public static final SIMD_EPSILON:F = 1.1920929E-7f

.field public static final SIMD_HALF_PI:F = 1.5707964f

.field public static final SIMD_INFINITY:F = 3.4028235E38f

.field public static final SIMD_PI:F = 3.1415927f

.field public static final SIMD_RADS_PER_DEG:F = 0.017453292f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absolute(Ljavax/vecmath/Matrix3f;)V
    .locals 1

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method private static cofac(Ljavax/vecmath/Matrix3f;IIII)F
    .locals 2

    invoke-virtual {p0, p1, p2}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v0

    invoke-virtual {p0, p3, p4}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, p1, p4}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result p1

    invoke-virtual {p0, p3, p2}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result p0

    mul-float/2addr p1, p0

    sub-float/2addr v0, p1

    return v0
.end method

.method public static diagonalize(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Matrix3f;FI)V
    .locals 12

    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {p1}, Ljavax/vecmath/Matrix3f;->setIdentity()V

    :goto_0
    if-lez p3, :cond_7

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m02:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v3, v2, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lez v3, :cond_0

    move v1, v2

    move v2, v4

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v4

    move v2, v5

    :goto_1
    iget v6, p0, Ljavax/vecmath/Matrix3f;->m12:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v7, v6, v1

    const/4 v8, 0x0

    if-lez v7, :cond_1

    move v2, v5

    move v1, v6

    move v3, v8

    goto :goto_2

    :cond_1
    move v4, v2

    move v2, v8

    :goto_2
    iget v6, p0, Ljavax/vecmath/Matrix3f;->m00:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Ljavax/vecmath/Matrix3f;->m11:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    iget v7, p0, Ljavax/vecmath/Matrix3f;->m22:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    mul-float/2addr v6, p2

    cmpg-float v7, v1, v6

    if-gtz v7, :cond_3

    const/high16 p3, 0x34000000

    mul-float/2addr v6, p3

    cmpg-float p3, v1, v6

    if-gtz p3, :cond_2

    return-void

    :cond_2
    move p3, v5

    :cond_3
    invoke-virtual {p0, v2, v4}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v1

    invoke-virtual {p0, v4, v4}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v5

    invoke-virtual {p0, v2, v2}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v1, v6

    div-float/2addr v5, v7

    mul-float v7, v5, v5

    mul-float v9, v7, v7

    const/high16 v10, 0x4ca00000    # 8.388608E7f

    cmpg-float v9, v9, v10

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-gez v9, :cond_5

    cmpl-float v6, v5, v10

    if-ltz v6, :cond_4

    add-float/2addr v7, v11

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    add-float/2addr v5, v6

    :goto_3
    div-float v5, v11, v5

    goto :goto_4

    :cond_4
    add-float/2addr v7, v11

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float/2addr v5, v6

    goto :goto_3

    :goto_4
    mul-float v6, v5, v5

    add-float/2addr v6, v11

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v11, v6

    :goto_5
    mul-float v6, v11, v5

    goto :goto_6

    :cond_5
    const/high16 v9, 0x3f000000    # 0.5f

    div-float v7, v9, v7

    add-float/2addr v7, v6

    mul-float/2addr v5, v7

    div-float v5, v11, v5

    mul-float/2addr v9, v5

    mul-float/2addr v9, v5

    sub-float/2addr v11, v9

    goto :goto_5

    :goto_6
    invoke-virtual {p0, v2, v4, v10}, Ljavax/vecmath/Matrix3f;->setElement(IIF)V

    invoke-virtual {p0, v4, v2, v10}, Ljavax/vecmath/Matrix3f;->setElement(IIF)V

    invoke-virtual {p0, v2, v2}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v7

    mul-float/2addr v5, v1

    sub-float/2addr v7, v5

    invoke-virtual {p0, v2, v2, v7}, Ljavax/vecmath/Matrix3f;->setElement(IIF)V

    invoke-virtual {p0, v4, v4}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v1

    add-float/2addr v1, v5

    invoke-virtual {p0, v4, v4, v1}, Ljavax/vecmath/Matrix3f;->setElement(IIF)V

    invoke-virtual {p0, v3, v2}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v1

    invoke-virtual {p0, v3, v4}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v5

    mul-float v7, v11, v1

    mul-float v9, v6, v5

    sub-float/2addr v7, v9

    invoke-virtual {p0, v3, v2, v7}, Ljavax/vecmath/Matrix3f;->setElement(IIF)V

    invoke-virtual {p0, v2, v3, v7}, Ljavax/vecmath/Matrix3f;->setElement(IIF)V

    mul-float/2addr v5, v11

    mul-float/2addr v1, v6

    add-float/2addr v5, v1

    invoke-virtual {p0, v3, v4, v5}, Ljavax/vecmath/Matrix3f;->setElement(IIF)V

    invoke-virtual {p0, v4, v3, v5}, Ljavax/vecmath/Matrix3f;->setElement(IIF)V

    :goto_7
    const/4 v1, 0x3

    if-ge v8, v1, :cond_6

    invoke-virtual {p1, v8, v0}, Ljavax/vecmath/Matrix3f;->getRow(ILjavax/vecmath/Vector3f;)V

    invoke-static {v0, v2}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v1

    invoke-static {v0, v4}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v3

    mul-float v5, v11, v1

    mul-float v7, v6, v3

    sub-float/2addr v5, v7

    invoke-static {v0, v2, v5}, Lorg/hull/VectorUtil;->setCoord(Ljavax/vecmath/Vector3f;IF)V

    mul-float/2addr v3, v11

    mul-float/2addr v1, v6

    add-float/2addr v3, v1

    invoke-static {v0, v4, v3}, Lorg/hull/VectorUtil;->setCoord(Ljavax/vecmath/Vector3f;IF)V

    invoke-virtual {p1, v8, v0}, Ljavax/vecmath/Matrix3f;->setRow(ILjavax/vecmath/Vector3f;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static getOpenGLSubMatrix(Ljavax/vecmath/Matrix3f;[F)V
    .locals 3

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    aput v1, p1, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x4

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m01:F

    aput v2, p1, v0

    const/4 v0, 0x5

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m11:F

    aput v2, p1, v0

    const/4 v0, 0x6

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m21:F

    aput v2, p1, v0

    const/4 v0, 0x7

    aput v1, p1, v0

    const/16 v0, 0x8

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m02:F

    aput v2, p1, v0

    const/16 v0, 0x9

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m12:F

    aput v2, p1, v0

    const/16 v0, 0xa

    iget p0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    aput p0, p1, v0

    const/16 p0, 0xb

    aput v1, p1, p0

    return-void
.end method

.method public static getRotation(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Quat4f;)V
    .locals 13

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lorg/hull/ArrayPool;->get(Ljava/lang/Class;)Lorg/hull/ArrayPool;

    move-result-object v0

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m11:F

    add-float/2addr v1, v2

    iget v2, p0, Ljavax/vecmath/Matrix3f;->m22:F

    add-float/2addr v1, v2

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/hull/ArrayPool;->getFixed(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-lez v3, :cond_0

    add-float/2addr v1, v4

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float v3, v1, v7

    aput v3, v2, v9

    div-float/2addr v7, v1

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iget v3, p0, Ljavax/vecmath/Matrix3f;->m12:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v7

    aput v1, v2, v5

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v3, p0, Ljavax/vecmath/Matrix3f;->m20:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v7

    aput v1, v2, v6

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iget p0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    sub-float/2addr v1, p0

    mul-float/2addr v1, v7

    aput v1, v2, v8

    goto :goto_2

    :cond_0
    iget v1, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v3, p0, Ljavax/vecmath/Matrix3f;->m11:F

    cmpg-float v10, v1, v3

    if-gez v10, :cond_2

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    :goto_0
    move v1, v8

    goto :goto_1

    :cond_1
    move v1, v6

    goto :goto_1

    :cond_2
    iget v3, p0, Ljavax/vecmath/Matrix3f;->m22:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v5

    :goto_1
    add-int/lit8 v3, v1, 0x1

    rem-int/2addr v3, v9

    add-int/lit8 v10, v1, 0x2

    rem-int/2addr v10, v9

    invoke-virtual {p0, v1, v1}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v11

    invoke-virtual {p0, v3, v3}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {p0, v10, v10}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v12

    sub-float/2addr v11, v12

    add-float/2addr v11, v4

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v4, v11

    mul-float v11, v4, v7

    aput v11, v2, v1

    div-float/2addr v7, v4

    invoke-virtual {p0, v10, v3}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v4

    invoke-virtual {p0, v3, v10}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v11

    sub-float/2addr v4, v11

    mul-float/2addr v4, v7

    aput v4, v2, v9

    invoke-virtual {p0, v3, v1}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v4

    invoke-virtual {p0, v1, v3}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v11

    add-float/2addr v4, v11

    mul-float/2addr v4, v7

    aput v4, v2, v3

    invoke-virtual {p0, v10, v1}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result v3

    invoke-virtual {p0, v1, v10}, Ljavax/vecmath/Matrix3f;->getElement(II)F

    move-result p0

    add-float/2addr v3, p0

    mul-float/2addr v3, v7

    aput v3, v2, v10

    :goto_2
    aget p0, v2, v5

    aget v1, v2, v6

    aget v3, v2, v8

    aget v4, v2, v9

    invoke-virtual {p1, p0, v1, v3, v4}, Ljavax/vecmath/Tuple4f;->set(FFFF)V

    invoke-virtual {v0, v2}, Lorg/hull/ArrayPool;->release(Ljava/lang/Object;)V

    return-void
.end method

.method public static invert(Ljavax/vecmath/Matrix3f;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p0, v0, v0, v1, v1}, Lorg/hull/MatrixUtil;->cofac(Ljavax/vecmath/Matrix3f;IIII)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v1, v3}, Lorg/hull/MatrixUtil;->cofac(Ljavax/vecmath/Matrix3f;IIII)F

    move-result v4

    invoke-static {p0, v0, v3, v1, v0}, Lorg/hull/MatrixUtil;->cofac(Ljavax/vecmath/Matrix3f;IIII)F

    move-result v5

    iget v6, p0, Ljavax/vecmath/Matrix3f;->m00:F

    mul-float/2addr v6, v2

    iget v7, p0, Ljavax/vecmath/Matrix3f;->m01:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iget v7, p0, Ljavax/vecmath/Matrix3f;->m02:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v6

    mul-float/2addr v2, v7

    invoke-static {p0, v3, v1, v1, v0}, Lorg/hull/MatrixUtil;->cofac(Ljavax/vecmath/Matrix3f;IIII)F

    move-result v6

    mul-float/2addr v6, v7

    invoke-static {p0, v3, v0, v0, v1}, Lorg/hull/MatrixUtil;->cofac(Ljavax/vecmath/Matrix3f;IIII)F

    move-result v8

    mul-float/2addr v8, v7

    mul-float/2addr v4, v7

    invoke-static {p0, v3, v3, v1, v1}, Lorg/hull/MatrixUtil;->cofac(Ljavax/vecmath/Matrix3f;IIII)F

    move-result v9

    mul-float/2addr v9, v7

    invoke-static {p0, v3, v1, v0, v3}, Lorg/hull/MatrixUtil;->cofac(Ljavax/vecmath/Matrix3f;IIII)F

    move-result v10

    mul-float/2addr v10, v7

    mul-float/2addr v5, v7

    invoke-static {p0, v3, v0, v1, v3}, Lorg/hull/MatrixUtil;->cofac(Ljavax/vecmath/Matrix3f;IIII)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-static {p0, v3, v3, v0, v0}, Lorg/hull/MatrixUtil;->cofac(Ljavax/vecmath/Matrix3f;IIII)F

    move-result v0

    mul-float/2addr v0, v7

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iput v6, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iput v8, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iput v4, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iput v9, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iput v10, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iput v5, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public static scale(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3f;)V
    .locals 3

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p2, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m01:F

    iget v2, p2, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v0, v2

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m02:F

    iget p2, p2, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr v0, p2

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m10:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m11:F

    mul-float/2addr v0, v2

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m12:F

    mul-float/2addr v0, p2

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m20:F

    mul-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iget v0, p1, Ljavax/vecmath/Matrix3f;->m21:F

    mul-float/2addr v0, v2

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iget p1, p1, Ljavax/vecmath/Matrix3f;->m22:F

    mul-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public static setEulerZYX(Ljavax/vecmath/Matrix3f;FFF)V
    .locals 10

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p2, v4

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float p3, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v3, p1, p3

    mul-float v4, p1, v2

    mul-float v5, v0, p3

    mul-float v6, v0, v2

    mul-float/2addr p3, p2

    mul-float v7, v1, v5

    sub-float/2addr v7, v4

    mul-float v8, v1, v3

    add-float/2addr v8, v6

    const/4 v9, 0x0

    invoke-virtual {p0, v9, p3, v7, v8}, Ljavax/vecmath/Matrix3f;->setRow(IFFF)V

    mul-float/2addr v2, p2

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    mul-float/2addr v4, v1

    sub-float/2addr v4, v5

    const/4 p3, 0x1

    invoke-virtual {p0, p3, v2, v6, v4}, Ljavax/vecmath/Matrix3f;->setRow(IFFF)V

    neg-float p3, v1

    mul-float/2addr v0, p2

    mul-float/2addr p2, p1

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p3, v0, p2}, Ljavax/vecmath/Matrix3f;->setRow(IFFF)V

    return-void
.end method

.method public static setFromOpenGLSubMatrix(Ljavax/vecmath/Matrix3f;[F)V
    .locals 1

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m10:F

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m12:F

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    const/16 v0, 0xa

    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public static setFromOpenGLSubMatrixIgnoreScale(Ljavax/vecmath/Matrix3f;[F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    const/4 v1, 0x4

    aget v1, p1, v1

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m01:F

    const/16 v1, 0x8

    aget v1, p1, v1

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m02:F

    const/4 v1, 0x1

    aget v1, p1, v1

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m11:F

    const/16 v1, 0x9

    aget v1, p1, v1

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    const/4 v1, 0x2

    aget v1, p1, v1

    iput v1, p0, Ljavax/vecmath/Matrix3f;->m20:F

    const/4 v1, 0x6

    aget p1, p1, v1

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method public static setRotation(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Quat4f;)V
    .locals 10

    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float v1, v0, v0

    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    iget v3, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float v4, v3, v3

    add-float/2addr v1, v4

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float v4, p1, p1

    add-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    mul-float v1, v0, v4

    mul-float v5, v2, v4

    mul-float/2addr v4, v3

    mul-float v6, p1, v1

    mul-float v7, p1, v5

    mul-float/2addr p1, v4

    mul-float/2addr v1, v0

    mul-float v8, v0, v5

    mul-float/2addr v0, v4

    mul-float/2addr v5, v2

    mul-float/2addr v2, v4

    mul-float/2addr v3, v4

    add-float v4, v5, v3

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v4, v9, v4

    iput v4, p0, Ljavax/vecmath/Matrix3f;->m00:F

    sub-float v4, v8, p1

    iput v4, p0, Ljavax/vecmath/Matrix3f;->m01:F

    add-float v4, v0, v7

    iput v4, p0, Ljavax/vecmath/Matrix3f;->m02:F

    add-float/2addr v8, p1

    iput v8, p0, Ljavax/vecmath/Matrix3f;->m10:F

    add-float/2addr v3, v1

    sub-float p1, v9, v3

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    sub-float p1, v2, v6

    iput p1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    sub-float/2addr v0, v7

    iput v0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    add-float/2addr v2, v6

    iput v2, p0, Ljavax/vecmath/Matrix3f;->m21:F

    add-float/2addr v1, v5

    sub-float/2addr v9, v1

    iput v9, p0, Ljavax/vecmath/Matrix3f;->m22:F

    return-void
.end method

.method private static tdotx(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3f;)F
    .locals 3

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m00:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m10:F

    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Ljavax/vecmath/Matrix3f;->m20:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private static tdoty(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3f;)F
    .locals 3

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m01:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m11:F

    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Ljavax/vecmath/Matrix3f;->m21:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private static tdotz(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3f;)F
    .locals 3

    iget v0, p0, Ljavax/vecmath/Matrix3f;->m02:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Ljavax/vecmath/Matrix3f;->m12:F

    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Ljavax/vecmath/Matrix3f;->m22:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static transposeTransform(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Matrix3f;)V
    .locals 2

    invoke-static {p2, p1}, Lorg/hull/MatrixUtil;->tdotx(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3f;)F

    move-result v0

    invoke-static {p2, p1}, Lorg/hull/MatrixUtil;->tdoty(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3f;)F

    move-result v1

    invoke-static {p2, p1}, Lorg/hull/MatrixUtil;->tdotz(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Vector3f;)F

    move-result p1

    iput v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iput v1, p0, Ljavax/vecmath/Tuple3f;->y:F

    iput p1, p0, Ljavax/vecmath/Tuple3f;->z:F

    return-void
.end method
