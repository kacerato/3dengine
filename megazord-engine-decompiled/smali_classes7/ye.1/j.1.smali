.class public Lye/j;
.super Loe/j;
.source "SourceFile"

# interfaces
.implements Lwe/j;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lye/j$b;,
        Lye/j$d;,
        Lye/j$c;,
        Lye/j$f;,
        Lye/j$e;
    }
.end annotation


# static fields
.field public static final w:J = 0x1L


# instance fields
.field public transient v:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loe/j;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loe/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Loe/j;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IFCC)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Loe/j;-><init>(IFCC)V

    return-void
.end method

.method public constructor <init>(Lwe/j;)V
    .locals 2

    .line 8
    invoke-interface {p1}, Lwe/j;->size()I

    move-result v0

    invoke-direct {p0, v0}, Loe/j;-><init>(I)V

    .line 9
    instance-of v0, p1, Lye/j;

    if-eqz v0, :cond_2

    .line 10
    move-object v0, p1

    check-cast v0, Lye/j;

    .line 11
    iget v1, v0, Loe/H;->d:F

    iput v1, p0, Loe/H;->d:F

    .line 12
    iget-char v1, v0, Loe/j;->r:C

    iput-char v1, p0, Loe/j;->r:C

    .line 13
    iget-char v0, v0, Loe/j;->s:C

    iput-char v0, p0, Loe/j;->s:C

    if-eqz v1, :cond_0

    .line 14
    iget-object v0, p0, Loe/j;->q:[C

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 15
    :cond_0
    iget-char v0, p0, Loe/j;->s:C

    if-eqz v0, :cond_1

    .line 16
    iget-object v1, p0, Lye/j;->v:[C

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([CC)V

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    .line 17
    iget v1, p0, Loe/H;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lye/j;->we(I)I

    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Lye/j;->pc(Lwe/j;)V

    return-void
.end method

.method public constructor <init>([C[C)V
    .locals 4

    .line 5
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Loe/j;-><init>(I)V

    .line 6
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    aget-char v2, p1, v1

    aget-char v3, p2, v1

    invoke-virtual {p0, v2, v3}, Lye/j;->T5(CC)C

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic Fe(Lye/j;)C
    .locals 0

    iget-char p0, p0, Loe/j;->r:C

    return p0
.end method

.method public static synthetic Ge(Lye/j;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic He(Lye/j;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Ie(Lye/j;)C
    .locals 0

    iget-char p0, p0, Loe/j;->s:C

    return p0
.end method

.method public static synthetic Je(Lye/j;)C
    .locals 0

    iget-char p0, p0, Loe/j;->s:C

    return p0
.end method

.method public static synthetic Ke(Lye/j;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Le(Lye/j;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method


# virtual methods
.method public B3(CC)C
    .locals 1

    invoke-virtual {p0, p1}, Loe/j;->Ce(C)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p1, p0, Lye/j;->v:[C

    neg-int p2, v0

    add-int/lit8 p2, p2, -0x1

    aget-char p1, p1, p2

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lye/j;->Me(CCI)C

    move-result p1

    return p1
.end method

.method public Bb(CC)Z
    .locals 2

    invoke-virtual {p0, p1}, Loe/j;->Ae(C)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lye/j;->v:[C

    aget-char v1, v0, p1

    add-int/2addr v1, p2

    int-to-char p2, v1

    aput-char p2, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public F9(CCC)C
    .locals 1

    invoke-virtual {p0, p1}, Loe/j;->Ce(C)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, v0

    iget-object p3, p0, Lye/j;->v:[C

    aget-char v0, p3, p1

    add-int/2addr v0, p2

    int-to-char p2, v0

    aput-char p2, p3, p1

    const/4 v0, 0x0

    move p3, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lye/j;->v:[C

    aput-char p3, p2, p1

    :goto_0
    iget-object p2, p0, Loe/c0;->l:[B

    aget-byte p1, p2, p1

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Loe/j;->t:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    :cond_1
    return p3
.end method

.method public H(C)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/j;->b1(C)Z

    move-result p1

    return p1
.end method

.method public J2(Lze/k;)Z
    .locals 8

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/j;->q:[C

    iget-object v2, p0, Lye/j;->v:[C

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

    aget-char v4, v1, v6

    aget-char v7, v2, v6

    invoke-interface {p1, v4, v7}, Lze/k;->a(CC)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v6}, Lye/j;->ue(I)V
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

.method public final Me(CCI)C
    .locals 2

    iget-char p1, p0, Loe/j;->s:C

    const/4 v0, 0x1

    if-gez p3, :cond_0

    neg-int p1, p3

    add-int/lit8 p3, p1, -0x1

    iget-object p1, p0, Lye/j;->v:[C

    aget-char p1, p1, p3

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lye/j;->v:[C

    aput-char p2, v1, p3

    if-eqz v0, :cond_1

    iget-boolean p2, p0, Loe/j;->t:Z

    invoke-virtual {p0, p2}, Loe/H;->re(Z)V

    :cond_1
    return p1
.end method

.method public N([C)[C
    .locals 6

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [C

    :cond_0
    iget-object v0, p0, Loe/j;->q:[C

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

    aget-char v5, v0, v4

    aput-char v5, p1, v3

    move v3, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public R([C)[C
    .locals 6

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [C

    :cond_0
    iget-object v0, p0, Lye/j;->v:[C

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

    aget-char v5, v0, v4

    aput-char v5, p1, v3

    move v3, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public T5(CC)C
    .locals 1

    invoke-virtual {p0, p1}, Loe/j;->Ce(C)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lye/j;->Me(CCI)C

    move-result p1

    return p1
.end method

.method public b(C)C
    .locals 1

    iget-char v0, p0, Loe/j;->s:C

    invoke-virtual {p0, p1}, Loe/j;->Ae(C)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lye/j;->v:[C

    aget-char v0, v0, p1

    invoke-virtual {p0, p1}, Lye/j;->ue(I)V

    :cond_0
    return v0
.end method

.method public clear()V
    .locals 4

    invoke-super {p0}, Loe/H;->clear()V

    iget-object v0, p0, Loe/j;->q:[C

    array-length v1, v0

    iget-char v2, p0, Loe/j;->r:C

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    iget-object v0, p0, Lye/j;->v:[C

    array-length v1, v0

    iget-char v2, p0, Loe/j;->s:C

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    iget-object v0, p0, Loe/c0;->l:[B

    array-length v1, v0

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public e0(Lze/q;)Z
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/j;->v:[C

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_0

    aget-char v2, v1, v3

    invoke-interface {p1, v2}, Lze/q;->a(C)Z

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

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lwe/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lwe/j;

    invoke-interface {p1}, Lwe/j;->size()I

    move-result v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lye/j;->v:[C

    iget-object v2, p0, Loe/c0;->l:[B

    invoke-virtual {p0}, Loe/j;->i()C

    move-result v3

    invoke-interface {p1}, Lwe/j;->i()C

    move-result v4

    array-length v5, v0

    :goto_0
    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x1

    if-lez v5, :cond_3

    aget-byte v5, v2, v6

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Loe/j;->q:[C

    aget-char v5, v5, v6

    invoke-interface {p1, v5}, Lwe/j;->m0(C)C

    move-result v5

    aget-char v7, v0, v6

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

.method public h8(Lze/k;)Z
    .locals 6

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Loe/j;->q:[C

    iget-object v2, p0, Lye/j;->v:[C

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    aget-byte v3, v0, v4

    if-ne v3, v5, :cond_0

    aget-char v3, v1, v4

    aget-char v5, v2, v4

    invoke-interface {p1, v3, v5}, Lze/k;->a(CC)Z

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

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/j;->v:[C

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v0, v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Loe/j;->q:[C

    aget-char v1, v1, v3

    invoke-static {v1}, Lne/b;->d(I)I

    move-result v1

    iget-object v4, p0, Lye/j;->v:[C

    aget-char v4, v4, v3

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

.method public iterator()Lre/l;
    .locals 1

    new-instance v0, Lye/j$b;

    invoke-direct {v0, p0, p0}, Lye/j$b;-><init>(Lye/j;Lye/j;)V

    return-object v0
.end method

.method public j()[C
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Loe/j;->q:[C

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

    aget-char v6, v1, v5

    aput-char v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public k()Lke/b;
    .locals 1

    new-instance v0, Lye/j$f;

    invoke-direct {v0, p0}, Lye/j$f;-><init>(Lye/j;)V

    return-object v0
.end method

.method public keySet()LCe/b;
    .locals 1

    new-instance v0, Lye/j$e;

    invoke-direct {v0, p0}, Lye/j$e;-><init>(Lye/j;)V

    return-object v0
.end method

.method public l0(Lze/q;)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/j;->T0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public m0(C)C
    .locals 1

    invoke-virtual {p0, p1}, Loe/j;->Ae(C)I

    move-result p1

    if-gez p1, :cond_0

    iget-char p1, p0, Loe/j;->s:C

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lye/j;->v:[C

    aget-char p1, v0, p1

    :goto_0
    return p1
.end method

.method public p(Lme/b;)V
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/j;->v:[C

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-char v2, v1, v3

    invoke-interface {p1, v2}, Lme/b;->a(C)C

    move-result v2

    aput-char v2, v1, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pc(Lwe/j;)V
    .locals 2

    invoke-interface {p1}, Lwe/j;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Loe/H;->pe(I)V

    invoke-interface {p1}, Lwe/j;->iterator()Lre/l;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lre/a;->g()V

    invoke-interface {p1}, Lre/l;->key()C

    move-result v0

    invoke-interface {p1}, Lre/l;->value()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lye/j;->T5(CC)C

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Character;",
            "+",
            "Ljava/lang/Character;",
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

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v1, v0}, Lye/j;->T5(CC)C

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

    invoke-super {p0, p1}, Loe/j;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lye/j;->we(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readChar()C

    move-result v0

    invoke-interface {p1}, Ljava/io/DataInput;->readChar()C

    move-result v2

    invoke-virtual {p0, v0, v2}, Lye/j;->T5(CC)C

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(C)Z
    .locals 5

    iget-object v0, p0, Loe/c0;->l:[B

    iget-object v1, p0, Lye/j;->v:[C

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget-char v2, v1, v3

    if-ne p1, v2, :cond_0

    return v4

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public te(I)V
    .locals 6

    iget-object v0, p0, Loe/j;->q:[C

    array-length v1, v0

    iget-object v2, p0, Lye/j;->v:[C

    iget-object v3, p0, Loe/c0;->l:[B

    new-array v4, p1, [C

    iput-object v4, p0, Loe/j;->q:[C

    new-array v4, p1, [C

    iput-object v4, p0, Lye/j;->v:[C

    new-array p1, p1, [B

    iput-object p1, p0, Loe/c0;->l:[B

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v3, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    aget-char v1, v0, p1

    invoke-virtual {p0, v1}, Loe/j;->Ce(C)I

    move-result v1

    iget-object v4, p0, Lye/j;->v:[C

    aget-char v5, v2, p1

    aput-char v5, v4, v1

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

    new-instance v1, Lye/j$a;

    invoke-direct {v1, p0, v0}, Lye/j$a;-><init>(Lye/j;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lye/j;->h8(Lze/k;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ue(I)V
    .locals 2

    iget-object v0, p0, Lye/j;->v:[C

    iget-char v1, p0, Loe/j;->s:C

    aput-char v1, v0, p1

    invoke-super {p0, p1}, Loe/j;->ue(I)V

    return-void
.end method

.method public values()[C
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Lye/j;->v:[C

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

    aget-char v6, v1, v5

    aput-char v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public we(I)I
    .locals 1

    invoke-super {p0, p1}, Loe/j;->we(I)I

    move-result p1

    new-array v0, p1, [C

    iput-object v0, p0, Lye/j;->v:[C

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

    invoke-super {p0, p1}, Loe/j;->writeExternal(Ljava/io/ObjectOutput;)V

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

    iget-object v0, p0, Loe/j;->q:[C

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeChar(I)V

    iget-object v0, p0, Lye/j;->v:[C

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeChar(I)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public z0(C)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lye/j;->Bb(CC)Z

    move-result p1

    return p1
.end method
