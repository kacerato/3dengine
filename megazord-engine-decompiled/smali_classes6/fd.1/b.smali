.class public Lfd/b;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lfd/b;->b:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lfd/b;->e:Z

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunkSize"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lfd/b;->e:Z

    .line 7
    iput p1, p0, Lfd/b;->b:I

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lfd/b;->c:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chunkSize",
            "alwaysFastClear"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 14
    iput p1, p0, Lfd/b;->b:I

    .line 15
    iput-boolean p2, p0, Lfd/b;->e:Z

    .line 16
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lfd/b;->c:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alwaysFastClear"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/16 v0, 0xa

    .line 10
    iput v0, p0, Lfd/b;->b:I

    .line 11
    iput-boolean p1, p0, Lfd/b;->e:Z

    .line 12
    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lfd/b;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lfd/b;->d:I

    add-int v2, v1, v0

    iput v2, p0, Lfd/b;->d:I

    iget-object v3, p0, Lfd/b;->c:[Ljava/lang/Object;

    array-length v4, v3

    if-lt v2, v4, :cond_1

    iget v2, p0, Lfd/b;->b:I

    if-lt v2, v0, :cond_0

    array-length v0, v3

    add-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    array-length v2, v3

    int-to-float v2, v2

    invoke-static {v0}, Lgd/b;->D(F)F

    move-result v0

    iget v4, p0, Lfd/b;->b:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lfd/b;->c:[Ljava/lang/Object;

    aput-object v2, v4, v1

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v3
.end method

.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    iget v0, p0, Lfd/b;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lfd/b;->c:[Ljava/lang/Object;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 2
    array-length v0, v2

    iget v3, p0, Lfd/b;->b:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    iget v2, p0, Lfd/b;->d:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    .line 4
    iput v2, p0, Lfd/b;->d:I

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lfd/b;->d:I

    add-int v2, v1, v0

    iput v2, p0, Lfd/b;->d:I

    iget-object v3, p0, Lfd/b;->c:[Ljava/lang/Object;

    array-length v4, v3

    if-lt v2, v4, :cond_1

    iget v2, p0, Lfd/b;->b:I

    if-lt v2, v0, :cond_0

    array-length v0, v3

    add-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    array-length v2, v3

    int-to-float v2, v2

    invoke-static {v0}, Lgd/b;->D(F)F

    move-result v0

    iget v4, p0, Lfd/b;->b:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lfd/b;->c:[Ljava/lang/Object;

    aput-object v0, v3, v1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    return v2
.end method

.method public b(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lfd/b;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lfd/b;->d:I

    iget-object v2, p0, Lfd/b;->c:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lfd/b;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lgd/b;->D(F)F

    move-result v0

    iget v1, p0, Lfd/b;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lfd/b;->c:[Ljava/lang/Object;

    aput-object v2, v4, v1

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lfd/b;->d:I

    return-void
.end method

.method public clear()V
    .locals 3

    iget-boolean v0, p0, Lfd/b;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfd/b;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lfd/b;->b:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lfd/b;->d:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lfd/b;->d:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lfd/b;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lfd/b;->d:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lfd/b;->c:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    const/4 p1, 0x0

    aput-object p1, v2, v1

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public e(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lfd/b;->d:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lfd/b;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    move v3, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lfd/b;->c:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public g()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lfd/b;->c:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v3, v3, v1

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_4

    array-length v1, v3

    sub-int/2addr v1, v2

    new-array v2, v1, [Ljava/lang/Object;

    move v3, v0

    :goto_1
    iget-object v4, p0, Lfd/b;->c:[Ljava/lang/Object;

    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput v1, p0, Lfd/b;->d:I

    iput-object v2, p0, Lfd/b;->c:[Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lfd/b;->b:I

    return v0
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lfd/b;->b:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lfd/b;->d:I

    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lfd/b;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lfd/b;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lfd/b;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    return-void
.end method

.method public k(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunkSize"
        }
    .end annotation

    iput p1, p0, Lfd/b;->b:I

    return-void
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 4
    :goto_0
    iget v1, p0, Lfd/b;->d:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 5
    iget-object v1, p0, Lfd/b;->c:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lfd/b;->c:[Ljava/lang/Object;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    :goto_1
    if-lez p1, :cond_2

    .line 7
    iget-object v2, p0, Lfd/b;->c:[Ljava/lang/Object;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 8
    :cond_2
    iget p1, p0, Lfd/b;->b:I

    if-lt v1, p1, :cond_3

    .line 9
    iget v1, p0, Lfd/b;->d:I

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 10
    invoke-static {v1}, Lgd/b;->D(F)F

    move-result p1

    float-to-int p1, p1

    .line 11
    iget-object v1, p0, Lfd/b;->c:[Ljava/lang/Object;

    iget v2, p0, Lfd/b;->b:I

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfd/b;->c:[Ljava/lang/Object;

    .line 12
    :cond_3
    iget p1, p0, Lfd/b;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lfd/b;->d:I

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfd/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lfd/b;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfd/b;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-object p2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lfd/b;->d:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfd/b;->c:[Ljava/lang/Object;

    return-object v0
.end method
