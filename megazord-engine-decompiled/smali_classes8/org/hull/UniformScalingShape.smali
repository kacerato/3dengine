.class public Lorg/hull/UniformScalingShape;
.super Lorg/hull/ConvexShape;
.source "SourceFile"


# instance fields
.field private childConvexShape:Lorg/hull/ConvexShape;

.field private uniformScalingFactor:F


# direct methods
.method public constructor <init>(Lorg/hull/ConvexShape;F)V
    .locals 0

    invoke-direct {p0}, Lorg/hull/ConvexShape;-><init>()V

    iput-object p1, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    iput p2, p0, Lorg/hull/UniformScalingShape;->uniformScalingFactor:F

    return-void
.end method


# virtual methods
.method public batchedUnitVectorGetSupportingVertexWithoutMargin([Ljavax/vecmath/Vector3f;[Ljavax/vecmath/Vector3f;I)V
    .locals 2

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0, p1, p2, p3}, Lorg/hull/ConvexShape;->batchedUnitVectorGetSupportingVertexWithoutMargin([Ljavax/vecmath/Vector3f;[Ljavax/vecmath/Vector3f;I)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    aget-object v0, p2, p1

    iget v1, p0, Lorg/hull/UniformScalingShape;->uniformScalingFactor:F

    invoke-virtual {v0, v1}, Ljavax/vecmath/Tuple3f;->scale(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public calculateLocalInertia(FLjavax/vecmath/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0, p1, p2}, Lorg/hull/CollisionShape;->calculateLocalInertia(FLjavax/vecmath/Vector3f;)V

    iget p1, p0, Lorg/hull/UniformScalingShape;->uniformScalingFactor:F

    invoke-virtual {p2, p1}, Ljavax/vecmath/Tuple3f;->scale(F)V

    return-void
.end method

.method public getAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 3

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0, p1, p2, p3}, Lorg/hull/CollisionShape;->getAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    new-instance p1, Ljavax/vecmath/Vector3f;

    invoke-direct {p1}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {p1, p3, p2}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Ljavax/vecmath/Tuple3f;->scale(F)V

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {v1, p3, p2}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    iget v2, p0, Lorg/hull/UniformScalingShape;->uniformScalingFactor:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ljavax/vecmath/Tuple3f;->scale(F)V

    invoke-virtual {p2, p1, v1}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {p3, p1, v1}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public getAabbSlow(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 3

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0, p1, p2, p3}, Lorg/hull/ConvexShape;->getAabbSlow(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    new-instance p1, Ljavax/vecmath/Vector3f;

    invoke-direct {p1}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {p1, p3, p2}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Ljavax/vecmath/Tuple3f;->scale(F)V

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {v1, p3, p2}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    iget v2, p0, Lorg/hull/UniformScalingShape;->uniformScalingFactor:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ljavax/vecmath/Tuple3f;->scale(F)V

    invoke-virtual {p2, p1, v1}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {p3, p1, v1}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public getChildShape()Lorg/hull/ConvexShape;
    .locals 1

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    return-object v0
.end method

.method public getLocalScaling(Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
    .locals 1

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0, p1}, Lorg/hull/ConvexShape;->getLocalScaling(Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

    return-object p1
.end method

.method public getMargin()F
    .locals 2

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0}, Lorg/hull/ConvexShape;->getMargin()F

    move-result v0

    iget v1, p0, Lorg/hull/UniformScalingShape;->uniformScalingFactor:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "UniformScalingShape"

    return-object v0
.end method

.method public getNumPreferredPenetrationDirections()I
    .locals 1

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0}, Lorg/hull/ConvexShape;->getNumPreferredPenetrationDirections()I

    move-result v0

    return v0
.end method

.method public getPreferredPenetrationDirection(ILjavax/vecmath/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0, p1, p2}, Lorg/hull/ConvexShape;->getPreferredPenetrationDirection(ILjavax/vecmath/Vector3f;)V

    return-void
.end method

.method public getShapeType()Lorg/hull/BroadphaseNativeType;
    .locals 1

    sget-object v0, Lorg/hull/BroadphaseNativeType;->UNIFORM_SCALING_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    return-object v0
.end method

.method public getUniformScalingFactor()F
    .locals 1

    iget v0, p0, Lorg/hull/UniformScalingShape;->uniformScalingFactor:F

    return v0
.end method

.method public localGetSupportingVertex(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
    .locals 1

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0, p1, p2}, Lorg/hull/ConvexShape;->localGetSupportingVertex(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

    iget p1, p0, Lorg/hull/UniformScalingShape;->uniformScalingFactor:F

    invoke-virtual {p2, p1}, Ljavax/vecmath/Tuple3f;->scale(F)V

    return-object p2
.end method

.method public localGetSupportingVertexWithoutMargin(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
    .locals 1

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0, p1, p2}, Lorg/hull/ConvexShape;->localGetSupportingVertexWithoutMargin(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

    iget p1, p0, Lorg/hull/UniformScalingShape;->uniformScalingFactor:F

    invoke-virtual {p2, p1}, Ljavax/vecmath/Tuple3f;->scale(F)V

    return-object p2
.end method

.method public setLocalScaling(Ljavax/vecmath/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0, p1}, Lorg/hull/ConvexShape;->setLocalScaling(Ljavax/vecmath/Vector3f;)V

    return-void
.end method

.method public setMargin(F)V
    .locals 1

    iget-object v0, p0, Lorg/hull/UniformScalingShape;->childConvexShape:Lorg/hull/ConvexShape;

    invoke-virtual {v0, p1}, Lorg/hull/ConvexShape;->setMargin(F)V

    return-void
.end method
