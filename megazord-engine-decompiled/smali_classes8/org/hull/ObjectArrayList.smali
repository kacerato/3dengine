.class public final Lorg/hull/ObjectArrayList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0}, Lorg/hull/ObjectArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    return-void
.end method

.method private expand()V
    .locals 4

    iget-object v0, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 4
    iget v0, p0, Lorg/hull/ObjectArrayList;->size:I

    iget-object v1, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-direct {p0}, Lorg/hull/ObjectArrayList;->expand()V

    .line 6
    :cond_0
    iget v0, p0, Lorg/hull/ObjectArrayList;->size:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    .line 7
    iget-object v1, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 9
    iget p1, p0, Lorg/hull/ObjectArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/hull/ObjectArrayList;->size:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/hull/ObjectArrayList;->size:I

    iget-object v1, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/hull/ObjectArrayList;->expand()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/hull/ObjectArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/hull/ObjectArrayList;->size:I

    aput-object p1, v0, v1

    const/4 p1, 0x1

    return p1
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/hull/ObjectArrayList;->size:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget v0, p0, Lorg/hull/ObjectArrayList;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getQuick(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lorg/hull/ObjectArrayList;->size:I

    iget-object v1, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-nez p1, :cond_0

    aget-object v3, v1, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/hull/ObjectArrayList;->size:I

    const/16 v0, 0x10

    :goto_0
    iget v1, p0, Lorg/hull/ObjectArrayList;->size:I

    if-ge v0, v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/hull/ObjectArrayList;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/hull/ObjectArrayList;->size:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    aget-object v2, v1, p1

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    iget v0, p0, Lorg/hull/ObjectArrayList;->size:I

    add-int/lit8 v1, v0, -0x1

    const/4 v3, 0x0

    aput-object v3, p1, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/hull/ObjectArrayList;->size:I

    return-object v2

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public removeQuick(I)V
    .locals 3

    iget-object v0, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/hull/ObjectArrayList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    iget v0, p0, Lorg/hull/ObjectArrayList;->size:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/hull/ObjectArrayList;->size:I

    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    iget v0, p0, Lorg/hull/ObjectArrayList;->size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public setQuick(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/hull/ObjectArrayList;->size:I

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/hull/ObjectArrayList;->size:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/hull/ObjectArrayList;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/hull/ObjectArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
