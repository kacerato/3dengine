.class public Lorg/hull/convexhull/HullResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final indices:Lorg/hull/IntArrayList;

.field public numFaces:I

.field public numIndices:I

.field public numOutputVertices:I

.field public final outputVertices:Lorg/hull/ObjectArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hull/ObjectArrayList<",
            "Ljavax/vecmath/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field public polygons:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/hull/convexhull/HullResult;->polygons:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/hull/convexhull/HullResult;->numOutputVertices:I

    new-instance v1, Lorg/hull/ObjectArrayList;

    invoke-direct {v1}, Lorg/hull/ObjectArrayList;-><init>()V

    iput-object v1, p0, Lorg/hull/convexhull/HullResult;->outputVertices:Lorg/hull/ObjectArrayList;

    iput v0, p0, Lorg/hull/convexhull/HullResult;->numFaces:I

    iput v0, p0, Lorg/hull/convexhull/HullResult;->numIndices:I

    new-instance v0, Lorg/hull/IntArrayList;

    invoke-direct {v0}, Lorg/hull/IntArrayList;-><init>()V

    iput-object v0, p0, Lorg/hull/convexhull/HullResult;->indices:Lorg/hull/IntArrayList;

    return-void
.end method
