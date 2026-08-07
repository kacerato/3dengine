.class Lorg/hull/ArrayPool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hull/ArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lorg/hull/ArrayPool$IntValue;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/hull/ArrayPool$IntValue;

    iget p1, p1, Lorg/hull/ArrayPool$IntValue;->value:I

    goto :goto_0

    :cond_0
    check-cast p1, [F

    array-length p1, p1

    :goto_0
    instance-of v0, p2, Lorg/hull/ArrayPool$IntValue;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/hull/ArrayPool$IntValue;

    iget p2, p2, Lorg/hull/ArrayPool$IntValue;->value:I

    goto :goto_1

    :cond_1
    check-cast p2, [F

    array-length p2, p2

    :goto_1
    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    if-ge p1, p2, :cond_3

    const/4 p1, -0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1
.end method
