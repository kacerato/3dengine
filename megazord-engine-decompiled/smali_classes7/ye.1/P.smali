.class public Lye/P;
.super Loe/S;
.source "SourceFile"

# interfaces
.implements Lwe/N;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lye/P$b;,
        Lye/P$d;,
        Lye/P$c;,
        Lye/P$f;,
        Lye/P$e;
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
    invoke-direct {p0}, Loe/S;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loe/S;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Loe/S;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IFIS)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Loe/S;-><init>(IFIS)V

    return-void
.end method

.method public constructor <init>(Lwe/N;)V
    .locals 2

    .line 8
    invoke-interface {p1}, Lwe/N;->size()I

    move-result v0

    invoke-direct {p0, v0}, Loe/S;-><init>(I)V

    .line 9
    instance-of v0, p1, Lye/P;

    if-eqz v0, :cond_2

    .line 10
    move-object v0, p1

    check-cast v0, Lye/P;

    .line 11
    iget v1, v0, Loe/H;->d:F

    iput v1, p0, Loe/H;->d:F

    .line 12
    iget v1, v0, Loe/S;->r:I

    iput v1, p0, Loe/S;->r:I

    .line 13
    iget-short v0, v0, Loe/S;->s:S

    iput-short v0, p0, Loe/S;->s:S

    if-eqz v1, :cond_0

    .line 14
    iget-object v0, p0, Loe/S;->q:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 15
    :cond_0
    iget-short v0, p0, Loe/S;->s:S

    if-eqz v0, :cond_1

    .line 16
    iget-object v1, p0, Lye/P;->v:[S

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

    invoke-virtual {p0, v0}, Lye/P;->we(I)I

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lye/P;->Pc(Lwe/N;)V

    return-void
.end method

.method public constructor <init>([I[S)V
    .locals 4

    .line 5
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Loe/S;-><init>(I)V

    .line 6
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    aget v2, p1, v1

    aget-short v3, p2, v1

    invoke-virtual {p0, v2, v3}, Lye/P;->q7(IS)S

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic Fe(Lye/P;)I
    .locals 0

    iget p0, p0, Loe/S;->r:I

    return p0
.end method

.method public static synthetic Ge(Lye/P;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic He(Lye/P;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Ie(Lye/P;)S
    .locals 0

    iget-short p0, p0, Loe/S;->s:S

    return p0
.end method

.method public static synthetic Je(Lye/P;)S
    .locals 0

    iget-short p0, p0, Loe/S;->s:S

    return p0
.end method

.method public static synthetic Ke(Lye/P;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Le(Lye/P;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method


# virtual methods
.method public B0(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lye/P;->T7(IS)Z

    move-result p1

    return p1
.end method

.method public H9(Lze/T;)Z
    .locals 8

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/S;->q:[I

    iget-object v2, p0, Lye/P;->v:[S

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

    aget v4, v1, v6

    aget-short v7, v2, v6

    invoke-interface {p1, v4, v7}, Lze/T;->a(IS)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Lye/P;->ue(I)V
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

.method public Ja(IS)S
    .locals 1

    invoke-virtual {p0, p1}, Loe/S;->Ce(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lye/P;->v:[S

    neg-int p2, v0

    add-int/lit8 p2, p2, -0x1

    aget-short p1, p1, p2

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lye/P;->Me(ISI)S

    move-result p1

    return p1
.end method

.method public K(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/S;->contains(I)Z

    move-result p1

    return p1
.end method

.method public final Me(ISI)S
    .locals 2

    iget-short p1, p0, Loe/S;->s:S

    const/4 v0, 0x1

    if-gez p3, :cond_0

    neg-int p1, p3

    add-int/lit8 p3, p1, -0x1

    iget-object p1, p0, Lye/P;->v:[S

    aget-short p1, p1, p3

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lye/P;->v:[S

    aput-short p2, v1, p3

    if-eqz v0, :cond_1

    iget-boolean p2, p0, Loe/S;->t:Z

    invoke-virtual {p0, p2}, Loe/H;->re(Z)V

    :cond_1
    return p1
.end method

.method public Pc(Lwe/N;)V
    .locals 2

    invoke-interface {p1}, Lwe/N;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Loe/H;->pe(I)V

    invoke-interface {p1}, Lwe/N;->iterator()Lre/U;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lre/a;->g()V

    invoke-interface {p1}, Lre/U;->key()I

    move-result v0

    invoke-interface {p1}, Lre/U;->value()S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lye/P;->q7(IS)S

    goto :goto_0

    :cond_0
    return-void
.end method

.method public T7(IS)Z
    .locals 2

    invoke-virtual {p0, p1}, Loe/S;->Ae(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lye/P;->v:[S

    aget-short v1, v0, p1

    add-int/2addr v1, p2

    int-to-short p2, v1

    aput-short p2, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public Ta(ISS)S
    .locals 1

    invoke-virtual {p0, p1}, Loe/S;->Ce(I)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, v0

    iget-object p3, p0, Lye/P;->v:[S

    aget-short v0, p3, p1

    add-int/2addr v0, p2

    int-to-short p2, v0

    aput-short p2, p3, p1

    const/4 v0, 0x0

    move p3, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lye/P;->v:[S

    aput-short p3, p2, p1

    :goto_0
    iget-object p2, p0, Loe/c0;->l:[B

    aget-byte p1, p2, p1

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Loe/S;->t:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    :cond_1
    return p3
.end method

.method public X([I)[I
    .locals 6

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [I

    :cond_0
    iget-object v0, p0, Loe/S;->q:[I

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

    aget v5, v0, v4

    aput v5, p1, v3

    move v3, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public a4(Lze/T;)Z
    .locals 6

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/S;->q:[I

    iget-object v2, p0, Lye/P;->v:[S

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    aget-byte v3, v0, v4

    if-ne v3, v5, :cond_0

    aget v3, v1, v4

    aget-short v5, v2, v4

    invoke-interface {p1, v3, v5}, Lze/T;->a(IS)Z

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

.method public b0([S)[S
    .locals 6

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [S

    :cond_0
    iget-object v0, p0, Lye/P;->v:[S

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

.method public c0(Lze/S;)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/S;->Q0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 4

    invoke-super {p0}, Loe/H;->clear()V

    iget-object v0, p0, Loe/S;->q:[I

    array-length v1, v0

    iget v2, p0, Loe/S;->r:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lye/P;->v:[S

    array-length v1, v0

    iget-short v2, p0, Loe/S;->s:S

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([SIIS)V

    iget-object v0, p0, Loe/c0;->l:[B

    array-length v1, v0

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lwe/N;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lwe/N;

    invoke-interface {p1}, Lwe/N;->size()I

    move-result v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lye/P;->v:[S

    iget-object v2, p0, Loe/c0;->l:[B

    invoke-virtual {p0}, Loe/S;->i()S

    move-result v3

    invoke-interface {p1}, Lwe/N;->i()S

    move-result v4

    array-length v5, v0

    :goto_0
    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x1

    if-lez v5, :cond_3

    aget-byte v5, v2, v6

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Loe/S;->q:[I

    aget v5, v5, v6

    invoke-interface {p1, v5}, Lwe/N;->get(I)S

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

.method public get(I)S
    .locals 1

    invoke-virtual {p0, p1}, Loe/S;->Ae(I)I

    move-result p1

    if-gez p1, :cond_0

    iget-short p1, p0, Loe/S;->s:S

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lye/P;->v:[S

    aget-short p1, v0, p1

    :goto_0
    return p1
.end method

.method public h0(S)Z
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/P;->v:[S

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
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/P;->v:[S

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v0, v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Loe/S;->q:[I

    aget v1, v1, v3

    invoke-static {v1}, Lne/b;->d(I)I

    move-result v1

    iget-object v4, p0, Lye/P;->v:[S

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

.method public iterator()Lre/U;
    .locals 1

    new-instance v0, Lye/P$b;

    invoke-direct {v0, p0, p0}, Lye/P$b;-><init>(Lye/P;Lye/P;)V

    return-object v0
.end method

.method public j()[I
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Loe/S;->q:[I

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

    aget v6, v1, v5

    aput v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public k()Lke/i;
    .locals 1

    new-instance v0, Lye/P$f;

    invoke-direct {v0, p0}, Lye/P$f;-><init>(Lye/P;)V

    return-object v0
.end method

.method public keySet()LCe/e;
    .locals 1

    new-instance v0, Lye/P$e;

    invoke-direct {v0, p0}, Lye/P$e;-><init>(Lye/P;)V

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Integer;",
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

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v1, v0}, Lye/P;->q7(IS)S

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Lme/h;)V
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/P;->v:[S

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

.method public q7(IS)S
    .locals 1

    invoke-virtual {p0, p1}, Loe/S;->Ce(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lye/P;->Me(ISI)S

    move-result p1

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

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-super {p0, p1}, Loe/S;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lye/P;->we(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v2

    invoke-virtual {p0, v0, v2}, Lye/P;->q7(IS)S

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(I)S
    .locals 1

    iget-short v0, p0, Loe/S;->s:S

    invoke-virtual {p0, p1}, Loe/S;->Ae(I)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lye/P;->v:[S

    aget-short v0, v0, p1

    invoke-virtual {p0, p1}, Lye/P;->ue(I)V

    :cond_0
    return v0
.end method

.method public te(I)V
    .locals 6

    iget-object v0, p0, Loe/S;->q:[I

    array-length v1, v0

    iget-object v2, p0, Lye/P;->v:[S

    iget-object v3, p0, Loe/c0;->l:[B

    new-array v4, p1, [I

    iput-object v4, p0, Loe/S;->q:[I

    new-array v4, p1, [S

    iput-object v4, p0, Lye/P;->v:[S

    new-array p1, p1, [B

    iput-object p1, p0, Loe/c0;->l:[B

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v3, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    aget v1, v0, p1

    invoke-virtual {p0, v1}, Loe/S;->Ce(I)I

    move-result v1

    iget-object v4, p0, Lye/P;->v:[S

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

    new-instance v1, Lye/P$a;

    invoke-direct {v1, p0, v0}, Lye/P$a;-><init>(Lye/P;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lye/P;->a4(Lze/T;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ue(I)V
    .locals 2

    iget-object v0, p0, Lye/P;->v:[S

    iget-short v1, p0, Loe/S;->s:S

    aput-short v1, v0, p1

    invoke-super {p0, p1}, Loe/S;->ue(I)V

    return-void
.end method

.method public values()[S
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [S

    iget-object v1, p0, Lye/P;->v:[S

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

    invoke-super {p0, p1}, Loe/S;->we(I)I

    move-result p1

    new-array v0, p1, [S

    iput-object v0, p0, Lye/P;->v:[S

    return p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-super {p0, p1}, Loe/S;->writeExternal(Ljava/io/ObjectOutput;)V

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

    iget-object v0, p0, Loe/S;->q:[I

    aget v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lye/P;->v:[S

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

    iget-object v1, p0, Lye/P;->v:[S

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
