.class public Lqe/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/i;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/i;

.field public transient c:LCe/b;

.field public transient d:Lke/a;


# direct methods
.method public constructor <init>(Lwe/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/l;->c:LCe/b;

    iput-object v0, p0, Lqe/l;->d:Lke/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/l;->b:Lwe/i;

    return-void
.end method

.method public static synthetic a(Lqe/l;)Lwe/i;
    .locals 0

    iget-object p0, p0, Lqe/l;->b:Lwe/i;

    return-object p0
.end method


# virtual methods
.method public A(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0, p1}, Lwe/i;->A(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public Cb(CB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H(C)Z
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0, p1}, Lwe/i;->H(C)Z

    move-result p1

    return p1
.end method

.method public N([C)[C
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0, p1}, Lwe/i;->N([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Q5(CB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S([B)[B
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0, p1}, Lwe/i;->S([B)[B

    move-result-object p1

    return-object p1
.end method

.method public Z8(CBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(C)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c4(Lze/j;)Z
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0, p1}, Lwe/i;->c4(Lze/j;)Z

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

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

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

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0}, Lwe/i;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0}, Lwe/i;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/k;
    .locals 1

    new-instance v0, Lqe/l$a;

    invoke-direct {v0, p0}, Lqe/l$a;-><init>(Lqe/l;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0}, Lwe/i;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public ja(Lze/j;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()Lke/a;
    .locals 1

    iget-object v0, p0, Lqe/l;->d:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0}, Lwe/i;->k()Lke/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->b1(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, Lqe/l;->d:Lke/a;

    :cond_0
    iget-object v0, p0, Lqe/l;->d:Lke/a;

    return-object v0
.end method

.method public keySet()LCe/b;
    .locals 1

    iget-object v0, p0, Lqe/l;->c:LCe/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0}, Lwe/i;->keySet()LCe/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->B2(LCe/b;)LCe/b;

    move-result-object v0

    iput-object v0, p0, Lqe/l;->c:LCe/b;

    :cond_0
    iget-object v0, p0, Lqe/l;->c:LCe/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0}, Lwe/i;->l()C

    move-result v0

    return v0
.end method

.method public l0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0, p1}, Lwe/i;->l0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public m0(C)B
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0, p1}, Lwe/i;->m0(C)B

    move-result p1

    return p1
.end method

.method public pa(Lwe/i;)V
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

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0}, Lwe/i;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(B)Z
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0, p1}, Lwe/i;->u(B)Z

    move-result p1

    return p1
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, Lqe/l;->b:Lwe/i;

    invoke-interface {v0}, Lwe/i;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public z0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z3(CB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
