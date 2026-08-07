.class public Lqe/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lke/i;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:J = 0x19420080cb5ef71eL


# instance fields
.field public final b:Lke/i;


# direct methods
.method public constructor <init>(Lke/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/F0;->b:Lke/i;

    return-void
.end method


# virtual methods
.method public K0([S)[S
    .locals 1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-interface {v0, p1}, Lke/i;->K0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public U0(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-interface {v0, p1}, Lke/i;->U0(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public V0(S)Z
    .locals 1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-interface {v0, p1}, Lke/i;->V0(S)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Short;",
            ">;)Z"
        }
    .end annotation

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

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-interface {v0, p1}, Lke/i;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public d(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d1(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d2([S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public f2(Lke/i;)Z
    .locals 1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-interface {v0, p1}, Lke/i;->f2(Lke/i;)Z

    move-result p1

    return p1
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-interface {v0}, Lke/i;->i()S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-interface {v0}, Lke/i;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/s0;
    .locals 1

    new-instance v0, Lqe/F0$a;

    invoke-direct {v0, p0}, Lqe/F0$a;-><init>(Lqe/F0;)V

    return-object v0
.end method

.method public j1(Lke/i;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public l1(Lke/i;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n2(Lke/i;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p1([S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-interface {v0}, Lke/i;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[S
    .locals 1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-interface {v0}, Lke/i;->toArray()[S

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u2([S)Z
    .locals 1

    iget-object v0, p0, Lqe/F0;->b:Lke/i;

    invoke-interface {v0, p1}, Lke/i;->u2([S)Z

    move-result p1

    return p1
.end method

.method public w1([S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
