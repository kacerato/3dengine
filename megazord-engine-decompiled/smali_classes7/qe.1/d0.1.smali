.class public Lqe/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/N;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/N;

.field public transient c:LCe/e;

.field public transient d:Lke/i;


# direct methods
.method public constructor <init>(Lwe/N;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/d0;->c:LCe/e;

    iput-object v0, p0, Lqe/d0;->d:Lke/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/d0;->b:Lwe/N;

    return-void
.end method

.method public static synthetic a(Lqe/d0;)Lwe/N;
    .locals 0

    iget-object p0, p0, Lqe/d0;->b:Lwe/N;

    return-object p0
.end method


# virtual methods
.method public B0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H9(Lze/T;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ja(IS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(I)Z
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0, p1}, Lwe/N;->K(I)Z

    move-result p1

    return p1
.end method

.method public Pc(Lwe/N;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T7(IS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ta(ISS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X([I)[I
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0, p1}, Lwe/N;->X([I)[I

    move-result-object p1

    return-object p1
.end method

.method public a4(Lze/T;)Z
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0, p1}, Lwe/N;->a4(Lze/T;)Z

    move-result p1

    return p1
.end method

.method public b0([S)[S
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0, p1}, Lwe/N;->b0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public c0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0, p1}, Lwe/N;->c0(Lze/S;)Z

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

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

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

.method public get(I)S
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0, p1}, Lwe/N;->get(I)S

    move-result p1

    return p1
.end method

.method public h0(S)Z
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0, p1}, Lwe/N;->h0(S)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0}, Lwe/N;->i()S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0}, Lwe/N;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/U;
    .locals 1

    new-instance v0, Lqe/d0$a;

    invoke-direct {v0, p0}, Lqe/d0$a;-><init>(Lqe/d0;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0}, Lwe/N;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/i;
    .locals 1

    iget-object v0, p0, Lqe/d0;->d:Lke/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0}, Lwe/N;->k()Lke/i;

    move-result-object v0

    invoke-static {v0}, Lke/c;->h1(Lke/i;)Lke/i;

    move-result-object v0

    iput-object v0, p0, Lqe/d0;->d:Lke/i;

    :cond_0
    iget-object v0, p0, Lqe/d0;->d:Lke/i;

    return-object v0
.end method

.method public keySet()LCe/e;
    .locals 1

    iget-object v0, p0, Lqe/d0;->c:LCe/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0}, Lwe/N;->keySet()LCe/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->E2(LCe/e;)LCe/e;

    move-result-object v0

    iput-object v0, p0, Lqe/d0;->c:LCe/e;

    :cond_0
    iget-object v0, p0, Lqe/d0;->c:LCe/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0}, Lwe/N;->l()I

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
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q(Lme/h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q7(IS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0}, Lwe/N;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0}, Lwe/N;->values()[S

    move-result-object v0

    return-object v0
.end method

.method public z(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/d0;->b:Lwe/N;

    invoke-interface {v0, p1}, Lwe/N;->z(Lze/t0;)Z

    move-result p1

    return p1
.end method
