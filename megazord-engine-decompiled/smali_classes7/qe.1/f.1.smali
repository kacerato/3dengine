.class public Lqe/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/e;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/e;

.field public transient c:LCe/a;

.field public transient d:Lke/g;


# direct methods
.method public constructor <init>(Lwe/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/f;->c:LCe/a;

    iput-object v0, p0, Lqe/f;->d:Lke/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/f;->b:Lwe/e;

    return-void
.end method

.method public static synthetic a(Lqe/f;)Lwe/e;
    .locals 0

    iget-object p0, p0, Lqe/f;->b:Lwe/e;

    return-object p0
.end method


# virtual methods
.method public A0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I(B)Z
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0, p1}, Lwe/e;->I(B)Z

    move-result p1

    return p1
.end method

.method public K5(Lwe/e;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Mc(BII)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public P([B)[B
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0, p1}, Lwe/e;->P([B)[B

    move-result-object p1

    return-object p1
.end method

.method public W([I)[I
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0, p1}, Lwe/e;->W([I)[I

    move-result-object p1

    return-object p1
.end method

.method public X5(Lze/e;)Z
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0, p1}, Lwe/e;->X5(Lze/e;)Z

    move-result p1

    return p1
.end method

.method public a0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0, p1}, Lwe/e;->a0(Lze/S;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

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

.method public f(Lme/e;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public f5(BI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g0(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0, p1}, Lwe/e;->g0(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0}, Lwe/e;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0}, Lwe/e;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/f;
    .locals 1

    new-instance v0, Lqe/f$a;

    invoke-direct {v0, p0}, Lqe/f$a;-><init>(Lqe/f;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0}, Lwe/e;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/g;
    .locals 1

    iget-object v0, p0, Lqe/f;->d:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0}, Lwe/e;->k()Lke/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->f1(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, Lqe/f;->d:Lke/g;

    :cond_0
    iget-object v0, p0, Lqe/f;->d:Lke/g;

    return-object v0
.end method

.method public keySet()LCe/a;
    .locals 1

    iget-object v0, p0, Lqe/f;->c:LCe/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0}, Lwe/e;->keySet()LCe/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->A2(LCe/a;)LCe/a;

    move-result-object v0

    iput-object v0, p0, Lqe/f;->c:LCe/a;

    :cond_0
    iget-object v0, p0, Lqe/f;->c:LCe/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0}, Lwe/e;->l()B

    move-result v0

    return v0
.end method

.method public m(B)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n4(BI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public oc(BI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p9(Lze/e;)Z
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(B)I
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0, p1}, Lwe/e;->q0(B)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0}, Lwe/e;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(I)Z
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0, p1}, Lwe/e;->v(I)Z

    move-result p1

    return p1
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, Lqe/f;->b:Lwe/e;

    invoke-interface {v0}, Lwe/e;->values()[I

    move-result-object v0

    return-object v0
.end method
