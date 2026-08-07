.class public Lqe/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/d;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/d;

.field public transient c:LCe/a;

.field public transient d:Lke/f;


# direct methods
.method public constructor <init>(Lwe/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/e;->c:LCe/a;

    iput-object v0, p0, Lqe/e;->d:Lke/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/e;->b:Lwe/d;

    return-void
.end method

.method public static synthetic a(Lqe/e;)Lwe/d;
    .locals 0

    iget-object p0, p0, Lqe/e;->b:Lwe/d;

    return-object p0
.end method


# virtual methods
.method public A0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Cd(Lwe/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I(B)Z
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0, p1}, Lwe/d;->I(B)Z

    move-result p1

    return p1
.end method

.method public P([B)[B
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0, p1}, Lwe/d;->P([B)[B

    move-result-object p1

    return-object p1
.end method

.method public U([F)[F
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0, p1}, Lwe/d;->U([F)[F

    move-result-object p1

    return-object p1
.end method

.method public U3(Lze/d;)Z
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0, p1}, Lwe/d;->U3(Lze/d;)Z

    move-result p1

    return p1
.end method

.method public W4(BF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a8(Lze/d;)Z
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

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

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

.method public f4(BF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g0(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0, p1}, Lwe/d;->g0(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0}, Lwe/d;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0}, Lwe/d;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/e;
    .locals 1

    new-instance v0, Lqe/e$a;

    invoke-direct {v0, p0}, Lqe/e$a;-><init>(Lqe/e;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0}, Lwe/d;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/f;
    .locals 1

    iget-object v0, p0, Lqe/e;->d:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0}, Lwe/d;->k()Lke/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->e1(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, Lqe/e;->d:Lke/f;

    :cond_0
    iget-object v0, p0, Lqe/e;->d:Lke/f;

    return-object v0
.end method

.method public keySet()LCe/a;
    .locals 1

    iget-object v0, p0, Lqe/e;->c:LCe/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0}, Lwe/d;->keySet()LCe/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->A2(LCe/a;)LCe/a;

    move-result-object v0

    iput-object v0, p0, Lqe/e;->c:LCe/a;

    :cond_0
    iget-object v0, p0, Lqe/e;->c:LCe/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0}, Lwe/d;->l()B

    move-result v0

    return v0
.end method

.method public m(B)F
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

.method public p0(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0, p1}, Lwe/d;->p0(Lze/I;)Z

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
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(B)F
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0, p1}, Lwe/d;->q0(B)F

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0}, Lwe/d;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uc(BF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public v5(BFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0}, Lwe/d;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public y(F)Z
    .locals 1

    iget-object v0, p0, Lqe/e;->b:Lwe/d;

    invoke-interface {v0, p1}, Lwe/d;->y(F)Z

    move-result p1

    return p1
.end method
