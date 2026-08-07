.class public Lye/Y;
.super Loe/a0;
.source "SourceFile"

# interfaces
.implements Lwe/W;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lye/Y$c;,
        Lye/Y$e;,
        Lye/Y$d;,
        Lye/Y$f;,
        Lye/Y$b;
    }
.end annotation


# static fields
.field public static final w:J = 0x1L


# instance fields
.field public transient v:[S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loe/a0;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loe/a0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Loe/a0;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IFJS)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Loe/a0;-><init>(IFJS)V

    return-void
.end method

.method public constructor <init>(Lwe/W;)V
    .locals 5

    .line 8
    invoke-interface {p1}, Lwe/W;->size()I

    move-result v0

    invoke-direct {p0, v0}, Loe/a0;-><init>(I)V

    .line 9
    instance-of v0, p1, Lye/Y;

    if-eqz v0, :cond_2

    .line 10
    move-object v0, p1

    check-cast v0, Lye/Y;

    .line 11
    iget v1, v0, Loe/H;->d:F

    iput v1, p0, Loe/H;->d:F

    .line 12
    iget-wide v1, v0, Loe/a0;->r:J

    iput-wide v1, p0, Loe/a0;->r:J

    .line 13
    iget-short v0, v0, Loe/a0;->s:S

    iput-short v0, p0, Loe/a0;->s:S

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Loe/a0;->q:[J

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 15
    :cond_0
    iget-short v0, p0, Loe/a0;->s:S

    if-eqz v0, :cond_1

    .line 16
    iget-object v1, p0, Lye/Y;->v:[S

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([SS)V

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    .line 17
    iget v1, p0, Loe/H;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lye/Y;->we(I)I

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lye/Y;->Ea(Lwe/W;)V

    return-void
.end method

.method public constructor <init>([J[S)V
    .locals 5

    .line 5
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Loe/a0;-><init>(I)V

    .line 6
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    aget-wide v2, p1, v1

    aget-short v4, p2, v1

    invoke-virtual {p0, v2, v3, v4}, Lye/Y;->qa(JS)S

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic Fe(Lye/Y;)J
    .locals 2

    iget-wide v0, p0, Loe/a0;->r:J

    return-wide v0
.end method

.method public static synthetic Ge(Lye/Y;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic He(Lye/Y;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Ie(Lye/Y;)S
    .locals 0

    iget-short p0, p0, Loe/a0;->s:S

    return p0
.end method

.method public static synthetic Je(Lye/Y;)S
    .locals 0

    iget-short p0, p0, Loe/a0;->s:S

    return p0
.end method

.method public static synthetic Ke(Lye/Y;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Le(Lye/Y;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method


# virtual methods
.method public D0(J)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lye/Y;->j7(JS)Z

    move-result p1

    return p1
.end method

.method public Ea(Lwe/W;)V
    .locals 3

    invoke-interface {p1}, Lwe/W;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Loe/H;->pe(I)V

    invoke-interface {p1}, Lwe/W;->iterator()Lre/e0;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lre/a;->g()V

    invoke-interface {p1}, Lre/e0;->key()J

    move-result-wide v0

    invoke-interface {p1}, Lre/e0;->value()S

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lye/Y;->qa(JS)S

    goto :goto_0

    :cond_0
    return-void
.end method

.method public F(Lze/b0;)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/a0;->a1(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public J(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Loe/a0;->W0(J)Z

    move-result p1

    return p1
.end method

.method public Kb(JSS)S
    .locals 0

    invoke-virtual {p0, p1, p2}, Loe/a0;->Ce(J)I

    move-result p1

    const/4 p2, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lye/Y;->v:[S

    aget-short p4, p2, p1

    add-int/2addr p4, p3

    int-to-short p4, p4

    aput-short p4, p2, p1

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lye/Y;->v:[S

    aput-short p4, p3, p1

    :goto_0
    iget-object p3, p0, Loe/c0;->l:[B

    aget-byte p1, p3, p1

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Loe/a0;->t:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    :cond_1
    return p4
.end method

.method public final Me(JSI)S
    .locals 1

    iget-short p1, p0, Loe/a0;->s:S

    const/4 p2, 0x1

    if-gez p4, :cond_0

    neg-int p1, p4

    add-int/lit8 p4, p1, -0x1

    iget-object p1, p0, Lye/Y;->v:[S

    aget-short p1, p1, p4

    const/4 p2, 0x0

    :cond_0
    iget-object v0, p0, Lye/Y;->v:[S

    aput-short p3, v0, p4

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Loe/a0;->t:Z

    invoke-virtual {p0, p2}, Loe/H;->re(Z)V

    :cond_1
    return p1
.end method

.method public T9(JS)S
    .locals 1

    invoke-virtual {p0, p1, p2}, Loe/a0;->Ce(J)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lye/Y;->v:[S

    neg-int p2, v0

    add-int/lit8 p2, p2, -0x1

    aget-short p1, p1, p2

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lye/Y;->Me(JSI)S

    move-result p1

    return p1
.end method

.method public Z([J)[J
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [J

    :cond_0
    iget-object v0, p0, Loe/a0;->q:[J

    iget-object v1, p0, Loe/c0;->l:[B

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_2

    aget-byte v2, v1, v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    add-int/lit8 v2, v3, 0x1

    aget-wide v5, v0, v4

    aput-wide v5, p1, v3

    move v3, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public b0([S)[S
    .locals 6

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [S

    :cond_0
    iget-object v0, p0, Lye/Y;->v:[S

    iget-object v1, p0, Loe/c0;->l:[B

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_2

    aget-byte v2, v1, v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    add-int/lit8 v2, v3, 0x1

    aget-short v5, v0, v4

    aput-short v5, p1, v3

    move v3, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public ca(Lze/c0;)Z
    .locals 7

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/a0;->q:[J

    iget-object v2, p0, Lye/Y;->v:[S

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    aget-byte v3, v0, v4

    if-ne v3, v5, :cond_0

    aget-wide v5, v1, v4

    aget-short v3, v2, v4

    invoke-interface {p1, v5, v6, v3}, Lze/c0;->a(JS)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    return v5
.end method

.method public clear()V
    .locals 5

    invoke-super {p0}, Loe/H;->clear()V

    iget-object v0, p0, Loe/a0;->q:[J

    array-length v1, v0

    iget-wide v2, p0, Loe/a0;->r:J

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    iget-object v0, p0, Lye/Y;->v:[S

    array-length v1, v0

    iget-short v2, p0, Loe/a0;->s:S

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([SIIS)V

    iget-object v0, p0, Loe/c0;->l:[B

    array-length v1, v0

    invoke-static {v0, v4, v1, v4}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public e(J)S
    .locals 1

    iget-short v0, p0, Loe/a0;->s:S

    invoke-virtual {p0, p1, p2}, Loe/a0;->Ae(J)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Lye/Y;->v:[S

    aget-short v0, p2, p1

    invoke-virtual {p0, p1}, Lye/Y;->ue(I)V

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    instance-of v0, p1, Lwe/W;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lwe/W;

    invoke-interface {p1}, Lwe/W;->size()I

    move-result v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lye/Y;->v:[S

    iget-object v2, p0, Loe/c0;->l:[B

    invoke-virtual {p0}, Loe/a0;->i()S

    move-result v3

    invoke-interface {p1}, Lwe/W;->i()S

    move-result v4

    array-length v5, v0

    :goto_0
    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x1

    if-lez v5, :cond_3

    aget-byte v5, v2, v6

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Loe/a0;->q:[J

    aget-wide v7, v5, v6

    invoke-interface {p1, v7, v8}, Lwe/W;->s(J)S

    move-result v5

    aget-short v7, v0, v6

    if-eq v7, v5, :cond_2

    if-eq v7, v3, :cond_2

    if-eq v5, v4, :cond_2

    return v1

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    return v7
.end method

.method public h0(S)Z
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/Y;->v:[S

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-short v2, v1, v3

    if-ne p1, v2, :cond_0

    return v4

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/Y;->v:[S

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v0, v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Loe/a0;->q:[J

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lne/b;->e(J)I

    move-result v1

    iget-object v4, p0, Lye/Y;->v:[S

    aget-short v4, v4, v3

    invoke-static {v4}, Lne/b;->d(I)I

    move-result v4

    xor-int/2addr v1, v4

    add-int/2addr v2, v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public i6(Lze/c0;)Z
    .locals 9

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/a0;->q:[J

    iget-object v2, p0, Lye/Y;->v:[S

    invoke-virtual {p0}, Loe/H;->xe()V

    const/4 v3, 0x1

    :try_start_0
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-lez v4, :cond_1

    aget-byte v4, v0, v6

    if-ne v4, v3, :cond_0

    aget-wide v7, v1, v6

    aget-short v4, v2, v6

    invoke-interface {p1, v7, v8, v4}, Lze/c0;->a(JS)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Lye/Y;->ue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v3

    :cond_0
    move v4, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Loe/H;->se(Z)V

    return v5

    :goto_1
    invoke-virtual {p0, v3}, Loe/H;->se(Z)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Loe/H;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lre/e0;
    .locals 1

    new-instance v0, Lye/Y$c;

    invoke-direct {v0, p0, p0}, Lye/Y$c;-><init>(Lye/Y;Lye/Y;)V

    return-object v0
.end method

.method public j()[J
    .locals 8

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [J

    iget-object v1, p0, Loe/a0;->q:[J

    iget-object v2, p0, Loe/c0;->l:[B

    array-length v3, v1

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

.method public j7(JS)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Loe/a0;->Ae(J)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p2, p0, Lye/Y;->v:[S

    aget-short v0, p2, p1

    add-int/2addr v0, p3

    int-to-short p3, v0

    aput-short p3, p2, p1

    const/4 p1, 0x1

    return p1
.end method

.method public k()Lke/i;
    .locals 1

    new-instance v0, Lye/Y$f;

    invoke-direct {v0, p0}, Lye/Y$f;-><init>(Lye/Y;)V

    return-object v0
.end method

.method public keySet()LCe/f;
    .locals 1

    new-instance v0, Lye/Y$b;

    invoke-direct {v0, p0}, Lye/Y$b;-><init>(Lye/Y;)V

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Loe/H;->pe(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lye/Y;->qa(JS)S

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Lme/h;)V
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/Y;->v:[S

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-short v2, v1, v3

    invoke-interface {p1, v2}, Lme/h;->a(S)S

    move-result v2

    aput-short v2, v1, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public qa(JS)S
    .locals 1

    invoke-virtual {p0, p1, p2}, Loe/a0;->Ce(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lye/Y;->Me(JSI)S

    move-result p1

    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-super {p0, p1}, Loe/a0;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lye/Y;->we(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Lye/Y;->qa(JS)S

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(J)S
    .locals 0

    invoke-virtual {p0, p1, p2}, Loe/a0;->Ae(J)I

    move-result p1

    if-gez p1, :cond_0

    iget-short p1, p0, Loe/a0;->s:S

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lye/Y;->v:[S

    aget-short p1, p2, p1

    :goto_0
    return p1
.end method

.method public te(I)V
    .locals 6

    iget-object v0, p0, Loe/a0;->q:[J

    array-length v1, v0

    iget-object v2, p0, Lye/Y;->v:[S

    iget-object v3, p0, Loe/c0;->l:[B

    new-array v4, p1, [J

    iput-object v4, p0, Loe/a0;->q:[J

    new-array v4, p1, [S

    iput-object v4, p0, Lye/Y;->v:[S

    new-array p1, p1, [B

    iput-object p1, p0, Loe/c0;->l:[B

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v3, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    aget-wide v4, v0, p1

    invoke-virtual {p0, v4, v5}, Loe/a0;->Ce(J)I

    move-result v1

    iget-object v4, p0, Lye/Y;->v:[S

    aget-short v5, v2, p1

    aput-short v5, v4, v1

    :cond_0
    move v1, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lye/Y$a;

    invoke-direct {v1, p0, v0}, Lye/Y$a;-><init>(Lye/Y;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lye/Y;->ca(Lze/c0;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ue(I)V
    .locals 2

    iget-object v0, p0, Lye/Y;->v:[S

    iget-short v1, p0, Loe/a0;->s:S

    aput-short v1, v0, p1

    invoke-super {p0, p1}, Loe/a0;->ue(I)V

    return-void
.end method

.method public values()[S
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [S

    iget-object v1, p0, Lye/Y;->v:[S

    iget-object v2, p0, Loe/c0;->l:[B

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1

    aget-byte v3, v2, v5

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    add-int/lit8 v3, v4, 0x1

    aget-short v6, v1, v5

    aput-short v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public we(I)I
    .locals 1

    invoke-super {p0, p1}, Loe/a0;->we(I)I

    move-result p1

    new-array v0, p1, [S

    iput-object v0, p0, Lye/Y;->v:[S

    return p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-super {p0, p1}, Loe/a0;->writeExternal(Ljava/io/ObjectOutput;)V

    iget v0, p0, Loe/H;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Loe/c0;->l:[B

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Loe/c0;->l:[B

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Loe/a0;->q:[J

    aget-wide v2, v0, v1

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v0, p0, Lye/Y;->v:[S

    aget-short v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public z(Lze/t0;)Z
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/Y;->v:[S

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_0

    aget-short v2, v1, v3

    invoke-interface {p1, v2}, Lze/t0;->a(S)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return v4
.end method
