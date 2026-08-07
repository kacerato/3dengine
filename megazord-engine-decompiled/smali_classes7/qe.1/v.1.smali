.class public Lqe/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/p;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/p;

.field public transient c:LCe/b;

.field public transient d:Lke/i;


# direct methods
.method public constructor <init>(Lwe/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/v;->c:LCe/b;

    iput-object v0, p0, Lqe/v;->d:Lke/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/v;->b:Lwe/p;

    return-void
.end method

.method public static synthetic a(Lqe/v;)Lwe/p;
    .locals 0

    iget-object p0, p0, Lqe/v;->b:Lwe/p;

    return-object p0
.end method


# virtual methods
.method public B2(CS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Fd(Lwe/p;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H(C)Z
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0, p1}, Lwe/p;->H(C)Z

    move-result p1

    return p1
.end method

.method public L7(Lze/r;)Z
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0, p1}, Lwe/p;->L7(Lze/r;)Z

    move-result p1

    return p1
.end method

.method public N([C)[C
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0, p1}, Lwe/p;->N([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Sb(CS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z3(CS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(C)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b0([S)[S
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0, p1}, Lwe/p;->b0([S)[S

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

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

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

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0, p1}, Lwe/p;->h0(S)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0}, Lwe/p;->i()S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0}, Lwe/p;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/s;
    .locals 1

    new-instance v0, Lqe/v$a;

    invoke-direct {v0, p0}, Lqe/v$a;-><init>(Lqe/v;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0}, Lwe/p;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/i;
    .locals 1

    iget-object v0, p0, Lqe/v;->d:Lke/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0}, Lwe/p;->k()Lke/i;

    move-result-object v0

    invoke-static {v0}, Lke/c;->h1(Lke/i;)Lke/i;

    move-result-object v0

    iput-object v0, p0, Lqe/v;->d:Lke/i;

    :cond_0
    iget-object v0, p0, Lqe/v;->d:Lke/i;

    return-object v0
.end method

.method public keySet()LCe/b;
    .locals 1

    iget-object v0, p0, Lqe/v;->c:LCe/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0}, Lwe/p;->keySet()LCe/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->B2(LCe/b;)LCe/b;

    move-result-object v0

    iput-object v0, p0, Lqe/v;->c:LCe/b;

    :cond_0
    iget-object v0, p0, Lqe/v;->c:LCe/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0}, Lwe/p;->l()C

    move-result v0

    return v0
.end method

.method public l0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0, p1}, Lwe/p;->l0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public m0(C)S
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0, p1}, Lwe/p;->m0(C)S

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
            "Ljava/lang/Character;",
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

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0}, Lwe/p;->size()I

    move-result v0

    return v0
.end method

.method public t8(Lze/r;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u9(CSS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0}, Lwe/p;->values()[S

    move-result-object v0

    return-object v0
.end method

.method public z(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/v;->b:Lwe/p;

    invoke-interface {v0, p1}, Lwe/p;->z(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public z0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
