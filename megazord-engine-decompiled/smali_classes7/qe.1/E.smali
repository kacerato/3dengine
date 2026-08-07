.class public Lqe/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/w;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/w<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/w<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient c:LCe/c;

.field public transient d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwe/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/w<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/E;->c:LCe/c;

    iput-object v0, p0, Lqe/E;->d:Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/E;->b:Lwe/w;

    return-void
.end method

.method public static synthetic b(Lqe/E;)Lwe/w;
    .locals 0

    iget-object p0, p0, Lqe/E;->b:Lwe/w;

    return-object p0
.end method


# virtual methods
.method public B(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0, p1}, Lwe/w;->B(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public E7(DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G(D)Z
    .locals 1

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0, p1, p2}, Lwe/w;->G(D)Z

    move-result p1

    return p1
.end method

.method public G5(Lze/y;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/y<",
            "-TV;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O([D)[D
    .locals 1

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0, p1}, Lwe/w;->O([D)[D

    move-result-object p1

    return-object p1
.end method

.method public Tc(Lwe/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/w<",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TV;"
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

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0, p1}, Lwe/w;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d6(Lze/y;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/y<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0, p1}, Lwe/w;->d6(Lze/y;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

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

.method public f0(Lze/k0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/k0<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0, p1}, Lwe/w;->f0(Lze/k0;)Z

    move-result p1

    return p1
.end method

.method public g3(DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i0(Lme/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/g<",
            "TV;TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0}, Lwe/w;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/A;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/A<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lqe/E$a;

    invoke-direct {v0, p0}, Lqe/E$a;-><init>(Lqe/E;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0}, Lwe/w;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lqe/E;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0}, Lwe/w;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lqe/E;->d:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Lqe/E;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public keySet()LCe/c;
    .locals 1

    iget-object v0, p0, Lqe/E;->c:LCe/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0}, Lwe/w;->keySet()LCe/c;

    move-result-object v0

    invoke-static {v0}, Lke/c;->C2(LCe/c;)LCe/c;

    move-result-object v0

    iput-object v0, p0, Lqe/E;->c:LCe/c;

    :cond_0
    iget-object v0, p0, Lqe/E;->c:LCe/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0}, Lwe/w;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public n0(D)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TV;"
        }
    .end annotation

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0, p1, p2}, Lwe/w;->n0(D)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Double;",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0}, Lwe/w;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TV;)[TV;"
        }
    .end annotation

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0, p1}, Lwe/w;->v0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqe/E;->b:Lwe/w;

    invoke-interface {v0}, Lwe/w;->values()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
