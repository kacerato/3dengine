.class public Lqe/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/k0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/k0;

.field public transient c:LCe/g;

.field public transient d:Lke/h;


# direct methods
.method public constructor <init>(Lwe/k0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/K0;->c:LCe/g;

    iput-object v0, p0, Lqe/K0;->d:Lke/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/K0;->b:Lwe/k0;

    return-void
.end method

.method public static synthetic a(Lqe/K0;)Lwe/k0;
    .locals 0

    iget-object p0, p0, Lqe/K0;->b:Lwe/k0;

    return-object p0
.end method


# virtual methods
.method public D(S)Z
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0, p1}, Lwe/k0;->D(S)Z

    move-result p1

    return p1
.end method

.method public E(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0, p1}, Lwe/k0;->E(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public E0(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0, p1}, Lwe/k0;->M(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public O9(Lze/r0;)Z
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0, p1}, Lwe/k0;->O9(Lze/r0;)Z

    move-result p1

    return p1
.end method

.method public P3(SJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q([S)[S
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0, p1}, Lwe/k0;->Q([S)[S

    move-result-object p1

    return-object p1
.end method

.method public Vc(Lze/r0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Y([J)[J
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0, p1}, Lwe/k0;->Y([J)[J

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(S)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

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

.method public h(Lme/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h5(SJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0}, Lwe/k0;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0}, Lwe/k0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/t0;
    .locals 1

    new-instance v0, Lqe/K0$a;

    invoke-direct {v0, p0}, Lqe/K0$a;-><init>(Lqe/K0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0}, Lwe/k0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/h;
    .locals 1

    iget-object v0, p0, Lqe/K0;->d:Lke/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0}, Lwe/k0;->k()Lke/h;

    move-result-object v0

    invoke-static {v0}, Lke/c;->g1(Lke/h;)Lke/h;

    move-result-object v0

    iput-object v0, p0, Lqe/K0;->d:Lke/h;

    :cond_0
    iget-object v0, p0, Lqe/K0;->d:Lke/h;

    return-object v0
.end method

.method public k0(S)J
    .locals 2

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0, p1}, Lwe/k0;->k0(S)J

    move-result-wide v0

    return-wide v0
.end method

.method public keySet()LCe/g;
    .locals 1

    iget-object v0, p0, Lqe/K0;->c:LCe/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0}, Lwe/k0;->keySet()LCe/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->G2(LCe/g;)LCe/g;

    move-result-object v0

    iput-object v0, p0, Lqe/K0;->c:LCe/g;

    :cond_0
    iget-object v0, p0, Lqe/K0;->c:LCe/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0}, Lwe/k0;->l()S

    move-result v0

    return v0
.end method

.method public m4(SJ)J
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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public qc(SJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0}, Lwe/k0;->size()I

    move-result v0

    return v0
.end method

.method public tb(Lwe/k0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0}, Lwe/k0;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public w(J)Z
    .locals 1

    iget-object v0, p0, Lqe/K0;->b:Lwe/k0;

    invoke-interface {v0, p1, p2}, Lwe/k0;->w(J)Z

    move-result p1

    return p1
.end method
