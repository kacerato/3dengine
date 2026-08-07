.class public Lqe/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/y;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/y;

.field public transient c:LCe/d;

.field public transient d:Lke/a;


# direct methods
.method public constructor <init>(Lwe/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/H;->c:LCe/d;

    iput-object v0, p0, Lqe/H;->d:Lke/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/H;->b:Lwe/y;

    return-void
.end method

.method public static synthetic a(Lqe/H;)Lwe/y;
    .locals 0

    iget-object p0, p0, Lqe/H;->b:Lwe/y;

    return-object p0
.end method


# virtual methods
.method public A(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0, p1}, Lwe/y;->A(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public C0(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I3(FB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public L(F)Z
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0, p1}, Lwe/y;->L(F)Z

    move-result p1

    return p1
.end method

.method public O7(FB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S([B)[B
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0, p1}, Lwe/y;->S([B)[B

    move-result-object p1

    return-object p1
.end method

.method public U5(FBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V([F)[F
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0, p1}, Lwe/y;->V([F)[F

    move-result-object p1

    return-object p1
.end method

.method public Zc(FB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(F)B
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

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0, p1}, Lwe/y;->d0(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public e8(Lze/B;)Z
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0, p1}, Lwe/y;->e8(Lze/B;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

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

.method public g(Lme/a;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0}, Lwe/y;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0}, Lwe/y;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/C;
    .locals 1

    new-instance v0, Lqe/H$a;

    invoke-direct {v0, p0}, Lqe/H$a;-><init>(Lqe/H;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0}, Lwe/y;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/a;
    .locals 1

    iget-object v0, p0, Lqe/H;->d:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0}, Lwe/y;->k()Lke/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->b1(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, Lqe/H;->d:Lke/a;

    :cond_0
    iget-object v0, p0, Lqe/H;->d:Lke/a;

    return-object v0
.end method

.method public keySet()LCe/d;
    .locals 1

    iget-object v0, p0, Lqe/H;->c:LCe/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0}, Lwe/y;->keySet()LCe/d;

    move-result-object v0

    invoke-static {v0}, Lke/c;->D2(LCe/d;)LCe/d;

    move-result-object v0

    iput-object v0, p0, Lqe/H;->c:LCe/d;

    :cond_0
    iget-object v0, p0, Lqe/H;->c:LCe/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0}, Lwe/y;->l()F

    move-result v0

    return v0
.end method

.method public nc(Lwe/y;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o0(F)B
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0, p1}, Lwe/y;->o0(F)B

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
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0}, Lwe/y;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(B)Z
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0, p1}, Lwe/y;->u(B)Z

    move-result p1

    return p1
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, Lqe/H;->b:Lwe/y;

    invoke-interface {v0}, Lwe/y;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public x3(Lze/B;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
