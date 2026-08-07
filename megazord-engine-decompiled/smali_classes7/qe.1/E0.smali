.class public Lqe/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/g0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/g0;

.field public transient c:LCe/g;

.field public transient d:Lke/b;


# direct methods
.method public constructor <init>(Lwe/g0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/E0;->c:LCe/g;

    iput-object v0, p0, Lqe/E0;->d:Lke/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/E0;->b:Lwe/g0;

    return-void
.end method

.method public static synthetic a(Lqe/E0;)Lwe/g0;
    .locals 0

    iget-object p0, p0, Lqe/E0;->b:Lwe/g0;

    return-object p0
.end method


# virtual methods
.method public Bc(SC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D(S)Z
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0, p1}, Lwe/g0;->D(S)Z

    move-result p1

    return p1
.end method

.method public E0(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F2(Lze/n0;)Z
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0, p1}, Lwe/g0;->F2(Lze/n0;)Z

    move-result p1

    return p1
.end method

.method public M(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0, p1}, Lwe/g0;->M(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public N4(SC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q([S)[S
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0, p1}, Lwe/g0;->Q([S)[S

    move-result-object p1

    return-object p1
.end method

.method public R([C)[C
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0, p1}, Lwe/g0;->R([C)[C

    move-result-object p1

    return-object p1
.end method

.method public b8(SCC)C
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

.method public d(S)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0, p1}, Lwe/g0;->e0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

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

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0}, Lwe/g0;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0}, Lwe/g0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/o0;
    .locals 1

    new-instance v0, Lqe/E0$a;

    invoke-direct {v0, p0}, Lqe/E0$a;-><init>(Lqe/E0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0}, Lwe/g0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/b;
    .locals 1

    iget-object v0, p0, Lqe/E0;->d:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0}, Lwe/g0;->k()Lke/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->c1(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, Lqe/E0;->d:Lke/b;

    :cond_0
    iget-object v0, p0, Lqe/E0;->d:Lke/b;

    return-object v0
.end method

.method public k0(S)C
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0, p1}, Lwe/g0;->k0(S)C

    move-result p1

    return p1
.end method

.method public keySet()LCe/g;
    .locals 1

    iget-object v0, p0, Lqe/E0;->c:LCe/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0}, Lwe/g0;->keySet()LCe/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->G2(LCe/g;)LCe/g;

    move-result-object v0

    iput-object v0, p0, Lqe/E0;->c:LCe/g;

    :cond_0
    iget-object v0, p0, Lqe/E0;->c:LCe/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0}, Lwe/g0;->l()S

    move-result v0

    return v0
.end method

.method public lb(Lwe/g0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o4(SC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p(Lme/b;)V
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
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0}, Lwe/g0;->size()I

    move-result v0

    return v0
.end method

.method public t(C)Z
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0, p1}, Lwe/g0;->t(C)Z

    move-result p1

    return p1
.end method

.method public t9(Lze/n0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, Lqe/E0;->b:Lwe/g0;

    invoke-interface {v0}, Lwe/g0;->values()[C

    move-result-object v0

    return-object v0
.end method
