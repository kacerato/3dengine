.class Lorg/hull/convexhull/PHullResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public faceCount:I

.field public indexCount:I

.field public indices:Lorg/hull/IntArrayList;

.field public vcount:I

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/hull/convexhull/PHullResult;->vcount:I

    iput v0, p0, Lorg/hull/convexhull/PHullResult;->indexCount:I

    iput v0, p0, Lorg/hull/convexhull/PHullResult;->faceCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/hull/convexhull/PHullResult;->vertices:Lorg/hull/ObjectArrayList;

    new-instance v0, Lorg/hull/IntArrayList;

    invoke-direct {v0}, Lorg/hull/IntArrayList;-><init>()V

    iput-object v0, p0, Lorg/hull/convexhull/PHullResult;->indices:Lorg/hull/IntArrayList;

    return-void
.end method
