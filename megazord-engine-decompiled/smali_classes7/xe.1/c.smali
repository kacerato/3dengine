.class public Lxe/c;
.super Loe/q;
.source "SourceFile"

# interfaces
.implements Lwe/a0;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxe/c$f;,
        Lxe/c$e;,
        Lxe/c$d;,
        Lxe/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Loe/q<",
        "TK;>;",
        "Lwe/a0<",
        "TK;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field public static final v:J = 0x1L


# instance fields
.field public final s:Lze/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lze/f0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient t:[D

.field public u:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loe/q;-><init>()V

    .line 2
    new-instance v0, Lxe/c$a;

    invoke-direct {v0, p0}, Lxe/c$a;-><init>(Lxe/c;)V

    iput-object v0, p0, Lxe/c;->s:Lze/f0;

    return-void
.end method

.method public constructor <init>(LGe/a;)V
    .locals 2
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
    new-instance p1, Lxe/c$a;

    invoke-direct {p1, p0}, Lxe/c$a;-><init>(Lxe/c;)V

    iput-object p1, p0, Lxe/c;->s:Lze/f0;

    .line 5
    sget-wide v0, Lne/a;->j:D

    iput-wide v0, p0, Lxe/c;->u:D

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
    new-instance p1, Lxe/c$a;

    invoke-direct {p1, p0}, Lxe/c$a;-><init>(Lxe/c;)V

    iput-object p1, p0, Lxe/c;->s:Lze/f0;

    .line 8
    sget-wide p1, Lne/a;->j:D

    iput-wide p1, p0, Lxe/c;->u:D

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
    new-instance p1, Lxe/c$a;

    invoke-direct {p1, p0}, Lxe/c$a;-><init>(Lxe/c;)V

    iput-object p1, p0, Lxe/c;->s:Lze/f0;

    .line 11
    sget-wide p1, Lne/a;->j:D

    iput-wide p1, p0, Lxe/c;->u:D

    return-void
.end method

.method public constructor <init>(LGe/a;IFD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TK;>;IFD)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3}, Loe/q;-><init>(LGe/a;IF)V

    .line 13
    new-instance p1, Lxe/c$a;

    invoke-direct {p1, p0}, Lxe/c$a;-><init>(Lxe/c;)V

    iput-object p1, p0, Lxe/c;->s:Lze/f0;

    .line 14
    iput-wide p4, p0, Lxe/c;->u:D

    const-wide/16 p1, 0x0

    cmpl-double p1, p4, p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lxe/c;->t:[D

    invoke-static {p1, p4, p5}, Ljava/util/Arrays;->fill([DD)V

    :cond_0
    return-void
.end method

.method public constructor <init>(LGe/a;Lwe/a0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TK;>;",
            "Lwe/a0<",
            "+TK;>;)V"
        }
    .end annotation

    .line 16
    invoke-interface {p2}, Lwe/a0;->size()I

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {p2}, Lwe/a0;->i()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lxe/c;-><init>(LGe/a;IFD)V

    .line 17
    instance-of p1, p2, Lxe/c;

    if-eqz p1, :cond_1

    .line 18
    move-object p1, p2

    check-cast p1, Lxe/c;

    .line 19
    iget v0, p1, Loe/H;->d:F

    iput v0, p0, Loe/H;->d:F

    .line 20
    iget-wide v0, p1, Lxe/c;->u:D

    iput-wide v0, p0, Lxe/c;->u:D

    .line 21
    iget-object p1, p1, Loe/q;->q:LGe/a;

    iput-object p1, p0, Loe/q;->q:LGe/a;

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lxe/c;->t:[D

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    .line 23
    iget v0, p0, Loe/H;->d:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0, p1}, Lxe/c;->we(I)I

    .line 24
    :cond_1
    invoke-virtual {p0, p2}, Lxe/c;->Wc(Lwe/a0;)V

    return-void
.end method

.method public static synthetic Se(Lxe/c;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method

.method public static synthetic Te(Lxe/c;)I
    .locals 0

    iget p0, p0, Loe/H;->b:I

    return p0
.end method


# virtual methods
.method public C(Lze/z;)Z
    .locals 6

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/c;->t:[D

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, Loe/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

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
    const/4 p1, 0x1

    return p1
.end method

.method public Hd(Lze/f0;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/f0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/c;->t:[D

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

    aget-wide v6, v1, v5

    invoke-interface {p1, v3, v6, v7}, Lze/f0;->a(Ljava/lang/Object;D)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v5}, Lxe/c;->ue(I)V
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

.method public J5(Ljava/lang/Object;DD)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;DD)D"
        }
    .end annotation

    invoke-virtual {p0, p1}, Loe/b0;->Je(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, v0

    iget-object p4, p0, Lxe/c;->t:[D

    aget-wide v0, p4, p1

    add-double/2addr p2, v0

    aput-wide p2, p4, p1

    const/4 v0, 0x0

    move-wide p4, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lxe/c;->t:[D

    aput-wide p4, p2, p1

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean p1, p0, Loe/b0;->m:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    :cond_1
    return-wide p4
.end method

.method public Rc(Lze/f0;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/f0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/c;->t:[D

    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, Loe/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-wide v4, v1, v3

    invoke-interface {p1, v2, v4, v5}, Lze/f0;->a(Ljava/lang/Object;D)Z

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

.method public T([D)[D
    .locals 8

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [D

    :cond_0
    iget-object v1, p0, Lxe/c;->t:[D

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

    aget-wide v6, v1, v5

    aput-wide v6, p1, v4

    move v4, v3

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    array-length v1, p1

    if-le v1, v0, :cond_3

    iget-wide v1, p0, Lxe/c;->u:D

    aput-wide v1, p1, v0

    :cond_3
    return-object p1
.end method

.method public final Ue(DI)D
    .locals 6

    iget-wide v0, p0, Lxe/c;->u:D

    const/4 v2, 0x1

    if-gez p3, :cond_0

    neg-int p3, p3

    sub-int/2addr p3, v2

    iget-object v0, p0, Lxe/c;->t:[D

    aget-wide v1, v0, p3

    const/4 v0, 0x0

    move-wide v4, v1

    move v2, v0

    move-wide v0, v4

    :cond_0
    iget-object v3, p0, Lxe/c;->t:[D

    aput-wide p1, v3, p3

    if-eqz v2, :cond_1

    iget-boolean p1, p0, Loe/b0;->m:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    :cond_1
    return-wide v0
.end method

.method public Wc(Lwe/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/a0<",
            "+TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lxe/c;->s:Lze/f0;

    invoke-interface {p1, v0}, Lwe/a0;->Rc(Lze/f0;)Z

    return-void
.end method

.method public Z4(Ljava/lang/Object;D)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    invoke-virtual {p0, p1}, Loe/b0;->Je(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lxe/c;->Ue(DI)D

    move-result-wide p1

    return-wide p1
.end method

.method public a7(Ljava/lang/Object;D)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Loe/b0;->Ge(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lxe/c;->t:[D

    aget-wide v1, v0, p1

    add-double/2addr v1, p2

    aput-wide v1, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 6

    invoke-super {p0}, Loe/H;->clear()V

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    sget-object v2, Loe/b0;->p:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lxe/c;->t:[D

    array-length v1, v0

    iget-wide v4, p0, Lxe/c;->u:D

    invoke-static {v0, v3, v1, v4, v5}, Ljava/util/Arrays;->fill([DIID)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/b0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lwe/a0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lwe/a0;

    invoke-interface {p1}, Lwe/a0;->size()I

    move-result v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lxe/c;->iterator()Lre/h0;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lre/a;->g()V

    invoke-interface {v0}, Lre/h0;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lre/h0;->value()D

    move-result-wide v3

    iget-wide v5, p0, Lxe/c;->u:D

    cmpl-double v5, v3, v5

    if-nez v5, :cond_4

    invoke-interface {p1, v2}, Lwe/a0;->get(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-interface {p1}, Lwe/a0;->i()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    invoke-interface {p1, v2}, Lwe/a0;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-interface {p1, v2}, Lwe/a0;->get(Ljava/lang/Object;)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v2, v3, v5

    if-eqz v2, :cond_2

    return v1

    :catch_0
    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public get(Ljava/lang/Object;)D
    .locals 3

    invoke-virtual {p0, p1}, Loe/b0;->Ge(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-wide v0, p0, Lxe/c;->u:D

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lxe/c;->t:[D

    aget-wide v1, v0, p1

    move-wide v0, v1

    :goto_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/c;->t:[D

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

    aget-wide v6, v1, v5

    invoke-static {v6, v7}, Lne/b;->b(D)I

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

.method public i()D
    .locals 2

    iget-wide v0, p0, Lxe/c;->u:D

    return-wide v0
.end method

.method public iterator()Lre/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/h0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lxe/c$f;

    invoke-direct {v0, p0, p0}, Lxe/c$f;-><init>(Lxe/c;Lxe/c;)V

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

.method public k()Lke/e;
    .locals 1

    new-instance v0, Lxe/c$e;

    invoke-direct {v0, p0}, Lxe/c$e;-><init>(Lxe/c;)V

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

    new-instance v0, Lxe/c$c;

    invoke-direct {v0, p0}, Lxe/c$c;-><init>(Lxe/c;)V

    return-object v0
.end method

.method public n(Lme/c;)V
    .locals 6

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/c;->t:[D

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    sget-object v4, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

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

.method public n5(Ljava/lang/Object;D)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    invoke-virtual {p0, p1}, Loe/b0;->Je(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p2, p0, Lxe/c;->t:[D

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    return-wide p1

    :cond_0
    invoke-virtual {p0, p2, p3, p1}, Lxe/c;->Ue(DI)D

    move-result-wide p1

    return-wide p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Double;",
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

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lxe/c;->Z4(Ljava/lang/Object;D)D

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

    invoke-super {p0, p1}, Loe/q;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGe/a;

    iput-object v0, p0, Loe/q;->q:LGe/a;

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lxe/c;->u:D

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lxe/c;->we(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lxe/c;->Z4(Ljava/lang/Object;D)D

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)D
    .locals 3

    iget-wide v0, p0, Lxe/c;->u:D

    invoke-virtual {p0, p1}, Loe/b0;->Ge(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lxe/c;->t:[D

    aget-wide v1, v0, p1

    invoke-virtual {p0, p1}, Lxe/c;->ue(I)V

    move-wide v0, v1

    :cond_0
    return-wide v0
.end method

.method public te(I)V
    .locals 6

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    iget-object v2, p0, Lxe/c;->t:[D

    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Loe/b0;->l:[Ljava/lang/Object;

    sget-object v4, Loe/b0;->p:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-array p1, p1, [D

    iput-object p1, p0, Lxe/c;->t:[D

    iget-wide v3, p0, Lxe/c;->u:D

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->fill([DD)V

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
    iget-object v1, p0, Lxe/c;->t:[D

    aget-wide v4, v2, p1

    aput-wide v4, v1, v3

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

    new-instance v1, Lxe/c$b;

    invoke-direct {v1, p0, v0}, Lxe/c$b;-><init>(Lxe/c;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lxe/c;->Rc(Lze/f0;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ue(I)V
    .locals 3

    iget-object v0, p0, Lxe/c;->t:[D

    iget-wide v1, p0, Lxe/c;->u:D

    aput-wide v1, v0, p1

    invoke-super {p0, p1}, Loe/b0;->ue(I)V

    return-void
.end method

.method public values()[D
    .locals 8

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [D

    iget-object v1, p0, Lxe/c;->t:[D

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

    invoke-super {p0, p1}, Loe/b0;->we(I)I

    move-result p1

    new-array v0, p1, [D

    iput-object v0, p0, Lxe/c;->t:[D

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

    invoke-super {p0, p1}, Loe/q;->writeExternal(Ljava/io/ObjectOutput;)V

    iget-object v0, p0, Loe/q;->q:LGe/a;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-wide v0, p0, Lxe/c;->u:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

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

    iget-object v0, p0, Lxe/c;->t:[D

    aget-wide v2, v0, v1

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeDouble(D)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public x(D)Z
    .locals 6

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lxe/c;->t:[D

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, Loe/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-wide v4, v1, v3

    cmpl-double v2, p1, v4

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

.method public x0(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, v0, v1}, Lxe/c;->a7(Ljava/lang/Object;D)Z

    move-result p1

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
