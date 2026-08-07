.class public Lqe/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/k;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/k;

.field public transient c:LCe/b;

.field public transient d:Lke/e;


# direct methods
.method public constructor <init>(Lwe/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/o;->c:LCe/b;

    iput-object v0, p0, Lqe/o;->d:Lke/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/o;->b:Lwe/k;

    return-void
.end method

.method public static synthetic a(Lqe/o;)Lwe/k;
    .locals 0

    iget-object p0, p0, Lqe/o;->b:Lwe/k;

    return-object p0
.end method


# virtual methods
.method public A4(Lwe/k;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0, p1}, Lwe/k;->C(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public H(C)Z
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0, p1}, Lwe/k;->H(C)Z

    move-result p1

    return p1
.end method

.method public H7(CDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Hb(Lze/l;)Z
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0, p1}, Lwe/k;->Hb(Lze/l;)Z

    move-result p1

    return p1
.end method

.method public N([C)[C
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0, p1}, Lwe/k;->N([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Qb(CD)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T([D)[D
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0, p1}, Lwe/k;->T([D)[D

    move-result-object p1

    return-object p1
.end method

.method public W5(CD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(C)D
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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

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

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hc(Lze/l;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0}, Lwe/k;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0}, Lwe/k;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/m;
    .locals 1

    new-instance v0, Lqe/o$a;

    invoke-direct {v0, p0}, Lqe/o$a;-><init>(Lqe/o;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0}, Lwe/k;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/e;
    .locals 1

    iget-object v0, p0, Lqe/o;->d:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0}, Lwe/k;->k()Lke/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->d1(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, Lqe/o;->d:Lke/e;

    :cond_0
    iget-object v0, p0, Lqe/o;->d:Lke/e;

    return-object v0
.end method

.method public keySet()LCe/b;
    .locals 1

    iget-object v0, p0, Lqe/o;->c:LCe/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0}, Lwe/k;->keySet()LCe/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->B2(LCe/b;)LCe/b;

    move-result-object v0

    iput-object v0, p0, Lqe/o;->c:LCe/b;

    :cond_0
    iget-object v0, p0, Lqe/o;->c:LCe/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0}, Lwe/k;->l()C

    move-result v0

    return v0
.end method

.method public l0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0, p1}, Lwe/k;->l0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public m0(C)D
    .locals 2

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0, p1}, Lwe/k;->m0(C)D

    move-result-wide v0

    return-wide v0
.end method

.method public n(Lme/c;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n3(CD)D
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
            "Ljava/lang/Character;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0}, Lwe/k;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0}, Lwe/k;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public x(D)Z
    .locals 1

    iget-object v0, p0, Lqe/o;->b:Lwe/k;

    invoke-interface {v0, p1, p2}, Lwe/k;->x(D)Z

    move-result p1

    return p1
.end method

.method public z0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
