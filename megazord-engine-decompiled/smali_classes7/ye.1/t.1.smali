.class public Lye/t;
.super Loe/t;
.source "SourceFile"

# interfaces
.implements Lwe/s;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lye/t$b;,
        Lye/t$d;,
        Lye/t$c;,
        Lye/t$f;,
        Lye/t$e;
    }
.end annotation


# static fields
.field public static final w:J = 0x1L


# instance fields
.field public transient v:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loe/t;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loe/t;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Loe/t;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IFDD)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p6}, Loe/t;-><init>(IFDD)V

    return-void
.end method

.method public constructor <init>(Lwe/s;)V
    .locals 5

    .line 8
    invoke-interface {p1}, Lwe/s;->size()I

    move-result v0

    invoke-direct {p0, v0}, Loe/t;-><init>(I)V

    .line 9
    instance-of v0, p1, Lye/t;

    if-eqz v0, :cond_2

    .line 10
    move-object v0, p1

    check-cast v0, Lye/t;

    .line 11
    iget v1, v0, Loe/H;->d:F

    iput v1, p0, Loe/H;->d:F

    .line 12
    iget-wide v1, v0, Loe/t;->r:D

    iput-wide v1, p0, Loe/t;->r:D

    .line 13
    iget-wide v3, v0, Loe/t;->s:D

    iput-wide v3, p0, Loe/t;->s:D

    const-wide/16 v3, 0x0

    cmpl-double v0, v1, v3

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Loe/t;->q:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 15
    :cond_0
    iget-wide v0, p0, Loe/t;->s:D

    cmpl-double v2, v0, v3

    if-eqz v2, :cond_1

    .line 16
    iget-object v2, p0, Lye/t;->v:[D

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    .line 17
    iget v1, p0, Loe/H;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lye/t;->we(I)I

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lye/t;->g7(Lwe/s;)V

    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 6

    .line 5
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Loe/t;-><init>(I)V

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

    aget-wide v4, p2, v1

    invoke-virtual {p0, v2, v3, v4, v5}, Lye/t;->S2(DD)D

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic Fe(Lye/t;)D
    .locals 2

    iget-wide v0, p0, Loe/t;->r:D

    return-wide v0
.end method

.method public static synthetic Ge(Lye/t;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic He(Lye/t;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Ie(Lye/t;)D
    .locals 2

    iget-wide v0, p0, Loe/t;->s:D

    return-wide v0
.end method

.method public static synthetic Je(Lye/t;)D
    .locals 2

    iget-wide v0, p0, Loe/t;->s:D

    return-wide v0
.end method

.method public static synthetic Ke(Lye/t;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Le(Lye/t;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method


# virtual methods
.method public B(Lze/z;)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/t;->c1(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public C(Lze/z;)Z
    .locals 6

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/t;->v:[D

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_0

    aget-wide v4, v1, v3

    invoke-interface {p1, v4, v5}, Lze/z;->a(D)Z

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

.method public C5(DD)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Loe/t;->Ae(D)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p2, p0, Lye/t;->v:[D

    aget-wide v0, p2, p1

    add-double/2addr v0, p3

    aput-wide v0, p2, p1

    const/4 p1, 0x1

    return p1
.end method

.method public F4(Lze/u;)Z
    .locals 9

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/t;->q:[D

    iget-object v2, p0, Lye/t;->v:[D

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    aget-byte v3, v0, v4

    if-ne v3, v5, :cond_0

    aget-wide v5, v1, v4

    aget-wide v7, v2, v4

    invoke-interface {p1, v5, v6, v7, v8}, Lze/u;->a(DD)Z

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

.method public G(D)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Loe/t;->X0(D)Z

    move-result p1

    return p1
.end method

.method public H2(DD)D
    .locals 6

    invoke-virtual {p0, p1, p2}, Loe/t;->Ce(D)I

    move-result v5

    if-gez v5, :cond_0

    iget-object p1, p0, Lye/t;->v:[D

    neg-int p2, v5

    add-int/lit8 p2, p2, -0x1

    aget-wide p2, p1, p2

    return-wide p2

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lye/t;->Me(DDI)D

    move-result-wide p1

    return-wide p1
.end method

.method public final Me(DDI)D
    .locals 4

    iget-wide p1, p0, Loe/t;->s:D

    const/4 v0, 0x1

    if-gez p5, :cond_0

    neg-int p1, p5

    add-int/lit8 p5, p1, -0x1

    iget-object p1, p0, Lye/t;->v:[D

    aget-wide v0, p1, p5

    const/4 p1, 0x0

    move-wide v2, v0

    move v0, p1

    move-wide p1, v2

    :cond_0
    iget-object v1, p0, Lye/t;->v:[D

    aput-wide p3, v1, p5

    if-eqz v0, :cond_1

    iget-boolean p3, p0, Loe/t;->t:Z

    invoke-virtual {p0, p3}, Loe/H;->re(Z)V

    :cond_1
    return-wide p1
.end method

.method public O([D)[D
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [D

    :cond_0
    iget-object v0, p0, Loe/t;->q:[D

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

.method public Ra(DDD)D
    .locals 0

    invoke-virtual {p0, p1, p2}, Loe/t;->Ce(D)I

    move-result p1

    const/4 p2, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lye/t;->v:[D

    aget-wide p5, p2, p1

    add-double/2addr p5, p3

    aput-wide p5, p2, p1

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lye/t;->v:[D

    aput-wide p5, p3, p1

    :goto_0
    iget-object p3, p0, Loe/c0;->l:[B

    aget-byte p1, p3, p1

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Loe/t;->t:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    :cond_1
    return-wide p5
.end method

.method public S2(DD)D
    .locals 6

    invoke-virtual {p0, p1, p2}, Loe/t;->Ce(D)I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lye/t;->Me(DDI)D

    move-result-wide p1

    return-wide p1
.end method

.method public T([D)[D
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [D

    :cond_0
    iget-object v0, p0, Lye/t;->v:[D

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

.method public a(D)D
    .locals 2

    iget-wide v0, p0, Loe/t;->s:D

    invoke-virtual {p0, p1, p2}, Loe/t;->Ae(D)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Lye/t;->v:[D

    aget-wide v0, p2, p1

    invoke-virtual {p0, p1}, Lye/t;->ue(I)V

    :cond_0
    return-wide v0
.end method

.method public clear()V
    .locals 5

    invoke-super {p0}, Loe/H;->clear()V

    iget-object v0, p0, Loe/t;->q:[D

    array-length v1, v0

    iget-wide v2, p0, Loe/t;->r:D

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    iget-object v0, p0, Lye/t;->v:[D

    array-length v1, v0

    iget-wide v2, p0, Loe/t;->s:D

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    iget-object v0, p0, Loe/c0;->l:[B

    array-length v1, v0

    invoke-static {v0, v4, v1, v4}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13

    instance-of v0, p1, Lwe/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lwe/s;

    invoke-interface {p1}, Lwe/s;->size()I

    move-result v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lye/t;->v:[D

    iget-object v2, p0, Loe/c0;->l:[B

    invoke-virtual {p0}, Loe/t;->i()D

    move-result-wide v3

    invoke-interface {p1}, Lwe/s;->i()D

    move-result-wide v5

    array-length v7, v0

    :goto_0
    add-int/lit8 v8, v7, -0x1

    const/4 v9, 0x1

    if-lez v7, :cond_3

    aget-byte v7, v2, v8

    if-ne v7, v9, :cond_2

    iget-object v7, p0, Loe/t;->q:[D

    aget-wide v9, v7, v8

    invoke-interface {p1, v9, v10}, Lwe/s;->n0(D)D

    move-result-wide v9

    aget-wide v11, v0, v8

    cmpl-double v7, v11, v9

    if-eqz v7, :cond_2

    cmpl-double v7, v11, v3

    if-eqz v7, :cond_2

    cmpl-double v7, v9, v5

    if-eqz v7, :cond_2

    return v1

    :cond_2
    move v7, v8

    goto :goto_0

    :cond_3
    return v9
.end method

.method public g7(Lwe/s;)V
    .locals 4

    invoke-interface {p1}, Lwe/s;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Loe/H;->pe(I)V

    invoke-interface {p1}, Lwe/s;->iterator()Lre/v;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lre/a;->g()V

    invoke-interface {p1}, Lre/v;->key()D

    move-result-wide v0

    invoke-interface {p1}, Lre/v;->value()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lye/t;->S2(DD)D

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/t;->v:[D

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v0, v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Loe/t;->q:[D

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lne/b;->b(D)I

    move-result v1

    iget-object v4, p0, Lye/t;->v:[D

    aget-wide v5, v4, v3

    invoke-static {v5, v6}, Lne/b;->b(D)I

    move-result v4

    xor-int/2addr v1, v4

    add-int/2addr v2, v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public increment(D)Z
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, p2, v0, v1}, Lye/t;->C5(DD)Z

    move-result p1

    return p1
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

.method public iterator()Lre/v;
    .locals 1

    new-instance v0, Lye/t$b;

    invoke-direct {v0, p0, p0}, Lye/t$b;-><init>(Lye/t;Lye/t;)V

    return-object v0
.end method

.method public j()[D
    .locals 8

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [D

    iget-object v1, p0, Loe/t;->q:[D

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

.method public k()Lke/e;
    .locals 1

    new-instance v0, Lye/t$f;

    invoke-direct {v0, p0}, Lye/t$f;-><init>(Lye/t;)V

    return-object v0
.end method

.method public keySet()LCe/c;
    .locals 1

    new-instance v0, Lye/t$e;

    invoke-direct {v0, p0}, Lye/t$e;-><init>(Lye/t;)V

    return-object v0
.end method

.method public n(Lme/c;)V
    .locals 6

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/t;->v:[D

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-wide v4, v1, v3

    invoke-interface {p1, v4, v5}, Lme/c;->a(D)D

    move-result-wide v4

    aput-wide v4, v1, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public n0(D)D
    .locals 0

    invoke-virtual {p0, p1, p2}, Loe/t;->Ae(D)I

    move-result p1

    if-gez p1, :cond_0

    iget-wide p1, p0, Loe/t;->s:D

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lye/t;->v:[D

    aget-wide p1, p2, p1

    :goto_0
    return-wide p1
.end method

.method public o9(Lze/u;)Z
    .locals 11

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/t;->q:[D

    iget-object v2, p0, Lye/t;->v:[D

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

    aget-wide v9, v2, v6

    invoke-interface {p1, v7, v8, v9, v10}, Lze/u;->a(DD)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Lye/t;->ue(I)V
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

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Double;",
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

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lye/t;->S2(DD)D

    goto :goto_0

    :cond_0
    return-void
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

    invoke-super {p0, p1}, Loe/t;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lye/t;->we(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v2

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lye/t;->S2(DD)D

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public te(I)V
    .locals 7

    iget-object v0, p0, Loe/t;->q:[D

    array-length v1, v0

    iget-object v2, p0, Lye/t;->v:[D

    iget-object v3, p0, Loe/c0;->l:[B

    new-array v4, p1, [D

    iput-object v4, p0, Loe/t;->q:[D

    new-array v4, p1, [D

    iput-object v4, p0, Lye/t;->v:[D

    new-array p1, p1, [B

    iput-object p1, p0, Loe/c0;->l:[B

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v3, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    aget-wide v4, v0, p1

    invoke-virtual {p0, v4, v5}, Loe/t;->Ce(D)I

    move-result v1

    iget-object v4, p0, Lye/t;->v:[D

    aget-wide v5, v2, p1

    aput-wide v5, v4, v1

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

    new-instance v1, Lye/t$a;

    invoke-direct {v1, p0, v0}, Lye/t$a;-><init>(Lye/t;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lye/t;->F4(Lze/u;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ue(I)V
    .locals 3

    iget-object v0, p0, Lye/t;->v:[D

    iget-wide v1, p0, Loe/t;->s:D

    aput-wide v1, v0, p1

    invoke-super {p0, p1}, Loe/t;->ue(I)V

    return-void
.end method

.method public values()[D
    .locals 8

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [D

    iget-object v1, p0, Lye/t;->v:[D

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

.method public we(I)I
    .locals 1

    invoke-super {p0, p1}, Loe/t;->we(I)I

    move-result p1

    new-array v0, p1, [D

    iput-object v0, p0, Lye/t;->v:[D

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

    invoke-super {p0, p1}, Loe/t;->writeExternal(Ljava/io/ObjectOutput;)V

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

    iget-object v0, p0, Loe/t;->q:[D

    aget-wide v2, v0, v1

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-object v0, p0, Lye/t;->v:[D

    aget-wide v2, v0, v1

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeDouble(D)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public x(D)Z
    .locals 7

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/t;->v:[D

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-wide v5, v1, v3

    cmpl-double v2, p1, v5

    if-nez v2, :cond_0

    return v4

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
