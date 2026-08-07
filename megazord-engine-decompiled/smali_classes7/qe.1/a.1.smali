.class public Lqe/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/a;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/a;

.field public transient c:LCe/a;

.field public transient d:Lke/a;


# direct methods
.method public constructor <init>(Lwe/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/a;->c:LCe/a;

    iput-object v0, p0, Lqe/a;->d:Lke/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/a;->b:Lwe/a;

    return-void
.end method

.method public static synthetic a(Lqe/a;)Lwe/a;
    .locals 0

    iget-object p0, p0, Lqe/a;->b:Lwe/a;

    return-object p0
.end method


# virtual methods
.method public A(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0, p1}, Lwe/a;->A(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public A0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ac(BB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Fc(Lze/a;)Z
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0, p1}, Lwe/a;->Fc(Lze/a;)Z

    move-result p1

    return p1
.end method

.method public I(B)Z
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0, p1}, Lwe/a;->I(B)Z

    move-result p1

    return p1
.end method

.method public M4(BB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public P([B)[B
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0, p1}, Lwe/a;->P([B)[B

    move-result-object p1

    return-object p1
.end method

.method public S([B)[B
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0, p1}, Lwe/a;->S([B)[B

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

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

.method public g0(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0, p1}, Lwe/a;->g0(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0}, Lwe/a;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0}, Lwe/a;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/b;
    .locals 1

    new-instance v0, Lqe/a$a;

    invoke-direct {v0, p0}, Lqe/a$a;-><init>(Lqe/a;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0}, Lwe/a;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/a;
    .locals 1

    iget-object v0, p0, Lqe/a;->d:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0}, Lwe/a;->k()Lke/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->b1(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, Lqe/a;->d:Lke/a;

    :cond_0
    iget-object v0, p0, Lqe/a;->d:Lke/a;

    return-object v0
.end method

.method public keySet()LCe/a;
    .locals 1

    iget-object v0, p0, Lqe/a;->c:LCe/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0}, Lwe/a;->keySet()LCe/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->A2(LCe/a;)LCe/a;

    move-result-object v0

    iput-object v0, p0, Lqe/a;->c:LCe/a;

    :cond_0
    iget-object v0, p0, Lqe/a;->c:LCe/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0}, Lwe/a;->l()B

    move-result v0

    return v0
.end method

.method public m(B)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ma(Lze/a;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n8(BBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p4(BB)B
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
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(B)B
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0, p1}, Lwe/a;->q0(B)B

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0}, Lwe/a;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(B)Z
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0, p1}, Lwe/a;->u(B)Z

    move-result p1

    return p1
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, Lqe/a;->b:Lwe/a;

    invoke-interface {v0}, Lwe/a;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public y9(Lwe/a;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
