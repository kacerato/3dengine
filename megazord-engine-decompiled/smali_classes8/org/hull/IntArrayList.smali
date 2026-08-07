.class public Lorg/hull/IntArrayList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private array:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/hull/IntArrayList;->array:[I

    return-void
.end method

.method private expand()V
    .locals 4

    iget-object v0, p0, Lorg/hull/IntArrayList;->array:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/hull/IntArrayList;->array:[I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    iget v0, p0, Lorg/hull/IntArrayList;->size:I

    iget-object v1, p0, Lorg/hull/IntArrayList;->array:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/hull/IntArrayList;->expand()V

    :cond_0
    iget-object v0, p0, Lorg/hull/IntArrayList;->array:[I

    iget v1, p0, Lorg/hull/IntArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/hull/IntArrayList;->size:I

    aput p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/hull/IntArrayList;->size:I

    return-void
.end method

.method public get(I)I
    .locals 1

    iget v0, p0, Lorg/hull/IntArrayList;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/hull/IntArrayList;->array:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public remove(I)I
    .locals 4

    iget v0, p0, Lorg/hull/IntArrayList;->size:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lorg/hull/IntArrayList;->array:[I

    aget v2, v1, p1

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/hull/IntArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/hull/IntArrayList;->size:I

    return v2

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public set(II)V
    .locals 1

    iget v0, p0, Lorg/hull/IntArrayList;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/hull/IntArrayList;->array:[I

    aput p2, v0, p1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/hull/IntArrayList;->size:I

    return v0
.end method
