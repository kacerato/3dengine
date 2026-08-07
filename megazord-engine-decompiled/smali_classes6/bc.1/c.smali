.class public Lbc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final b:Lcom/jme3/bullet/collision/shapes/HullCollisionShape;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalVertex"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lbc/c;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    move-result-object v0

    iput-object v0, p0, Lbc/c;->b:Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-virtual {p0, p1}, Lbc/c;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, Lbc/c;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method

.method public static b(Lvhacd4/Vhacd4Hull;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hull"
        }
    .end annotation

    new-instance v0, Lorg/hull/ConvexHullShape;

    new-instance v1, Lorg/hull/ObjectArrayList;

    invoke-direct {v1}, Lorg/hull/ObjectArrayList;-><init>()V

    invoke-direct {v0, v1}, Lorg/hull/ConvexHullShape;-><init>(Lorg/hull/ObjectArrayList;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/hull/ConvexInternalShape;->setMargin(F)V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Hull;->clonePositions()[F

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget v3, p0, v2

    add-int/lit8 v4, v2, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, v2, 0x2

    aget v5, p0, v5

    new-instance v6, Ljavax/vecmath/Vector3f;

    invoke-direct {v6, v3, v4, v5}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v6}, Lorg/hull/ConvexHullShape;->addPoint(Ljavax/vecmath/Vector3f;)V

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/hull/ShapeHull;

    invoke-direct {p0, v0}, Lorg/hull/ShapeHull;-><init>(Lorg/hull/ConvexShape;)V

    invoke-virtual {p0}, Lorg/hull/ShapeHull;->buildHull()Z

    invoke-virtual {p0}, Lorg/hull/ShapeHull;->numVertices()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lorg/hull/ShapeHull;->numTriangles()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_3

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    new-instance v2, LOc/q;

    invoke-virtual {p0}, Lorg/hull/ShapeHull;->numVertices()I

    move-result v3

    invoke-direct {v2, v3}, LOc/q;-><init>(I)V

    new-instance v3, LOc/n;

    invoke-virtual {p0}, Lorg/hull/ShapeHull;->numTriangles()I

    move-result v4

    invoke-direct {v3, v4}, LOc/n;-><init>(I)V

    invoke-virtual {p0}, Lorg/hull/ShapeHull;->getVertexPointer()Lorg/hull/ObjectArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/vecmath/Vector3f;

    invoke-virtual {v2, v5}, LOc/q;->w(Ljavax/vecmath/Vector3f;)V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/hull/ShapeHull;->numIndices()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, v3, LOc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0}, Lorg/hull/ShapeHull;->getIndexPointer()Lorg/hull/IntArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/hull/IntArrayList;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->d0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->v2(LOc/q;)V

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->n2(LOc/n;)V

    return-object v0

    :cond_4
    :goto_3
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalVertex"
        }
    .end annotation

    new-instance v0, Lorg/hull/ConvexHullShape;

    new-instance v1, Lorg/hull/ObjectArrayList;

    invoke-direct {v1}, Lorg/hull/ObjectArrayList;-><init>()V

    invoke-direct {v0, v1}, Lorg/hull/ConvexHullShape;-><init>(Lorg/hull/ObjectArrayList;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/hull/ConvexInternalShape;->setMargin(F)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q1()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Ljavax/vecmath/Vector3f;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->n1(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v5

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->n1(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v6

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->n1(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljavax/vecmath/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v4}, Lorg/hull/ConvexHullShape;->addPoint(Ljavax/vecmath/Vector3f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/hull/ShapeHull;

    invoke-direct {v1, v0}, Lorg/hull/ShapeHull;-><init>(Lorg/hull/ConvexShape;)V

    invoke-virtual {v1}, Lorg/hull/ShapeHull;->buildHull()Z

    invoke-virtual {v1}, Lorg/hull/ShapeHull;->numVertices()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v1}, Lorg/hull/ShapeHull;->numTriangles()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_3

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    new-instance v0, LOc/q;

    invoke-virtual {v1}, Lorg/hull/ShapeHull;->numVertices()I

    move-result v3

    invoke-direct {v0, v3}, LOc/q;-><init>(I)V

    new-instance v3, LOc/n;

    invoke-virtual {v1}, Lorg/hull/ShapeHull;->numTriangles()I

    move-result v4

    invoke-direct {v3, v4}, LOc/n;-><init>(I)V

    invoke-virtual {v1}, Lorg/hull/ShapeHull;->getVertexPointer()Lorg/hull/ObjectArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/vecmath/Vector3f;

    invoke-virtual {v0, v5}, LOc/q;->w(Ljavax/vecmath/Vector3f;)V

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v1}, Lorg/hull/ShapeHull;->numIndices()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, v3, LOc/n;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1}, Lorg/hull/ShapeHull;->getIndexPointer()Lorg/hull/IntArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/hull/IntArrayList;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->d0(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->v2(LOc/q;)V

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->n2(LOc/n;)V

    return-object p1

    :cond_4
    :goto_3
    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h0(Z)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalVertex"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q1()I

    move-result v0

    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->n1(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Q2()Lcom/jme3/math/Vector3f;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {p1, v1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>([Lcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public d()Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
    .locals 1

    iget-object v0, p0, Lbc/c;->b:Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Lbc/c;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method
