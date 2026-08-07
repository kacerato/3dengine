.class public Lqe/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/B;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/B;

.field public transient c:LCe/d;

.field public transient d:Lke/f;


# direct methods
.method public constructor <init>(Lwe/B;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/L;->c:LCe/d;

    iput-object v0, p0, Lqe/L;->d:Lke/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/L;->b:Lwe/B;

    return-void
.end method

.method public static synthetic a(Lqe/L;)Lwe/B;
    .locals 0

    iget-object p0, p0, Lqe/L;->b:Lwe/B;

    return-object p0
.end method


# virtual methods
.method public A3(FF)Z
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

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0, p1}, Lwe/B;->L(F)Z

    move-result p1

    return p1
.end method

.method public Qc(FF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S7(FF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U([F)[F
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0, p1}, Lwe/B;->U([F)[F

    move-result-object p1

    return-object p1
.end method

.method public V([F)[F
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0, p1}, Lwe/B;->V([F)[F

    move-result-object p1

    return-object p1
.end method

.method public X8(Lze/E;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Zd(FFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(F)F
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

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0, p1}, Lwe/B;->d0(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

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

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0}, Lwe/B;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0}, Lwe/B;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/F;
    .locals 1

    new-instance v0, Lqe/L$a;

    invoke-direct {v0, p0}, Lqe/L$a;-><init>(Lqe/L;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0}, Lwe/B;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/f;
    .locals 1

    iget-object v0, p0, Lqe/L;->d:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0}, Lwe/B;->k()Lke/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->e1(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, Lqe/L;->d:Lke/f;

    :cond_0
    iget-object v0, p0, Lqe/L;->d:Lke/f;

    return-object v0
.end method

.method public keySet()LCe/d;
    .locals 1

    iget-object v0, p0, Lqe/L;->c:LCe/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0}, Lwe/B;->keySet()LCe/d;

    move-result-object v0

    invoke-static {v0}, Lke/c;->D2(LCe/d;)LCe/d;

    move-result-object v0

    iput-object v0, p0, Lqe/L;->c:LCe/d;

    :cond_0
    iget-object v0, p0, Lqe/L;->c:LCe/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0}, Lwe/B;->l()F

    move-result v0

    return v0
.end method

.method public m9(Lwe/B;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o(Lme/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o0(F)F
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0, p1}, Lwe/B;->o0(F)F

    move-result p1

    return p1
.end method

.method public p0(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0, p1}, Lwe/B;->p0(Lze/I;)Z

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

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0}, Lwe/B;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0}, Lwe/B;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public y(F)Z
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0, p1}, Lwe/B;->y(F)Z

    move-result p1

    return p1
.end method

.method public yd(Lze/E;)Z
    .locals 1

    iget-object v0, p0, Lqe/L;->b:Lwe/B;

    invoke-interface {v0, p1}, Lwe/B;->yd(Lze/E;)Z

    move-result p1

    return p1
.end method
