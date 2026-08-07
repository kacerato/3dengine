.class public Lqe/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/c0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/c0<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/c0<",
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

.field public transient d:Lke/g;


# direct methods
.method public constructor <init>(Lwe/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/c0<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/t0;->c:Ljava/util/Set;

    iput-object v0, p0, Lqe/t0;->d:Lke/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/t0;->b:Lwe/c0;

    return-void
.end method

.method public static synthetic a(Lqe/t0;)Lwe/c0;
    .locals 0

    iget-object p0, p0, Lqe/t0;->b:Lwe/c0;

    return-object p0
.end method


# virtual methods
.method public B7(Lwe/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/c0<",
            "+TK;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W([I)[I
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0, p1}, Lwe/c0;->W([I)[I

    move-result-object p1

    return-object p1
.end method

.method public a0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0, p1}, Lwe/c0;->a0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0, p1}, Lwe/c0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

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

.method public g4(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0, p1}, Lwe/c0;->get(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0}, Lwe/c0;->i()I

    move-result v0

    return v0
.end method

.method public i5(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0}, Lwe/c0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/j0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lqe/t0$a;

    invoke-direct {v0, p0}, Lqe/t0$a;-><init>(Lqe/t0;)V

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0}, Lwe/c0;->j()[Ljava/lang/Object;

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

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0, p1}, Lwe/c0;->j0(Lze/k0;)Z

    move-result p1

    return p1
.end method

.method public k()Lke/g;
    .locals 1

    iget-object v0, p0, Lqe/t0;->d:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0}, Lwe/c0;->k()Lke/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->f1(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, Lqe/t0;->d:Lke/g;

    :cond_0
    iget-object v0, p0, Lqe/t0;->d:Lke/g;

    return-object v0
.end method

.method public kc(Lze/h0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/h0<",
            "-TK;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

    iget-object v0, p0, Lqe/t0;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0}, Lwe/c0;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lqe/t0;->c:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lqe/t0;->c:Ljava/util/Set;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0}, Lwe/c0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u7(Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public v(I)Z
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0, p1}, Lwe/c0;->v(I)Z

    move-result p1

    return p1
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0}, Lwe/c0;->values()[I

    move-result-object v0

    return-object v0
.end method

.method public vc(Lze/h0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/h0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0, p1}, Lwe/c0;->vc(Lze/h0;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lqe/t0;->b:Lwe/c0;

    invoke-interface {v0, p1}, Lwe/c0;->y0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y7(Ljava/lang/Object;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
