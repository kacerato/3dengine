.class public Lqe/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/r;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/r;

.field public transient c:LCe/c;

.field public transient d:Lke/b;


# direct methods
.method public constructor <init>(Lwe/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/x;->c:LCe/c;

    iput-object v0, p0, Lqe/x;->d:Lke/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/x;->b:Lwe/r;

    return-void
.end method

.method public static synthetic b(Lqe/x;)Lwe/r;
    .locals 0

    iget-object p0, p0, Lqe/x;->b:Lwe/r;

    return-object p0
.end method


# virtual methods
.method public B(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0, p1}, Lwe/r;->B(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public D5(DC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G(D)Z
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0, p1, p2}, Lwe/r;->G(D)Z

    move-result p1

    return p1
.end method

.method public G2(DC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O([D)[D
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0, p1}, Lwe/r;->O([D)[D

    move-result-object p1

    return-object p1
.end method

.method public Q2(DC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R([C)[C
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0, p1}, Lwe/r;->R([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Rd(Lze/t;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)C
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

.method public e0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0, p1}, Lwe/r;->e0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

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

.method public ha(DCC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0}, Lwe/r;->i()C

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

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0}, Lwe/r;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/u;
    .locals 1

    new-instance v0, Lqe/x$a;

    invoke-direct {v0, p0}, Lqe/x$a;-><init>(Lqe/x;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0}, Lwe/r;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/b;
    .locals 1

    iget-object v0, p0, Lqe/x;->d:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0}, Lwe/r;->k()Lke/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->c1(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, Lqe/x;->d:Lke/b;

    :cond_0
    iget-object v0, p0, Lqe/x;->d:Lke/b;

    return-object v0
.end method

.method public keySet()LCe/c;
    .locals 1

    iget-object v0, p0, Lqe/x;->c:LCe/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0}, Lwe/r;->keySet()LCe/c;

    move-result-object v0

    invoke-static {v0}, Lke/c;->C2(LCe/c;)LCe/c;

    move-result-object v0

    iput-object v0, p0, Lqe/x;->c:LCe/c;

    :cond_0
    iget-object v0, p0, Lqe/x;->c:LCe/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0}, Lwe/r;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public md(Lze/t;)Z
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0, p1}, Lwe/r;->md(Lze/t;)Z

    move-result p1

    return p1
.end method

.method public n0(D)C
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0, p1, p2}, Lwe/r;->n0(D)C

    move-result p1

    return p1
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
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q4(Lwe/r;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0}, Lwe/r;->size()I

    move-result v0

    return v0
.end method

.method public t(C)Z
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0, p1}, Lwe/r;->t(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, Lqe/x;->b:Lwe/r;

    invoke-interface {v0}, Lwe/r;->values()[C

    move-result-object v0

    return-object v0
.end method
