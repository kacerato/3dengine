.class public Lqe/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/G;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/G;

.field public transient c:LCe/e;

.field public transient d:Lke/a;


# direct methods
.method public constructor <init>(Lwe/G;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/T;->c:LCe/e;

    iput-object v0, p0, Lqe/T;->d:Lke/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/T;->b:Lwe/G;

    return-void
.end method

.method public static synthetic a(Lqe/T;)Lwe/G;
    .locals 0

    iget-object p0, p0, Lqe/T;->b:Lwe/G;

    return-object p0
.end method


# virtual methods
.method public A(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0, p1}, Lwe/G;->A(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public B0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C7(IB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(I)Z
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0, p1}, Lwe/G;->K(I)Z

    move-result p1

    return p1
.end method

.method public M6(IB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ma(Lze/K;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Pb(IB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S([B)[B
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0, p1}, Lwe/G;->S([B)[B

    move-result-object p1

    return-object p1
.end method

.method public X([I)[I
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0, p1}, Lwe/G;->X([I)[I

    move-result-object p1

    return-object p1
.end method

.method public c0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0, p1}, Lwe/G;->c0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ee(Lwe/G;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

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

.method public g6(Lze/K;)Z
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0, p1}, Lwe/G;->g6(Lze/K;)Z

    move-result p1

    return p1
.end method

.method public get(I)B
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0, p1}, Lwe/G;->get(I)B

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0}, Lwe/G;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0}, Lwe/G;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/L;
    .locals 1

    new-instance v0, Lqe/T$a;

    invoke-direct {v0, p0}, Lqe/T$a;-><init>(Lqe/T;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0}, Lwe/G;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/a;
    .locals 1

    iget-object v0, p0, Lqe/T;->d:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0}, Lwe/G;->k()Lke/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->b1(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, Lqe/T;->d:Lke/a;

    :cond_0
    iget-object v0, p0, Lqe/T;->d:Lke/a;

    return-object v0
.end method

.method public keySet()LCe/e;
    .locals 1

    iget-object v0, p0, Lqe/T;->c:LCe/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0}, Lwe/G;->keySet()LCe/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->E2(LCe/e;)LCe/e;

    move-result-object v0

    iput-object v0, p0, Lqe/T;->c:LCe/e;

    :cond_0
    iget-object v0, p0, Lqe/T;->c:LCe/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0}, Lwe/G;->l()I

    move-result v0

    return v0
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
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0}, Lwe/G;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(B)Z
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0, p1}, Lwe/G;->u(B)Z

    move-result p1

    return p1
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, Lqe/T;->b:Lwe/G;

    invoke-interface {v0}, Lwe/G;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public wa(IBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
