.class public Lqe/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/I;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/I;

.field public transient c:LCe/e;

.field public transient d:Lke/e;


# direct methods
.method public constructor <init>(Lwe/I;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/W;->c:LCe/e;

    iput-object v0, p0, Lqe/W;->d:Lke/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/W;->b:Lwe/I;

    return-void
.end method

.method public static synthetic a(Lqe/W;)Lwe/I;
    .locals 0

    iget-object p0, p0, Lqe/W;->b:Lwe/I;

    return-object p0
.end method


# virtual methods
.method public B0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0, p1}, Lwe/I;->C(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public Gb(ID)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(I)Z
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0, p1}, Lwe/I;->K(I)Z

    move-result p1

    return p1
.end method

.method public N6(ID)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T([D)[D
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0, p1}, Lwe/I;->T([D)[D

    move-result-object p1

    return-object p1
.end method

.method public Ub(Lze/M;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X([I)[I
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0, p1}, Lwe/I;->X([I)[I

    move-result-object p1

    return-object p1
.end method

.method public c0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0, p1}, Lwe/I;->c0(Lze/S;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

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

.method public get(I)D
    .locals 2

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0, p1}, Lwe/I;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0}, Lwe/I;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0}, Lwe/I;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/N;
    .locals 1

    new-instance v0, Lqe/W$a;

    invoke-direct {v0, p0}, Lqe/W$a;-><init>(Lqe/W;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0}, Lwe/I;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/e;
    .locals 1

    iget-object v0, p0, Lqe/W;->d:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0}, Lwe/I;->k()Lke/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->d1(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, Lqe/W;->d:Lke/e;

    :cond_0
    iget-object v0, p0, Lqe/W;->d:Lke/e;

    return-object v0
.end method

.method public keySet()LCe/e;
    .locals 1

    iget-object v0, p0, Lqe/W;->c:LCe/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0}, Lwe/I;->keySet()LCe/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->E2(LCe/e;)LCe/e;

    move-result-object v0

    iput-object v0, p0, Lqe/W;->c:LCe/e;

    :cond_0
    iget-object v0, p0, Lqe/W;->c:LCe/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0}, Lwe/I;->l()I

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
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public qd(Lwe/I;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0}, Lwe/I;->size()I

    move-result v0

    return v0
.end method

.method public tc(Lze/M;)Z
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0, p1}, Lwe/I;->tc(Lze/M;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v9(IDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0}, Lwe/I;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public x(D)Z
    .locals 1

    iget-object v0, p0, Lqe/W;->b:Lwe/I;

    invoke-interface {v0, p1, p2}, Lwe/I;->x(D)Z

    move-result p1

    return p1
.end method

.method public z7(ID)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
