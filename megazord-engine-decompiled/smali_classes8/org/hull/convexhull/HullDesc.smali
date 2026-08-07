.class public Lorg/hull/convexhull/HullDesc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public flags:I

.field public maxFaces:I

.field public maxVertices:I

.field public normalEpsilon:F

.field public vcount:I

.field vertexStride:I

.field public vertices:Lorg/hull/ObjectArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lorg/hull/convexhull/HullFlags;->DEFAULT:I

    iput v0, p0, Lorg/hull/convexhull/HullDesc;->flags:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/hull/convexhull/HullDesc;->vcount:I

    const/16 v0, 0xc

    .line 4
    iput v0, p0, Lorg/hull/convexhull/HullDesc;->vertexStride:I

    const v0, 0x3a83126f    # 0.001f

    .line 5
    iput v0, p0, Lorg/hull/convexhull/HullDesc;->normalEpsilon:F

    const/16 v0, 0x1000

    .line 6
    iput v0, p0, Lorg/hull/convexhull/HullDesc;->maxVertices:I

    .line 7
    iput v0, p0, Lorg/hull/convexhull/HullDesc;->maxFaces:I

    return-void
.end method

.method public constructor <init>(IILorg/hull/ObjectArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xc

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/hull/convexhull/HullDesc;-><init>(IILorg/hull/ObjectArrayList;I)V

    return-void
.end method

.method public constructor <init>(IILorg/hull/ObjectArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;I)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget v0, Lorg/hull/convexhull/HullFlags;->DEFAULT:I

    const/16 v0, 0x1000

    .line 11
    iput v0, p0, Lorg/hull/convexhull/HullDesc;->maxFaces:I

    .line 12
    iput p1, p0, Lorg/hull/convexhull/HullDesc;->flags:I

    .line 13
    iput p2, p0, Lorg/hull/convexhull/HullDesc;->vcount:I

    .line 14
    iput-object p3, p0, Lorg/hull/convexhull/HullDesc;->vertices:Lorg/hull/ObjectArrayList;

    .line 15
    iput p4, p0, Lorg/hull/convexhull/HullDesc;->vertexStride:I

    const p1, 0x3a83126f    # 0.001f

    .line 16
    iput p1, p0, Lorg/hull/convexhull/HullDesc;->normalEpsilon:F

    .line 17
    iput v0, p0, Lorg/hull/convexhull/HullDesc;->maxVertices:I

    return-void
.end method


# virtual methods
.method public clearHullFlag(I)V
    .locals 1

    iget v0, p0, Lorg/hull/convexhull/HullDesc;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lorg/hull/convexhull/HullDesc;->flags:I

    return-void
.end method

.method public hasHullFlag(I)Z
    .locals 1

    iget v0, p0, Lorg/hull/convexhull/HullDesc;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setHullFlag(I)V
    .locals 1

    iget v0, p0, Lorg/hull/convexhull/HullDesc;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/hull/convexhull/HullDesc;->flags:I

    return-void
.end method
