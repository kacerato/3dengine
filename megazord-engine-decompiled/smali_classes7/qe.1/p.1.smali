.class public Lqe/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/l;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/l;

.field public transient c:LCe/b;

.field public transient d:Lke/f;


# direct methods
.method public constructor <init>(Lwe/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/p;->c:LCe/b;

    iput-object v0, p0, Lqe/p;->d:Lke/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/p;->b:Lwe/l;

    return-void
.end method

.method public static synthetic a(Lqe/p;)Lwe/l;
    .locals 0

    iget-object p0, p0, Lqe/p;->b:Lwe/l;

    return-object p0
.end method


# virtual methods
.method public Da(Lze/m;)Z
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0, p1}, Lwe/l;->Da(Lze/m;)Z

    move-result p1

    return p1
.end method

.method public H(C)Z
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0, p1}, Lwe/l;->H(C)Z

    move-result p1

    return p1
.end method

.method public N([C)[C
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0, p1}, Lwe/l;->N([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Nb(CF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U([F)[F
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0, p1}, Lwe/l;->U([F)[F

    move-result-object p1

    return-object p1
.end method

.method public Y5(CF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ac(Lwe/l;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(C)F
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

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

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

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0}, Lwe/l;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0}, Lwe/l;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/n;
    .locals 1

    new-instance v0, Lqe/p$a;

    invoke-direct {v0, p0}, Lqe/p$a;-><init>(Lqe/p;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0}, Lwe/l;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/f;
    .locals 1

    iget-object v0, p0, Lqe/p;->d:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0}, Lwe/l;->k()Lke/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->e1(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, Lqe/p;->d:Lke/f;

    :cond_0
    iget-object v0, p0, Lqe/p;->d:Lke/f;

    return-object v0
.end method

.method public keySet()LCe/b;
    .locals 1

    iget-object v0, p0, Lqe/p;->c:LCe/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0}, Lwe/l;->keySet()LCe/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->B2(LCe/b;)LCe/b;

    move-result-object v0

    iput-object v0, p0, Lqe/p;->c:LCe/b;

    :cond_0
    iget-object v0, p0, Lqe/p;->c:LCe/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0}, Lwe/l;->l()C

    move-result v0

    return v0
.end method

.method public l0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0, p1}, Lwe/l;->l0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public m0(C)F
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0, p1}, Lwe/l;->m0(C)F

    move-result p1

    return p1
.end method

.method public o(Lme/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ob(Lze/m;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p0(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0, p1}, Lwe/l;->p0(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public p6(CFF)F
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r3(CF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0}, Lwe/l;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0}, Lwe/l;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public y(F)Z
    .locals 1

    iget-object v0, p0, Lqe/p;->b:Lwe/l;

    invoke-interface {v0, p1}, Lwe/l;->y(F)Z

    move-result p1

    return p1
.end method

.method public z0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
