.class public abstract Lorg/hull/CollisionShape;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected userPointer:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract calculateLocalInertia(FLjavax/vecmath/Vector3f;)V
.end method

.method public calculateTemporalAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;FLjavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 8

    invoke-virtual {p0, p1, p5, p6}, Lorg/hull/CollisionShape;->getAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    iget p1, p6, Ljavax/vecmath/Tuple3f;->x:F

    iget v0, p6, Ljavax/vecmath/Tuple3f;->y:F

    iget v1, p6, Ljavax/vecmath/Tuple3f;->z:F

    iget v2, p5, Ljavax/vecmath/Tuple3f;->x:F

    iget v3, p5, Ljavax/vecmath/Tuple3f;->y:F

    iget v4, p5, Ljavax/vecmath/Tuple3f;->z:F

    new-instance v5, Ljavax/vecmath/Vector3f;

    invoke-direct {v5, p2}, Ljavax/vecmath/Vector3f;-><init>(Ljavax/vecmath/Vector3f;)V

    invoke-virtual {v5, p4}, Ljavax/vecmath/Tuple3f;->scale(F)V

    iget p2, v5, Ljavax/vecmath/Tuple3f;->x:F

    const/4 v6, 0x0

    cmpl-float v7, p2, v6

    if-lez v7, :cond_0

    add-float/2addr p1, p2

    goto :goto_0

    :cond_0
    add-float/2addr v2, p2

    :goto_0
    iget p2, v5, Ljavax/vecmath/Tuple3f;->y:F

    cmpl-float v7, p2, v6

    if-lez v7, :cond_1

    add-float/2addr v0, p2

    goto :goto_1

    :cond_1
    add-float/2addr v3, p2

    :goto_1
    iget p2, v5, Ljavax/vecmath/Tuple3f;->z:F

    cmpl-float v5, p2, v6

    if-lez v5, :cond_2

    add-float/2addr v1, p2

    goto :goto_2

    :cond_2
    add-float/2addr v4, p2

    :goto_2
    invoke-virtual {p3}, Ljavax/vecmath/Vector3f;->length()F

    move-result p2

    invoke-virtual {p0}, Lorg/hull/CollisionShape;->getAngularMotionDisc()F

    move-result p3

    mul-float/2addr p2, p3

    mul-float/2addr p2, p4

    new-instance p3, Ljavax/vecmath/Vector3f;

    invoke-direct {p3}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {p3, p2, p2, p2}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    invoke-virtual {p5, v2, v3, v4}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    invoke-virtual {p6, p1, v0, v1}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    invoke-virtual {p5, p3}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {p6, p3}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public abstract getAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
.end method

.method public getAngularMotionDisc()F
    .locals 4

    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-virtual {p0, v0, v1}, Lorg/hull/CollisionShape;->getBoundingSphere(Ljavax/vecmath/Vector3f;[F)V

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-virtual {v0}, Ljavax/vecmath/Vector3f;->length()F

    move-result v0

    add-float/2addr v3, v0

    aput v3, v1, v2

    return v3
.end method

.method public getBoundingSphere(Ljavax/vecmath/Vector3f;[F)V
    .locals 6

    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v1, Lorg/hull/Transform;

    invoke-direct {v1}, Lorg/hull/Transform;-><init>()V

    invoke-virtual {v1}, Lorg/hull/Transform;->setIdentity()V

    new-instance v2, Ljavax/vecmath/Vector3f;

    invoke-direct {v2}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v3, Ljavax/vecmath/Vector3f;

    invoke-direct {v3}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Lorg/hull/CollisionShape;->getAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    invoke-virtual {v0, v3, v2}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {v0}, Ljavax/vecmath/Vector3f;->length()F

    move-result v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v1, v4

    const/4 v5, 0x0

    aput v1, p2, v5

    invoke-virtual {v0, v2, v3}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {p1, v4, v0}, Ljavax/vecmath/Tuple3f;->scale(FLjavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public abstract getLocalScaling(Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
.end method

.method public abstract getMargin()F
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getShapeType()Lorg/hull/BroadphaseNativeType;
.end method

.method public getUserPointer()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/hull/CollisionShape;->userPointer:Ljava/lang/Object;

    return-object v0
.end method

.method public isCompound()Z
    .locals 1

    invoke-virtual {p0}, Lorg/hull/CollisionShape;->getShapeType()Lorg/hull/BroadphaseNativeType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/hull/BroadphaseNativeType;->isCompound()Z

    move-result v0

    return v0
.end method

.method public isConcave()Z
    .locals 1

    invoke-virtual {p0}, Lorg/hull/CollisionShape;->getShapeType()Lorg/hull/BroadphaseNativeType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/hull/BroadphaseNativeType;->isConcave()Z

    move-result v0

    return v0
.end method

.method public isConvex()Z
    .locals 1

    invoke-virtual {p0}, Lorg/hull/CollisionShape;->getShapeType()Lorg/hull/BroadphaseNativeType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/hull/BroadphaseNativeType;->isConvex()Z

    move-result v0

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    invoke-virtual {p0}, Lorg/hull/CollisionShape;->getShapeType()Lorg/hull/BroadphaseNativeType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/hull/BroadphaseNativeType;->isInfinite()Z

    move-result v0

    return v0
.end method

.method public isPolyhedral()Z
    .locals 1

    invoke-virtual {p0}, Lorg/hull/CollisionShape;->getShapeType()Lorg/hull/BroadphaseNativeType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/hull/BroadphaseNativeType;->isPolyhedral()Z

    move-result v0

    return v0
.end method

.method public abstract setLocalScaling(Ljavax/vecmath/Vector3f;)V
.end method

.method public abstract setMargin(F)V
.end method

.method public setUserPointer(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/hull/CollisionShape;->userPointer:Ljava/lang/Object;

    return-void
.end method
