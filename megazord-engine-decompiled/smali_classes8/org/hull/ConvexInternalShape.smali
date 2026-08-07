.class public abstract Lorg/hull/ConvexInternalShape;
.super Lorg/hull/ConvexShape;
.source "SourceFile"


# static fields
.field public static final CONVEX_DISTANCE_MARGIN:F = 0.04f

.field public static final FLT_EPSILON:F = 1.1920929E-7f

.field public static final SIMD_2_PI:F = 6.2831855f

.field public static final SIMD_DEGS_PER_RAD:F = 57.295776f

.field public static final SIMD_EPSILON:F = 1.1920929E-7f

.field public static final SIMD_HALF_PI:F = 1.5707964f

.field public static final SIMD_INFINITY:F = 3.4028235E38f

.field public static final SIMD_PI:F = 3.1415927f

.field public static final SIMD_RADS_PER_DEG:F = 0.017453292f


# instance fields
.field protected collisionMargin:F

.field protected final implicitShapeDimensions:Ljavax/vecmath/Vector3f;

.field protected final localScaling:Ljavax/vecmath/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/hull/ConvexShape;-><init>()V

    new-instance v0, Ljavax/vecmath/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lorg/hull/ConvexInternalShape;->localScaling:Ljavax/vecmath/Vector3f;

    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lorg/hull/ConvexInternalShape;->implicitShapeDimensions:Ljavax/vecmath/Vector3f;

    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, Lorg/hull/ConvexInternalShape;->collisionMargin:F

    return-void
.end method


# virtual methods
.method public getAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/hull/ConvexInternalShape;->getAabbSlow(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    return-void
.end method

.method public getAabbSlow(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 6

    invoke-virtual {p0}, Lorg/hull/ConvexInternalShape;->getMargin()F

    move-result v0

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v2, Ljavax/vecmath/Vector3f;

    invoke-direct {v2}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v3, Ljavax/vecmath/Vector3f;

    invoke-direct {v3}, Ljavax/vecmath/Vector3f;-><init>()V

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v5}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v5}, Lorg/hull/VectorUtil;->setCoord(Ljavax/vecmath/Vector3f;IF)V

    iget-object v5, p1, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-static {v2, v1, v5}, Lorg/hull/MatrixUtil;->transposeTransform(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Matrix3f;)V

    invoke-virtual {p0, v2, v3}, Lorg/hull/ConvexInternalShape;->localGetSupportingVertex(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

    invoke-virtual {p1, v3}, Lorg/hull/Transform;->transform(Ljavax/vecmath/Vector3f;)V

    invoke-static {v3, v4}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v5

    add-float/2addr v5, v0

    invoke-static {p3, v4, v5}, Lorg/hull/VectorUtil;->setCoord(Ljavax/vecmath/Vector3f;IF)V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v1, v4, v5}, Lorg/hull/VectorUtil;->setCoord(Ljavax/vecmath/Vector3f;IF)V

    iget-object v5, p1, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-static {v2, v1, v5}, Lorg/hull/MatrixUtil;->transposeTransform(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Matrix3f;)V

    invoke-virtual {p0, v2, v3}, Lorg/hull/ConvexInternalShape;->localGetSupportingVertex(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

    invoke-virtual {p1, v3}, Lorg/hull/Transform;->transform(Ljavax/vecmath/Vector3f;)V

    invoke-static {v3, v4}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {p2, v4, v5}, Lorg/hull/VectorUtil;->setCoord(Ljavax/vecmath/Vector3f;IF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getLocalScaling(Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
    .locals 1

    iget-object v0, p0, Lorg/hull/ConvexInternalShape;->localScaling:Ljavax/vecmath/Vector3f;

    invoke-virtual {p1, v0}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    return-object p1
.end method

.method public getMargin()F
    .locals 1

    iget v0, p0, Lorg/hull/ConvexInternalShape;->collisionMargin:F

    return v0
.end method

.method public getNumPreferredPenetrationDirections()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferredPenetrationDirection(ILjavax/vecmath/Vector3f;)V
    .locals 0

    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1
.end method

.method public localGetSupportingVertex(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/hull/ConvexShape;->localGetSupportingVertexWithoutMargin(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

    move-result-object v0

    invoke-virtual {p0}, Lorg/hull/ConvexInternalShape;->getMargin()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1, p1}, Ljavax/vecmath/Vector3f;-><init>(Ljavax/vecmath/Vector3f;)V

    invoke-virtual {v1}, Ljavax/vecmath/Vector3f;->lengthSquared()F

    move-result p1

    const/high16 v2, 0x28800000

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {v1, p1, p1, p1}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    :cond_0
    invoke-virtual {v1}, Ljavax/vecmath/Vector3f;->normalize()V

    invoke-virtual {p0}, Lorg/hull/ConvexInternalShape;->getMargin()F

    move-result p1

    invoke-virtual {v0, p1, v1, v0}, Ljavax/vecmath/Tuple3f;->scaleAdd(FLjavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    :cond_1
    return-object p2
.end method

.method public setLocalScaling(Ljavax/vecmath/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lorg/hull/ConvexInternalShape;->localScaling:Ljavax/vecmath/Vector3f;

    invoke-virtual {v0, p1}, Ljavax/vecmath/Tuple3f;->absolute(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public setMargin(F)V
    .locals 0

    iput p1, p0, Lorg/hull/ConvexInternalShape;->collisionMargin:F

    return-void
.end method
