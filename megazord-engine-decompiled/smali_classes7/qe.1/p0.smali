.class public Lqe/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/Y;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/Y<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/Y<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient d:Lke/a;


# direct methods
.method public constructor <init>(Lwe/Y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/Y<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/p0;->c:Ljava/util/Set;

    iput-object v0, p0, Lqe/p0;->d:Lke/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/p0;->b:Lwe/Y;

    return-void
.end method

.method public static synthetic a(Lqe/p0;)Lwe/Y;
    .locals 0

    iget-object p0, p0, Lqe/p0;->b:Lwe/Y;

    return-object p0
.end method


# virtual methods
.method public A(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0, p1}, Lwe/Y;->A(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public R5(Lze/d0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/d0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0, p1}, Lwe/Y;->R5(Lze/d0;)Z

    move-result p1

    return p1
.end method

.method public S([B)[B
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0, p1}, Lwe/Y;->S([B)[B

    move-result-object p1

    return-object p1
.end method

.method public U4(Ljava/lang/Object;B)B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
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

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0, p1}, Lwe/Y;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d7(Ljava/lang/Object;B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

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

.method public gb(Lze/d0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/d0<",
            "-TK;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(Ljava/lang/Object;)B
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0, p1}, Lwe/Y;->get(Ljava/lang/Object;)B

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0}, Lwe/Y;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0}, Lwe/Y;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/f0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lqe/p0$a;

    invoke-direct {v0, p0}, Lqe/p0$a;-><init>(Lqe/p0;)V

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0}, Lwe/Y;->j()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j0(Lze/k0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/k0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0, p1}, Lwe/Y;->j0(Lze/k0;)Z

    move-result p1

    return p1
.end method

.method public k()Lke/a;
    .locals 1

    iget-object v0, p0, Lqe/p0;->d:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0}, Lwe/Y;->k()Lke/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->b1(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, Lqe/p0;->d:Lke/a;

    :cond_0
    iget-object v0, p0, Lqe/p0;->d:Lke/a;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lqe/p0;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0}, Lwe/Y;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lqe/p0;->c:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lqe/p0;->c:Ljava/util/Set;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0}, Lwe/Y;->size()I

    move-result v0

    return v0
.end method

.method public t3(Ljava/lang/Object;BB)B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;BB)B"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(B)Z
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0, p1}, Lwe/Y;->u(B)Z

    move-result p1

    return p1
.end method

.method public u3(Lwe/Y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/Y<",
            "+TK;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0}, Lwe/Y;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public x0(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public y0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)[TK;"
        }
    .end annotation

    iget-object v0, p0, Lqe/p0;->b:Lwe/Y;

    invoke-interface {v0, p1}, Lwe/Y;->y0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y5(Ljava/lang/Object;B)B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
