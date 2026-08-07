.class public abstract Lorg/hull/PolyhedralConvexShape;
.super Lorg/hull/ConvexInternalShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static _directions:[Ljavax/vecmath/Vector3f;

.field private static _supporting:[Ljavax/vecmath/Vector3f;


# instance fields
.field protected isLocalAabbValid:Z

.field protected final localAabbMax:Ljavax/vecmath/Vector3f;

.field protected final localAabbMin:Ljavax/vecmath/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljavax/vecmath/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v6}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    new-instance v2, Ljavax/vecmath/Vector3f;

    invoke-direct {v2, v6, v1, v6}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    new-instance v3, Ljavax/vecmath/Vector3f;

    invoke-direct {v3, v6, v6, v1}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    new-instance v4, Ljavax/vecmath/Vector3f;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v4, v1, v6, v6}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    new-instance v5, Ljavax/vecmath/Vector3f;

    invoke-direct {v5, v6, v1, v6}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    new-instance v7, Ljavax/vecmath/Vector3f;

    invoke-direct {v7, v6, v6, v1}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    filled-new-array/range {v0 .. v5}, [Ljavax/vecmath/Vector3f;

    move-result-object v0

    sput-object v0, Lorg/hull/PolyhedralConvexShape;->_directions:[Ljavax/vecmath/Vector3f;

    new-instance v7, Ljavax/vecmath/Vector3f;

    invoke-direct {v7, v6, v6, v6}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    new-instance v8, Ljavax/vecmath/Vector3f;

    invoke-direct {v8, v6, v6, v6}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    new-instance v9, Ljavax/vecmath/Vector3f;

    invoke-direct {v9, v6, v6, v6}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    new-instance v10, Ljavax/vecmath/Vector3f;

    invoke-direct {v10, v6, v6, v6}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    new-instance v11, Ljavax/vecmath/Vector3f;

    invoke-direct {v11, v6, v6, v6}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    new-instance v12, Ljavax/vecmath/Vector3f;

    invoke-direct {v12, v6, v6, v6}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    filled-new-array/range {v7 .. v12}, [Ljavax/vecmath/Vector3f;

    move-result-object v0

    sput-object v0, Lorg/hull/PolyhedralConvexShape;->_supporting:[Ljavax/vecmath/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/hull/ConvexInternalShape;-><init>()V

    new-instance v0, Ljavax/vecmath/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lorg/hull/PolyhedralConvexShape;->localAabbMin:Ljavax/vecmath/Vector3f;

    new-instance v0, Ljavax/vecmath/Vector3f;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1, v1}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lorg/hull/PolyhedralConvexShape;->localAabbMax:Ljavax/vecmath/Vector3f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/hull/PolyhedralConvexShape;->isLocalAabbValid:Z

    return-void
.end method

.method private getNonvirtualAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;F)V
    .locals 6

    iget-object v0, p0, Lorg/hull/PolyhedralConvexShape;->localAabbMin:Ljavax/vecmath/Vector3f;

    iget-object v1, p0, Lorg/hull/PolyhedralConvexShape;->localAabbMax:Ljavax/vecmath/Vector3f;

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/hull/AabbUtil2;->transformAabb(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;FLorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    return-void
.end method


# virtual methods
.method public final _PolyhedralConvexShape_getAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 1

    invoke-virtual {p0}, Lorg/hull/ConvexInternalShape;->getMargin()F

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/hull/PolyhedralConvexShape;->getNonvirtualAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;F)V

    return-void
.end method

.method public batchedUnitVectorGetSupportingVertexWithoutMargin([Ljavax/vecmath/Vector3f;[Ljavax/vecmath/Vector3f;I)V
    .locals 8

    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    new-array v1, p3, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_0

    const v4, -0xeb60d36    # -1.0E30f

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_1
    if-ge v3, p3, :cond_3

    aget-object v4, p1, v3

    move v5, v2

    :goto_2
    invoke-virtual {p0}, Lorg/hull/PolyhedralConvexShape;->getNumVertices()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {p0, v5, v0}, Lorg/hull/PolyhedralConvexShape;->getVertex(ILjavax/vecmath/Vector3f;)V

    invoke-virtual {v4, v0}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result v6

    aget v7, v1, v3

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    aget-object v7, p2, v3

    invoke-virtual {v7, v0}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    aput v6, v1, v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public calculateLocalInertia(FLjavax/vecmath/Vector3f;)V
    .locals 5

    invoke-virtual {p0}, Lorg/hull/ConvexInternalShape;->getMargin()F

    move-result v0

    new-instance v1, Lorg/hull/Transform;

    invoke-direct {v1}, Lorg/hull/Transform;-><init>()V

    invoke-virtual {v1}, Lorg/hull/Transform;->setIdentity()V

    new-instance v2, Ljavax/vecmath/Vector3f;

    invoke-direct {v2}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v3, Ljavax/vecmath/Vector3f;

    invoke-direct {v3}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Lorg/hull/PolyhedralConvexShape;->getAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {v1, v3, v2}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Ljavax/vecmath/Tuple3f;->scale(F)V

    iget v2, v1, Ljavax/vecmath/Tuple3f;->x:F

    add-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget v4, v1, Ljavax/vecmath/Tuple3f;->y:F

    add-float/2addr v4, v0

    mul-float/2addr v4, v3

    iget v1, v1, Ljavax/vecmath/Tuple3f;->z:F

    add-float/2addr v1, v0

    mul-float/2addr v1, v3

    mul-float/2addr v2, v2

    mul-float/2addr v4, v4

    mul-float/2addr v1, v1

    const v0, 0x3daaaaaa

    mul-float/2addr p1, v0

    add-float v0, v4, v1

    add-float/2addr v1, v2

    add-float/2addr v2, v4

    invoke-virtual {p2, v0, v1, v2}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    invoke-virtual {p2, p1}, Ljavax/vecmath/Tuple3f;->scale(F)V

    return-void
.end method

.method public getAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 1

    invoke-virtual {p0}, Lorg/hull/ConvexInternalShape;->getMargin()F

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/hull/PolyhedralConvexShape;->getNonvirtualAabb(Lorg/hull/Transform;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;F)V

    return-void
.end method

.method public abstract getEdge(ILjavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
.end method

.method public abstract getNumEdges()I
.end method

.method public abstract getNumPlanes()I
.end method

.method public abstract getNumVertices()I
.end method

.method public abstract getPlane(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;I)V
.end method

.method public abstract getVertex(ILjavax/vecmath/Vector3f;)V
.end method

.method public abstract isInside(Ljavax/vecmath/Vector3f;F)Z
.end method

.method public localGetSupportingVertexWithoutMargin(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1, p1}, Ljavax/vecmath/Vector3f;-><init>(Ljavax/vecmath/Vector3f;)V

    invoke-virtual {v1}, Ljavax/vecmath/Vector3f;->lengthSquared()F

    move-result p1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    invoke-virtual {v1, v3, v0, v0}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    goto :goto_0

    :cond_0
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p1, v4

    div-float/2addr v3, p1

    invoke-virtual {v1, v3}, Ljavax/vecmath/Tuple3f;->scale(F)V

    :goto_0
    new-instance p1, Ljavax/vecmath/Vector3f;

    invoke-direct {p1}, Ljavax/vecmath/Vector3f;-><init>()V

    const v0, -0xeb60d36    # -1.0E30f

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/hull/PolyhedralConvexShape;->getNumVertices()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2, p1}, Lorg/hull/PolyhedralConvexShape;->getVertex(ILjavax/vecmath/Vector3f;)V

    invoke-virtual {v1, p1}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method public recalcLocalAabb()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/hull/PolyhedralConvexShape;->isLocalAabbValid:Z

    sget-object v0, Lorg/hull/PolyhedralConvexShape;->_directions:[Ljavax/vecmath/Vector3f;

    sget-object v1, Lorg/hull/PolyhedralConvexShape;->_supporting:[Ljavax/vecmath/Vector3f;

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lorg/hull/PolyhedralConvexShape;->batchedUnitVectorGetSupportingVertexWithoutMargin([Ljavax/vecmath/Vector3f;[Ljavax/vecmath/Vector3f;I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/hull/PolyhedralConvexShape;->localAabbMax:Ljavax/vecmath/Vector3f;

    sget-object v2, Lorg/hull/PolyhedralConvexShape;->_supporting:[Ljavax/vecmath/Vector3f;

    aget-object v2, v2, v0

    invoke-static {v2, v0}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v2

    iget v3, p0, Lorg/hull/ConvexInternalShape;->collisionMargin:F

    add-float/2addr v2, v3

    invoke-static {v1, v0, v2}, Lorg/hull/VectorUtil;->setCoord(Ljavax/vecmath/Vector3f;IF)V

    iget-object v1, p0, Lorg/hull/PolyhedralConvexShape;->localAabbMin:Ljavax/vecmath/Vector3f;

    sget-object v2, Lorg/hull/PolyhedralConvexShape;->_supporting:[Ljavax/vecmath/Vector3f;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    invoke-static {v2, v0}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v2

    iget v3, p0, Lorg/hull/ConvexInternalShape;->collisionMargin:F

    sub-float/2addr v2, v3

    invoke-static {v1, v0, v2}, Lorg/hull/VectorUtil;->setCoord(Ljavax/vecmath/Vector3f;IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLocalScaling(Ljavax/vecmath/Vector3f;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/hull/ConvexInternalShape;->setLocalScaling(Ljavax/vecmath/Vector3f;)V

    invoke-virtual {p0}, Lorg/hull/PolyhedralConvexShape;->recalcLocalAabb()V

    return-void
.end method
