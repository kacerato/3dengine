.class public Lqe/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/f0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/f0;

.field public transient c:LCe/g;

.field public transient d:Lke/a;


# direct methods
.method public constructor <init>(Lwe/f0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/D0;->c:LCe/g;

    iput-object v0, p0, Lqe/D0;->d:Lke/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/D0;->b:Lwe/f0;

    return-void
.end method

.method public static synthetic a(Lqe/D0;)Lwe/f0;
    .locals 0

    iget-object p0, p0, Lqe/D0;->b:Lwe/f0;

    return-object p0
.end method


# virtual methods
.method public A(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0, p1}, Lwe/f0;->A(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public B4(SB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D(S)Z
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0, p1}, Lwe/f0;->D(S)Z

    move-result p1

    return p1
.end method

.method public E0(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J9(Lze/m0;)Z
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0, p1}, Lwe/f0;->J9(Lze/m0;)Z

    move-result p1

    return p1
.end method

.method public L4(SB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0, p1}, Lwe/f0;->M(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public P9(SBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q([S)[S
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0, p1}, Lwe/f0;->Q([S)[S

    move-result-object p1

    return-object p1
.end method

.method public S([B)[B
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0, p1}, Lwe/f0;->S([B)[B

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(S)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ec(SB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

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

.method public g(Lme/a;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0}, Lwe/f0;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0}, Lwe/f0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/n0;
    .locals 1

    new-instance v0, Lqe/D0$a;

    invoke-direct {v0, p0}, Lqe/D0$a;-><init>(Lqe/D0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0}, Lwe/f0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/a;
    .locals 1

    iget-object v0, p0, Lqe/D0;->d:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0}, Lwe/f0;->k()Lke/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->b1(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, Lqe/D0;->d:Lke/a;

    :cond_0
    iget-object v0, p0, Lqe/D0;->d:Lke/a;

    return-object v0
.end method

.method public k0(S)B
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0, p1}, Lwe/f0;->k0(S)B

    move-result p1

    return p1
.end method

.method public keySet()LCe/g;
    .locals 1

    iget-object v0, p0, Lqe/D0;->c:LCe/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0}, Lwe/f0;->keySet()LCe/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->G2(LCe/g;)LCe/g;

    move-result-object v0

    iput-object v0, p0, Lqe/D0;->c:LCe/g;

    :cond_0
    iget-object v0, p0, Lqe/D0;->c:LCe/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0}, Lwe/f0;->l()S

    move-result v0

    return v0
.end method

.method public m7(Lze/m0;)Z
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
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0}, Lwe/f0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(B)Z
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0, p1}, Lwe/f0;->u(B)Z

    move-result p1

    return p1
.end method

.method public v6(Lwe/f0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, Lqe/D0;->b:Lwe/f0;

    invoke-interface {v0}, Lwe/f0;->values()[B

    move-result-object v0

    return-object v0
.end method
