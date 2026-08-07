.class public Lqe/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/J;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/J;

.field public transient c:LCe/e;

.field public transient d:Lke/f;


# direct methods
.method public constructor <init>(Lwe/J;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/X;->c:LCe/e;

    iput-object v0, p0, Lqe/X;->d:Lke/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/X;->b:Lwe/J;

    return-void
.end method

.method public static synthetic a(Lqe/X;)Lwe/J;
    .locals 0

    iget-object p0, p0, Lqe/X;->b:Lwe/J;

    return-object p0
.end method


# virtual methods
.method public B0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(I)Z
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0, p1}, Lwe/J;->K(I)Z

    move-result p1

    return p1
.end method

.method public Lb(IF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R8(Lze/N;)Z
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0, p1}, Lwe/J;->R8(Lze/N;)Z

    move-result p1

    return p1
.end method

.method public S6(IF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U([F)[F
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0, p1}, Lwe/J;->U([F)[F

    move-result-object p1

    return-object p1
.end method

.method public X([I)[I
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0, p1}, Lwe/J;->X([I)[I

    move-result-object p1

    return-object p1
.end method

.method public c0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0, p1}, Lwe/J;->c0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d8(IFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

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

.method public get(I)F
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0, p1}, Lwe/J;->get(I)F

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0}, Lwe/J;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0}, Lwe/J;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/O;
    .locals 1

    new-instance v0, Lqe/X$a;

    invoke-direct {v0, p0}, Lqe/X$a;-><init>(Lqe/X;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0}, Lwe/J;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/f;
    .locals 1

    iget-object v0, p0, Lqe/X;->d:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0}, Lwe/J;->k()Lke/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->e1(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, Lqe/X;->d:Lke/f;

    :cond_0
    iget-object v0, p0, Lqe/X;->d:Lke/f;

    return-object v0
.end method

.method public keySet()LCe/e;
    .locals 1

    iget-object v0, p0, Lqe/X;->c:LCe/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0}, Lwe/J;->keySet()LCe/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->E2(LCe/e;)LCe/e;

    move-result-object v0

    iput-object v0, p0, Lqe/X;->c:LCe/e;

    :cond_0
    iget-object v0, p0, Lqe/X;->c:LCe/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0}, Lwe/J;->l()I

    move-result v0

    return v0
.end method

.method public o(Lme/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p0(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0, p1}, Lwe/J;->p0(Lze/I;)Z

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
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0}, Lwe/J;->size()I

    move-result v0

    return v0
.end method

.method public t5(Lze/N;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0}, Lwe/J;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public vb(Lwe/J;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public x7(IF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public y(F)Z
    .locals 1

    iget-object v0, p0, Lqe/X;->b:Lwe/J;

    invoke-interface {v0, p1}, Lwe/J;->y(F)Z

    move-result p1

    return p1
.end method
