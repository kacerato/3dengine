.class public Lqe/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/m0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/m0;

.field public transient c:LCe/g;

.field public transient d:Lke/i;


# direct methods
.method public constructor <init>(Lwe/m0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/N0;->c:LCe/g;

    iput-object v0, p0, Lqe/N0;->d:Lke/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/N0;->b:Lwe/m0;

    return-void
.end method

.method public static synthetic a(Lqe/N0;)Lwe/m0;
    .locals 0

    iget-object p0, p0, Lqe/N0;->b:Lwe/m0;

    return-object p0
.end method


# virtual methods
.method public D(S)Z
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0, p1}, Lwe/m0;->D(S)Z

    move-result p1

    return p1
.end method

.method public Dc(SS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public E0(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F7(SSS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F8(Lze/u0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0, p1}, Lwe/m0;->M(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public Q([S)[S
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0, p1}, Lwe/m0;->Q([S)[S

    move-result-object p1

    return-object p1
.end method

.method public Y4(SS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b0([S)[S
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0, p1}, Lwe/m0;->b0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(S)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

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

.method public h0(S)Z
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0, p1}, Lwe/m0;->h0(S)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0}, Lwe/m0;->i()S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0}, Lwe/m0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/v0;
    .locals 1

    new-instance v0, Lqe/N0$a;

    invoke-direct {v0, p0}, Lqe/N0$a;-><init>(Lqe/N0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0}, Lwe/m0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/i;
    .locals 1

    iget-object v0, p0, Lqe/N0;->d:Lke/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0}, Lwe/m0;->k()Lke/i;

    move-result-object v0

    invoke-static {v0}, Lke/c;->h1(Lke/i;)Lke/i;

    move-result-object v0

    iput-object v0, p0, Lqe/N0;->d:Lke/i;

    :cond_0
    iget-object v0, p0, Lqe/N0;->d:Lke/i;

    return-object v0
.end method

.method public k0(S)S
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0, p1}, Lwe/m0;->k0(S)S

    move-result p1

    return p1
.end method

.method public keySet()LCe/g;
    .locals 1

    iget-object v0, p0, Lqe/N0;->c:LCe/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0}, Lwe/m0;->keySet()LCe/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->G2(LCe/g;)LCe/g;

    move-result-object v0

    iput-object v0, p0, Lqe/N0;->c:LCe/g;

    :cond_0
    iget-object v0, p0, Lqe/N0;->c:LCe/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0}, Lwe/m0;->l()S

    move-result v0

    return v0
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
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q(Lme/h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0}, Lwe/m0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u5(SS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0}, Lwe/m0;->values()[S

    move-result-object v0

    return-object v0
.end method

.method public w8(Lze/u0;)Z
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0, p1}, Lwe/m0;->w8(Lze/u0;)Z

    move-result p1

    return p1
.end method

.method public z(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/N0;->b:Lwe/m0;

    invoke-interface {v0, p1}, Lwe/m0;->z(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public z9(Lwe/m0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
