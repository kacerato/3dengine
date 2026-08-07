.class Lorg/hull/convexhull/Int4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public w:I

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

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/hull/convexhull/Int4;->x:I

    .line 4
    iput p2, p0, Lorg/hull/convexhull/Int4;->y:I

    .line 5
    iput p3, p0, Lorg/hull/convexhull/Int4;->z:I

    .line 6
    iput p4, p0, Lorg/hull/convexhull/Int4;->w:I

    return-void
.end method


# virtual methods
.method public getCoord(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget p1, p0, Lorg/hull/convexhull/Int4;->w:I

    return p1

    :cond_0
    iget p1, p0, Lorg/hull/convexhull/Int4;->z:I

    return p1

    :cond_1
    iget p1, p0, Lorg/hull/convexhull/Int4;->y:I

    return p1

    :cond_2
    iget p1, p0, Lorg/hull/convexhull/Int4;->x:I

    return p1
.end method

.method public set(IIII)V
    .locals 0

    iput p1, p0, Lorg/hull/convexhull/Int4;->x:I

    iput p2, p0, Lorg/hull/convexhull/Int4;->y:I

    iput p3, p0, Lorg/hull/convexhull/Int4;->z:I

    iput p4, p0, Lorg/hull/convexhull/Int4;->w:I

    return-void
.end method
