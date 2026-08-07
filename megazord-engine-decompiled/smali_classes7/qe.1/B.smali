.class public Lqe/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/u;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/u;

.field public transient c:LCe/c;

.field public transient d:Lke/g;


# direct methods
.method public constructor <init>(Lwe/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/B;->c:LCe/c;

    iput-object v0, p0, Lqe/B;->d:Lke/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/B;->b:Lwe/u;

    return-void
.end method

.method public static synthetic b(Lqe/B;)Lwe/u;
    .locals 0

    iget-object p0, p0, Lqe/B;->b:Lwe/u;

    return-object p0
.end method


# virtual methods
.method public B(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0, p1}, Lwe/u;->B(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public C2(DI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G(D)Z
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0, p1, p2}, Lwe/u;->G(D)Z

    move-result p1

    return p1
.end method

.method public J7(Lze/w;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M8(Lze/w;)Z
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0, p1}, Lwe/u;->M8(Lze/w;)Z

    move-result p1

    return p1
.end method

.method public N5(DI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O([D)[D
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0, p1}, Lwe/u;->O([D)[D

    move-result-object p1

    return-object p1
.end method

.method public W([I)[I
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0, p1}, Lwe/u;->W([I)[I

    move-result-object p1

    return-object p1
.end method

.method public X2(DI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0, p1}, Lwe/u;->a0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ea(Lwe/u;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

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

.method public f(Lme/e;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0}, Lwe/u;->i()I

    move-result v0

    return v0
.end method

.method public increment(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0}, Lwe/u;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/x;
    .locals 1

    new-instance v0, Lqe/B$a;

    invoke-direct {v0, p0}, Lqe/B$a;-><init>(Lqe/B;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0}, Lwe/u;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/g;
    .locals 1

    iget-object v0, p0, Lqe/B;->d:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0}, Lwe/u;->k()Lke/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->f1(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, Lqe/B;->d:Lke/g;

    :cond_0
    iget-object v0, p0, Lqe/B;->d:Lke/g;

    return-object v0
.end method

.method public keySet()LCe/c;
    .locals 1

    iget-object v0, p0, Lqe/B;->c:LCe/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0}, Lwe/u;->keySet()LCe/c;

    move-result-object v0

    invoke-static {v0}, Lke/c;->C2(LCe/c;)LCe/c;

    move-result-object v0

    iput-object v0, p0, Lqe/B;->c:LCe/c;

    :cond_0
    iget-object v0, p0, Lqe/B;->c:LCe/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0}, Lwe/u;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public n0(D)I
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0, p1, p2}, Lwe/u;->n0(D)I

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
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q6(DII)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0}, Lwe/u;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(I)Z
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0, p1}, Lwe/u;->v(I)Z

    move-result p1

    return p1
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, Lqe/B;->b:Lwe/u;

    invoke-interface {v0}, Lwe/u;->values()[I

    move-result-object v0

    return-object v0
.end method
