.class public Lqe/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/x;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/x;

.field public transient c:LCe/c;

.field public transient d:Lke/i;


# direct methods
.method public constructor <init>(Lwe/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/G;->c:LCe/c;

    iput-object v0, p0, Lqe/G;->d:Lke/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/G;->b:Lwe/x;

    return-void
.end method

.method public static synthetic b(Lqe/G;)Lwe/x;
    .locals 0

    iget-object p0, p0, Lqe/G;->b:Lwe/x;

    return-object p0
.end method


# virtual methods
.method public B(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0, p1}, Lwe/x;->B(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public G(D)Z
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0, p1, p2}, Lwe/x;->G(D)Z

    move-result p1

    return p1
.end method

.method public Ic(DSS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O([D)[D
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0, p1}, Lwe/x;->O([D)[D

    move-result-object p1

    return-object p1
.end method

.method public V2(DS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b0([S)[S
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0, p1}, Lwe/x;->b0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public c6(DS)Z
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

.method public dd(Lze/A;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

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

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0, p1}, Lwe/x;->h0(S)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0}, Lwe/x;->i()S

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

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0}, Lwe/x;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/B;
    .locals 1

    new-instance v0, Lqe/G$a;

    invoke-direct {v0, p0}, Lqe/G$a;-><init>(Lqe/G;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0}, Lwe/x;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/i;
    .locals 1

    iget-object v0, p0, Lqe/G;->d:Lke/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0}, Lwe/x;->k()Lke/i;

    move-result-object v0

    invoke-static {v0}, Lke/c;->h1(Lke/i;)Lke/i;

    move-result-object v0

    iput-object v0, p0, Lqe/G;->d:Lke/i;

    :cond_0
    iget-object v0, p0, Lqe/G;->d:Lke/i;

    return-object v0
.end method

.method public keySet()LCe/c;
    .locals 1

    iget-object v0, p0, Lqe/G;->c:LCe/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0}, Lwe/x;->keySet()LCe/c;

    move-result-object v0

    invoke-static {v0}, Lke/c;->C2(LCe/c;)LCe/c;

    move-result-object v0

    iput-object v0, p0, Lqe/G;->c:LCe/c;

    :cond_0
    iget-object v0, p0, Lqe/G;->c:LCe/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0}, Lwe/x;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public m3(DS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n0(D)S
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0, p1, p2}, Lwe/x;->n0(D)S

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

.method public sd(Lze/A;)Z
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0, p1}, Lwe/x;->sd(Lze/A;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0}, Lwe/x;->size()I

    move-result v0

    return v0
.end method

.method public ta(Lwe/x;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0}, Lwe/x;->values()[S

    move-result-object v0

    return-object v0
.end method

.method public z(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/G;->b:Lwe/x;

    invoke-interface {v0, p1}, Lwe/x;->z(Lze/t0;)Z

    move-result p1

    return p1
.end method
