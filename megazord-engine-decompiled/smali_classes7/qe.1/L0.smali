.class public Lqe/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/l0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/l0<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/l0<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient c:LCe/g;

.field public transient d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwe/l0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/l0<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/L0;->c:LCe/g;

    iput-object v0, p0, Lqe/L0;->d:Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/L0;->b:Lwe/l0;

    return-void
.end method

.method public static synthetic a(Lqe/L0;)Lwe/l0;
    .locals 0

    iget-object p0, p0, Lqe/L0;->b:Lwe/l0;

    return-object p0
.end method


# virtual methods
.method public D(S)Z
    .locals 1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0, p1}, Lwe/l0;->D(S)Z

    move-result p1

    return p1
.end method

.method public M(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0, p1}, Lwe/l0;->M(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public Q([S)[S
    .locals 1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0, p1}, Lwe/l0;->Q([S)[S

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0, p1}, Lwe/l0;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(S)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

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

.method public f0(Lze/k0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/k0<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0, p1}, Lwe/l0;->f0(Lze/k0;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i0(Lme/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/g<",
            "TV;TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0}, Lwe/l0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/u0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lqe/L0$a;

    invoke-direct {v0, p0}, Lqe/L0$a;-><init>(Lqe/L0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0}, Lwe/l0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lqe/L0;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0}, Lwe/l0;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lqe/L0;->d:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Lqe/L0;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public k0(S)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)TV;"
        }
    .end annotation

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0, p1}, Lwe/l0;->k0(S)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public keySet()LCe/g;
    .locals 1

    iget-object v0, p0, Lqe/L0;->c:LCe/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0}, Lwe/l0;->keySet()LCe/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->G2(LCe/g;)LCe/g;

    move-result-object v0

    iput-object v0, p0, Lqe/L0;->c:LCe/g;

    :cond_0
    iget-object v0, p0, Lqe/L0;->c:LCe/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0}, Lwe/l0;->l()S

    move-result v0

    return v0
.end method

.method public p7(Lze/s0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/s0<",
            "-TV;>;)Z"
        }
    .end annotation

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
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public qb(Lwe/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/l0<",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r6(SLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(STV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s5(SLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(STV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0}, Lwe/l0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u6(Lze/s0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/s0<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0, p1}, Lwe/l0;->u6(Lze/s0;)Z

    move-result p1

    return p1
.end method

.method public v0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TV;)[TV;"
        }
    .end annotation

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0, p1}, Lwe/l0;->v0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqe/L0;->b:Lwe/l0;

    invoke-interface {v0}, Lwe/l0;->values()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
