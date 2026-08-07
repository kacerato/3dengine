.class public Lqe/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/h;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/h;

.field public transient c:LCe/a;

.field public transient d:Lke/i;


# direct methods
.method public constructor <init>(Lwe/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/k;->c:LCe/a;

    iput-object v0, p0, Lqe/k;->d:Lke/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/k;->b:Lwe/h;

    return-void
.end method

.method public static synthetic a(Lqe/k;)Lwe/h;
    .locals 0

    iget-object p0, p0, Lqe/k;->b:Lwe/h;

    return-object p0
.end method


# virtual methods
.method public A0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Aa(Lwe/h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ab(BS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public B5(BS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public B9(Lze/i;)Z
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0, p1}, Lwe/h;->B9(Lze/i;)Z

    move-result p1

    return p1
.end method

.method public E8(BSS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I(B)Z
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0, p1}, Lwe/h;->I(B)Z

    move-result p1

    return p1
.end method

.method public K4(BS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public P([B)[B
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0, p1}, Lwe/h;->P([B)[B

    move-result-object p1

    return-object p1
.end method

.method public W3(Lze/i;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b0([S)[S
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0, p1}, Lwe/h;->b0([S)[S

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

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

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0, p1}, Lwe/h;->g0(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public h0(S)Z
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0, p1}, Lwe/h;->h0(S)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0}, Lwe/h;->i()S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0}, Lwe/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/j;
    .locals 1

    new-instance v0, Lqe/k$a;

    invoke-direct {v0, p0}, Lqe/k$a;-><init>(Lqe/k;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0}, Lwe/h;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/i;
    .locals 1

    iget-object v0, p0, Lqe/k;->d:Lke/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0}, Lwe/h;->k()Lke/i;

    move-result-object v0

    invoke-static {v0}, Lke/c;->h1(Lke/i;)Lke/i;

    move-result-object v0

    iput-object v0, p0, Lqe/k;->d:Lke/i;

    :cond_0
    iget-object v0, p0, Lqe/k;->d:Lke/i;

    return-object v0
.end method

.method public keySet()LCe/a;
    .locals 1

    iget-object v0, p0, Lqe/k;->c:LCe/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0}, Lwe/h;->keySet()LCe/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->A2(LCe/a;)LCe/a;

    move-result-object v0

    iput-object v0, p0, Lqe/k;->c:LCe/a;

    :cond_0
    iget-object v0, p0, Lqe/k;->c:LCe/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0}, Lwe/h;->l()B

    move-result v0

    return v0
.end method

.method public m(B)S
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

.method public q0(B)S
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0, p1}, Lwe/h;->q0(B)S

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0}, Lwe/h;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0}, Lwe/h;->values()[S

    move-result-object v0

    return-object v0
.end method

.method public z(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/k;->b:Lwe/h;

    invoke-interface {v0, p1}, Lwe/h;->z(Lze/t0;)Z

    move-result p1

    return p1
.end method
