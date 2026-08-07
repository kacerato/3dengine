.class public Lye/u;
.super Loe/u;
.source "SourceFile"

# interfaces
.implements Lwe/t;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lye/u$b;,
        Lye/u$d;,
        Lye/u$c;,
        Lye/u$f;,
        Lye/u$e;
    }
.end annotation


# static fields
.field public static final w:J = 0x1L


# instance fields
.field public transient v:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loe/u;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loe/u;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Loe/u;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IFDF)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Loe/u;-><init>(IFDF)V

    return-void
.end method

.method public constructor <init>(Lwe/t;)V
    .locals 5

    .line 8
    invoke-interface {p1}, Lwe/t;->size()I

    move-result v0

    invoke-direct {p0, v0}, Loe/u;-><init>(I)V

    .line 9
    instance-of v0, p1, Lye/u;

    if-eqz v0, :cond_2

    .line 10
    move-object v0, p1

    check-cast v0, Lye/u;

    .line 11
    iget v1, v0, Loe/H;->d:F

    iput v1, p0, Loe/H;->d:F

    .line 12
    iget-wide v1, v0, Loe/u;->r:D

    iput-wide v1, p0, Loe/u;->r:D

    .line 13
    iget v0, v0, Loe/u;->s:F

    iput v0, p0, Loe/u;->s:F

    const-wide/16 v3, 0x0

    cmpl-double v0, v1, v3

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Loe/u;->q:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 15
    :cond_0
    iget v0, p0, Loe/u;->s:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v1, p0, Lye/u;->v:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    .line 17
    iget v1, p0, Loe/H;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lye/u;->we(I)I

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lye/u;->he(Lwe/t;)V

    return-void
.end method

.method public constructor <init>([D[F)V
    .locals 5

    .line 5
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Loe/u;-><init>(I)V

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

    aget v4, p2, v1

    invoke-virtual {p0, v2, v3, v4}, Lye/u;->U2(DF)F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic Fe(Lye/u;)D
    .locals 2

    iget-wide v0, p0, Loe/u;->r:D

    return-wide v0
.end method

.method public static synthetic Ge(Lye/u;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic He(Lye/u;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Ie(Lye/u;)F
    .locals 0

    iget p0, p0, Loe/u;->s:F

    return p0
.end method

.method public static synthetic Je(Lye/u;)F
    .locals 0

    iget p0, p0, Loe/u;->s:F

    return p0
.end method

.method public static synthetic Ke(Lye/u;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Le(Lye/u;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method


# virtual methods
.method public B(Lze/z;)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/u;->c1(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public E9(DFF)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Loe/u;->Ce(D)I

    move-result p1

    const/4 p2, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lye/u;->v:[F

    aget p4, p2, p1

    add-float/2addr p4, p3

    aput p4, p2, p1

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lye/u;->v:[F

    aput p4, p3, p1

    :goto_0
    iget-object p3, p0, Loe/c0;->l:[B

    aget-byte p1, p3, p1

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Loe/u;->t:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    :cond_1
    return p4
.end method

.method public G(D)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Loe/u;->X0(D)Z

    move-result p1

    return p1
.end method

.method public H5(Lze/v;)Z
    .locals 7

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/u;->q:[D

    iget-object v2, p0, Lye/u;->v:[F

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    aget-byte v3, v0, v4

    if-ne v3, v5, :cond_0

    aget-wide v5, v1, v4

    aget v3, v2, v4

    invoke-interface {p1, v5, v6, v3}, Lze/v;->a(DF)Z

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

.method public final Me(DFI)F
    .locals 1

    iget p1, p0, Loe/u;->s:F

    const/4 p2, 0x1

    if-gez p4, :cond_0

    neg-int p1, p4

    add-int/lit8 p4, p1, -0x1

    iget-object p1, p0, Lye/u;->v:[F

    aget p1, p1, p4

    const/4 p2, 0x0

    :cond_0
    iget-object v0, p0, Lye/u;->v:[F

    aput p3, v0, p4

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Loe/u;->t:Z

    invoke-virtual {p0, p2}, Loe/H;->re(Z)V

    :cond_1
    return p1
.end method

.method public O([D)[D
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [D

    :cond_0
    iget-object v0, p0, Loe/u;->q:[D

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

.method public U([F)[F
    .locals 6

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [F

    :cond_0
    iget-object v0, p0, Lye/u;->v:[F

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

.method public U2(DF)F
    .locals 1

    invoke-virtual {p0, p1, p2}, Loe/u;->Ce(D)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lye/u;->Me(DFI)F

    move-result p1

    return p1
.end method

.method public V5(DF)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Loe/u;->Ae(D)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p2, p0, Lye/u;->v:[F

    aget v0, p2, p1

    add-float/2addr v0, p3

    aput v0, p2, p1

    const/4 p1, 0x1

    return p1
.end method

.method public a(D)F
    .locals 1

    iget v0, p0, Loe/u;->s:F

    invoke-virtual {p0, p1, p2}, Loe/u;->Ae(D)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Lye/u;->v:[F

    aget v0, p2, p1

    invoke-virtual {p0, p1}, Lye/u;->ue(I)V

    :cond_0
    return v0
.end method

.method public ab(Lze/v;)Z
    .locals 9

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/u;->q:[D

    iget-object v2, p0, Lye/u;->v:[F

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

    aget v4, v2, v6

    invoke-interface {p1, v7, v8, v4}, Lze/v;->a(DF)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Lye/u;->ue(I)V
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

.method public clear()V
    .locals 5

    invoke-super {p0}, Loe/H;->clear()V

    iget-object v0, p0, Loe/u;->q:[D

    array-length v1, v0

    iget-wide v2, p0, Loe/u;->r:D

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    iget-object v0, p0, Lye/u;->v:[F

    array-length v1, v0

    iget v2, p0, Loe/u;->s:F

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    iget-object v0, p0, Loe/c0;->l:[B

    array-length v1, v0

    invoke-static {v0, v4, v1, v4}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    instance-of v0, p1, Lwe/t;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lwe/t;

    invoke-interface {p1}, Lwe/t;->size()I

    move-result v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lye/u;->v:[F

    iget-object v2, p0, Loe/c0;->l:[B

    invoke-virtual {p0}, Loe/u;->i()F

    move-result v3

    invoke-interface {p1}, Lwe/t;->i()F

    move-result v4

    array-length v5, v0

    :goto_0
    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x1

    if-lez v5, :cond_3

    aget-byte v5, v2, v6

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Loe/u;->q:[D

    aget-wide v7, v5, v6

    invoke-interface {p1, v7, v8}, Lwe/t;->n0(D)F

    move-result v5

    aget v7, v0, v6

    cmpl-float v8, v7, v5

    if-eqz v8, :cond_2

    cmpl-float v7, v7, v3

    if-eqz v7, :cond_2

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_2

    return v1

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    return v7
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/u;->v:[F

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v0, v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Loe/u;->q:[D

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lne/b;->b(D)I

    move-result v1

    iget-object v4, p0, Lye/u;->v:[F

    aget v4, v4, v3

    invoke-static {v4}, Lne/b;->c(F)I

    move-result v4

    xor-int/2addr v1, v4

    add-int/2addr v2, v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public he(Lwe/t;)V
    .locals 3

    invoke-interface {p1}, Lwe/t;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Loe/H;->pe(I)V

    invoke-interface {p1}, Lwe/t;->iterator()Lre/w;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lre/a;->g()V

    invoke-interface {p1}, Lre/w;->key()D

    move-result-wide v0

    invoke-interface {p1}, Lre/w;->value()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lye/u;->U2(DF)F

    goto :goto_0

    :cond_0
    return-void
.end method

.method public increment(D)Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lye/u;->V5(DF)Z

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

.method public iterator()Lre/w;
    .locals 1

    new-instance v0, Lye/u$b;

    invoke-direct {v0, p0, p0}, Lye/u$b;-><init>(Lye/u;Lye/u;)V

    return-object v0
.end method

.method public j()[D
    .locals 8

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [D

    iget-object v1, p0, Loe/u;->q:[D

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

.method public k()Lke/f;
    .locals 1

    new-instance v0, Lye/u$f;

    invoke-direct {v0, p0}, Lye/u$f;-><init>(Lye/u;)V

    return-object v0
.end method

.method public keySet()LCe/c;
    .locals 1

    new-instance v0, Lye/u$e;

    invoke-direct {v0, p0}, Lye/u$e;-><init>(Lye/u;)V

    return-object v0
.end method

.method public n0(D)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Loe/u;->Ae(D)I

    move-result p1

    if-gez p1, :cond_0

    iget p1, p0, Loe/u;->s:F

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lye/u;->v:[F

    aget p1, p2, p1

    :goto_0
    return p1
.end method

.method public o(Lme/d;)V
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/u;->v:[F

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget v2, v1, v3

    invoke-interface {p1, v2}, Lme/d;->a(F)F

    move-result v2

    aput v2, v1, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p0(Lze/I;)Z
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/u;->v:[F

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_0

    aget v2, v1, v3

    invoke-interface {p1, v2}, Lze/I;->a(F)Z

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

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Float;",
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

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lye/u;->U2(DF)F

    goto :goto_0

    :cond_0
    return-void
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

    invoke-super {p0, p1}, Loe/u;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lye/u;->we(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v2

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Lye/u;->U2(DF)F

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public te(I)V
    .locals 6

    iget-object v0, p0, Loe/u;->q:[D

    array-length v1, v0

    iget-object v2, p0, Lye/u;->v:[F

    iget-object v3, p0, Loe/c0;->l:[B

    new-array v4, p1, [D

    iput-object v4, p0, Loe/u;->q:[D

    new-array v4, p1, [F

    iput-object v4, p0, Lye/u;->v:[F

    new-array p1, p1, [B

    iput-object p1, p0, Loe/c0;->l:[B

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v3, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    aget-wide v4, v0, p1

    invoke-virtual {p0, v4, v5}, Loe/u;->Ce(D)I

    move-result v1

    iget-object v4, p0, Lye/u;->v:[F

    aget v5, v2, p1

    aput v5, v4, v1

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

    new-instance v1, Lye/u$a;

    invoke-direct {v1, p0, v0}, Lye/u$a;-><init>(Lye/u;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lye/u;->H5(Lze/v;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ue(I)V
    .locals 2

    iget-object v0, p0, Lye/u;->v:[F

    iget v1, p0, Loe/u;->s:F

    aput v1, v0, p1

    invoke-super {p0, p1}, Loe/u;->ue(I)V

    return-void
.end method

.method public values()[F
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [F

    iget-object v1, p0, Lye/u;->v:[F

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

.method public we(I)I
    .locals 1

    invoke-super {p0, p1}, Loe/u;->we(I)I

    move-result p1

    new-array v0, p1, [F

    iput-object v0, p0, Lye/u;->v:[F

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

    invoke-super {p0, p1}, Loe/u;->writeExternal(Ljava/io/ObjectOutput;)V

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

    iget-object v0, p0, Loe/u;->q:[D

    aget-wide v2, v0, v1

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeDouble(D)V

    iget-object v0, p0, Lye/u;->v:[F

    aget v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public y(F)Z
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/u;->v:[F

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget v2, v1, v3

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    return v4

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public y2(DF)F
    .locals 1

    invoke-virtual {p0, p1, p2}, Loe/u;->Ce(D)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lye/u;->v:[F

    neg-int p2, v0

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lye/u;->Me(DFI)F

    move-result p1

    return p1
.end method
