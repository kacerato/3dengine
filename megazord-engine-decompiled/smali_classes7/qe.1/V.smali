.class public Lqe/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lke/g;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:J = 0x19420080cb5ef71eL


# instance fields
.field public final b:Lke/g;


# direct methods
.method public constructor <init>(Lke/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/V;->b:Lke/g;

    return-void
.end method


# virtual methods
.method public L1([I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M0([I)[I
    .locals 1

    iget-object v0, p0, Lqe/V;->b:Lke/g;

    invoke-interface {v0, p1}, Lke/g;->M0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public Q0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/V;->b:Lke/g;

    invoke-interface {v0, p1}, Lke/g;->Q0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public Y1(Lke/g;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c2([I)Z
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

.method public contains(I)Z
    .locals 1

    iget-object v0, p0, Lqe/V;->b:Lke/g;

    invoke-interface {v0, p1}, Lke/g;->contains(I)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lqe/V;->b:Lke/g;

    invoke-interface {v0, p1}, Lke/g;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public h1(Lke/g;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h2([I)Z
    .locals 1

    iget-object v0, p0, Lqe/V;->b:Lke/g;

    invoke-interface {v0, p1}, Lke/g;->h2([I)Z

    move-result p1

    return p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lqe/V;->b:Lke/g;

    invoke-interface {v0}, Lke/g;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/V;->b:Lke/g;

    invoke-interface {v0}, Lke/g;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/Q;
    .locals 1

    new-instance v0, Lqe/V$a;

    invoke-direct {v0, p0}, Lqe/V$a;-><init>(Lqe/V;)V

    return-object v0
.end method

.method public k1(Lke/g;)Z
    .locals 1

    iget-object v0, p0, Lqe/V;->b:Lke/g;

    invoke-interface {v0, p1}, Lke/g;->k1(Lke/g;)Z

    move-result p1

    return p1
.end method

.method public k2([I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public m1(Lke/g;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)Z
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

    iget-object v0, p0, Lqe/V;->b:Lke/g;

    invoke-interface {v0}, Lke/g;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[I
    .locals 1

    iget-object v0, p0, Lqe/V;->b:Lke/g;

    invoke-interface {v0}, Lke/g;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/V;->b:Lke/g;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
