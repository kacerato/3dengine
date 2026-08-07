.class public Lqe/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/K;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/K;

.field public transient c:LCe/e;

.field public transient d:Lke/g;


# direct methods
.method public constructor <init>(Lwe/K;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/Y;->c:LCe/e;

    iput-object v0, p0, Lqe/Y;->d:Lke/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/Y;->b:Lwe/K;

    return-void
.end method

.method public static synthetic a(Lqe/Y;)Lwe/K;
    .locals 0

    iget-object p0, p0, Lqe/Y;->b:Lwe/K;

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

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0, p1}, Lwe/K;->K(I)Z

    move-result p1

    return p1
.end method

.method public M7(II)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Qa(II)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W([I)[I
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0, p1}, Lwe/K;->W([I)[I

    move-result-object p1

    return-object p1
.end method

.method public X([I)[I
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0, p1}, Lwe/K;->X([I)[I

    move-result-object p1

    return-object p1
.end method

.method public X6(II)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z5(Lwe/K;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0, p1}, Lwe/K;->a0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public ba(Lze/O;)Z
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0, p1}, Lwe/K;->ba(Lze/O;)Z

    move-result p1

    return p1
.end method

.method public c0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0, p1}, Lwe/K;->c0(Lze/S;)Z

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

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

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

.method public get(I)I
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0, p1}, Lwe/K;->get(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0}, Lwe/K;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0}, Lwe/K;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/P;
    .locals 1

    new-instance v0, Lqe/Y$a;

    invoke-direct {v0, p0}, Lqe/Y$a;-><init>(Lqe/Y;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0}, Lwe/K;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/g;
    .locals 1

    iget-object v0, p0, Lqe/Y;->d:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0}, Lwe/K;->k()Lke/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->f1(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, Lqe/Y;->d:Lke/g;

    :cond_0
    iget-object v0, p0, Lqe/Y;->d:Lke/g;

    return-object v0
.end method

.method public keySet()LCe/e;
    .locals 1

    iget-object v0, p0, Lqe/Y;->c:LCe/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0}, Lwe/K;->keySet()LCe/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->E2(LCe/e;)LCe/e;

    move-result-object v0

    iput-object v0, p0, Lqe/Y;->c:LCe/e;

    :cond_0
    iget-object v0, p0, Lqe/Y;->c:LCe/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0}, Lwe/K;->l()I

    move-result v0

    return v0
.end method

.method public n7(III)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p5(Lze/O;)Z
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
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0}, Lwe/K;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(I)Z
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0, p1}, Lwe/K;->v(I)Z

    move-result p1

    return p1
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, Lqe/Y;->b:Lwe/K;

    invoke-interface {v0}, Lwe/K;->values()[I

    move-result-object v0

    return-object v0
.end method
