.class public Lorg/hull/MiscUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GEN_clamped(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpg-float p1, p2, p0

    if-gez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private static downHeap(Lorg/hull/ObjectArrayList;IILjava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hull/ObjectArrayList<",
            "TT;>;II",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    div-int/lit8 v1, p2, 0x2

    if-gt p1, v1, :cond_1

    mul-int/lit8 v1, p1, 0x2

    if-ge v1, p2, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/hull/ObjectArrayList;->setQuick(ILjava/lang/Object;)V

    move p1, v1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/hull/ObjectArrayList;->setQuick(ILjava/lang/Object;)V

    return-void
.end method

.method public static ensureIndex(Lorg/hull/ObjectArrayList;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hull/ObjectArrayList<",
            "TT;>;ITT;)V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getListCapacityForHash(I)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    :goto_0
    if-ge v0, p0, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static getListCapacityForHash(Lorg/hull/ObjectArrayList;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hull/ObjectArrayList<",
            "*>;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/hull/ObjectArrayList;->size()I

    move-result p0

    invoke-static {p0}, Lorg/hull/MiscUtil;->getListCapacityForHash(I)I

    move-result p0

    return p0
.end method

.method public static heapSort(Lorg/hull/ObjectArrayList;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hull/ObjectArrayList<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    :goto_0
    if-lez v1, :cond_0

    invoke-static {p0, v1, v0, p1}, Lorg/hull/MiscUtil;->downHeap(Lorg/hull/ObjectArrayList;IILjava/util/Comparator;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lorg/hull/MiscUtil;->swap(Lorg/hull/ObjectArrayList;II)V

    invoke-static {p0, v1, v0, p1}, Lorg/hull/MiscUtil;->downHeap(Lorg/hull/ObjectArrayList;IILjava/util/Comparator;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static quickSort(Lorg/hull/ObjectArrayList;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hull/ObjectArrayList<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/hull/MiscUtil;->quickSortInternal(Lorg/hull/ObjectArrayList;Ljava/util/Comparator;II)V

    :cond_0
    return-void
.end method

.method private static quickSortInternal(Lorg/hull/ObjectArrayList;Ljava/util/Comparator;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hull/ObjectArrayList<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;II)V"
        }
    .end annotation

    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    move v1, p2

    move v2, p3

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    if-gt v1, v2, :cond_3

    invoke-static {p0, v1, v2}, Lorg/hull/MiscUtil;->swap(Lorg/hull/ObjectArrayList;II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_3
    if-le v1, v2, :cond_0

    if-ge p2, v2, :cond_4

    invoke-static {p0, p1, p2, v2}, Lorg/hull/MiscUtil;->quickSortInternal(Lorg/hull/ObjectArrayList;Ljava/util/Comparator;II)V

    :cond_4
    if-ge v1, p3, :cond_5

    invoke-static {p0, p1, v1, p3}, Lorg/hull/MiscUtil;->quickSortInternal(Lorg/hull/ObjectArrayList;Ljava/util/Comparator;II)V

    :cond_5
    return-void
.end method

.method public static resize(Lorg/hull/FloatArrayList;IF)V
    .locals 1

    .line 5
    :goto_0
    invoke-virtual {p0}, Lorg/hull/FloatArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lorg/hull/FloatArrayList;->add(F)V

    goto :goto_0

    .line 7
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/hull/FloatArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lorg/hull/FloatArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lorg/hull/FloatArrayList;->remove(I)F

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static resize(Lorg/hull/IntArrayList;II)V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lorg/hull/IntArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lorg/hull/IntArrayList;->add(I)V

    goto :goto_0

    .line 3
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/hull/IntArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/hull/IntArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lorg/hull/IntArrayList;->remove(I)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static resize(Lorg/hull/ObjectArrayList;ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hull/ObjectArrayList<",
            "TT;>;I",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 9
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/hull/ObjectArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lorg/hull/ObjectArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lorg/hull/ObjectArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lorg/hull/ObjectArrayList;->removeQuick(I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    return-void

    .line 13
    :goto_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 14
    :goto_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static swap(Lorg/hull/ObjectArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hull/ObjectArrayList<",
            "TT;>;II)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/hull/ObjectArrayList;->setQuick(ILjava/lang/Object;)V

    invoke-virtual {p0, p2, v0}, Lorg/hull/ObjectArrayList;->setQuick(ILjava/lang/Object;)V

    return-void
.end method
