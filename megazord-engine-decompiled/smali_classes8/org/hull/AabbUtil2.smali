.class public Lorg/hull/AabbUtil2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


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

.method public static aabbExpand(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 0

    invoke-virtual {p0, p2}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {p1, p3}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public static outcode(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)I
    .locals 5

    iget v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    neg-float v2, v1

    cmpg-float v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    or-int/2addr v0, v2

    iget v1, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget v2, p1, Ljavax/vecmath/Tuple3f;->y:F

    neg-float v4, v2

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    or-int/2addr v0, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const/16 v1, 0x10

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    or-int/2addr v0, v1

    iget p0, p0, Ljavax/vecmath/Tuple3f;->z:F

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    neg-float v1, p1

    cmpg-float v1, p0, v1

    if-gez v1, :cond_4

    const/4 v1, 0x4

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    or-int/2addr v0, v1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_5

    const/16 v3, 0x20

    :cond_5
    or-int p0, v0, v3

    return p0
.end method

.method public static testAabbAgainstAabb2(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Z
    .locals 4

    iget v0, p0, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, p3, Ljavax/vecmath/Tuple3f;->x:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget v0, p1, Ljavax/vecmath/Tuple3f;->x:F

    iget v2, p2, Ljavax/vecmath/Tuple3f;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget v2, p0, Ljavax/vecmath/Tuple3f;->z:F

    iget v3, p3, Ljavax/vecmath/Tuple3f;->z:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p1, Ljavax/vecmath/Tuple3f;->z:F

    iget v3, p2, Ljavax/vecmath/Tuple3f;->z:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    iget p0, p0, Ljavax/vecmath/Tuple3f;->y:F

    iget p3, p3, Ljavax/vecmath/Tuple3f;->y:F

    cmpl-float p0, p0, p3

    if-gtz p0, :cond_5

    iget p0, p1, Ljavax/vecmath/Tuple3f;->y:F

    iget p1, p2, Ljavax/vecmath/Tuple3f;->y:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :cond_5
    :goto_2
    return v1
.end method

.method public static testTriangleAgainstAabb2([Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Z
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-object v3, p0, v2

    const/4 v4, 0x2

    aget-object p0, p0, v4

    iget v4, v1, Ljavax/vecmath/Tuple3f;->x:F

    iget v5, v3, Ljavax/vecmath/Tuple3f;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Ljavax/vecmath/Tuple3f;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p2, Ljavax/vecmath/Tuple3f;->x:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    return v0

    :cond_0
    iget v4, v1, Ljavax/vecmath/Tuple3f;->x:F

    iget v5, v3, Ljavax/vecmath/Tuple3f;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Ljavax/vecmath/Tuple3f;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p1, Ljavax/vecmath/Tuple3f;->x:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    return v0

    :cond_1
    iget v4, v1, Ljavax/vecmath/Tuple3f;->z:F

    iget v5, v3, Ljavax/vecmath/Tuple3f;->z:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Ljavax/vecmath/Tuple3f;->z:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p2, Ljavax/vecmath/Tuple3f;->z:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    return v0

    :cond_2
    iget v4, v1, Ljavax/vecmath/Tuple3f;->z:F

    iget v5, v3, Ljavax/vecmath/Tuple3f;->z:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Ljavax/vecmath/Tuple3f;->z:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p1, Ljavax/vecmath/Tuple3f;->z:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    return v0

    :cond_3
    iget v4, v1, Ljavax/vecmath/Tuple3f;->y:F

    iget v5, v3, Ljavax/vecmath/Tuple3f;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Ljavax/vecmath/Tuple3f;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget p2, p2, Ljavax/vecmath/Tuple3f;->y:F

    cmpl-float p2, v4, p2

    if-lez p2, :cond_4

    return v0

    :cond_4
    iget p2, v1, Ljavax/vecmath/Tuple3f;->y:F

    iget v1, v3, Ljavax/vecmath/Tuple3f;->y:F

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p0, p0, Ljavax/vecmath/Tuple3f;->y:F

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget p1, p1, Ljavax/vecmath/Tuple3f;->y:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public static transformAabb(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;FLorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 3

    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {v0, p1, p0}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Ljavax/vecmath/Tuple3f;->scale(F)V

    iget v2, v0, Ljavax/vecmath/Tuple3f;->x:F

    add-float/2addr v2, p2

    iput v2, v0, Ljavax/vecmath/Tuple3f;->x:F

    iget v2, v0, Ljavax/vecmath/Tuple3f;->y:F

    add-float/2addr v2, p2

    iput v2, v0, Ljavax/vecmath/Tuple3f;->y:F

    iget v2, v0, Ljavax/vecmath/Tuple3f;->z:F

    add-float/2addr v2, p2

    iput v2, v0, Ljavax/vecmath/Tuple3f;->z:F

    new-instance p2, Ljavax/vecmath/Vector3f;

    invoke-direct {p2}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {p2, p1, p0}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {p2, v1}, Ljavax/vecmath/Tuple3f;->scale(F)V

    new-instance p0, Ljavax/vecmath/Matrix3f;

    iget-object p1, p3, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-direct {p0, p1}, Ljavax/vecmath/Matrix3f;-><init>(Ljavax/vecmath/Matrix3f;)V

    invoke-static {p0}, Lorg/hull/MatrixUtil;->absolute(Ljavax/vecmath/Matrix3f;)V

    new-instance p1, Ljavax/vecmath/Vector3f;

    invoke-direct {p1, p2}, Ljavax/vecmath/Vector3f;-><init>(Ljavax/vecmath/Vector3f;)V

    invoke-virtual {p3, p1}, Lorg/hull/Transform;->transform(Ljavax/vecmath/Vector3f;)V

    new-instance p2, Ljavax/vecmath/Vector3f;

    invoke-direct {p2}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance p3, Ljavax/vecmath/Vector3f;

    invoke-direct {p3}, Ljavax/vecmath/Vector3f;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Ljavax/vecmath/Matrix3f;->getRow(ILjavax/vecmath/Vector3f;)V

    invoke-virtual {p3, v0}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result v1

    iput v1, p2, Ljavax/vecmath/Tuple3f;->x:F

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p3}, Ljavax/vecmath/Matrix3f;->getRow(ILjavax/vecmath/Vector3f;)V

    invoke-virtual {p3, v0}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result v1

    iput v1, p2, Ljavax/vecmath/Tuple3f;->y:F

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p3}, Ljavax/vecmath/Matrix3f;->getRow(ILjavax/vecmath/Vector3f;)V

    invoke-virtual {p3, v0}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result p0

    iput p0, p2, Ljavax/vecmath/Tuple3f;->z:F

    invoke-virtual {p4, p1, p2}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {p5, p1, p2}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    return-void
.end method
