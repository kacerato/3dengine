.class public Lqe/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/q;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/q;

.field public transient c:LCe/c;

.field public transient d:Lke/a;


# direct methods
.method public constructor <init>(Lwe/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/w;->c:LCe/c;

    iput-object v0, p0, Lqe/w;->d:Lke/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/w;->b:Lwe/q;

    return-void
.end method

.method public static synthetic b(Lqe/w;)Lwe/q;
    .locals 0

    iget-object p0, p0, Lqe/w;->b:Lwe/q;

    return-object p0
.end method


# virtual methods
.method public A(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0, p1}, Lwe/q;->A(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public B(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0, p1}, Lwe/q;->B(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public E2(DB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F5(DB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G(D)Z
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0, p1, p2}, Lwe/q;->G(D)Z

    move-result p1

    return p1
.end method

.method public O([D)[D
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0, p1}, Lwe/q;->O([D)[D

    move-result-object p1

    return-object p1
.end method

.method public P2(DB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S([B)[B
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0, p1}, Lwe/q;->S([B)[B

    move-result-object p1

    return-object p1
.end method

.method public Ud(Lze/s;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)B
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

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

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

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0}, Lwe/q;->i()B

    move-result v0

    return v0
.end method

.method public ie(Lze/s;)Z
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0, p1}, Lwe/q;->ie(Lze/s;)Z

    move-result p1

    return p1
.end method

.method public increment(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0}, Lwe/q;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/t;
    .locals 1

    new-instance v0, Lqe/w$a;

    invoke-direct {v0, p0}, Lqe/w$a;-><init>(Lqe/w;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0}, Lwe/q;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/a;
    .locals 1

    iget-object v0, p0, Lqe/w;->d:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0}, Lwe/q;->k()Lke/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->b1(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, Lqe/w;->d:Lke/a;

    :cond_0
    iget-object v0, p0, Lqe/w;->d:Lke/a;

    return-object v0
.end method

.method public keySet()LCe/c;
    .locals 1

    iget-object v0, p0, Lqe/w;->c:LCe/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0}, Lwe/q;->keySet()LCe/c;

    move-result-object v0

    invoke-static {v0}, Lke/c;->C2(LCe/c;)LCe/c;

    move-result-object v0

    iput-object v0, p0, Lqe/w;->c:LCe/c;

    :cond_0
    iget-object v0, p0, Lqe/w;->c:LCe/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0}, Lwe/q;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public mc(DBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n0(D)B
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0, p1, p2}, Lwe/q;->n0(D)B

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

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0}, Lwe/q;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(B)Z
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0, p1}, Lwe/q;->u(B)Z

    move-result p1

    return p1
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, Lqe/w;->b:Lwe/q;

    invoke-interface {v0}, Lwe/q;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public x2(Lwe/q;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
