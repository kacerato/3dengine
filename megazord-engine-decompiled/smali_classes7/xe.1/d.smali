.class public Lxe/d;
.super Loe/q;
.source "SourceFile"

# interfaces
.implements Lwe/b0;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxe/d$f;,
        Lxe/d$e;,
        Lxe/d$d;,
        Lxe/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Loe/q<",
        "TK;>;",
        "Lwe/b0<",
        "TK;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field public static final v:J = 0x1L


# instance fields
.field public final s:Lze/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lze/g0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient t:[F

.field public u:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loe/q;-><init>()V

    .line 2
    new-instance v0, Lxe/d$a;

    invoke-direct {v0, p0}, Lxe/d$a;-><init>(Lxe/d;)V

    iput-object v0, p0, Lxe/d;->s:Lze/g0;

    return-void
.end method

.method public constructor <init>(LGe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TK;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Loe/q;-><init>(LGe/a;)V

    .line 4
    new-instance p1, Lxe/d$a;

    invoke-direct {p1, p0}, Lxe/d$a;-><init>(Lxe/d;)V

    iput-object p1, p0, Lxe/d;->s:Lze/g0;

    .line 5
    sget p1, Lne/a;->i:F

    iput p1, p0, Lxe/d;->u:F

    return-void
.end method

.method public constructor <init>(LGe/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TK;>;I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Loe/q;-><init>(LGe/a;I)V

    .line 7
    new-instance p1, Lxe/d$a;

    invoke-direct {p1, p0}, Lxe/d$a;-><init>(Lxe/d;)V

    iput-object p1, p0, Lxe/d;->s:Lze/g0;

    .line 8
    sget p1, Lne/a;->i:F

    iput p1, p0, Lxe/d;->u:F

    return-void
.end method

.method public constructor <init>(LGe/a;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TK;>;IF)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p3}, Loe/q;-><init>(LGe/a;IF)V

    .line 10
    new-instance p1, Lxe/d$a;

    invoke-direct {p1, p0}, Lxe/d$a;-><init>(Lxe/d;)V

    iput-object p1, p0, Lxe/d;->s:Lze/g0;

    .line 11
    sget p1, Lne/a;->i:F

    iput p1, p0, Lxe/d;->u:F

    return-void
.end method

.method public constructor <init>(LGe/a;IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TK;>;IFF)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3}, Loe/q;-><init>(LGe/a;IF)V

    .line 13
    new-instance p1, Lxe/d$a;

    invoke-direct {p1, p0}, Lxe/d$a;-><init>(Lxe/d;)V

    iput-object p1, p0, Lxe/d;->s:Lze/g0;

    .line 14
    iput p4, p0, Lxe/d;->u:F

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lxe/d;->t:[F

    invoke-static {p1, p4}, Ljava/util/Arrays;->fill([FF)V

    :cond_0
    return-void
.end method

.method public constructor <init>(LGe/a;Lwe/b0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TK;>;",
            "Lwe/b0<",
            "+TK;>;)V"
        }
    .end annotation

    .line 16
    invoke-interface {p2}, Lwe/b0;->size()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {p2}, Lwe/b0;->i()F

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lxe/d;-><init>(LGe/a;IFF)V

    .line 17
    instance-of p1, p2, Lxe/d;

    if-eqz p1, :cond_1

    .line 18
    move-object p1, p2

    check-cast p1, Lxe/d;

    .line 19
    iget v0, p1, Loe/H;->d:F

    iput v0, p0, Loe/H;->d:F

    .line 20
    iget v0, p1, Lxe/d;->u:F

    iput v0, p0, Lxe/d;->u:F

    .line 21
    iget-object p1, p1, Loe/q;->q:LGe/a;

    iput-object p1, p0, Loe/q;->q:LGe/a;

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lxe/d;->t:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    .line 23
    iget v0, p0, Loe/H;->d:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0, p1}, Lxe/d;->we(I)I

    .line 24
    :cond_1
    invoke-virtual {p0, p2}, Lxe/d;->I7(Lwe/b0;)V

    return-void
.end method

.method public static synthetic Se(Lxe/d;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Te(Lxe/d;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method


# virtual methods
.method public I7(Lwe/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/b0<",
            "+TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lxe/d;->s:Lze/g0;

    invoke-interface {p1, v0}, Lwe/b0;->rd(Lze/g0;)Z

    return-void
.end method

.method public R6(Ljava/lang/Object;FF)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;FF)F"
        }
    .end annotation

    invoke-virtual {p0, p1}, Loe/b0;->Je(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, v0

    iget-object p3, p0, Lxe/d;->t:[F

    aget v0, p3, p1

    add-float/2addr p2, v0

    aput p2, p3, p1

    const/4 v0, 0x0

    move p3, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lxe/d;->t:[F

    aput p3, p2, p1

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean p1, p0, Loe/b0;->m:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    :cond_1
    return p3
.end method

.method public U([F)[F
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [F

    :cond_0
    iget-object v1, p0, Lxe/d;->t:[F

    iget-object v2, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_2

    aget-object v3, v2, v5

    sget-object v6, Loe/b0;->p:Ljava/lang/Object;

    if-eq v3, v6, :cond_1

    sget-object v6, Loe/b0;->o:Ljava/lang/Object;

    if-eq v3, v6, :cond_1

    add-int/lit8 v3, v4, 0x1

    aget v6, v1, v5

    aput v6, p1, v4

    move v4, v3

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    array-length v1, p1

    if-le v1, v0, :cond_3

    iget v1, p0, Lxe/d;->u:F

    aput v1, p1, v0

    :cond_3
    return-object p1
.end method

.method public final Ue(FI)F
    .locals 3

    iget v0, p0, Lxe/d;->u:F

    const/4 v1, 0x1

    if-gez p2, :cond_0

    neg-int p2, p2

    sub-int/2addr p2, v1

    iget-object v0, p0, Lxe/d;->t:[F

    aget v0, v0, p2

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lxe/d;->t:[F

    aput p1, v2, p2

    if-eqz v1, :cond_1

    iget-boolean p1, p0, Loe/b0;->m:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    :cond_1
    return v0
.end method

.method public W6(Ljava/lang/Object;F)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Loe/b0;->Ge(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lxe/d;->t:[F

    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 4

    invoke-super {p0}, Loe/H;->clear()V

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    sget-object v2, Loe/b0;->p:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lxe/d;->t:[F

    array-length v1, v0

    iget v2, p0, Lxe/d;->u:F

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/b0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e5(Ljava/lang/Object;F)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    invoke-virtual {p0, p1}, Loe/b0;->Je(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lxe/d;->Ue(FI)F

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lwe/b0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lwe/b0;

    invoke-interface {p1}, Lwe/b0;->size()I

    move-result v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lxe/d;->iterator()Lre/i0;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lre/a;->g()V

    invoke-interface {v0}, Lre/i0;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lre/i0;->value()F

    move-result v3

    iget v4, p0, Lxe/d;->u:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_4

    invoke-interface {p1, v2}, Lwe/b0;->get(Ljava/lang/Object;)F

    move-result v3

    invoke-interface {p1}, Lwe/b0;->i()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    invoke-interface {p1, v2}, Lwe/b0;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-interface {p1, v2}, Lwe/b0;->get(Ljava/lang/Object;)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_2

    return v1

    :catch_0
    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public get(Ljava/lang/Object;)F
    .locals 1

    invoke-virtual {p0, p1}, Loe/b0;->Ge(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget p1, p0, Lxe/d;->u:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lxe/d;->t:[F

    aget p1, v0, p1

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/d;->t:[F

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_2

    aget-object v2, v0, v5

    sget-object v6, Loe/b0;->p:Ljava/lang/Object;

    if-eq v2, v6, :cond_1

    sget-object v6, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v6, :cond_1

    aget v2, v1, v5

    invoke-static {v2}, Lne/b;->c(F)I

    move-result v2

    aget-object v6, v0, v5

    if-nez v6, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    xor-int/2addr v2, v6

    add-int/2addr v4, v2

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    return v4
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lxe/d;->u:F

    return v0
.end method

.method public ic(Lze/g0;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/g0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/d;->t:[F

    invoke-virtual {p0}, Loe/H;->xe()V

    const/4 v2, 0x1

    :try_start_0
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1

    aget-object v3, v0, v5

    sget-object v6, Loe/b0;->p:Ljava/lang/Object;

    if-eq v3, v6, :cond_0

    sget-object v6, Loe/b0;->o:Ljava/lang/Object;

    if-eq v3, v6, :cond_0

    aget v6, v1, v5

    invoke-interface {p1, v3, v6}, Lze/g0;->a(Ljava/lang/Object;F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v5}, Lxe/d;->ue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Loe/H;->se(Z)V

    return v4

    :goto_1
    invoke-virtual {p0, v2}, Loe/H;->se(Z)V

    throw p1
.end method

.method public iterator()Lre/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/i0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lxe/d$f;

    invoke-direct {v0, p0, p0}, Lxe/d$f;-><init>(Lxe/d;Lxe/d;)V

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v1, v4

    sget-object v5, Loe/b0;->p:Ljava/lang/Object;

    if-eq v2, v5, :cond_0

    sget-object v5, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    aput-object v2, v0, v3

    move v2, v4

    move v3, v5

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j0(Lze/k0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/k0<",
            "-TK;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Loe/b0;->Ee(Lze/k0;)Z

    move-result p1

    return p1
.end method

.method public k()Lke/f;
    .locals 1

    new-instance v0, Lxe/d$e;

    invoke-direct {v0, p0}, Lxe/d$e;-><init>(Lxe/d;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lxe/d$c;

    invoke-direct {v0, p0}, Lxe/d$c;-><init>(Lxe/d;)V

    return-object v0
.end method

.method public o(Lme/d;)V
    .locals 5

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/d;->t:[F

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    sget-object v4, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

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

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/d;->t:[F

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, Loe/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

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
    const/4 p1, 0x1

    return p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lxe/d;->e5(Ljava/lang/Object;F)F

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q5(Ljava/lang/Object;F)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    invoke-virtual {p0, p1}, Loe/b0;->Je(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p2, p0, Lxe/d;->t:[F

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    return p1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lxe/d;->Ue(FI)F

    move-result p1

    return p1
.end method

.method public rd(Lze/g0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/g0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/d;->t:[F

    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, Loe/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget v4, v1, v3

    invoke-interface {p1, v2, v4}, Lze/g0;->a(Ljava/lang/Object;F)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

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

    invoke-super {p0, p1}, Loe/q;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGe/a;

    iput-object v0, p0, Loe/q;->q:LGe/a;

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    iput v0, p0, Lxe/d;->u:F

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lxe/d;->we(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lxe/d;->e5(Ljava/lang/Object;F)F

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)F
    .locals 1

    iget v0, p0, Lxe/d;->u:F

    invoke-virtual {p0, p1}, Loe/b0;->Ge(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lxe/d;->t:[F

    aget v0, v0, p1

    invoke-virtual {p0, p1}, Lxe/d;->ue(I)V

    :cond_0
    return v0
.end method

.method public te(I)V
    .locals 6

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    iget-object v2, p0, Lxe/d;->t:[F

    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Loe/b0;->l:[Ljava/lang/Object;

    sget-object v4, Loe/b0;->p:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-array p1, p1, [F

    iput-object p1, p0, Lxe/d;->t:[F

    iget v3, p0, Lxe/d;->u:F

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([FF)V

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_2

    aget-object v1, v0, p1

    sget-object v3, Loe/b0;->p:Ljava/lang/Object;

    if-eq v1, v3, :cond_1

    sget-object v3, Loe/b0;->o:Ljava/lang/Object;

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v1}, Loe/b0;->Je(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v4, p0, Loe/b0;->l:[Ljava/lang/Object;

    neg-int v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {p0, v4, v1}, Loe/b0;->Qe(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lxe/d;->t:[F

    aget v4, v2, p1

    aput v4, v1, v3

    :cond_1
    move v1, p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lxe/d$b;

    invoke-direct {v1, p0, v0}, Lxe/d$b;-><init>(Lxe/d;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lxe/d;->rd(Lze/g0;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ue(I)V
    .locals 2

    iget-object v0, p0, Lxe/d;->t:[F

    iget v1, p0, Lxe/d;->u:F

    aput v1, v0, p1

    invoke-super {p0, p1}, Loe/b0;->ue(I)V

    return-void
.end method

.method public values()[F
    .locals 7

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [F

    iget-object v1, p0, Lxe/d;->t:[F

    iget-object v2, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1

    aget-object v3, v2, v5

    sget-object v6, Loe/b0;->p:Ljava/lang/Object;

    if-eq v3, v6, :cond_0

    sget-object v6, Loe/b0;->o:Ljava/lang/Object;

    if-eq v3, v6, :cond_0

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

    invoke-super {p0, p1}, Loe/b0;->we(I)I

    move-result p1

    new-array v0, p1, [F

    iput-object v0, p0, Lxe/d;->t:[F

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

    invoke-super {p0, p1}, Loe/q;->writeExternal(Ljava/io/ObjectOutput;)V

    iget-object v0, p0, Loe/q;->q:LGe/a;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget v0, p0, Lxe/d;->u:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    iget v0, p0, Loe/H;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    aget-object v0, v0, v1

    sget-object v2, Loe/b0;->o:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    sget-object v2, Loe/b0;->p:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lxe/d;->t:[F

    aget v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public x0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lxe/d;->W6(Ljava/lang/Object;F)Z

    move-result p1

    return p1
.end method

.method public y(F)Z
    .locals 5

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/d;->t:[F

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, Loe/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget v2, v1, v3

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public y0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)[TK;"
        }
    .end annotation

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_2

    aget-object v1, v0, v3

    sget-object v4, Loe/b0;->p:Ljava/lang/Object;

    if-eq v1, v4, :cond_1

    sget-object v4, Loe/b0;->o:Ljava/lang/Object;

    if-eq v1, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    aput-object v1, p1, v2

    move v1, v3

    move v2, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-object p1
.end method
