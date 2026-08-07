.class public Lcom/jme3/effect/shapes/EmitterMeshFaceShape;
.super Lcom/jme3/effect/shapes/EmitterMeshVertexShape;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getRandomPoint(Lcom/jme3/math/Vector3f;)V
    .locals 7

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/jme3/math/FastMath;->nextRandomInt(II)I

    move-result v0

    iget-object v2, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/jme3/math/FastMath;->nextRandomInt(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v2

    sget-object v3, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    iget-object v5, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v2

    iget-object v5, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    iget v5, v5, Lcom/jme3/math/Vector3f;->y:F

    iget-object v6, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    iget v6, v6, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    iget-object v6, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    iget-object v6, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, v2

    invoke-virtual {p1, v3, v5, v4}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v2

    iget-object v3, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    add-int/lit8 v1, v1, 0x2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    iget v4, v4, Lcom/jme3/math/Vector3f;->y:F

    iget v5, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    iget-object v5, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-virtual {p1, v3, v4, v0}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public getRandomPointAndNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/jme3/math/FastMath;->nextRandomInt(II)I

    move-result v0

    iget-object v2, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/jme3/math/FastMath;->nextRandomInt(II)I

    move-result v1

    mul-int/lit8 v2, v1, 0x3

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v3

    sget-object v4, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v4}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    iget-object v6, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    iget v6, v6, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, v3

    iget-object v6, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector3f;

    iget v6, v6, Lcom/jme3/math/Vector3f;->y:F

    iget-object v7, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/math/Vector3f;

    iget v7, v7, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    iget v5, v5, Lcom/jme3/math/Vector3f;->z:F

    iget-object v7, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/math/Vector3f;

    iget v7, v7, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v5, v7

    mul-float/2addr v5, v3

    invoke-virtual {p1, v4, v6, v5}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v3

    iget-object v4, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    add-int/lit8 v2, v2, 0x2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    iget v5, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    iget v5, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v6, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    iget v6, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, v6

    mul-float/2addr v2, v3

    invoke-virtual {p1, v4, v5, v2}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->normals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setMeshes(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Mesh;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->normals:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->getVector3Array(Ljava/nio/FloatBuffer;)[Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [I

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v5

    mul-int/2addr v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->getTriangleCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v0, v6, v3}, Lcom/jme3/scene/Mesh;->getTriangle(I[I)V

    aget v7, v3, v5

    aget-object v7, v1, v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    aget v8, v3, v7

    aget-object v8, v1, v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    aget v9, v3, v8

    aget-object v9, v1, v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v9, v3, v5

    aget-object v9, v1, v9

    aget v7, v3, v7

    aget-object v7, v1, v7

    aget v8, v3, v8

    aget-object v8, v1, v8

    invoke-static {v9, v7, v8}, Lcom/jme3/math/FastMath;->computeNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->vertices:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterMeshVertexShape;->normals:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
