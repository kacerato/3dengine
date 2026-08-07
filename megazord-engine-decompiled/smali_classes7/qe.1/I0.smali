.class public Lqe/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/j0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/j0;

.field public transient c:LCe/g;

.field public transient d:Lke/g;


# direct methods
.method public constructor <init>(Lwe/j0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/I0;->c:LCe/g;

    iput-object v0, p0, Lqe/I0;->d:Lke/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/I0;->b:Lwe/j0;

    return-void
.end method

.method public static synthetic a(Lqe/I0;)Lwe/j0;
    .locals 0

    iget-object p0, p0, Lqe/I0;->b:Lwe/j0;

    return-object p0
.end method


# virtual methods
.method public D(S)Z
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0, p1}, Lwe/j0;->D(S)Z

    move-result p1

    return p1
.end method

.method public E0(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Lc(Lwe/j0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0, p1}, Lwe/j0;->M(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public N9(Lze/q0;)Z
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0, p1}, Lwe/j0;->N9(Lze/q0;)Z

    move-result p1

    return p1
.end method

.method public Q([S)[S
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0, p1}, Lwe/j0;->Q([S)[S

    move-result-object p1

    return-object p1
.end method

.method public R2(SII)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W([I)[I
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0, p1}, Lwe/j0;->W([I)[I

    move-result-object p1

    return-object p1
.end method

.method public a0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0, p1}, Lwe/j0;->a0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public c5(SI)I
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

.method public d(S)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

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

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0}, Lwe/j0;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0}, Lwe/j0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/r0;
    .locals 1

    new-instance v0, Lqe/I0$a;

    invoke-direct {v0, p0}, Lqe/I0$a;-><init>(Lqe/I0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0}, Lwe/j0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public j4(SI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()Lke/g;
    .locals 1

    iget-object v0, p0, Lqe/I0;->d:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0}, Lwe/j0;->k()Lke/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->f1(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, Lqe/I0;->d:Lke/g;

    :cond_0
    iget-object v0, p0, Lqe/I0;->d:Lke/g;

    return-object v0
.end method

.method public k0(S)I
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0, p1}, Lwe/j0;->k0(S)I

    move-result p1

    return p1
.end method

.method public keySet()LCe/g;
    .locals 1

    iget-object v0, p0, Lqe/I0;->c:LCe/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0}, Lwe/j0;->keySet()LCe/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->G2(LCe/g;)LCe/g;

    move-result-object v0

    iput-object v0, p0, Lqe/I0;->c:LCe/g;

    :cond_0
    iget-object v0, p0, Lqe/I0;->c:LCe/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0}, Lwe/j0;->l()S

    move-result v0

    return v0
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public rc(SI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0}, Lwe/j0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(I)Z
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0, p1}, Lwe/j0;->v(I)Z

    move-result p1

    return p1
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, Lqe/I0;->b:Lwe/j0;

    invoke-interface {v0}, Lwe/j0;->values()[I

    move-result-object v0

    return-object v0
.end method

.method public w3(Lze/q0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
