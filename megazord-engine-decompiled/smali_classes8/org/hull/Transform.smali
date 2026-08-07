.class public Lorg/hull/Transform;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final basis:Ljavax/vecmath/Matrix3f;

.field public final origin:Ljavax/vecmath/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljavax/vecmath/Matrix3f;

    invoke-direct {v0}, Ljavax/vecmath/Matrix3f;-><init>()V

    iput-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    .line 3
    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix3f;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljavax/vecmath/Matrix3f;

    invoke-direct {v0}, Ljavax/vecmath/Matrix3f;-><init>()V

    iput-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    .line 6
    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1}, Ljavax/vecmath/Vector3f;-><init>()V

    iput-object v1, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    .line 7
    invoke-virtual {v0, p1}, Ljavax/vecmath/Matrix3f;->set(Ljavax/vecmath/Matrix3f;)V

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Matrix4f;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljavax/vecmath/Matrix3f;

    invoke-direct {v0}, Ljavax/vecmath/Matrix3f;-><init>()V

    iput-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    .line 10
    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    .line 11
    invoke-virtual {p0, p1}, Lorg/hull/Transform;->set(Ljavax/vecmath/Matrix4f;)V

    return-void
.end method

.method public constructor <init>(Lorg/hull/Transform;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljavax/vecmath/Matrix3f;

    invoke-direct {v0}, Ljavax/vecmath/Matrix3f;-><init>()V

    iput-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    .line 14
    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    .line 15
    invoke-virtual {p0, p1}, Lorg/hull/Transform;->set(Lorg/hull/Transform;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/hull/Transform;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/hull/Transform;

    iget-object v1, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    iget-object v2, p1, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-virtual {v1, v2}, Ljavax/vecmath/Matrix3f;->equals(Ljavax/vecmath/Matrix3f;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    iget-object p1, p1, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    invoke-virtual {v1, p1}, Ljavax/vecmath/Tuple3f;->equals(Ljavax/vecmath/Tuple3f;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getMatrix(Ljavax/vecmath/Matrix4f;)Ljavax/vecmath/Matrix4f;
    .locals 2

    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-virtual {p1, v0}, Ljavax/vecmath/Matrix4f;->set(Ljavax/vecmath/Matrix3f;)V

    iget-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    iget v1, v0, Ljavax/vecmath/Tuple3f;->x:F

    iput v1, p1, Ljavax/vecmath/Matrix4f;->m03:F

    iget v1, v0, Ljavax/vecmath/Tuple3f;->y:F

    iput v1, p1, Ljavax/vecmath/Matrix4f;->m13:F

    iget v0, v0, Ljavax/vecmath/Tuple3f;->z:F

    iput v0, p1, Ljavax/vecmath/Matrix4f;->m23:F

    return-object p1
.end method

.method public getOpenGLMatrix([F)V
    .locals 3

    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-static {v0, p1}, Lorg/hull/MatrixUtil;->getOpenGLSubMatrix(Ljavax/vecmath/Matrix3f;[F)V

    iget-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    iget v1, v0, Ljavax/vecmath/Tuple3f;->x:F

    const/16 v2, 0xc

    aput v1, p1, v2

    const/16 v1, 0xd

    iget v2, v0, Ljavax/vecmath/Tuple3f;->y:F

    aput v2, p1, v1

    const/16 v1, 0xe

    iget v0, v0, Ljavax/vecmath/Tuple3f;->z:F

    aput v0, p1, v1

    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    return-void
.end method

.method public getRotation(Ljavax/vecmath/Quat4f;)Ljavax/vecmath/Quat4f;
    .locals 1

    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-static {v0, p1}, Lorg/hull/MatrixUtil;->getRotation(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Quat4f;)V

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-virtual {v0}, Ljavax/vecmath/Matrix3f;->hashCode()I

    move-result v0

    const/16 v1, 0x7b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x29

    iget-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    invoke-virtual {v0}, Ljavax/vecmath/Tuple3f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public invXform(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    invoke-virtual {p2, p1, v0}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    new-instance p1, Ljavax/vecmath/Matrix3f;

    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-direct {p1, v0}, Ljavax/vecmath/Matrix3f;-><init>(Ljavax/vecmath/Matrix3f;)V

    invoke-virtual {p1}, Ljavax/vecmath/Matrix3f;->transpose()V

    invoke-virtual {p1, p2}, Ljavax/vecmath/Matrix3f;->transform(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public inverse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-virtual {v0}, Ljavax/vecmath/Matrix3f;->transpose()V

    .line 2
    iget-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Ljavax/vecmath/Tuple3f;->scale(F)V

    .line 3
    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    iget-object v1, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    invoke-virtual {v0, v1}, Ljavax/vecmath/Matrix3f;->transform(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public inverse(Lorg/hull/Transform;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/hull/Transform;->set(Lorg/hull/Transform;)V

    .line 5
    invoke-virtual {p0}, Lorg/hull/Transform;->inverse()V

    return-void
.end method

.method public mul(Lorg/hull/Transform;)V
    .locals 2

    .line 1
    new-instance v0, Ljavax/vecmath/Vector3f;

    iget-object v1, p1, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    invoke-direct {v0, v1}, Ljavax/vecmath/Vector3f;-><init>(Ljavax/vecmath/Vector3f;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/hull/Transform;->transform(Ljavax/vecmath/Vector3f;)V

    .line 3
    iget-object v1, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    iget-object p1, p1, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-virtual {v1, p1}, Ljavax/vecmath/Matrix3f;->mul(Ljavax/vecmath/Matrix3f;)V

    .line 4
    iget-object p1, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    invoke-virtual {p1, v0}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public mul(Lorg/hull/Transform;Lorg/hull/Transform;)V
    .locals 2

    .line 5
    new-instance v0, Ljavax/vecmath/Vector3f;

    iget-object v1, p2, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    invoke-direct {v0, v1}, Ljavax/vecmath/Vector3f;-><init>(Ljavax/vecmath/Vector3f;)V

    .line 6
    invoke-virtual {p1, v0}, Lorg/hull/Transform;->transform(Ljavax/vecmath/Vector3f;)V

    .line 7
    iget-object v1, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    iget-object p1, p1, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    iget-object p2, p2, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-virtual {v1, p1, p2}, Ljavax/vecmath/Matrix3f;->mul(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Matrix3f;)V

    .line 8
    iget-object p1, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    invoke-virtual {p1, v0}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public set(Ljavax/vecmath/Matrix3f;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-virtual {v0, p1}, Ljavax/vecmath/Matrix3f;->set(Ljavax/vecmath/Matrix3f;)V

    .line 4
    iget-object p1, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    return-void
.end method

.method public set(Ljavax/vecmath/Matrix4f;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-virtual {p1, v0}, Ljavax/vecmath/Matrix4f;->getRotationScale(Ljavax/vecmath/Matrix3f;)V

    .line 6
    iget-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    iget v1, p1, Ljavax/vecmath/Matrix4f;->m03:F

    iget v2, p1, Ljavax/vecmath/Matrix4f;->m13:F

    iget p1, p1, Ljavax/vecmath/Matrix4f;->m23:F

    invoke-virtual {v0, v1, v2, p1}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    return-void
.end method

.method public set(Lorg/hull/Transform;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    iget-object v1, p1, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-virtual {v0, v1}, Ljavax/vecmath/Matrix3f;->set(Ljavax/vecmath/Matrix3f;)V

    .line 2
    iget-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    iget-object p1, p1, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    invoke-virtual {v0, p1}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method

.method public setFromOpenGLMatrix([F)V
    .locals 4

    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-static {v0, p1}, Lorg/hull/MatrixUtil;->setFromOpenGLSubMatrix(Ljavax/vecmath/Matrix3f;[F)V

    iget-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    const/16 v1, 0xc

    aget v1, p1, v1

    const/16 v2, 0xd

    aget v2, p1, v2

    const/16 v3, 0xe

    aget p1, p1, v3

    invoke-virtual {v0, v1, v2, p1}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    return-void
.end method

.method public setFromOpenGLMatrixIgnoreScale([F)V
    .locals 4

    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-static {v0, p1}, Lorg/hull/MatrixUtil;->setFromOpenGLSubMatrixIgnoreScale(Ljavax/vecmath/Matrix3f;[F)V

    iget-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    const/16 v1, 0xc

    aget v1, p1, v1

    const/16 v2, 0xd

    aget v2, p1, v2

    const/16 v3, 0xe

    aget p1, p1, v3

    invoke-virtual {v0, v1, v2, p1}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    return-void
.end method

.method public setIdentity()V
    .locals 2

    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-virtual {v0}, Ljavax/vecmath/Matrix3f;->setIdentity()V

    iget-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    return-void
.end method

.method public setRotation(Ljavax/vecmath/Quat4f;)V
    .locals 1

    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-static {v0, p1}, Lorg/hull/MatrixUtil;->setRotation(Ljavax/vecmath/Matrix3f;Ljavax/vecmath/Quat4f;)V

    return-void
.end method

.method public transform(Ljavax/vecmath/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lorg/hull/Transform;->basis:Ljavax/vecmath/Matrix3f;

    invoke-virtual {v0, p1}, Ljavax/vecmath/Matrix3f;->transform(Ljavax/vecmath/Tuple3f;)V

    iget-object v0, p0, Lorg/hull/Transform;->origin:Ljavax/vecmath/Vector3f;

    invoke-virtual {p1, v0}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;)V

    return-void
.end method
