.class public LOc/i;
.super Lbd/m;
.source "SourceFile"


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    invoke-direct {p0}, Lbd/m;-><init>()V

    if-lez p1, :cond_0

    invoke-static {p1}, LNc/a;->h(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    move-result-object p1

    iput-object p1, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOc/i;->U()V

    :goto_0
    return-void
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->O(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public B(I)C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->P(I)C

    move-result p1

    return p1
.end method

.method public C()[C
    .locals 2

    invoke-virtual {p0}, LOc/i;->G()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->B()[C

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get bytes on a empty buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LOc/i;->N(IZ)V

    return-void
.end method

.method public E(LOc/i;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    iget-object p1, p1, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->S(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)I

    move-result p1

    return p1
.end method

.method public F(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->S(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)I

    move-result p1

    return p1
.end method

.method public G()Z
    .locals 1

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()Z
    .locals 1

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    invoke-virtual {p0}, LOc/i;->G()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->T(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t set position on a empty string"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J(C)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->U(C)V

    return-void
.end method

.method public K(LOc/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    iget-object p1, p1, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->V(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    return-void
.end method

.method public L([C)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->W([C)V

    return-void
.end method

.method public M(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCapacity"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LOc/i;->N(IZ)V

    return-void
.end method

.method public N(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newCapacity",
            "copyData"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LOc/i;->O(IZZ)V

    return-void
.end method

.method public O(IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newCapacity",
            "copyData",
            "destroyOld"
        }
    .end annotation

    invoke-virtual {p0}, LOc/i;->G()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->h()I

    move-result v0

    if-eq p1, v0, :cond_5

    :cond_0
    if-lez p1, :cond_4

    invoke-static {p1}, LNc/a;->h(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, LOc/i;->H()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->h()I

    move-result p2

    const/4 v1, 0x0

    if-le p1, p2, :cond_1

    iget-object p1, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->a0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->h()I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p2, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, v1, p2, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->b0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, LOc/i;->H()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget-object p1, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    :cond_3
    iput-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, LOc/i;->U()V

    :cond_5
    :goto_1
    return-void
.end method

.method public P(IC)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "value"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->Z(IC)V

    return-void
.end method

.method public Q(ILOc/i;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other",
            "start",
            "count"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    add-int v1, p1, p4

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iput-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :cond_0
    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    iget-object p2, p2, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->b0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    return-void
.end method

.method public R(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other",
            "start",
            "count"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    add-int v1, p1, p4

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iput-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :cond_0
    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->b0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    return-void
.end method

.method public S(I[C)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->c0(I[C)V

    return-void
.end method

.method public T(I[CII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other",
            "start",
            "count"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    add-int v1, p1, p4

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iput-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :cond_0
    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->d0(I[CII)V

    return-void
.end method

.method public U()V
    .locals 1

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    return-void
.end method

.method public V()I
    .locals 1

    invoke-virtual {p0}, LOc/i;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->h()I

    move-result v0

    return v0
.end method

.method public W(LOc/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p1, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g0(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public X(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g0(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public Y(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startIdx"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->b0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    iput-object v1, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    return-void
.end method

.method public Z(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIdx",
            "endIndex"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    sub-int/2addr p2, p1

    invoke-direct {v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->b0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    iput-object v1, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    return-void
.end method

.method public h()I
    .locals 1

    invoke-virtual {p0}, LOc/i;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->h()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lbd/m;->hashCode()I

    move-result v0

    return v0
.end method

.method public r(LOc/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v3

    invoke-virtual {p1}, LOc/i;->h()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->a0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->h()I

    move-result v1

    iget-object p1, p1, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->a0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iput-object v2, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p1}, LOc/i;->h()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iget-object p1, p1, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->a0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iput-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :goto_0
    return-void
.end method

.method public s([C)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v3

    array-length v4, p1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->a0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->h()I

    move-result v1

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->c0(I[C)V

    iput-object v2, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    array-length v2, p1

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->c0(I[C)V

    iput-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :goto_0
    return-void
.end method

.method public u(LOc/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LOc/i;->G()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v3

    invoke-virtual {p1}, LOc/i;->h()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iget-object v3, p1, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->a0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    invoke-virtual {p1}, LOc/i;->h()I

    move-result p1

    invoke-virtual {v2, p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->a0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iput-object v2, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p1}, LOc/i;->h()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    iget-object p1, p1, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->a0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iput-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public v([C)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v3

    array-length v4, p1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->c0(I[C)V

    array-length p1, p1

    invoke-virtual {v2, p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->a0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iput-object v2, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->destroyImmediate()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    array-length v2, p1

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->c0(I[C)V

    iput-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public w(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-virtual {p0}, LOc/i;->h()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, LOc/i;->N(IZ)V

    return-void
.end method

.method public x(LOc/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p1, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->N(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public y(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->N(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public z(LOc/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCharBuffer"
        }
    .end annotation

    iget-object v0, p0, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p1, LOc/i;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->O(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
