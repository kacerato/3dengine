.class public LDe/i;
.super Loe/X;
.source "SourceFile"

# interfaces
.implements LCe/f;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDe/i$a;
    }
.end annotation


# static fields
.field public static final u:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loe/X;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loe/X;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Loe/X;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IFJ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Loe/X;-><init>(IFJ)V

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Loe/X;->q:[J

    invoke-static {p1, p3, p4}, Ljava/util/Arrays;->fill([JJ)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, LDe/i;-><init>(I)V

    .line 7
    invoke-virtual {p0, p1}, LDe/i;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lke/h;)V
    .locals 4

    .line 8
    invoke-interface {p1}, Lke/h;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, LDe/i;-><init>(I)V

    .line 9
    instance-of v0, p1, LDe/i;

    if-eqz v0, :cond_1

    .line 10
    move-object v0, p1

    check-cast v0, LDe/i;

    .line 11
    iget v1, v0, Loe/H;->d:F

    iput v1, p0, Loe/H;->d:F

    .line 12
    iget-wide v0, v0, Loe/X;->r:J

    iput-wide v0, p0, Loe/X;->r:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 13
    iget-object v2, p0, Loe/X;->q:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    .line 14
    iget v1, p0, Loe/H;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Loe/X;->we(I)I

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, LDe/i;->t1(Lke/h;)Z

    return-void
.end method

.method public constructor <init>([J)V
    .locals 2

    .line 16
    array-length v0, p1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, LDe/i;-><init>(I)V

    .line 17
    invoke-virtual {p0, p1}, LDe/i;->b2([J)Z

    return-void
.end method


# virtual methods
.method public J0(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Loe/X;->Be(J)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p0, Loe/X;->s:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public L0([J)[J
    .locals 7

    iget-object v0, p0, Loe/X;->q:[J

    iget-object v1, p0, Loe/c0;->l:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v1, v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    add-int/lit8 v2, v3, 0x1

    aget-wide v5, v0, v4

    aput-wide v5, p1, v3

    move v3, v2

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    array-length v0, p1

    iget v1, p0, Loe/H;->b:I

    if-le v0, v1, :cond_2

    iget-wide v2, p0, Loe/X;->r:J

    aput-wide v2, p1, v1

    :cond_2
    return-object p1
.end method

.method public M1([J)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, LDe/i;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, LDe/i;->J0(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b2([J)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, LDe/i;->J0(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public clear()V
    .locals 6

    invoke-super {p0}, Loe/H;->clear()V

    iget-object v0, p0, Loe/X;->q:[J

    iget-object v1, p0, Loe/c0;->l:[B

    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    iget-wide v4, p0, Loe/X;->r:J

    aput-wide v4, v0, v3

    const/4 v2, 0x0

    aput-byte v2, v1, v3

    move v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Loe/X;->W0(J)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public e(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Loe/X;->ze(J)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Loe/X;->ue(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, LCe/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LCe/f;

    invoke-interface {p1}, LCe/f;->size()I

    move-result v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Loe/c0;->l:[B

    array-length v0, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Loe/c0;->l:[B

    aget-byte v0, v0, v2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Loe/X;->q:[J

    aget-wide v3, v0, v2

    invoke-interface {p1, v3, v4}, LCe/f;->W0(J)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    return v3
.end method

.method public g2(Lke/h;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, LDe/i;->iterator()Lre/b0;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lre/b0;->next()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lke/h;->W0(J)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lre/V;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Loe/c0;->l:[B

    aget-byte v0, v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Loe/X;->q:[J

    aget-wide v3, v0, v2

    invoke-static {v3, v4}, Lne/b;->e(J)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public iterator()Lre/b0;
    .locals 1

    new-instance v0, LDe/i$a;

    invoke-direct {v0, p0, p0}, LDe/i$a;-><init>(LDe/i;Loe/X;)V

    return-object v0
.end method

.method public j2(Lke/h;)Z
    .locals 2

    invoke-interface {p1}, Lke/h;->iterator()Lre/b0;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lre/b0;->next()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Loe/X;->W0(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public l2([J)Z
    .locals 9

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    iget-object v0, p0, Loe/X;->q:[J

    iget-object v1, p0, Loe/c0;->l:[B

    const/4 v2, 0x1

    iput-boolean v2, p0, Loe/H;->h:Z

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-lez v3, :cond_1

    aget-byte v3, v1, v6

    if-ne v3, v2, :cond_0

    aget-wide v7, v0, v6

    invoke-static {p1, v7, v8}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {p0, v6}, Loe/X;->ue(I)V

    move v5, v2

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Loe/H;->h:Z

    return v5
.end method

.method public m2([J)Z
    .locals 4

    array-length v0, p1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Loe/X;->W0(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-super {p0, p1}, Loe/H;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    iput v0, p0, Loe/H;->d:F

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Loe/X;->r:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Loe/X;->q:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    :cond_0
    invoke-virtual {p0, v1}, Loe/X;->we(I)I

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, LDe/i;->J0(J)Z

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, LDe/i;->e(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LDe/i;->iterator()Lre/b0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/b0;->next()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public t1(Lke/h;)Z
    .locals 3

    invoke-interface {p1}, Lke/h;->iterator()Lre/b0;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lre/b0;->next()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, LDe/i;->J0(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public te(I)V
    .locals 5

    iget-object v0, p0, Loe/X;->q:[J

    array-length v1, v0

    iget-object v2, p0, Loe/c0;->l:[B

    new-array v3, p1, [J

    iput-object v3, p0, Loe/X;->q:[J

    new-array p1, p1, [B

    iput-object p1, p0, Loe/c0;->l:[B

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v2, p1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-wide v3, v0, p1

    invoke-virtual {p0, v3, v4}, Loe/X;->Be(J)I

    :cond_0
    move v1, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toArray()[J
    .locals 8

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [J

    iget-object v1, p0, Loe/X;->q:[J

    iget-object v2, p0, Loe/c0;->l:[B

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1

    aget-byte v3, v2, v5

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    add-int/lit8 v3, v4, 0x1

    aget-wide v6, v1, v5

    aput-wide v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Loe/H;->b:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Loe/c0;->l:[B

    array-length v1, v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_2

    iget-object v1, p0, Loe/c0;->l:[B

    aget-byte v1, v1, v4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Loe/X;->q:[J

    aget-wide v5, v1, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v3, 0x1

    iget v5, p0, Loe/H;->b:I

    if-ge v3, v5, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v3, v1

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v1(Lke/h;)Z
    .locals 3

    invoke-interface {p1}, Lke/h;->iterator()Lre/b0;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lre/b0;->next()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, LDe/i;->e(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-super {p0, p1}, Loe/H;->writeExternal(Ljava/io/ObjectOutput;)V

    iget v1, p0, Loe/H;->b:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    iget v1, p0, Loe/H;->d:F

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeFloat(F)V

    iget-wide v1, p0, Loe/X;->r:J

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v1, p0, Loe/c0;->l:[B

    array-length v1, v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    iget-object v1, p0, Loe/c0;->l:[B

    aget-byte v1, v1, v2

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Loe/X;->q:[J

    aget-wide v3, v1, v2

    invoke-interface {p1, v3, v4}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method
