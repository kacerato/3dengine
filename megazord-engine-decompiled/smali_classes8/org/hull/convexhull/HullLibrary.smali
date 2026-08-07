.class public Lorg/hull/convexhull/HullLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONVEX_DISTANCE_MARGIN:F = 0.04f

.field private static final EPSILON:F = 1.0E-6f

.field public static final FLT_EPSILON:F = 1.1920929E-7f

.field public static final SIMD_2_PI:F = 6.2831855f

.field public static final SIMD_DEGS_PER_RAD:F = 57.295776f

.field public static final SIMD_EPSILON:F = 1.1920929E-7f

.field public static final SIMD_HALF_PI:F = 1.5707964f

.field public static final SIMD_INFINITY:F = 3.4028235E38f

.field public static final SIMD_PI:F = 3.1415927f

.field public static final SIMD_RADS_PER_DEG:F = 0.017453292f


# instance fields
.field private tris:Lorg/hull/ObjectArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hull/ObjectArrayList<",
            "Lorg/hull/convexhull/Tri;",
            ">;"
        }
    .end annotation
.end field

.field public final vertexIndexMapping:Lorg/hull/IntArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/hull/IntArrayList;

    invoke-direct {v0}, Lorg/hull/IntArrayList;-><init>()V

    iput-object v0, p0, Lorg/hull/convexhull/HullLibrary;->vertexIndexMapping:Lorg/hull/IntArrayList;

    new-instance v0, Lorg/hull/ObjectArrayList;

    invoke-direct {v0}, Lorg/hull/ObjectArrayList;-><init>()V

    iput-object v0, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    return-void
.end method

.method private static above(Lorg/hull/ObjectArrayList;Lorg/hull/convexhull/Int3;Ljavax/vecmath/Vector3f;F)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;",
            "Lorg/hull/convexhull/Int3;",
            "Ljavax/vecmath/Vector3f;",
            "F)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/vecmath/Vector3f;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/vecmath/Vector3f;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/vecmath/Vector3f;

    new-instance v5, Ljavax/vecmath/Vector3f;

    invoke-direct {v5}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-static {v1, v3, v4, v5}, Lorg/hull/convexhull/HullLibrary;->triNormal(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

    move-result-object v1

    new-instance v3, Ljavax/vecmath/Vector3f;

    invoke-direct {v3}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {p1, v0}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v3, p2, p0}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {v1, v3}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result p0

    cmpl-float p0, p0, p3

    if-lez p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private static addPoint([ILorg/hull/ObjectArrayList;FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;FFF)V"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    invoke-virtual {p1, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/vecmath/Vector3f;

    iput p2, p1, Ljavax/vecmath/Tuple3f;->x:F

    iput p3, p1, Ljavax/vecmath/Tuple3f;->y:F

    iput p4, p1, Ljavax/vecmath/Tuple3f;->z:F

    aget p1, p0, v0

    add-int/lit8 p1, p1, 0x1

    aput p1, p0, v0

    return-void
.end method

.method private allocateTriangle(III)Lorg/hull/convexhull/Tri;
    .locals 1

    new-instance v0, Lorg/hull/convexhull/Tri;

    invoke-direct {v0, p1, p2, p3}, Lorg/hull/convexhull/Tri;-><init>(III)V

    iget-object p1, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {p1}, Lorg/hull/ObjectArrayList;->size()I

    move-result p1

    iput p1, v0, Lorg/hull/convexhull/Tri;->id:I

    iget-object p1, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {p1, v0}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private b2bfix(Lorg/hull/convexhull/Tri;Lorg/hull/convexhull/Tri;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v3, v2, 0x3

    add-int/lit8 v0, v0, 0x2

    rem-int/2addr v0, v1

    invoke-virtual {p1, v3}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v0

    iget-object v3, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {p1, v1, v0}, Lorg/hull/convexhull/Tri;->neib(II)Lorg/hull/convexhull/IntRef;

    move-result-object v4

    invoke-virtual {v4}, Lorg/hull/convexhull/IntRef;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/hull/convexhull/Tri;

    invoke-virtual {v3, v0, v1}, Lorg/hull/convexhull/Tri;->neib(II)Lorg/hull/convexhull/IntRef;

    move-result-object v3

    invoke-virtual {p2, v0, v1}, Lorg/hull/convexhull/Tri;->neib(II)Lorg/hull/convexhull/IntRef;

    move-result-object v4

    invoke-virtual {v4}, Lorg/hull/convexhull/IntRef;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/hull/convexhull/IntRef;->set(I)V

    iget-object v3, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {p2, v0, v1}, Lorg/hull/convexhull/Tri;->neib(II)Lorg/hull/convexhull/IntRef;

    move-result-object v4

    invoke-virtual {v4}, Lorg/hull/convexhull/IntRef;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/hull/convexhull/Tri;

    invoke-virtual {v3, v1, v0}, Lorg/hull/convexhull/Tri;->neib(II)Lorg/hull/convexhull/IntRef;

    move-result-object v3

    invoke-virtual {p1, v1, v0}, Lorg/hull/convexhull/Tri;->neib(II)Lorg/hull/convexhull/IntRef;

    move-result-object v0

    invoke-virtual {v0}, Lorg/hull/convexhull/IntRef;->get()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/hull/convexhull/IntRef;->set(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bringOutYourDead(Lorg/hull/ObjectArrayList;ILorg/hull/ObjectArrayList;[ILorg/hull/IntArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;I",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;[I",
            "Lorg/hull/IntArrayList;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lorg/hull/IntArrayList;

    invoke-direct {v0}, Lorg/hull/IntArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/hull/convexhull/HullLibrary;->vertexIndexMapping:Lorg/hull/IntArrayList;

    invoke-virtual {v3}, Lorg/hull/IntArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/hull/convexhull/HullLibrary;->vertexIndexMapping:Lorg/hull/IntArrayList;

    invoke-virtual {v3}, Lorg/hull/IntArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/hull/IntArrayList;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/hull/IntArrayList;

    invoke-direct {v2}, Lorg/hull/IntArrayList;-><init>()V

    invoke-static {v2, p2, v1}, Lorg/hull/MiscUtil;->resize(Lorg/hull/IntArrayList;II)V

    aput v1, p4, v1

    move p2, v1

    :goto_1
    if-ge p2, p6, :cond_4

    invoke-virtual {p5, p2}, Lorg/hull/IntArrayList;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/hull/IntArrayList;->get(I)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Lorg/hull/IntArrayList;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p5, p2, v3}, Lorg/hull/IntArrayList;->set(II)V

    goto :goto_3

    :cond_1
    aget v4, p4, v1

    invoke-virtual {p5, p2, v4}, Lorg/hull/IntArrayList;->set(II)V

    aget v4, p4, v1

    invoke-virtual {p3, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/vecmath/Vector3f;

    invoke-virtual {p1, v3}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v4, v5}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    move v4, v1

    :goto_2
    iget-object v5, p0, Lorg/hull/convexhull/HullLibrary;->vertexIndexMapping:Lorg/hull/IntArrayList;

    invoke-virtual {v5}, Lorg/hull/IntArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Lorg/hull/IntArrayList;->get(I)I

    move-result v5

    if-ne v5, v3, :cond_2

    iget-object v5, p0, Lorg/hull/convexhull/HullLibrary;->vertexIndexMapping:Lorg/hull/IntArrayList;

    aget v6, p4, v1

    invoke-virtual {v5, v4, v6}, Lorg/hull/IntArrayList;->set(II)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    aget v4, p4, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, p4, v1

    invoke-virtual {v2, v3, v4}, Lorg/hull/IntArrayList;->set(II)V

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private calchull(Lorg/hull/ObjectArrayList;ILorg/hull/IntArrayList;[II)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;I",
            "Lorg/hull/IntArrayList;",
            "[II)I"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lorg/hull/convexhull/HullLibrary;->calchullgen(Lorg/hull/ObjectArrayList;II)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    new-instance p1, Lorg/hull/IntArrayList;

    invoke-direct {p1}, Lorg/hull/IntArrayList;-><init>()V

    move p5, p2

    :goto_0
    iget-object v0, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge p5, v0, :cond_3

    iget-object v0, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0, p5}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, p2

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v2, p5}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/hull/convexhull/Tri;

    invoke-virtual {v2, v0}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/hull/IntArrayList;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0, p5}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hull/convexhull/Tri;

    invoke-direct {p0, v0}, Lorg/hull/convexhull/HullLibrary;->deAllocateTriangle(Lorg/hull/convexhull/Tri;)V

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/hull/IntArrayList;->size()I

    move-result p5

    div-int/2addr p5, v1

    aput p5, p4, p2

    invoke-virtual {p1}, Lorg/hull/IntArrayList;->size()I

    move-result p4

    invoke-static {p3, p4, p2}, Lorg/hull/MiscUtil;->resize(Lorg/hull/IntArrayList;II)V

    move p4, p2

    :goto_2
    invoke-virtual {p1}, Lorg/hull/IntArrayList;->size()I

    move-result p5

    if-ge p4, p5, :cond_4

    invoke-virtual {p1, p4}, Lorg/hull/IntArrayList;->get(I)I

    move-result p5

    invoke-virtual {p3, p4, p5}, Lorg/hull/IntArrayList;->set(II)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    const-class p3, Lorg/hull/convexhull/Tri;

    invoke-static {p1, p2, p3}, Lorg/hull/MiscUtil;->resize(Lorg/hull/ObjectArrayList;ILjava/lang/Class;)V

    const/4 p1, 0x1

    return p1
.end method

.method private calchullgen(Lorg/hull/ObjectArrayList;II)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;II)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    return v4

    :cond_0
    new-instance v3, Ljavax/vecmath/Vector3f;

    invoke-direct {v3}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v5, Ljavax/vecmath/Vector3f;

    invoke-direct {v5}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v6, Ljavax/vecmath/Vector3f;

    invoke-direct {v6}, Ljavax/vecmath/Vector3f;-><init>()V

    if-nez p3, :cond_1

    const v7, 0x3b9aca00

    goto :goto_0

    :cond_1
    move/from16 v7, p3

    :goto_0
    new-instance v8, Ljavax/vecmath/Vector3f;

    invoke-virtual {v1, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/vecmath/Vector3f;

    invoke-direct {v8, v9}, Ljavax/vecmath/Vector3f;-><init>(Ljavax/vecmath/Vector3f;)V

    new-instance v9, Ljavax/vecmath/Vector3f;

    invoke-virtual {v1, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/vecmath/Vector3f;

    invoke-direct {v9, v10}, Ljavax/vecmath/Vector3f;-><init>(Ljavax/vecmath/Vector3f;)V

    new-instance v10, Lorg/hull/IntArrayList;

    invoke-direct {v10}, Lorg/hull/IntArrayList;-><init>()V

    new-instance v11, Lorg/hull/IntArrayList;

    invoke-direct {v11}, Lorg/hull/IntArrayList;-><init>()V

    move v12, v4

    :goto_1
    const/4 v13, 0x1

    if-ge v12, v2, :cond_2

    invoke-virtual {v11, v13}, Lorg/hull/IntArrayList;->add(I)V

    invoke-virtual {v10, v4}, Lorg/hull/IntArrayList;->add(I)V

    invoke-virtual {v1, v12}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/vecmath/Vector3f;

    invoke-static {v8, v13}, Lorg/hull/VectorUtil;->setMin(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    invoke-virtual {v1, v12}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/vecmath/Vector3f;

    invoke-static {v9, v13}, Lorg/hull/VectorUtil;->setMax(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v9, v8}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {v3}, Ljavax/vecmath/Vector3f;->length()F

    move-result v8

    const v9, 0x3a83126f    # 0.001f

    mul-float/2addr v8, v9

    new-instance v9, Lorg/hull/convexhull/Int4;

    invoke-direct {v9}, Lorg/hull/convexhull/Int4;-><init>()V

    invoke-direct {v0, v1, v2, v11, v9}, Lorg/hull/convexhull/HullLibrary;->findSimplex(Lorg/hull/ObjectArrayList;ILorg/hull/IntArrayList;Lorg/hull/convexhull/Int4;)Lorg/hull/convexhull/Int4;

    move-result-object v9

    iget v12, v9, Lorg/hull/convexhull/Int4;->x:I

    const/4 v14, -0x1

    if-ne v12, v14, :cond_3

    return v4

    :cond_3
    new-instance v12, Ljavax/vecmath/Vector3f;

    invoke-direct {v12}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {v9, v4}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v15

    invoke-virtual {v1, v15}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavax/vecmath/Vector3f;

    invoke-virtual {v9, v13}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/vecmath/Vector3f;

    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v13

    invoke-virtual {v1, v13}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/vecmath/Vector3f;

    const/4 v4, 0x3

    move-object/from16 v17, v6

    invoke-virtual {v9, v4}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/vecmath/Vector3f;

    invoke-static {v12, v15, v14, v13, v6}, Lorg/hull/VectorUtil;->add(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-virtual {v12, v6}, Ljavax/vecmath/Tuple3f;->scale(F)V

    const/4 v6, 0x2

    invoke-virtual {v9, v6}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v13

    invoke-virtual {v9, v4}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v4

    invoke-direct {v0, v13, v14, v4}, Lorg/hull/convexhull/HullLibrary;->allocateTriangle(III)Lorg/hull/convexhull/Tri;

    move-result-object v4

    iget-object v13, v4, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    const/4 v14, 0x3

    invoke-virtual {v13, v6, v14, v15}, Lorg/hull/convexhull/Int3;->set(III)V

    invoke-virtual {v9, v14}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v13

    invoke-virtual {v9, v6}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v15

    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v14

    invoke-direct {v0, v13, v15, v14}, Lorg/hull/convexhull/HullLibrary;->allocateTriangle(III)Lorg/hull/convexhull/Tri;

    move-result-object v13

    iget-object v14, v13, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    move-object/from16 v19, v12

    const/4 v12, 0x3

    const/4 v15, 0x2

    invoke-virtual {v14, v12, v15, v6}, Lorg/hull/convexhull/Int3;->set(III)V

    invoke-virtual {v9, v6}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v6

    invoke-virtual {v9, v12}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v15

    invoke-direct {v0, v14, v6, v15}, Lorg/hull/convexhull/HullLibrary;->allocateTriangle(III)Lorg/hull/convexhull/Tri;

    move-result-object v6

    iget-object v14, v6, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    move-object/from16 v18, v5

    const/4 v5, 0x1

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v5, v12}, Lorg/hull/convexhull/Int3;->set(III)V

    invoke-virtual {v9, v5}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v12

    invoke-virtual {v9, v15}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v14

    const/4 v5, 0x2

    invoke-virtual {v9, v5}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v15

    invoke-direct {v0, v12, v14, v15}, Lorg/hull/convexhull/HullLibrary;->allocateTriangle(III)Lorg/hull/convexhull/Tri;

    move-result-object v12

    iget-object v14, v12, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    move/from16 v20, v8

    const/4 v8, 0x1

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v15, v5}, Lorg/hull/convexhull/Int3;->set(III)V

    invoke-virtual {v9, v15}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v14

    invoke-virtual {v10, v14, v8}, Lorg/hull/IntArrayList;->set(II)V

    invoke-virtual {v9, v8}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v14

    invoke-virtual {v10, v14, v8}, Lorg/hull/IntArrayList;->set(II)V

    invoke-virtual {v9, v5}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v14

    invoke-virtual {v10, v14, v8}, Lorg/hull/IntArrayList;->set(II)V

    const/4 v5, 0x3

    invoke-virtual {v9, v5}, Lorg/hull/convexhull/Int4;->getCoord(I)I

    move-result v5

    invoke-virtual {v10, v5, v8}, Lorg/hull/IntArrayList;->set(II)V

    invoke-direct {v0, v4}, Lorg/hull/convexhull/HullLibrary;->checkit(Lorg/hull/convexhull/Tri;)V

    invoke-direct {v0, v13}, Lorg/hull/convexhull/HullLibrary;->checkit(Lorg/hull/convexhull/Tri;)V

    invoke-direct {v0, v6}, Lorg/hull/convexhull/HullLibrary;->checkit(Lorg/hull/convexhull/Tri;)V

    invoke-direct {v0, v12}, Lorg/hull/convexhull/HullLibrary;->checkit(Lorg/hull/convexhull/Tri;)V

    new-instance v4, Ljavax/vecmath/Vector3f;

    invoke-direct {v4}, Ljavax/vecmath/Vector3f;-><init>()V

    const/4 v5, 0x0

    :goto_2
    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6}, Lorg/hull/ObjectArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6, v5}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/hull/convexhull/Tri;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v9

    invoke-virtual {v1, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/vecmath/Vector3f;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v12

    invoke-virtual {v1, v12}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/vecmath/Vector3f;

    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v13

    invoke-virtual {v1, v13}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/vecmath/Vector3f;

    invoke-static {v8, v9, v12, v4}, Lorg/hull/convexhull/HullLibrary;->triNormal(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

    invoke-static {v1, v2, v4, v11}, Lorg/hull/convexhull/HullLibrary;->maxdirsterid(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I

    move-result v8

    iput v8, v6, Lorg/hull/convexhull/Tri;->vmax:I

    invoke-virtual {v1, v8}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/vecmath/Tuple3f;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v12

    invoke-virtual {v1, v12}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v3, v8, v9}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {v4, v3}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result v8

    iput v8, v6, Lorg/hull/convexhull/Tri;->rise:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, -0x4

    :goto_3
    if-lez v7, :cond_11

    move/from16 v8, v20

    invoke-direct {v0, v8}, Lorg/hull/convexhull/HullLibrary;->extrudable(F)Lorg/hull/convexhull/Tri;

    move-result-object v5

    if-eqz v5, :cond_11

    iget v5, v5, Lorg/hull/convexhull/Tri;->vmax:I

    const/4 v6, 0x1

    invoke-virtual {v10, v5, v6}, Lorg/hull/IntArrayList;->set(II)V

    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6}, Lorg/hull/ObjectArrayList;->size()I

    move-result v6

    :goto_4
    add-int/lit8 v9, v6, -0x1

    const v12, 0x3c23d70a    # 0.01f

    if-eqz v6, :cond_7

    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/hull/convexhull/Int3;

    invoke-virtual {v1, v5}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/vecmath/Vector3f;

    mul-float/2addr v12, v8

    invoke-static {v1, v6, v13, v12}, Lorg/hull/convexhull/HullLibrary;->above(Lorg/hull/ObjectArrayList;Lorg/hull/convexhull/Int3;Ljavax/vecmath/Vector3f;F)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/hull/convexhull/Tri;

    invoke-direct {v0, v6, v5}, Lorg/hull/convexhull/HullLibrary;->extrude(Lorg/hull/convexhull/Tri;I)V

    :cond_6
    :goto_5
    move v6, v9

    goto :goto_4

    :cond_7
    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6}, Lorg/hull/ObjectArrayList;->size()I

    move-result v6

    :goto_6
    add-int/lit8 v9, v6, -0x1

    if-eqz v6, :cond_9

    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    move v6, v9

    goto :goto_6

    :cond_8
    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/hull/convexhull/Int3;

    invoke-static {v6, v5}, Lorg/hull/convexhull/HullLibrary;->hasvert(Lorg/hull/convexhull/Int3;I)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v12, v19

    goto/16 :goto_9

    :cond_a
    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/hull/convexhull/Int3;

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/vecmath/Tuple3f;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v12

    invoke-virtual {v1, v12}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/vecmath/Tuple3f;

    move-object/from16 v15, v18

    invoke-virtual {v15, v14, v12}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v6, v13}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/vecmath/Tuple3f;

    move-object/from16 v14, v17

    invoke-virtual {v14, v12, v13}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {v3, v15, v14}, Ljavax/vecmath/Vector3f;->cross(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    const v12, 0x3c23d70a    # 0.01f

    mul-float v13, v8, v12

    move-object/from16 v12, v19

    invoke-static {v1, v6, v12, v13}, Lorg/hull/convexhull/HullLibrary;->above(Lorg/hull/ObjectArrayList;Lorg/hull/convexhull/Int3;Ljavax/vecmath/Vector3f;F)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v3}, Ljavax/vecmath/Vector3f;->length()F

    move-result v6

    mul-float v13, v8, v8

    const v17, 0x3dcccccd    # 0.1f

    mul-float v13, v13, v17

    cmpg-float v6, v6, v13

    if-gez v6, :cond_b

    goto :goto_7

    :cond_b
    move v6, v9

    goto :goto_8

    :cond_c
    :goto_7
    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/hull/convexhull/Tri;

    iget-object v9, v9, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/hull/convexhull/Tri;

    invoke-direct {v0, v6, v5}, Lorg/hull/convexhull/HullLibrary;->extrude(Lorg/hull/convexhull/Tri;I)V

    iget-object v6, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6}, Lorg/hull/ObjectArrayList;->size()I

    move-result v6

    :goto_8
    move-object/from16 v19, v12

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    const v12, 0x3c23d70a    # 0.01f

    goto/16 :goto_6

    :goto_9
    iget-object v5, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v5}, Lorg/hull/ObjectArrayList;->size()I

    move-result v5

    :goto_a
    add-int/lit8 v6, v5, -0x1

    if-eqz v5, :cond_e

    iget-object v5, v0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v5, v6}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/hull/convexhull/Tri;

    if-nez v5, :cond_d

    move/from16 v16, v6

    const/4 v9, 0x0

    const/4 v13, 0x2

    goto :goto_b

    :cond_d
    iget v9, v5, Lorg/hull/convexhull/Tri;->vmax:I

    if-ltz v9, :cond_f

    :cond_e
    const/4 v9, 0x0

    const/4 v13, 0x2

    goto :goto_c

    :cond_f
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v13

    invoke-virtual {v1, v13}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/vecmath/Vector3f;

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/vecmath/Vector3f;

    move/from16 v16, v6

    const/4 v13, 0x2

    invoke-virtual {v5, v13}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/vecmath/Vector3f;

    invoke-static {v9, v0, v6, v4}, Lorg/hull/convexhull/HullLibrary;->triNormal(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

    invoke-static {v1, v2, v4, v11}, Lorg/hull/convexhull/HullLibrary;->maxdirsterid(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I

    move-result v0

    iput v0, v5, Lorg/hull/convexhull/Tri;->vmax:I

    invoke-virtual {v10, v0}, Lorg/hull/IntArrayList;->get(I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    iput v0, v5, Lorg/hull/convexhull/Tri;->vmax:I

    const/4 v9, 0x0

    goto :goto_b

    :cond_10
    const/4 v0, -0x1

    iget v6, v5, Lorg/hull/convexhull/Tri;->vmax:I

    invoke-virtual {v1, v6}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/vecmath/Tuple3f;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v3, v6, v0}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {v4, v3}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result v0

    iput v0, v5, Lorg/hull/convexhull/Tri;->rise:F

    :goto_b
    move-object/from16 v0, p0

    move/from16 v5, v16

    goto :goto_a

    :goto_c
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v20, v8

    move-object/from16 v19, v12

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    goto/16 :goto_3

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private checkit(Lorg/hull/convexhull/Tri;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v3, v2, 0x3

    add-int/lit8 v0, v0, 0x2

    rem-int/2addr v0, v1

    invoke-virtual {p1, v3}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    invoke-virtual {p1, v0}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cleanupVertices(ILorg/hull/ObjectArrayList;I[ILorg/hull/ObjectArrayList;FLjavax/vecmath/Vector3f;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;I[I",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;F",
            "Ljavax/vecmath/Vector3f;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    const/4 v6, 0x0

    if-nez v1, :cond_0

    return v6

    :cond_0
    iget-object v7, v0, Lorg/hull/convexhull/HullLibrary;->vertexIndexMapping:Lorg/hull/IntArrayList;

    invoke-virtual {v7}, Lorg/hull/IntArrayList;->clear()V

    aput v6, v3, v6

    const/4 v7, 0x3

    new-array v8, v7, [F

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    invoke-virtual {v5, v9, v9, v9}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    :cond_1
    new-array v10, v7, [F

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    aput v11, v10, v6

    const/4 v12, 0x1

    aput v11, v10, v12

    const/4 v13, 0x2

    aput v11, v10, v13

    new-array v14, v7, [F

    const v15, -0x800001

    aput v15, v14, v6

    aput v15, v14, v12

    aput v15, v14, v13

    move v11, v6

    move v15, v11

    :goto_0
    if-ge v15, v1, :cond_5

    invoke-virtual {v2, v11}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljavax/vecmath/Vector3f;

    add-int/2addr v11, v12

    move v13, v6

    :goto_1
    if-ge v13, v7, :cond_4

    invoke-static {v9, v13}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v18

    aget v19, v10, v13

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    invoke-static {v9, v13}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v18

    aput v18, v10, v13

    :cond_2
    invoke-static {v9, v13}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v18

    aget v19, v14, v13

    cmpl-float v18, v18, v19

    if-lez v18, :cond_3

    invoke-static {v9, v13}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v18

    aput v18, v14, v13

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    goto :goto_0

    :cond_5
    aget v9, v14, v6

    aget v11, v10, v6

    sub-float/2addr v9, v11

    aget v11, v14, v12

    aget v13, v10, v12

    sub-float/2addr v11, v13

    const/4 v13, 0x2

    aget v14, v14, v13

    aget v15, v10, v13

    sub-float/2addr v14, v15

    new-instance v13, Ljavax/vecmath/Vector3f;

    invoke-direct {v13}, Ljavax/vecmath/Vector3f;-><init>()V

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v18, v9, v15

    aget v19, v10, v6

    add-float v6, v18, v19

    iput v6, v13, Ljavax/vecmath/Tuple3f;->x:F

    mul-float v18, v11, v15

    aget v19, v10, v12

    add-float v12, v18, v19

    iput v12, v13, Ljavax/vecmath/Tuple3f;->y:F

    mul-float v18, v14, v15

    const/16 v16, 0x2

    aget v10, v10, v16

    add-float v10, v18, v10

    iput v10, v13, Ljavax/vecmath/Tuple3f;->z:F

    const v18, 0x358637bd    # 1.0E-6f

    cmpg-float v19, v9, v18

    const v21, 0x3c23d70a    # 0.01f

    const v22, 0x3d4ccccd    # 0.05f

    if-ltz v19, :cond_1a

    cmpg-float v23, v11, v18

    if-ltz v23, :cond_1a

    cmpg-float v23, v14, v18

    if-ltz v23, :cond_1a

    if-ge v1, v7, :cond_6

    goto/16 :goto_c

    :cond_6
    if-eqz v5, :cond_7

    iput v9, v5, Ljavax/vecmath/Tuple3f;->x:F

    iput v11, v5, Ljavax/vecmath/Tuple3f;->y:F

    iput v14, v5, Ljavax/vecmath/Tuple3f;->z:F

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v9, v6, v9

    const/4 v10, 0x0

    aput v9, v8, v10

    div-float v10, v6, v11

    const/4 v11, 0x1

    aput v10, v8, v11

    div-float/2addr v6, v14

    const/4 v11, 0x2

    aput v6, v8, v11

    iget v11, v13, Ljavax/vecmath/Tuple3f;->x:F

    mul-float/2addr v11, v9

    iput v11, v13, Ljavax/vecmath/Tuple3f;->x:F

    iget v9, v13, Ljavax/vecmath/Tuple3f;->y:F

    mul-float/2addr v9, v10

    iput v9, v13, Ljavax/vecmath/Tuple3f;->y:F

    iget v9, v13, Ljavax/vecmath/Tuple3f;->z:F

    mul-float/2addr v9, v6

    iput v9, v13, Ljavax/vecmath/Tuple3f;->z:F

    :cond_7
    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v6, v1, :cond_c

    invoke-virtual {v2, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavax/vecmath/Vector3f;

    const/4 v11, 0x1

    add-int/2addr v9, v11

    iget v12, v10, Ljavax/vecmath/Tuple3f;->x:F

    iget v14, v10, Ljavax/vecmath/Tuple3f;->y:F

    iget v10, v10, Ljavax/vecmath/Tuple3f;->z:F

    const/16 v20, 0x0

    if-eqz v5, :cond_8

    aget v17, v8, v20

    mul-float v12, v12, v17

    aget v17, v8, v11

    mul-float v14, v14, v17

    const/4 v11, 0x2

    aget v17, v8, v11

    mul-float v10, v10, v17

    :cond_8
    move/from16 v11, v20

    :goto_3
    aget v15, v3, v20

    if-ge v11, v15, :cond_9

    invoke-virtual {v4, v11}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavax/vecmath/Vector3f;

    iget v7, v15, Ljavax/vecmath/Tuple3f;->x:F

    iget v1, v15, Ljavax/vecmath/Tuple3f;->y:F

    iget v2, v15, Ljavax/vecmath/Tuple3f;->z:F

    sub-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float/2addr v1, v14

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v7, v7, p6

    if-gez v7, :cond_a

    cmpg-float v1, v1, p6

    if-gez v1, :cond_a

    cmpg-float v1, v2, p6

    if-gez v1, :cond_a

    invoke-static {v12, v14, v10, v13}, Lorg/hull/convexhull/HullLibrary;->getDist(FFFLjavax/vecmath/Vector3f;)F

    move-result v1

    iget v2, v15, Ljavax/vecmath/Tuple3f;->x:F

    iget v7, v15, Ljavax/vecmath/Tuple3f;->y:F

    iget v5, v15, Ljavax/vecmath/Tuple3f;->z:F

    invoke-static {v2, v7, v5, v13}, Lorg/hull/convexhull/HullLibrary;->getDist(FFFLjavax/vecmath/Vector3f;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    iput v12, v15, Ljavax/vecmath/Tuple3f;->x:F

    iput v14, v15, Ljavax/vecmath/Tuple3f;->y:F

    iput v10, v15, Ljavax/vecmath/Tuple3f;->z:F

    :cond_9
    const/16 v20, 0x0

    goto :goto_4

    :cond_a
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p7

    const/4 v7, 0x3

    const/16 v20, 0x0

    goto :goto_3

    :goto_4
    aget v1, v3, v20

    if-ne v11, v1, :cond_b

    invoke-virtual {v4, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/vecmath/Vector3f;

    iput v12, v1, Ljavax/vecmath/Tuple3f;->x:F

    iput v14, v1, Ljavax/vecmath/Tuple3f;->y:F

    iput v10, v1, Ljavax/vecmath/Tuple3f;->z:F

    aget v1, v3, v20

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aput v1, v3, v20

    goto :goto_5

    :cond_b
    const/4 v2, 0x1

    :goto_5
    iget-object v1, v0, Lorg/hull/convexhull/HullLibrary;->vertexIndexMapping:Lorg/hull/IntArrayList;

    invoke-virtual {v1, v11}, Lorg/hull/IntArrayList;->add(I)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p7

    const/4 v7, 0x3

    const/high16 v15, 0x3f000000    # 0.5f

    goto/16 :goto_2

    :cond_c
    move v1, v7

    const/4 v2, 0x1

    const/16 v20, 0x0

    new-array v5, v1, [F

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    aput v6, v5, v20

    aput v6, v5, v2

    const/4 v7, 0x2

    aput v6, v5, v7

    new-array v6, v1, [F

    const v8, -0x800001

    aput v8, v6, v20

    aput v8, v6, v2

    aput v8, v6, v7

    move/from16 v2, v20

    :goto_6
    aget v7, v3, v20

    if-ge v2, v7, :cond_10

    invoke-virtual {v4, v2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/vecmath/Vector3f;

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v1, :cond_f

    invoke-static {v7, v8}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v1

    aget v9, v5, v8

    cmpg-float v1, v1, v9

    if-gez v1, :cond_d

    invoke-static {v7, v8}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v1

    aput v1, v5, v8

    :cond_d
    invoke-static {v7, v8}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v1

    aget v9, v6, v8

    cmpl-float v1, v1, v9

    if-lez v1, :cond_e

    invoke-static {v7, v8}, Lorg/hull/VectorUtil;->getCoord(Ljavax/vecmath/Vector3f;I)F

    move-result v1

    aput v1, v6, v8

    :cond_e
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x3

    goto :goto_7

    :cond_f
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x3

    const/16 v20, 0x0

    goto :goto_6

    :cond_10
    const/4 v1, 0x0

    aget v2, v6, v1

    aget v8, v5, v1

    sub-float v1, v2, v8

    const/4 v2, 0x1

    aget v9, v6, v2

    aget v10, v5, v2

    sub-float/2addr v9, v10

    const/4 v2, 0x2

    aget v6, v6, v2

    aget v2, v5, v2

    sub-float/2addr v6, v2

    cmpg-float v5, v1, v18

    if-ltz v5, :cond_11

    cmpg-float v11, v9, v18

    if-ltz v11, :cond_11

    cmpg-float v11, v6, v18

    if-ltz v11, :cond_11

    const/4 v11, 0x3

    if-ge v7, v11, :cond_12

    :cond_11
    const/high16 v7, 0x3f000000    # 0.5f

    goto :goto_8

    :cond_12
    const/4 v7, 0x1

    return v7

    :goto_8
    mul-float v15, v1, v7

    add-float/2addr v15, v8

    mul-float v8, v9, v7

    add-float/2addr v8, v10

    mul-float/2addr v7, v6

    add-float/2addr v7, v2

    cmpl-float v2, v1, v18

    if-ltz v2, :cond_13

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v10, v1, v2

    if-gez v10, :cond_13

    move v2, v1

    goto :goto_9

    :cond_13
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :goto_9
    cmpl-float v10, v9, v18

    if-ltz v10, :cond_14

    cmpg-float v10, v9, v2

    if-gez v10, :cond_14

    move v2, v9

    :cond_14
    cmpl-float v10, v6, v18

    if-ltz v10, :cond_15

    cmpg-float v10, v6, v2

    if-gez v10, :cond_15

    move v2, v6

    :cond_15
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v10, v2, v10

    if-nez v10, :cond_16

    move/from16 v1, v21

    move v9, v1

    goto :goto_a

    :cond_16
    if-gez v5, :cond_17

    mul-float v1, v2, v22

    :cond_17
    move/from16 v21, v1

    cmpg-float v1, v9, v18

    if-gez v1, :cond_18

    mul-float v1, v2, v22

    move v9, v1

    :cond_18
    cmpg-float v1, v6, v18

    if-gez v1, :cond_19

    mul-float v1, v2, v22

    goto :goto_a

    :cond_19
    move v1, v6

    :goto_a
    sub-float v2, v15, v21

    add-float v15, v15, v21

    sub-float v5, v8, v9

    add-float/2addr v8, v9

    sub-float v6, v7, v1

    add-float/2addr v7, v1

    const/4 v1, 0x0

    aput v1, v3, v1

    invoke-static {v3, v4, v2, v5, v6}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v15, v5, v6}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v15, v8, v6}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v2, v8, v6}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v2, v5, v7}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v15, v5, v7}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v15, v8, v7}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v2, v8, v7}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    :goto_b
    const/4 v1, 0x1

    return v1

    :cond_1a
    :goto_c
    cmpl-float v1, v9, v18

    if-lez v1, :cond_1b

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v2, v9, v1

    if-gez v2, :cond_1b

    move v1, v9

    goto :goto_d

    :cond_1b
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :goto_d
    cmpl-float v2, v11, v18

    if-lez v2, :cond_1c

    cmpg-float v2, v11, v1

    if-gez v2, :cond_1c

    move v1, v11

    :cond_1c
    cmpl-float v2, v14, v18

    if-lez v2, :cond_1d

    cmpg-float v2, v14, v1

    if-gez v2, :cond_1d

    move v1, v14

    :cond_1d
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1e

    move/from16 v11, v21

    move v14, v11

    goto :goto_e

    :cond_1e
    if-gez v19, :cond_1f

    mul-float v9, v1, v22

    :cond_1f
    cmpg-float v2, v11, v18

    if-gez v2, :cond_20

    mul-float v11, v1, v22

    :cond_20
    cmpg-float v2, v14, v18

    if-gez v2, :cond_21

    mul-float v14, v1, v22

    :cond_21
    move/from16 v21, v9

    :goto_e
    sub-float v1, v6, v21

    add-float v6, v6, v21

    sub-float v2, v12, v11

    add-float/2addr v12, v11

    sub-float v5, v10, v14

    add-float/2addr v10, v14

    invoke-static {v3, v4, v1, v2, v5}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v6, v2, v5}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v6, v12, v5}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v1, v12, v5}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v1, v2, v10}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v6, v2, v10}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v6, v12, v10}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    invoke-static {v3, v4, v1, v12, v10}, Lorg/hull/convexhull/HullLibrary;->addPoint([ILorg/hull/ObjectArrayList;FFF)V

    goto :goto_b
.end method

.method private computeHull(ILorg/hull/ObjectArrayList;Lorg/hull/convexhull/PHullResult;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;",
            "Lorg/hull/convexhull/PHullResult;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v7, v0, [I

    iget-object v4, p3, Lorg/hull/convexhull/PHullResult;->indices:Lorg/hull/IntArrayList;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-object v5, v7

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/hull/convexhull/HullLibrary;->calchull(Lorg/hull/ObjectArrayList;ILorg/hull/IntArrayList;[II)I

    move-result p4

    const/4 v1, 0x0

    if-nez p4, :cond_0

    return v1

    :cond_0
    aget p4, v7, v1

    mul-int/lit8 v1, p4, 0x3

    iput v1, p3, Lorg/hull/convexhull/PHullResult;->indexCount:I

    iput p4, p3, Lorg/hull/convexhull/PHullResult;->faceCount:I

    iput-object p2, p3, Lorg/hull/convexhull/PHullResult;->vertices:Lorg/hull/ObjectArrayList;

    iput p1, p3, Lorg/hull/convexhull/PHullResult;->vcount:I

    return v0
.end method

.method private deAllocateTriangle(Lorg/hull/convexhull/Tri;)V
    .locals 2

    iget-object v0, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    iget p1, p1, Lorg/hull/convexhull/Tri;->id:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/hull/ObjectArrayList;->setQuick(ILjava/lang/Object;)V

    return-void
.end method

.method private extrudable(F)Lorg/hull/convexhull/Tri;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v3}, Lorg/hull/ObjectArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v3, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, v2, Lorg/hull/convexhull/Tri;->rise:F

    iget-object v4, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v4, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/hull/convexhull/Tri;

    iget v4, v4, Lorg/hull/convexhull/Tri;->rise:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v2, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/hull/convexhull/Tri;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, v2, Lorg/hull/convexhull/Tri;->rise:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_3

    move-object v0, v2

    :cond_3
    return-object v0
.end method

.method private extrude(Lorg/hull/convexhull/Tri;I)V
    .locals 12

    new-instance v0, Lorg/hull/convexhull/Int3;

    invoke-direct {v0, p1}, Lorg/hull/convexhull/Int3;-><init>(Lorg/hull/convexhull/Int3;)V

    iget-object v1, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    invoke-virtual {v1}, Lorg/hull/ObjectArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v5

    invoke-direct {p0, p2, v3, v5}, Lorg/hull/convexhull/HullLibrary;->allocateTriangle(III)Lorg/hull/convexhull/Tri;

    move-result-object v3

    iget-object v5, v3, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    iget-object v6, p1, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v6

    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v5, v6, v8, v9}, Lorg/hull/convexhull/Int3;->set(III)V

    iget-object v5, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    iget-object v6, p1, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {v6, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/hull/convexhull/Tri;

    invoke-virtual {v0, v2}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v6

    invoke-virtual {v0, v4}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v10

    invoke-virtual {v5, v6, v10}, Lorg/hull/convexhull/Tri;->neib(II)Lorg/hull/convexhull/IntRef;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/hull/convexhull/IntRef;->set(I)V

    invoke-virtual {v0, v4}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v5

    invoke-virtual {v0, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v6

    invoke-direct {p0, p2, v5, v6}, Lorg/hull/convexhull/HullLibrary;->allocateTriangle(III)Lorg/hull/convexhull/Tri;

    move-result-object v5

    iget-object v6, v5, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    iget-object v10, p1, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {v10, v2}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v10

    invoke-virtual {v6, v10, v9, v1}, Lorg/hull/convexhull/Int3;->set(III)V

    iget-object v6, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    iget-object v10, p1, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {v10, v2}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/hull/convexhull/Tri;

    invoke-virtual {v0, v4}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v10

    invoke-virtual {v0, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v11

    invoke-virtual {v6, v10, v11}, Lorg/hull/convexhull/Tri;->neib(II)Lorg/hull/convexhull/IntRef;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/hull/convexhull/IntRef;->set(I)V

    invoke-virtual {v0, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v6

    invoke-virtual {v0, v2}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v10

    invoke-direct {p0, p2, v6, v10}, Lorg/hull/convexhull/HullLibrary;->allocateTriangle(III)Lorg/hull/convexhull/Tri;

    move-result-object v6

    iget-object v10, v6, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    iget-object v11, p1, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {v11, v4}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v11

    invoke-virtual {v10, v11, v1, v8}, Lorg/hull/convexhull/Int3;->set(III)V

    iget-object v1, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    iget-object v8, p1, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {v8, v4}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hull/convexhull/Tri;

    invoke-virtual {v0, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v4

    invoke-virtual {v0, v2}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Lorg/hull/convexhull/Tri;->neib(II)Lorg/hull/convexhull/IntRef;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/hull/convexhull/IntRef;->set(I)V

    invoke-direct {p0, v3}, Lorg/hull/convexhull/HullLibrary;->checkit(Lorg/hull/convexhull/Tri;)V

    invoke-direct {p0, v5}, Lorg/hull/convexhull/HullLibrary;->checkit(Lorg/hull/convexhull/Tri;)V

    invoke-direct {p0, v6}, Lorg/hull/convexhull/HullLibrary;->checkit(Lorg/hull/convexhull/Tri;)V

    iget-object v0, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    iget-object v1, v3, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {v1, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hull/convexhull/Int3;

    invoke-static {v0, p2}, Lorg/hull/convexhull/HullLibrary;->hasvert(Lorg/hull/convexhull/Int3;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    iget-object v1, v3, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {v1, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hull/convexhull/Tri;

    invoke-direct {p0, v3, v0}, Lorg/hull/convexhull/HullLibrary;->removeb2b(Lorg/hull/convexhull/Tri;Lorg/hull/convexhull/Tri;)V

    :cond_0
    iget-object v0, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    iget-object v1, v5, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {v1, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hull/convexhull/Int3;

    invoke-static {v0, p2}, Lorg/hull/convexhull/HullLibrary;->hasvert(Lorg/hull/convexhull/Int3;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    iget-object v1, v5, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {v1, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hull/convexhull/Tri;

    invoke-direct {p0, v5, v0}, Lorg/hull/convexhull/HullLibrary;->removeb2b(Lorg/hull/convexhull/Tri;Lorg/hull/convexhull/Tri;)V

    :cond_1
    iget-object v0, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    iget-object v1, v6, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {v1, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hull/convexhull/Int3;

    invoke-static {v0, p2}, Lorg/hull/convexhull/HullLibrary;->hasvert(Lorg/hull/convexhull/Int3;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/hull/convexhull/HullLibrary;->tris:Lorg/hull/ObjectArrayList;

    iget-object v0, v6, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {v0, v7}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/hull/convexhull/Tri;

    invoke-direct {p0, v6, p2}, Lorg/hull/convexhull/HullLibrary;->removeb2b(Lorg/hull/convexhull/Tri;Lorg/hull/convexhull/Tri;)V

    :cond_2
    invoke-direct {p0, p1}, Lorg/hull/convexhull/HullLibrary;->deAllocateTriangle(Lorg/hull/convexhull/Tri;)V

    return-void
.end method

.method private findSimplex(Lorg/hull/ObjectArrayList;ILorg/hull/IntArrayList;Lorg/hull/convexhull/Int4;)Lorg/hull/convexhull/Int4;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;I",
            "Lorg/hull/IntArrayList;",
            "Lorg/hull/convexhull/Int4;",
            ")",
            "Lorg/hull/convexhull/Int4;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v4, Ljavax/vecmath/Vector3f;

    invoke-direct {v4}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v5, Ljavax/vecmath/Vector3f;

    invoke-direct {v5}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v6, Ljavax/vecmath/Vector3f;

    invoke-direct {v6}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v7, Ljavax/vecmath/Vector3f;

    invoke-direct {v7}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v8, Ljavax/vecmath/Vector3f;

    invoke-direct {v8}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v9, Ljavax/vecmath/Vector3f;

    invoke-direct {v9}, Ljavax/vecmath/Vector3f;-><init>()V

    filled-new-array {v7, v8, v9}, [Ljavax/vecmath/Vector3f;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v9, v7, v8

    const v10, 0x3c23d70a    # 0.01f

    const v11, 0x3ca3d70a    # 0.02f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v11, v12}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    aget-object v9, v7, v8

    invoke-static {v0, v1, v9, v2}, Lorg/hull/convexhull/HullLibrary;->maxdirsterid(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I

    move-result v9

    aget-object v10, v7, v8

    invoke-virtual {v4, v10}, Ljavax/vecmath/Tuple3f;->negate(Ljavax/vecmath/Tuple3f;)V

    invoke-static {v0, v1, v4, v2}, Lorg/hull/convexhull/HullLibrary;->maxdirsterid(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I

    move-result v10

    aget-object v13, v7, v8

    invoke-virtual {v0, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v0, v10}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v13, v14, v15}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    if-eq v9, v10, :cond_0

    aget-object v14, v7, v8

    iget v15, v14, Ljavax/vecmath/Tuple3f;->x:F

    const/4 v13, 0x0

    cmpl-float v15, v15, v13

    if-nez v15, :cond_1

    iget v15, v14, Ljavax/vecmath/Tuple3f;->y:F

    cmpl-float v15, v15, v13

    if-nez v15, :cond_1

    iget v14, v14, Ljavax/vecmath/Tuple3f;->z:F

    cmpl-float v14, v14, v13

    if-nez v14, :cond_1

    :cond_0
    const/4 v0, -0x1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v4, v12, v11, v13}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    const/4 v11, 0x1

    aget-object v14, v7, v11

    aget-object v15, v7, v8

    invoke-virtual {v14, v4, v15}, Ljavax/vecmath/Vector3f;->cross(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    const v14, -0x435c28f6    # -0.02f

    invoke-virtual {v4, v14, v12, v13}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    const/4 v12, 0x2

    aget-object v14, v7, v12

    aget-object v15, v7, v8

    invoke-virtual {v14, v4, v15}, Ljavax/vecmath/Vector3f;->cross(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    aget-object v14, v7, v11

    invoke-virtual {v14}, Ljavax/vecmath/Vector3f;->length()F

    move-result v14

    aget-object v15, v7, v12

    invoke-virtual {v15}, Ljavax/vecmath/Vector3f;->length()F

    move-result v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    aget-object v14, v7, v11

    invoke-virtual {v14}, Ljavax/vecmath/Vector3f;->normalize()V

    goto :goto_0

    :cond_2
    aget-object v14, v7, v11

    aget-object v15, v7, v12

    invoke-virtual {v14, v15}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    aget-object v14, v7, v11

    invoke-virtual {v14}, Ljavax/vecmath/Vector3f;->normalize()V

    :goto_0
    aget-object v14, v7, v11

    invoke-static {v0, v1, v14, v2}, Lorg/hull/convexhull/HullLibrary;->maxdirsterid(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I

    move-result v14

    if-eq v14, v9, :cond_3

    if-ne v14, v10, :cond_4

    :cond_3
    aget-object v14, v7, v11

    invoke-virtual {v4, v14}, Ljavax/vecmath/Tuple3f;->negate(Ljavax/vecmath/Tuple3f;)V

    invoke-static {v0, v1, v4, v2}, Lorg/hull/convexhull/HullLibrary;->maxdirsterid(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I

    move-result v14

    :cond_4
    if-eq v14, v9, :cond_5

    if-ne v14, v10, :cond_6

    :cond_5
    const/4 v0, -0x1

    goto/16 :goto_2

    :cond_6
    aget-object v15, v7, v11

    invoke-virtual {v0, v14}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v0, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v15, v13, v8}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    aget-object v8, v7, v12

    aget-object v11, v7, v11

    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v8, v11, v13}, Ljavax/vecmath/Vector3f;->cross(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    aget-object v8, v7, v12

    invoke-virtual {v8}, Ljavax/vecmath/Vector3f;->normalize()V

    aget-object v8, v7, v12

    invoke-static {v0, v1, v8, v2}, Lorg/hull/convexhull/HullLibrary;->maxdirsterid(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I

    move-result v8

    if-eq v8, v9, :cond_7

    if-eq v8, v10, :cond_7

    if-ne v8, v14, :cond_8

    :cond_7
    aget-object v7, v7, v12

    invoke-virtual {v4, v7}, Ljavax/vecmath/Tuple3f;->negate(Ljavax/vecmath/Tuple3f;)V

    invoke-static {v0, v1, v4, v2}, Lorg/hull/convexhull/HullLibrary;->maxdirsterid(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I

    move-result v8

    :cond_8
    if-eq v8, v9, :cond_9

    if-eq v8, v10, :cond_9

    if-ne v8, v14, :cond_a

    :cond_9
    const/4 v0, -0x1

    goto :goto_1

    :cond_a
    invoke-virtual {v0, v10}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v0, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v5, v1, v2}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {v0, v14}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v0, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v6, v1, v2}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {v6, v5, v6}, Ljavax/vecmath/Vector3f;->cross(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    invoke-virtual {v0, v8}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v0, v9}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v5, v1, v0}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {v5, v6}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    move/from16 v17, v14

    move v14, v8

    move/from16 v8, v17

    :cond_b
    invoke-virtual {v3, v9, v10, v14, v8}, Lorg/hull/convexhull/Int4;->set(IIII)V

    return-object v3

    :goto_1
    invoke-virtual {v3, v0, v0, v0, v0}, Lorg/hull/convexhull/Int4;->set(IIII)V

    return-object v3

    :goto_2
    invoke-virtual {v3, v0, v0, v0, v0}, Lorg/hull/convexhull/Int4;->set(IIII)V

    return-object v3

    :goto_3
    invoke-virtual {v3, v0, v0, v0, v0}, Lorg/hull/convexhull/Int4;->set(IIII)V

    return-object v3
.end method

.method private static getDist(FFFLjavax/vecmath/Vector3f;)F
    .locals 1

    iget v0, p3, Ljavax/vecmath/Tuple3f;->x:F

    sub-float/2addr p0, v0

    iget v0, p3, Ljavax/vecmath/Tuple3f;->y:F

    sub-float/2addr p1, v0

    iget p3, p3, Ljavax/vecmath/Tuple3f;->z:F

    sub-float/2addr p2, p3

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    return p0
.end method

.method private static hasvert(Lorg/hull/convexhull/Int3;I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, p1, :cond_0

    invoke-virtual {p0, v2}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result p0

    if-ne p0, p1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method private static maxdirfiltered(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;I",
            "Ljavax/vecmath/Vector3f;",
            "Lorg/hull/IntArrayList;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p3, v1}, Lorg/hull/IntArrayList;->get(I)I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v2, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/vecmath/Vector3f;

    invoke-virtual {v3, p2}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result v3

    invoke-virtual {p0, v2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/vecmath/Vector3f;

    invoke-virtual {v4, p2}, Ljavax/vecmath/Vector3f;->dot(Ljavax/vecmath/Vector3f;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static maxdirsterid(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;I",
            "Ljavax/vecmath/Vector3f;",
            "Lorg/hull/IntArrayList;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Ljavax/vecmath/Vector3f;

    invoke-direct {v4}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v5, Ljavax/vecmath/Vector3f;

    invoke-direct {v5}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v6, Ljavax/vecmath/Vector3f;

    invoke-direct {v6}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v7, Ljavax/vecmath/Vector3f;

    invoke-direct {v7}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v8, Ljavax/vecmath/Vector3f;

    invoke-direct {v8}, Ljavax/vecmath/Vector3f;-><init>()V

    :goto_0
    invoke-static/range {p0 .. p3}, Lorg/hull/convexhull/HullLibrary;->maxdirfiltered(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/hull/IntArrayList;->get(I)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    return v9

    :cond_0
    invoke-static {v2, v7}, Lorg/hull/convexhull/HullLibrary;->orth(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;

    invoke-virtual {v8, v7, v2}, Ljavax/vecmath/Vector3f;->cross(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    const/4 v12, 0x0

    const/4 v13, -0x1

    :goto_1
    const/high16 v14, 0x43b40000    # 360.0f

    cmpg-float v14, v12, v14

    if-gtz v14, :cond_4

    const v14, 0x3c8efa35

    mul-float v15, v12, v14

    float-to-double v14, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v11, v14

    invoke-virtual {v5, v10, v7}, Ljavax/vecmath/Tuple3f;->scale(FLjavax/vecmath/Tuple3f;)V

    invoke-virtual {v6, v11, v8}, Ljavax/vecmath/Tuple3f;->scale(FLjavax/vecmath/Tuple3f;)V

    invoke-virtual {v4, v5, v6}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    const v10, 0x3ccccccd    # 0.025f

    invoke-virtual {v4, v10}, Ljavax/vecmath/Tuple3f;->scale(F)V

    invoke-virtual {v4, v2}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;)V

    invoke-static {v0, v1, v4, v3}, Lorg/hull/convexhull/HullLibrary;->maxdirfiltered(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I

    move-result v11

    if-ne v13, v9, :cond_1

    if-ne v11, v9, :cond_1

    const/4 v14, 0x3

    invoke-virtual {v3, v9, v14}, Lorg/hull/IntArrayList;->set(II)V

    return v9

    :cond_1
    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    if-eq v13, v11, :cond_3

    const/high16 v15, 0x42200000    # 40.0f

    sub-float v15, v12, v15

    :goto_2
    cmpg-float v17, v15, v12

    if-gtz v17, :cond_3

    const v16, 0x3c8efa35

    mul-float v14, v15, v16

    move/from16 v18, v11

    float-to-double v10, v14

    move/from16 v19, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v5, v14, v7}, Ljavax/vecmath/Tuple3f;->scale(FLjavax/vecmath/Tuple3f;)V

    invoke-virtual {v6, v10, v8}, Ljavax/vecmath/Tuple3f;->scale(FLjavax/vecmath/Tuple3f;)V

    invoke-virtual {v4, v5, v6}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    const v10, 0x3ccccccd    # 0.025f

    invoke-virtual {v4, v10}, Ljavax/vecmath/Tuple3f;->scale(F)V

    invoke-virtual {v4, v2}, Ljavax/vecmath/Tuple3f;->add(Ljavax/vecmath/Tuple3f;)V

    invoke-static {v0, v1, v4, v3}, Lorg/hull/convexhull/HullLibrary;->maxdirfiltered(Lorg/hull/ObjectArrayList;ILjavax/vecmath/Vector3f;Lorg/hull/IntArrayList;)I

    move-result v11

    if-ne v13, v9, :cond_2

    if-ne v11, v9, :cond_2

    const/4 v13, 0x3

    invoke-virtual {v3, v9, v13}, Lorg/hull/IntArrayList;->set(II)V

    return v9

    :cond_2
    const/4 v13, 0x3

    const/high16 v14, 0x40a00000    # 5.0f

    add-float v15, v19, v14

    move v13, v11

    move/from16 v11, v18

    const/4 v14, -0x1

    goto :goto_2

    :cond_3
    move/from16 v18, v11

    const/4 v13, 0x3

    const/high16 v10, 0x42340000    # 45.0f

    add-float/2addr v12, v10

    move v11, v13

    move/from16 v13, v18

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lorg/hull/IntArrayList;->set(II)V

    goto/16 :goto_0
.end method

.method private static orth(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
    .locals 4

    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v2}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    invoke-virtual {v0, p0, v0}, Ljavax/vecmath/Vector3f;->cross(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    new-instance v3, Ljavax/vecmath/Vector3f;

    invoke-direct {v3}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {v3, v1, v2, v1}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    invoke-virtual {v3, p0, v3}, Ljavax/vecmath/Vector3f;->cross(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    invoke-virtual {v0}, Ljavax/vecmath/Vector3f;->length()F

    move-result p0

    invoke-virtual {v3}, Ljavax/vecmath/Vector3f;->length()F

    move-result v1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    invoke-virtual {p1, v0}, Ljavax/vecmath/Vector3f;->normalize(Ljavax/vecmath/Vector3f;)V

    return-object p1

    :cond_0
    invoke-virtual {p1, v3}, Ljavax/vecmath/Vector3f;->normalize(Ljavax/vecmath/Vector3f;)V

    return-object p1
.end method

.method private static releaseHull(Lorg/hull/convexhull/PHullResult;)V
    .locals 1

    iget-object v0, p0, Lorg/hull/convexhull/PHullResult;->indices:Lorg/hull/IntArrayList;

    invoke-virtual {v0}, Lorg/hull/IntArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hull/convexhull/PHullResult;->indices:Lorg/hull/IntArrayList;

    invoke-virtual {v0}, Lorg/hull/IntArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/hull/convexhull/PHullResult;->vcount:I

    iput v0, p0, Lorg/hull/convexhull/PHullResult;->indexCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hull/convexhull/PHullResult;->vertices:Lorg/hull/ObjectArrayList;

    return-void
.end method

.method private removeb2b(Lorg/hull/convexhull/Tri;Lorg/hull/convexhull/Tri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/hull/convexhull/HullLibrary;->b2bfix(Lorg/hull/convexhull/Tri;Lorg/hull/convexhull/Tri;)V

    invoke-direct {p0, p1}, Lorg/hull/convexhull/HullLibrary;->deAllocateTriangle(Lorg/hull/convexhull/Tri;)V

    invoke-direct {p0, p2}, Lorg/hull/convexhull/HullLibrary;->deAllocateTriangle(Lorg/hull/convexhull/Tri;)V

    return-void
.end method

.method private static triNormal(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)Ljavax/vecmath/Vector3f;
    .locals 2

    new-instance v0, Ljavax/vecmath/Vector3f;

    invoke-direct {v0}, Ljavax/vecmath/Vector3f;-><init>()V

    new-instance v1, Ljavax/vecmath/Vector3f;

    invoke-direct {v1}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {v0, p1, p0}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    invoke-virtual {v1, p2, p1}, Ljavax/vecmath/Tuple3f;->sub(Ljavax/vecmath/Tuple3f;Ljavax/vecmath/Tuple3f;)V

    new-instance p0, Ljavax/vecmath/Vector3f;

    invoke-direct {p0}, Ljavax/vecmath/Vector3f;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljavax/vecmath/Vector3f;->cross(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    invoke-virtual {p0}, Ljavax/vecmath/Vector3f;->length()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    invoke-virtual {p3, v1, p2, p2}, Ljavax/vecmath/Tuple3f;->set(FFF)V

    return-object p3

    :cond_0
    div-float/2addr v1, p1

    invoke-virtual {p3, v1, p0}, Ljavax/vecmath/Tuple3f;->scale(FLjavax/vecmath/Tuple3f;)V

    return-object p3
.end method


# virtual methods
.method public createConvexHull(Lorg/hull/convexhull/HullDesc;Lorg/hull/convexhull/HullResult;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Lorg/hull/convexhull/PHullResult;

    invoke-direct {v2}, Lorg/hull/convexhull/PHullResult;-><init>()V

    iget v3, v0, Lorg/hull/convexhull/HullDesc;->vcount:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    move v3, v4

    :cond_0
    new-instance v12, Lorg/hull/ObjectArrayList;

    invoke-direct {v12}, Lorg/hull/ObjectArrayList;-><init>()V

    const-class v13, Ljavax/vecmath/Vector3f;

    invoke-static {v12, v3, v13}, Lorg/hull/MiscUtil;->resize(Lorg/hull/ObjectArrayList;ILjava/lang/Class;)V

    new-instance v3, Ljavax/vecmath/Vector3f;

    invoke-direct {v3}, Ljavax/vecmath/Vector3f;-><init>()V

    const/4 v14, 0x1

    new-array v15, v14, [I

    iget v5, v0, Lorg/hull/convexhull/HullDesc;->vcount:I

    iget-object v6, v0, Lorg/hull/convexhull/HullDesc;->vertices:Lorg/hull/ObjectArrayList;

    iget v7, v0, Lorg/hull/convexhull/HullDesc;->vertexStride:I

    iget v10, v0, Lorg/hull/convexhull/HullDesc;->normalEpsilon:F

    move-object/from16 v4, p0

    move-object v8, v15

    move-object v9, v12

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lorg/hull/convexhull/HullLibrary;->cleanupVertices(ILorg/hull/ObjectArrayList;I[ILorg/hull/ObjectArrayList;FLjavax/vecmath/Vector3f;)Z

    move-result v4

    const/4 v11, 0x0

    if-eqz v4, :cond_8

    move v4, v11

    :goto_0
    aget v5, v15, v11

    if-ge v4, v5, :cond_1

    invoke-virtual {v12, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/vecmath/Vector3f;

    invoke-static {v5, v5, v3}, Lorg/hull/VectorUtil;->mul(Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;Ljavax/vecmath/Vector3f;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v3, v0, Lorg/hull/convexhull/HullDesc;->maxVertices:I

    move-object/from16 v10, p0

    invoke-direct {v10, v5, v12, v2, v3}, Lorg/hull/convexhull/HullLibrary;->computeHull(ILorg/hull/ObjectArrayList;Lorg/hull/convexhull/PHullResult;I)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lorg/hull/ObjectArrayList;

    invoke-direct {v3}, Lorg/hull/ObjectArrayList;-><init>()V

    iget v4, v2, Lorg/hull/convexhull/PHullResult;->vcount:I

    invoke-static {v3, v4, v13}, Lorg/hull/MiscUtil;->resize(Lorg/hull/ObjectArrayList;ILjava/lang/Class;)V

    iget-object v5, v2, Lorg/hull/convexhull/PHullResult;->vertices:Lorg/hull/ObjectArrayList;

    iget v6, v2, Lorg/hull/convexhull/PHullResult;->vcount:I

    iget-object v9, v2, Lorg/hull/convexhull/PHullResult;->indices:Lorg/hull/IntArrayList;

    iget v12, v2, Lorg/hull/convexhull/PHullResult;->indexCount:I

    move-object/from16 v4, p0

    move-object v7, v3

    move-object v8, v15

    move v10, v12

    invoke-direct/range {v4 .. v10}, Lorg/hull/convexhull/HullLibrary;->bringOutYourDead(Lorg/hull/ObjectArrayList;ILorg/hull/ObjectArrayList;[ILorg/hull/IntArrayList;I)V

    sget v4, Lorg/hull/convexhull/HullFlags;->TRIANGLES:I

    invoke-virtual {v0, v4}, Lorg/hull/convexhull/HullDesc;->hasHullFlag(I)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_4

    iput-boolean v11, v1, Lorg/hull/convexhull/HullResult;->polygons:Z

    aget v4, v15, v11

    iput v4, v1, Lorg/hull/convexhull/HullResult;->numOutputVertices:I

    iget-object v6, v1, Lorg/hull/convexhull/HullResult;->outputVertices:Lorg/hull/ObjectArrayList;

    invoke-static {v6, v4, v13}, Lorg/hull/MiscUtil;->resize(Lorg/hull/ObjectArrayList;ILjava/lang/Class;)V

    iget v4, v2, Lorg/hull/convexhull/PHullResult;->faceCount:I

    iput v4, v1, Lorg/hull/convexhull/HullResult;->numFaces:I

    iget v4, v2, Lorg/hull/convexhull/PHullResult;->indexCount:I

    iput v4, v1, Lorg/hull/convexhull/HullResult;->numIndices:I

    iget-object v6, v1, Lorg/hull/convexhull/HullResult;->indices:Lorg/hull/IntArrayList;

    invoke-static {v6, v4, v11}, Lorg/hull/MiscUtil;->resize(Lorg/hull/IntArrayList;II)V

    move v4, v11

    :goto_1
    aget v6, v15, v11

    if-ge v4, v6, :cond_2

    iget-object v6, v1, Lorg/hull/convexhull/HullResult;->outputVertices:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/vecmath/Vector3f;

    invoke-virtual {v3, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v6, v7}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget v3, Lorg/hull/convexhull/HullFlags;->REVERSE_ORDER:I

    invoke-virtual {v0, v3}, Lorg/hull/convexhull/HullDesc;->hasHullFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Lorg/hull/convexhull/PHullResult;->indices:Lorg/hull/IntArrayList;

    iget-object v1, v1, Lorg/hull/convexhull/HullResult;->indices:Lorg/hull/IntArrayList;

    move v3, v11

    move v4, v3

    :goto_2
    iget v6, v2, Lorg/hull/convexhull/PHullResult;->faceCount:I

    if-ge v11, v6, :cond_7

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v0, v6}, Lorg/hull/IntArrayList;->get(I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/hull/IntArrayList;->set(II)V

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v7}, Lorg/hull/IntArrayList;->get(I)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/hull/IntArrayList;->set(II)V

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v0, v4}, Lorg/hull/IntArrayList;->get(I)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/hull/IntArrayList;->set(II)V

    add-int/2addr v3, v5

    add-int/2addr v4, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget v0, v2, Lorg/hull/convexhull/PHullResult;->indexCount:I

    if-ge v11, v0, :cond_7

    iget-object v0, v1, Lorg/hull/convexhull/HullResult;->indices:Lorg/hull/IntArrayList;

    iget-object v3, v2, Lorg/hull/convexhull/PHullResult;->indices:Lorg/hull/IntArrayList;

    invoke-virtual {v3, v11}, Lorg/hull/IntArrayList;->get(I)I

    move-result v3

    invoke-virtual {v0, v11, v3}, Lorg/hull/IntArrayList;->set(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    iput-boolean v14, v1, Lorg/hull/convexhull/HullResult;->polygons:Z

    aget v4, v15, v11

    iput v4, v1, Lorg/hull/convexhull/HullResult;->numOutputVertices:I

    iget-object v6, v1, Lorg/hull/convexhull/HullResult;->outputVertices:Lorg/hull/ObjectArrayList;

    invoke-static {v6, v4, v13}, Lorg/hull/MiscUtil;->resize(Lorg/hull/ObjectArrayList;ILjava/lang/Class;)V

    iget v4, v2, Lorg/hull/convexhull/PHullResult;->faceCount:I

    iput v4, v1, Lorg/hull/convexhull/HullResult;->numFaces:I

    iget v6, v2, Lorg/hull/convexhull/PHullResult;->indexCount:I

    add-int/2addr v6, v4

    iput v6, v1, Lorg/hull/convexhull/HullResult;->numIndices:I

    iget-object v4, v1, Lorg/hull/convexhull/HullResult;->indices:Lorg/hull/IntArrayList;

    invoke-static {v4, v6, v11}, Lorg/hull/MiscUtil;->resize(Lorg/hull/IntArrayList;II)V

    move v4, v11

    :goto_4
    aget v6, v15, v11

    if-ge v4, v6, :cond_5

    iget-object v6, v1, Lorg/hull/convexhull/HullResult;->outputVertices:Lorg/hull/ObjectArrayList;

    invoke-virtual {v6, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/vecmath/Vector3f;

    invoke-virtual {v3, v4}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/vecmath/Tuple3f;

    invoke-virtual {v6, v7}, Ljavax/vecmath/Tuple3f;->set(Ljavax/vecmath/Tuple3f;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget-object v3, v2, Lorg/hull/convexhull/PHullResult;->indices:Lorg/hull/IntArrayList;

    iget-object v1, v1, Lorg/hull/convexhull/HullResult;->indices:Lorg/hull/IntArrayList;

    move v4, v11

    move v6, v4

    :goto_5
    iget v7, v2, Lorg/hull/convexhull/PHullResult;->faceCount:I

    if-ge v11, v7, :cond_7

    invoke-virtual {v1, v4, v5}, Lorg/hull/IntArrayList;->set(II)V

    sget v7, Lorg/hull/convexhull/HullFlags;->REVERSE_ORDER:I

    invoke-virtual {v0, v7}, Lorg/hull/convexhull/HullDesc;->hasHullFlag(I)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v3, v8}, Lorg/hull/IntArrayList;->get(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/hull/IntArrayList;->set(II)V

    add-int/lit8 v7, v4, 0x2

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lorg/hull/IntArrayList;->get(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/hull/IntArrayList;->set(II)V

    add-int/lit8 v7, v4, 0x3

    invoke-virtual {v3, v6}, Lorg/hull/IntArrayList;->get(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/hull/IntArrayList;->set(II)V

    goto :goto_6

    :cond_6
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v6}, Lorg/hull/IntArrayList;->get(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/hull/IntArrayList;->set(II)V

    add-int/lit8 v7, v4, 0x2

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lorg/hull/IntArrayList;->get(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/hull/IntArrayList;->set(II)V

    add-int/lit8 v7, v4, 0x3

    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v3, v8}, Lorg/hull/IntArrayList;->get(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/hull/IntArrayList;->set(II)V

    :goto_6
    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    invoke-static {v2}, Lorg/hull/convexhull/HullLibrary;->releaseHull(Lorg/hull/convexhull/PHullResult;)V

    goto :goto_7

    :cond_8
    move v14, v11

    :goto_7
    return v14
.end method

.method public releaseResult(Lorg/hull/convexhull/HullResult;)Z
    .locals 2

    iget-object v0, p1, Lorg/hull/convexhull/HullResult;->outputVertices:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p1, Lorg/hull/convexhull/HullResult;->numOutputVertices:I

    iget-object v0, p1, Lorg/hull/convexhull/HullResult;->outputVertices:Lorg/hull/ObjectArrayList;

    invoke-virtual {v0}, Lorg/hull/ObjectArrayList;->clear()V

    :cond_0
    iget-object v0, p1, Lorg/hull/convexhull/HullResult;->indices:Lorg/hull/IntArrayList;

    invoke-virtual {v0}, Lorg/hull/IntArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p1, Lorg/hull/convexhull/HullResult;->numIndices:I

    iget-object p1, p1, Lorg/hull/convexhull/HullResult;->indices:Lorg/hull/IntArrayList;

    invoke-virtual {p1}, Lorg/hull/IntArrayList;->clear()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
