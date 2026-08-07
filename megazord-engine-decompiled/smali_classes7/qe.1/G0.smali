.class public Lqe/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/h0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/h0;

.field public transient c:LCe/g;

.field public transient d:Lke/e;


# direct methods
.method public constructor <init>(Lwe/h0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/G0;->c:LCe/g;

    iput-object v0, p0, Lqe/G0;->d:Lke/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/G0;->b:Lwe/h0;

    return-void
.end method

.method public static synthetic a(Lqe/G0;)Lwe/h0;
    .locals 0

    iget-object p0, p0, Lqe/G0;->b:Lwe/h0;

    return-object p0
.end method


# virtual methods
.method public C(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0, p1}, Lwe/h0;->C(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public D(S)Z
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0, p1}, Lwe/h0;->D(S)Z

    move-result p1

    return p1
.end method

.method public E0(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K8(SDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Kd(Lze/o0;)Z
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0, p1}, Lwe/h0;->Kd(Lze/o0;)Z

    move-result p1

    return p1
.end method

.method public M(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0, p1}, Lwe/h0;->M(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public Q([S)[S
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0, p1}, Lwe/h0;->Q([S)[S

    move-result-object p1

    return-object p1
.end method

.method public Q8(Lze/o0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R4(SD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T([D)[D
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0, p1}, Lwe/h0;->T([D)[D

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(S)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

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

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0}, Lwe/h0;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public i7(Lwe/h0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0}, Lwe/h0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/p0;
    .locals 1

    new-instance v0, Lqe/G0$a;

    invoke-direct {v0, p0}, Lqe/G0$a;-><init>(Lqe/G0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0}, Lwe/h0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/e;
    .locals 1

    iget-object v0, p0, Lqe/G0;->d:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0}, Lwe/h0;->k()Lke/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->d1(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, Lqe/G0;->d:Lke/e;

    :cond_0
    iget-object v0, p0, Lqe/G0;->d:Lke/e;

    return-object v0
.end method

.method public k0(S)D
    .locals 2

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0, p1}, Lwe/h0;->k0(S)D

    move-result-wide v0

    return-wide v0
.end method

.method public keySet()LCe/g;
    .locals 1

    iget-object v0, p0, Lqe/G0;->c:LCe/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0}, Lwe/h0;->keySet()LCe/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->G2(LCe/g;)LCe/g;

    move-result-object v0

    iput-object v0, p0, Lqe/G0;->c:LCe/g;

    :cond_0
    iget-object v0, p0, Lqe/G0;->c:LCe/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0}, Lwe/h0;->l()S

    move-result v0

    return v0
.end method

.method public n(Lme/c;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r4(SD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0}, Lwe/h0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0}, Lwe/h0;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public x(D)Z
    .locals 1

    iget-object v0, p0, Lqe/G0;->b:Lwe/h0;

    invoke-interface {v0, p1, p2}, Lwe/h0;->x(D)Z

    move-result p1

    return p1
.end method

.method public zc(SD)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
