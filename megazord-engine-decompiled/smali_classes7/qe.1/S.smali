.class public Lqe/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/F;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/F;

.field public transient c:LCe/d;

.field public transient d:Lke/i;


# direct methods
.method public constructor <init>(Lwe/F;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/S;->c:LCe/d;

    iput-object v0, p0, Lqe/S;->d:Lke/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/S;->b:Lwe/F;

    return-void
.end method

.method public static synthetic a(Lqe/S;)Lwe/F;
    .locals 0

    iget-object p0, p0, Lqe/S;->b:Lwe/F;

    return-object p0
.end method


# virtual methods
.method public A2(FSS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C0(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public L(F)Z
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0, p1}, Lwe/F;->L(F)Z

    move-result p1

    return p1
.end method

.method public O6(Lze/J;)Z
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0, p1}, Lwe/F;->O6(Lze/J;)Z

    move-result p1

    return p1
.end method

.method public V([F)[F
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0, p1}, Lwe/F;->V([F)[F

    move-result-object p1

    return-object p1
.end method

.method public b0([S)[S
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0, p1}, Lwe/F;->b0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public b4(FS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(F)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ce(Lwe/F;)V
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

.method public d0(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0, p1}, Lwe/F;->d0(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public d5(Lze/J;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

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

.method public g8(FS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h0(S)Z
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0, p1}, Lwe/F;->h0(S)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->i()S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/K;
    .locals 1

    new-instance v0, Lqe/S$a;

    invoke-direct {v0, p0}, Lqe/S$a;-><init>(Lqe/S;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/i;
    .locals 1

    iget-object v0, p0, Lqe/S;->d:Lke/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->k()Lke/i;

    move-result-object v0

    invoke-static {v0}, Lke/c;->h1(Lke/i;)Lke/i;

    move-result-object v0

    iput-object v0, p0, Lqe/S;->d:Lke/i;

    :cond_0
    iget-object v0, p0, Lqe/S;->d:Lke/i;

    return-object v0
.end method

.method public keySet()LCe/d;
    .locals 1

    iget-object v0, p0, Lqe/S;->c:LCe/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->keySet()LCe/d;

    move-result-object v0

    invoke-static {v0}, Lke/c;->D2(LCe/d;)LCe/d;

    move-result-object v0

    iput-object v0, p0, Lqe/S;->c:LCe/d;

    :cond_0
    iget-object v0, p0, Lqe/S;->c:LCe/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->l()F

    move-result v0

    return v0
.end method

.method public o0(F)S
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0, p1}, Lwe/F;->o0(F)S

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
            "Ljava/lang/Float;",
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

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->size()I

    move-result v0

    return v0
.end method

.method public td(FS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->values()[S

    move-result-object v0

    return-object v0
.end method

.method public z(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/S;->b:Lwe/F;

    invoke-interface {v0, p1}, Lwe/F;->z(Lze/t0;)Z

    move-result p1

    return p1
.end method
