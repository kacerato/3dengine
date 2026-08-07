.class Lorg/hull/convexhull/Tri;
.super Lorg/hull/convexhull/Int3;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static er:I = -0x1

.field private static erRef:Lorg/hull/convexhull/IntRef;


# instance fields
.field public id:I

.field public n:Lorg/hull/convexhull/Int3;

.field public rise:F

.field public vmax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/hull/convexhull/Tri$1;

    invoke-direct {v0}, Lorg/hull/convexhull/Tri$1;-><init>()V

    sput-object v0, Lorg/hull/convexhull/Tri;->erRef:Lorg/hull/convexhull/IntRef;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/hull/convexhull/Int3;-><init>(III)V

    new-instance p1, Lorg/hull/convexhull/Int3;

    invoke-direct {p1}, Lorg/hull/convexhull/Int3;-><init>()V

    iput-object p1, p0, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p2, p2}, Lorg/hull/convexhull/Int3;->set(III)V

    iput p2, p0, Lorg/hull/convexhull/Tri;->vmax:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/hull/convexhull/Tri;->rise:F

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    sget v0, Lorg/hull/convexhull/Tri;->er:I

    return v0
.end method

.method public static synthetic access$002(I)I
    .locals 0

    sput p0, Lorg/hull/convexhull/Tri;->er:I

    return p0
.end method


# virtual methods
.method public neib(II)Lorg/hull/convexhull/IntRef;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    add-int/lit8 v2, v0, 0x1

    rem-int/lit8 v3, v2, 0x3

    add-int/lit8 v4, v0, 0x2

    rem-int/2addr v4, v1

    invoke-virtual {p0, v0}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, v3}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object p1, p0, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {p1, v4}, Lorg/hull/convexhull/Int3;->getRef(I)Lorg/hull/convexhull/IntRef;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0, v3}, Lorg/hull/convexhull/Int3;->getCoord(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lorg/hull/convexhull/Tri;->n:Lorg/hull/convexhull/Int3;

    invoke-virtual {p1, v4}, Lorg/hull/convexhull/Int3;->getRef(I)Lorg/hull/convexhull/IntRef;

    move-result-object p1

    return-object p1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/hull/convexhull/Tri;->erRef:Lorg/hull/convexhull/IntRef;

    return-object p1
.end method
