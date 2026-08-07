.class public Lqe/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/s;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/s;

.field public transient c:LCe/c;

.field public transient d:Lke/e;


# direct methods
.method public constructor <init>(Lwe/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/z;->c:LCe/c;

    iput-object v0, p0, Lqe/z;->d:Lke/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/z;->b:Lwe/s;

    return-void
.end method

.method public static synthetic b(Lqe/z;)Lwe/s;
    .locals 0

    iget-object p0, p0, Lqe/z;->b:Lwe/s;

    return-object p0
.end method


# virtual methods
.method public B(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0, p1}, Lwe/s;->B(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public C(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0, p1}, Lwe/s;->C(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public C5(DD)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F4(Lze/u;)Z
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0, p1}, Lwe/s;->F4(Lze/u;)Z

    move-result p1

    return p1
.end method

.method public G(D)Z
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0, p1, p2}, Lwe/s;->G(D)Z

    move-result p1

    return p1
.end method

.method public H2(DD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O([D)[D
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0, p1}, Lwe/s;->O([D)[D

    move-result-object p1

    return-object p1
.end method

.method public Ra(DDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S2(DD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T([D)[D
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0, p1}, Lwe/s;->T([D)[D

    move-result-object p1

    return-object p1
.end method

.method public a(D)D
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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

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

.method public g7(Lwe/s;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0}, Lwe/s;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public increment(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0}, Lwe/s;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/v;
    .locals 1

    new-instance v0, Lqe/z$a;

    invoke-direct {v0, p0}, Lqe/z$a;-><init>(Lqe/z;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0}, Lwe/s;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/e;
    .locals 1

    iget-object v0, p0, Lqe/z;->d:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0}, Lwe/s;->k()Lke/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->d1(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, Lqe/z;->d:Lke/e;

    :cond_0
    iget-object v0, p0, Lqe/z;->d:Lke/e;

    return-object v0
.end method

.method public keySet()LCe/c;
    .locals 1

    iget-object v0, p0, Lqe/z;->c:LCe/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0}, Lwe/s;->keySet()LCe/c;

    move-result-object v0

    invoke-static {v0}, Lke/c;->C2(LCe/c;)LCe/c;

    move-result-object v0

    iput-object v0, p0, Lqe/z;->c:LCe/c;

    :cond_0
    iget-object v0, p0, Lqe/z;->c:LCe/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0}, Lwe/s;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public n(Lme/c;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n0(D)D
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0, p1, p2}, Lwe/s;->n0(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public o9(Lze/u;)Z
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
            "Ljava/lang/Double;",
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

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0}, Lwe/s;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0}, Lwe/s;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public x(D)Z
    .locals 1

    iget-object v0, p0, Lqe/z;->b:Lwe/s;

    invoke-interface {v0, p1, p2}, Lwe/s;->x(D)Z

    move-result p1

    return p1
.end method
