.class Lorg/hull/convexhull/Int3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/hull/convexhull/Int3;->x:I

    .line 4
    iput p2, p0, Lorg/hull/convexhull/Int3;->y:I

    .line 5
    iput p3, p0, Lorg/hull/convexhull/Int3;->z:I

    return-void
.end method

.method public constructor <init>(Lorg/hull/convexhull/Int3;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lorg/hull/convexhull/Int3;->x:I

    iput v0, p0, Lorg/hull/convexhull/Int3;->x:I

    .line 8
    iget v0, p1, Lorg/hull/convexhull/Int3;->y:I

    iput v0, p0, Lorg/hull/convexhull/Int3;->y:I

    .line 9
    iget p1, p1, Lorg/hull/convexhull/Int3;->z:I

    iput p1, p0, Lorg/hull/convexhull/Int3;->z:I

    return-void
.end method


# virtual methods
.method public equals(Lorg/hull/convexhull/Int3;)Z
    .locals 2

    iget v0, p0, Lorg/hull/convexhull/Int3;->x:I

    iget v1, p1, Lorg/hull/convexhull/Int3;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/hull/convexhull/Int3;->y:I

    iget v1, p1, Lorg/hull/convexhull/Int3;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/hull/convexhull/Int3;->z:I

    iget p1, p1, Lorg/hull/convexhull/Int3;->z:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCoord(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget p1, p0, Lorg/hull/convexhull/Int3;->z:I

    return p1

    :cond_0
    iget p1, p0, Lorg/hull/convexhull/Int3;->y:I

    return p1

    :cond_1
    iget p1, p0, Lorg/hull/convexhull/Int3;->x:I

    return p1
.end method

.method public getRef(I)Lorg/hull/convexhull/IntRef;
    .locals 1

    new-instance v0, Lorg/hull/convexhull/Int3$1;

    invoke-direct {v0, p0, p1}, Lorg/hull/convexhull/Int3$1;-><init>(Lorg/hull/convexhull/Int3;I)V

    return-object v0
.end method

.method public set(III)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/hull/convexhull/Int3;->x:I

    .line 2
    iput p2, p0, Lorg/hull/convexhull/Int3;->y:I

    .line 3
    iput p3, p0, Lorg/hull/convexhull/Int3;->z:I

    return-void
.end method

.method public set(Lorg/hull/convexhull/Int3;)V
    .locals 1

    .line 4
    iget v0, p1, Lorg/hull/convexhull/Int3;->x:I

    iput v0, p0, Lorg/hull/convexhull/Int3;->x:I

    .line 5
    iget v0, p1, Lorg/hull/convexhull/Int3;->y:I

    iput v0, p0, Lorg/hull/convexhull/Int3;->y:I

    .line 6
    iget p1, p1, Lorg/hull/convexhull/Int3;->z:I

    iput p1, p0, Lorg/hull/convexhull/Int3;->z:I

    return-void
.end method

.method public setCoord(II)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lorg/hull/convexhull/Int3;->z:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lorg/hull/convexhull/Int3;->y:I

    goto :goto_0

    :cond_2
    iput p2, p0, Lorg/hull/convexhull/Int3;->x:I

    :goto_0
    return-void
.end method
