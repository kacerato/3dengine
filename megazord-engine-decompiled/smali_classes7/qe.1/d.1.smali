.class public Lqe/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/c;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/c;

.field public transient c:LCe/a;

.field public transient d:Lke/e;


# direct methods
.method public constructor <init>(Lwe/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/d;->c:LCe/a;

    iput-object v0, p0, Lqe/d;->d:Lke/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/d;->b:Lwe/c;

    return-void
.end method

.method public static synthetic a(Lqe/d;)Lwe/c;
    .locals 0

    iget-object p0, p0, Lqe/d;->b:Lwe/c;

    return-object p0
.end method


# virtual methods
.method public A0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0, p1}, Lwe/c;->C(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public I(B)Z
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0, p1}, Lwe/c;->I(B)Z

    move-result p1

    return p1
.end method

.method public J6(BDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public P([B)[B
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0, p1}, Lwe/c;->P([B)[B

    move-result-object p1

    return-object p1
.end method

.method public T([D)[D
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0, p1}, Lwe/c;->T([D)[D

    move-result-object p1

    return-object p1
.end method

.method public T4(BD)D
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

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

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

.method public g0(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0, p1}, Lwe/c;->g0(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0}, Lwe/c;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0}, Lwe/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/d;
    .locals 1

    new-instance v0, Lqe/d$a;

    invoke-direct {v0, p0}, Lqe/d$a;-><init>(Lqe/d;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0}, Lwe/c;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public jc(Lwe/c;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()Lke/e;
    .locals 1

    iget-object v0, p0, Lqe/d;->d:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0}, Lwe/c;->k()Lke/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->d1(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, Lqe/d;->d:Lke/e;

    :cond_0
    iget-object v0, p0, Lqe/d;->d:Lke/e;

    return-object v0
.end method

.method public keySet()LCe/a;
    .locals 1

    iget-object v0, p0, Lqe/d;->c:LCe/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0}, Lwe/c;->keySet()LCe/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->A2(LCe/a;)LCe/a;

    move-result-object v0

    iput-object v0, p0, Lqe/d;->c:LCe/a;

    :cond_0
    iget-object v0, p0, Lqe/d;->c:LCe/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0}, Lwe/c;->l()B

    move-result v0

    return v0
.end method

.method public l8(Lze/c;)Z
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0, p1}, Lwe/c;->l8(Lze/c;)Z

    move-result p1

    return p1
.end method

.method public m(B)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(B)D
    .locals 2

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0, p1}, Lwe/c;->q0(B)D

    move-result-wide v0

    return-wide v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0}, Lwe/c;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u8(Lze/c;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0}, Lwe/c;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public x(D)Z
    .locals 1

    iget-object v0, p0, Lqe/d;->b:Lwe/c;

    invoke-interface {v0, p1, p2}, Lwe/c;->x(D)Z

    move-result p1

    return p1
.end method

.method public x4(BD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public xc(BD)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
