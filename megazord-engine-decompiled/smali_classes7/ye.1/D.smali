.class public Lye/D;
.super Loe/E;
.source "SourceFile"

# interfaces
.implements Lwe/C;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lye/D$b;,
        Lye/D$d;,
        Lye/D$c;,
        Lye/D$f;,
        Lye/D$e;
    }
.end annotation


# static fields
.field public static final w:J = 0x1L


# instance fields
.field public transient v:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loe/E;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loe/E;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Loe/E;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IFFI)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Loe/E;-><init>(IFFI)V

    return-void
.end method

.method public constructor <init>(Lwe/C;)V
    .locals 2

    .line 8
    invoke-interface {p1}, Lwe/C;->size()I

    move-result v0

    invoke-direct {p0, v0}, Loe/E;-><init>(I)V

    .line 9
    instance-of v0, p1, Lye/D;

    if-eqz v0, :cond_2

    .line 10
    move-object v0, p1

    check-cast v0, Lye/D;

    .line 11
    iget v1, v0, Loe/H;->d:F

    iput v1, p0, Loe/H;->d:F

    .line 12
    iget v1, v0, Loe/E;->r:F

    iput v1, p0, Loe/E;->r:F

    .line 13
    iget v0, v0, Loe/E;->s:I

    iput v0, p0, Loe/E;->s:I

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Loe/E;->q:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 15
    :cond_0
    iget v0, p0, Loe/E;->s:I

    if-eqz v0, :cond_1

    .line 16
    iget-object v1, p0, Lye/D;->v:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    .line 17
    iget v1, p0, Loe/H;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lye/D;->we(I)I

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lye/D;->Gd(Lwe/C;)V

    return-void
.end method

.method public constructor <init>([F[I)V
    .locals 4

    .line 5
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Loe/E;-><init>(I)V

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

    aget v3, p2, v1

    invoke-virtual {p0, v2, v3}, Lye/D;->W7(FI)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic Fe(Lye/D;)F
    .locals 0

    iget p0, p0, Loe/E;->r:F

    return p0
.end method

.method public static synthetic Ge(Lye/D;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic He(Lye/D;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Ie(Lye/D;)I
    .locals 0

    iget p0, p0, Loe/E;->s:I

    return p0
.end method

.method public static synthetic Je(Lye/D;)I
    .locals 0

    iget p0, p0, Loe/E;->s:I

    return p0
.end method

.method public static synthetic Ke(Lye/D;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Le(Lye/D;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method


# virtual methods
.method public C0(F)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lye/D;->v3(FI)Z

    move-result p1

    return p1
.end method

.method public Gd(Lwe/C;)V
    .locals 2

    invoke-interface {p1}, Lwe/C;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Loe/H;->pe(I)V

    invoke-interface {p1}, Lwe/C;->iterator()Lre/G;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lre/a;->g()V

    invoke-interface {p1}, Lre/G;->key()F

    move-result v0

    invoke-interface {p1}, Lre/G;->value()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lye/D;->W7(FI)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public L(F)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/E;->Y0(F)Z

    move-result p1

    return p1
.end method

.method public final Me(FII)I
    .locals 2

    iget p1, p0, Loe/E;->s:I

    const/4 v0, 0x1

    if-gez p3, :cond_0

    neg-int p1, p3

    add-int/lit8 p3, p1, -0x1

    iget-object p1, p0, Lye/D;->v:[I

    aget p1, p1, p3

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lye/D;->v:[I

    aput p2, v1, p3

    if-eqz v0, :cond_1

    iget-boolean p2, p0, Loe/E;->t:Z

    invoke-virtual {p0, p2}, Loe/H;->re(Z)V

    :cond_1
    return p1
.end method

.method public V([F)[F
    .locals 6

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [F

    :cond_0
    iget-object v0, p0, Loe/E;->q:[F

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

.method public W([I)[I
    .locals 6

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [I

    :cond_0
    iget-object v0, p0, Lye/D;->v:[I

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

.method public W7(FI)I
    .locals 1

    invoke-virtual {p0, p1}, Loe/E;->Ce(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lye/D;->Me(FII)I

    move-result p1

    return p1
.end method

.method public Xc(FI)I
    .locals 1

    invoke-virtual {p0, p1}, Loe/E;->Ce(F)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lye/D;->v:[I

    neg-int p2, v0

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lye/D;->Me(FII)I

    move-result p1

    return p1
.end method

.method public a0(Lze/S;)Z
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/D;->v:[I

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_0

    aget v2, v1, v3

    invoke-interface {p1, v2}, Lze/S;->a(I)Z

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

.method public c(F)I
    .locals 1

    iget v0, p0, Loe/E;->s:I

    invoke-virtual {p0, p1}, Loe/E;->Ae(F)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lye/D;->v:[I

    aget v0, v0, p1

    invoke-virtual {p0, p1}, Lye/D;->ue(I)V

    :cond_0
    return v0
.end method

.method public clear()V
    .locals 4

    invoke-super {p0}, Loe/H;->clear()V

    iget-object v0, p0, Loe/E;->q:[F

    array-length v1, v0

    iget v2, p0, Loe/E;->r:F

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    iget-object v0, p0, Lye/D;->v:[I

    array-length v1, v0

    iget v2, p0, Loe/E;->s:I

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Loe/c0;->l:[B

    array-length v1, v0

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public d0(Lze/I;)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/E;->R0(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lwe/C;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lwe/C;

    invoke-interface {p1}, Lwe/C;->size()I

    move-result v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lye/D;->v:[I

    iget-object v2, p0, Loe/c0;->l:[B

    invoke-virtual {p0}, Loe/E;->i()I

    move-result v3

    invoke-interface {p1}, Lwe/C;->i()I

    move-result v4

    array-length v5, v0

    :goto_0
    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x1

    if-lez v5, :cond_3

    aget-byte v5, v2, v6

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Loe/E;->q:[F

    aget v5, v5, v6

    invoke-interface {p1, v5}, Lwe/C;->o0(F)I

    move-result v5

    aget v7, v0, v6

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

.method public f(Lme/e;)V
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/D;->v:[I

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget v2, v1, v3

    invoke-interface {p1, v2}, Lme/e;->a(I)I

    move-result v2

    aput v2, v1, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public gc(Lze/F;)Z
    .locals 8

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/E;->q:[F

    iget-object v2, p0, Lye/D;->v:[I

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

    aget v7, v2, v6

    invoke-interface {p1, v4, v7}, Lze/F;->a(FI)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Lye/D;->ue(I)V
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

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/D;->v:[I

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v0, v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Loe/E;->q:[F

    aget v1, v1, v3

    invoke-static {v1}, Lne/b;->c(F)I

    move-result v1

    iget-object v4, p0, Lye/D;->v:[I

    aget v4, v4, v3

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

.method public ia(FII)I
    .locals 1

    invoke-virtual {p0, p1}, Loe/E;->Ce(F)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, v0

    iget-object p3, p0, Lye/D;->v:[I

    aget v0, p3, p1

    add-int/2addr p2, v0

    aput p2, p3, p1

    const/4 v0, 0x0

    move p3, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lye/D;->v:[I

    aput p3, p2, p1

    :goto_0
    iget-object p2, p0, Loe/c0;->l:[B

    aget-byte p1, p2, p1

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Loe/E;->t:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    :cond_1
    return p3
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

.method public iterator()Lre/G;
    .locals 1

    new-instance v0, Lye/D$b;

    invoke-direct {v0, p0, p0}, Lye/D$b;-><init>(Lye/D;Lye/D;)V

    return-object v0
.end method

.method public j()[F
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [F

    iget-object v1, p0, Loe/E;->q:[F

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

.method public k()Lke/g;
    .locals 1

    new-instance v0, Lye/D$f;

    invoke-direct {v0, p0}, Lye/D$f;-><init>(Lye/D;)V

    return-object v0
.end method

.method public keySet()LCe/d;
    .locals 1

    new-instance v0, Lye/D$e;

    invoke-direct {v0, p0}, Lye/D$e;-><init>(Lye/D;)V

    return-object v0
.end method

.method public o0(F)I
    .locals 1

    invoke-virtual {p0, p1}, Loe/E;->Ae(F)I

    move-result p1

    if-gez p1, :cond_0

    iget p1, p0, Loe/E;->s:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lye/D;->v:[I

    aget p1, v0, p1

    :goto_0
    return p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Integer;",
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

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lye/D;->W7(FI)I

    goto :goto_0

    :cond_0
    return-void
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

    invoke-super {p0, p1}, Loe/E;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lye/D;->we(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lye/D;->W7(FI)I

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sa(Lze/F;)Z
    .locals 6

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/E;->q:[F

    iget-object v2, p0, Lye/D;->v:[I

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    aget-byte v3, v0, v4

    if-ne v3, v5, :cond_0

    aget v3, v1, v4

    aget v5, v2, v4

    invoke-interface {p1, v3, v5}, Lze/F;->a(FI)Z

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

.method public te(I)V
    .locals 6

    iget-object v0, p0, Loe/E;->q:[F

    array-length v1, v0

    iget-object v2, p0, Lye/D;->v:[I

    iget-object v3, p0, Loe/c0;->l:[B

    new-array v4, p1, [F

    iput-object v4, p0, Loe/E;->q:[F

    new-array v4, p1, [I

    iput-object v4, p0, Lye/D;->v:[I

    new-array p1, p1, [B

    iput-object p1, p0, Loe/c0;->l:[B

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v3, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    aget v1, v0, p1

    invoke-virtual {p0, v1}, Loe/E;->Ce(F)I

    move-result v1

    iget-object v4, p0, Lye/D;->v:[I

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

    new-instance v1, Lye/D$a;

    invoke-direct {v1, p0, v0}, Lye/D$a;-><init>(Lye/D;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lye/D;->sa(Lze/F;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ue(I)V
    .locals 2

    iget-object v0, p0, Lye/D;->v:[I

    iget v1, p0, Loe/E;->s:I

    aput v1, v0, p1

    invoke-super {p0, p1}, Loe/E;->ue(I)V

    return-void
.end method

.method public v(I)Z
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/D;->v:[I

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget v2, v1, v3

    if-ne p1, v2, :cond_0

    return v4

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public v3(FI)Z
    .locals 2

    invoke-virtual {p0, p1}, Loe/E;->Ae(F)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lye/D;->v:[I

    aget v1, v0, p1

    add-int/2addr v1, p2

    aput v1, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public values()[I
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lye/D;->v:[I

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

    invoke-super {p0, p1}, Loe/E;->we(I)I

    move-result p1

    new-array v0, p1, [I

    iput-object v0, p0, Lye/D;->v:[I

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

    invoke-super {p0, p1}, Loe/E;->writeExternal(Ljava/io/ObjectOutput;)V

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

    iget-object v0, p0, Loe/E;->q:[F

    aget v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    iget-object v0, p0, Lye/D;->v:[I

    aget v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method
