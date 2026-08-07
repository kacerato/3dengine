.class public Lqe/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/d0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/d0<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/d0<",
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

.field public transient d:Lke/h;


# direct methods
.method public constructor <init>(Lwe/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/d0<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/u0;->c:Ljava/util/Set;

    iput-object v0, p0, Lqe/u0;->d:Lke/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/u0;->b:Lwe/d0;

    return-void
.end method

.method public static synthetic a(Lqe/u0;)Lwe/d0;
    .locals 0

    iget-object p0, p0, Lqe/u0;->b:Lwe/d0;

    return-object p0
.end method


# virtual methods
.method public E(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0, p1}, Lwe/d0;->E(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public Id(Lze/i0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/i0<",
            "-TK;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Y([J)[J
    .locals 1

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0, p1}, Lwe/d0;->Y([J)[J

    move-result-object p1

    return-object p1
.end method

.method public cd(Lwe/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/d0<",
            "+TK;>;)V"
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

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0, p1}, Lwe/d0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

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

.method public get(Ljava/lang/Object;)J
    .locals 2

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0, p1}, Lwe/d0;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(Lme/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0}, Lwe/d0;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0}, Lwe/d0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/k0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lqe/u0$a;

    invoke-direct {v0, p0}, Lqe/u0$a;-><init>(Lqe/u0;)V

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0}, Lwe/d0;->j()[Ljava/lang/Object;

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

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0, p1}, Lwe/d0;->j0(Lze/k0;)Z

    move-result p1

    return p1
.end method

.method public k()Lke/h;
    .locals 1

    iget-object v0, p0, Lqe/u0;->d:Lke/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0}, Lwe/d0;->k()Lke/h;

    move-result-object v0

    invoke-static {v0}, Lke/c;->g1(Lke/h;)Lke/h;

    move-result-object v0

    iput-object v0, p0, Lqe/u0;->d:Lke/h;

    :cond_0
    iget-object v0, p0, Lqe/u0;->d:Lke/h;

    return-object v0
.end method

.method public k4(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
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

    iget-object v0, p0, Lqe/u0;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0}, Lwe/d0;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lqe/u0;->c:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lqe/u0;->c:Ljava/util/Set;

    return-object v0
.end method

.method public l5(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public pb(Lze/i0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/i0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0, p1}, Lwe/d0;->pb(Lze/i0;)Z

    move-result p1

    return p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s7(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0}, Lwe/d0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0}, Lwe/d0;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public w(J)Z
    .locals 1

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0, p1, p2}, Lwe/d0;->w(J)Z

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

.method public x9(Ljava/lang/Object;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;JJ)J"
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

    iget-object v0, p0, Lqe/u0;->b:Lwe/d0;

    invoke-interface {v0, p1}, Lwe/d0;->y0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
