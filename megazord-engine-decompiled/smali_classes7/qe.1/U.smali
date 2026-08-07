.class public Lqe/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/H;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/H;

.field public transient c:LCe/e;

.field public transient d:Lke/b;


# direct methods
.method public constructor <init>(Lwe/H;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/U;->c:LCe/e;

    iput-object v0, p0, Lqe/U;->d:Lke/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/U;->b:Lwe/H;

    return-void
.end method

.method public static synthetic a(Lqe/U;)Lwe/H;
    .locals 0

    iget-object p0, p0, Lqe/U;->b:Lwe/H;

    return-object p0
.end method


# virtual methods
.method public A7(IC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public B0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(I)Z
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0, p1}, Lwe/H;->K(I)Z

    move-result p1

    return p1
.end method

.method public P6(IC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R([C)[C
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0, p1}, Lwe/H;->R([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Rb(IC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X([I)[I
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0, p1}, Lwe/H;->X([I)[I

    move-result-object p1

    return-object p1
.end method

.method public c0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0, p1}, Lwe/H;->c0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0, p1}, Lwe/H;->e0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

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

.method public f7(Lwe/H;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(I)C
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0, p1}, Lwe/H;->get(I)C

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0}, Lwe/H;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0}, Lwe/H;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/M;
    .locals 1

    new-instance v0, Lqe/U$a;

    invoke-direct {v0, p0}, Lqe/U$a;-><init>(Lqe/U;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0}, Lwe/H;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/b;
    .locals 1

    iget-object v0, p0, Lqe/U;->d:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0}, Lwe/H;->k()Lke/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->c1(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, Lqe/U;->d:Lke/b;

    :cond_0
    iget-object v0, p0, Lqe/U;->d:Lke/b;

    return-object v0
.end method

.method public keySet()LCe/e;
    .locals 1

    iget-object v0, p0, Lqe/U;->c:LCe/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0}, Lwe/H;->keySet()LCe/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->E2(LCe/e;)LCe/e;

    move-result-object v0

    iput-object v0, p0, Lqe/U;->c:LCe/e;

    :cond_0
    iget-object v0, p0, Lqe/U;->c:LCe/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0}, Lwe/H;->l()I

    move-result v0

    return v0
.end method

.method public nb(ICC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p(Lme/b;)V
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
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0}, Lwe/H;->size()I

    move-result v0

    return v0
.end method

.method public t(C)Z
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0, p1}, Lwe/H;->t(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0}, Lwe/H;->values()[C

    move-result-object v0

    return-object v0
.end method

.method public x6(Lze/L;)Z
    .locals 1

    iget-object v0, p0, Lqe/U;->b:Lwe/H;

    invoke-interface {v0, p1}, Lwe/H;->x6(Lze/L;)Z

    move-result p1

    return p1
.end method

.method public z4(Lze/L;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
