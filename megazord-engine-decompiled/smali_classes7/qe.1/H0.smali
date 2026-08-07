.class public Lqe/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/i0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/i0;

.field public transient c:LCe/g;

.field public transient d:Lke/f;


# direct methods
.method public constructor <init>(Lwe/i0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/H0;->c:LCe/g;

    iput-object v0, p0, Lqe/H0;->d:Lke/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/H0;->b:Lwe/i0;

    return-void
.end method

.method public static synthetic a(Lqe/H0;)Lwe/i0;
    .locals 0

    iget-object p0, p0, Lqe/H0;->b:Lwe/i0;

    return-object p0
.end method


# virtual methods
.method public D(S)Z
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0, p1}, Lwe/i0;->D(S)Z

    move-result p1

    return p1
.end method

.method public E0(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ka(Lze/p0;)Z
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0, p1}, Lwe/i0;->Ka(Lze/p0;)Z

    move-result p1

    return p1
.end method

.method public M(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0, p1}, Lwe/i0;->M(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public Q([S)[S
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0, p1}, Lwe/i0;->Q([S)[S

    move-result-object p1

    return-object p1
.end method

.method public U([F)[F
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0, p1}, Lwe/i0;->U([F)[F

    move-result-object p1

    return-object p1
.end method

.method public V4(SF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Yb(Lwe/i0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(S)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0}, Lwe/i0;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0}, Lwe/i0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/q0;
    .locals 1

    new-instance v0, Lqe/H0$a;

    invoke-direct {v0, p0}, Lqe/H0$a;-><init>(Lqe/H0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0}, Lwe/i0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/f;
    .locals 1

    iget-object v0, p0, Lqe/H0;->d:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0}, Lwe/i0;->k()Lke/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->e1(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, Lqe/H0;->d:Lke/f;

    :cond_0
    iget-object v0, p0, Lqe/H0;->d:Lke/f;

    return-object v0
.end method

.method public k0(S)F
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0, p1}, Lwe/i0;->k0(S)F

    move-result p1

    return p1
.end method

.method public keySet()LCe/g;
    .locals 1

    iget-object v0, p0, Lqe/H0;->c:LCe/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0}, Lwe/i0;->keySet()LCe/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->G2(LCe/g;)LCe/g;

    move-result-object v0

    iput-object v0, p0, Lqe/H0;->c:LCe/g;

    :cond_0
    iget-object v0, p0, Lqe/H0;->c:LCe/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0}, Lwe/i0;->l()S

    move-result v0

    return v0
.end method

.method public o(Lme/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o7(SFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p0(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0, p1}, Lwe/i0;->p0(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Short;",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0}, Lwe/i0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0}, Lwe/i0;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public wb(Lze/p0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public wc(SF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public y(F)Z
    .locals 1

    iget-object v0, p0, Lqe/H0;->b:Lwe/i0;

    invoke-interface {v0, p1}, Lwe/i0;->y(F)Z

    move-result p1

    return p1
.end method

.method public y4(SF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
