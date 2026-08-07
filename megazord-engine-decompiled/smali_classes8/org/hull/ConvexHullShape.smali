.class public Lorg/hull/ConvexHullShape;
.super Lorg/hull/PolyhedralConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final points:Lorg/hull/ObjectArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/hull/ObjectArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/hull/PolyhedralConvexShape;-><init>()V

    new-instance v0, Lorg/hull/ObjectArrayList;

    invoke-direct {v0}, Lorg/hull/ObjectArrayList;-><init>()V

    iput-object v0, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/hull/ObjectArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    new-instance v2, Ljavax/vecmath/Vector3f;

    invoke-virtual {p1, v0}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/vecmath/Vector3f;

    invoke-direct {v2, v3}, Ljavax/vecmath/Vector3f;-><init>(Ljavax/vecmath/Vector3f;)V

    invoke-virtual {v1, v2}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/hull/PolyhedralConvexShape;->recalcLocalAabb()V

    return-void
.end method


# virtual methods
.method public addPoint(Ljavax/vecmath/Vector3f;)V
    .locals 2

    iget-object v0, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1, p1}, Ljavax/vecmath/Vector3f;-><init>(Ljavax/vecmath/Vector3f;)V

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/hull/PolyhedralConvexShape;->recalcLocalAabb()V

    return-void
.end method

.method public batchedUnitVectorGetSupportingVertexWithoutMargin([Ljavax/vecmath/Vector3f;[Ljavax/vecmath/Vector3f;I)V
    .locals 7

    new-array v0, p3, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_0

    const v3, -0xeb60d36    # -1.0E30f

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljavax/vecmath/Vector3f;

    invoke-direct {v2}, Ljavax/vecmath/Vector3f;-><init>()V

    move v3, v1

    :goto_1
    iget-object v4, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {v4}, Lorg/hull/ObjectArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {v4, v3}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/vecmath/Vector3f;

    iget-object v5, p0, Lorg/hull/ConvexInternalShape;->localScaling:Ljavax/vecmath/Vector3f;

    invoke-static {v2, v4, v5}, Lorg/hull/VectorUtil;->mul(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    move v4, v1

    :goto_2
    if-ge v4, p3, :cond_2

    aget-object v5, p1, v4

    invoke-virtual {v5, v2}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result v5

    aget v6, v0, v4

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    aget-object v6, p2, v4

    invoke-virtual {v6, v2}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    aput v5, v0, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getEdge(ILjavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V
    .locals 2

    iget-object v0, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    rem-int v0, p1, v0

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {v1}, Lorg/hull/ObjectArrayList;->size()I

    move-result v1

    rem-int/2addr p1, v1

    iget-object v1, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {v1, v0}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/vecmath/Vector3f;

    iget-object v1, p0, Lorg/hull/ConvexInternalShape;->localScaling:Ljavax/vecmath/Vector3f;

    invoke-static {p2, v0, v1}, Lorg/hull/VectorUtil;->mul(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    iget-object p2, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {p2, p1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/vecmath/Vector3f;

    iget-object p2, p0, Lorg/hull/ConvexInternalShape;->localScaling:Ljavax/vecmath/Vector3f;

    invoke-static {p3, p1, p2}, Lorg/hull/VectorUtil;->mul(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Convex"

    return-object v0
.end method

.method public getNumEdges()I
    .locals 1

    iget-object v0, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNumPlanes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNumPoints()I
    .locals 1

    iget-object v0, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNumVertices()I
    .locals 1

    iget-object v0, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPlane(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;I)V
    .locals 0

    return-void
.end method

.method public getPoints()Lorg/hull/ObjectArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    return-object v0
.end method

.method public getShapeType()Lorg/hull/BroadphaseNativeType;
    .locals 1

    sget-object v0, Lorg/hull/BroadphaseNativeType;->CONVEX_HULL_SHAPE_PROXYTYPE:Lorg/hull/BroadphaseNativeType;

    return-object v0
.end method

.method public getVertex(ILjavax/vecmath/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0, p1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/vecmath/Vector3f;

    iget-object v0, p0, Lorg/hull/ConvexInternalShape;->localScaling:Ljavax/vecmath/Vector3f;

    invoke-static {p2, p1, v0}, Lorg/hull/VectorUtil;->mul(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    return-void
.end method

.method public isInside(Ljavax/vecmath/Vector3f;F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public localGetSupportingVertex(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/hull/ConvexHullShape;->localGetSupportingVertexWithoutMargin(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

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
    iget-object v3, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {v3}, Lorg/hull/ObjectArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/hull/ConvexHullShape;->points:Lorg/hull/ObjectArrayList;

    invoke-virtual {v3, v2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/vecmath/Vector3f;

    iget-object v4, p0, Lorg/hull/ConvexInternalShape;->localScaling:Ljavax/vecmath/Vector3f;

    invoke-static {p1, v3, v4}, Lorg/hull/VectorUtil;->mul(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    invoke-virtual {v1, p1}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_1

    invoke-virtual {p2, p1}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    move v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method public setLocalScaling(Ljavax/vecmath/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lorg/hull/ConvexInternalShape;->localScaling:Ljavax/vecmath/Vector3f;

    invoke-virtual {v0, p1}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {p0}, Lorg/hull/PolyhedralConvexShape;->recalcLocalAabb()V

    return-void
.end method
