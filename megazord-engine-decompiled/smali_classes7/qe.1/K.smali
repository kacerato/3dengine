.class public Lqe/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/A;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/A;

.field public transient c:LCe/d;

.field public transient d:Lke/e;


# direct methods
.method public constructor <init>(Lwe/A;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/K;->c:LCe/d;

    iput-object v0, p0, Lqe/K;->d:Lke/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/K;->b:Lwe/A;

    return-void
.end method

.method public static synthetic a(Lqe/K;)Lwe/A;
    .locals 0

    iget-object p0, p0, Lqe/K;->b:Lwe/A;

    return-object p0
.end method


# virtual methods
.method public A6(Lze/D;)Z
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0, p1}, Lwe/A;->A6(Lze/D;)Z

    move-result p1

    return p1
.end method

.method public C(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0, p1}, Lwe/A;->C(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public C0(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C4(Lze/D;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public E3(FD)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public L(F)Z
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0, p1}, Lwe/A;->L(F)Z

    move-result p1

    return p1
.end method

.method public O3(FDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q7(FD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T([D)[D
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0, p1}, Lwe/A;->T([D)[D

    move-result-object p1

    return-object p1
.end method

.method public V([F)[F
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0, p1}, Lwe/A;->V([F)[F

    move-result-object p1

    return-object p1
.end method

.method public bd(FD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(F)D
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

.method public d0(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0, p1}, Lwe/A;->d0(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

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

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0}, Lwe/A;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0}, Lwe/A;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/E;
    .locals 1

    new-instance v0, Lqe/K$a;

    invoke-direct {v0, p0}, Lqe/K$a;-><init>(Lqe/K;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0}, Lwe/A;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/e;
    .locals 1

    iget-object v0, p0, Lqe/K;->d:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0}, Lwe/A;->k()Lke/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->d1(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, Lqe/K;->d:Lke/e;

    :cond_0
    iget-object v0, p0, Lqe/K;->d:Lke/e;

    return-object v0
.end method

.method public keySet()LCe/d;
    .locals 1

    iget-object v0, p0, Lqe/K;->c:LCe/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0}, Lwe/A;->keySet()LCe/d;

    move-result-object v0

    invoke-static {v0}, Lke/c;->D2(LCe/d;)LCe/d;

    move-result-object v0

    iput-object v0, p0, Lqe/K;->c:LCe/d;

    :cond_0
    iget-object v0, p0, Lqe/K;->c:LCe/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0}, Lwe/A;->l()F

    move-result v0

    return v0
.end method

.method public n(Lme/c;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o0(F)D
    .locals 2

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0, p1}, Lwe/A;->o0(F)D

    move-result-wide v0

    return-wide v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0}, Lwe/A;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0}, Lwe/A;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public x(D)Z
    .locals 1

    iget-object v0, p0, Lqe/K;->b:Lwe/A;

    invoke-interface {v0, p1, p2}, Lwe/A;->x(D)Z

    move-result p1

    return p1
.end method

.method public xb(Lwe/A;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
