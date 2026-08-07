.class public Lqe/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/t;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/t;

.field public transient c:LCe/c;

.field public transient d:Lke/f;


# direct methods
.method public constructor <init>(Lwe/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/A;->c:LCe/c;

    iput-object v0, p0, Lqe/A;->d:Lke/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/A;->b:Lwe/t;

    return-void
.end method

.method public static synthetic b(Lqe/A;)Lwe/t;
    .locals 0

    iget-object p0, p0, Lqe/A;->b:Lwe/t;

    return-object p0
.end method


# virtual methods
.method public B(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0, p1}, Lwe/t;->B(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public E9(DFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G(D)Z
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0, p1, p2}, Lwe/t;->G(D)Z

    move-result p1

    return p1
.end method

.method public H5(Lze/v;)Z
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0, p1}, Lwe/t;->H5(Lze/v;)Z

    move-result p1

    return p1
.end method

.method public O([D)[D
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0, p1}, Lwe/t;->O([D)[D

    move-result-object p1

    return-object p1
.end method

.method public U([F)[F
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0, p1}, Lwe/t;->U([F)[F

    move-result-object p1

    return-object p1
.end method

.method public U2(DF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V5(DF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ab(Lze/v;)Z
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

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

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

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public he(Lwe/t;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0}, Lwe/t;->i()F

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

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0}, Lwe/t;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/w;
    .locals 1

    new-instance v0, Lqe/A$a;

    invoke-direct {v0, p0}, Lqe/A$a;-><init>(Lqe/A;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0}, Lwe/t;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/f;
    .locals 1

    iget-object v0, p0, Lqe/A;->d:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0}, Lwe/t;->k()Lke/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->e1(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, Lqe/A;->d:Lke/f;

    :cond_0
    iget-object v0, p0, Lqe/A;->d:Lke/f;

    return-object v0
.end method

.method public keySet()LCe/c;
    .locals 1

    iget-object v0, p0, Lqe/A;->c:LCe/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0}, Lwe/t;->keySet()LCe/c;

    move-result-object v0

    invoke-static {v0}, Lke/c;->C2(LCe/c;)LCe/c;

    move-result-object v0

    iput-object v0, p0, Lqe/A;->c:LCe/c;

    :cond_0
    iget-object v0, p0, Lqe/A;->c:LCe/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0}, Lwe/t;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public n0(D)F
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0, p1, p2}, Lwe/t;->n0(D)F

    move-result p1

    return p1
.end method

.method public o(Lme/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p0(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0, p1}, Lwe/t;->p0(Lze/I;)Z

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
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0}, Lwe/t;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0}, Lwe/t;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public y(F)Z
    .locals 1

    iget-object v0, p0, Lqe/A;->b:Lwe/t;

    invoke-interface {v0, p1}, Lwe/t;->y(F)Z

    move-result p1

    return p1
.end method

.method public y2(DF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
