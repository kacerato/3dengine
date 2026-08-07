.class public Lqe/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/o;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/o<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/o<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient c:LCe/b;

.field public transient d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwe/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/o<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/t;->c:LCe/b;

    iput-object v0, p0, Lqe/t;->d:Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/t;->b:Lwe/o;

    return-void
.end method

.method public static synthetic a(Lqe/t;)Lwe/o;
    .locals 0

    iget-object p0, p0, Lqe/t;->b:Lwe/o;

    return-object p0
.end method


# virtual methods
.method public H(C)Z
    .locals 1

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0, p1}, Lwe/o;->H(C)Z

    move-result p1

    return p1
.end method

.method public N([C)[C
    .locals 1

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0, p1}, Lwe/o;->N([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Q6(Lze/p;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/p<",
            "-TV;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q9(Lze/p;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/p<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0, p1}, Lwe/o;->Q9(Lze/p;)Z

    move-result p1

    return p1
.end method

.method public b(C)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TV;"
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

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0, p1}, Lwe/o;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

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

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0, p1}, Lwe/o;->f0(Lze/k0;)Z

    move-result p1

    return p1
.end method

.method public h7(Lwe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/o<",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

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

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0}, Lwe/o;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/r<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lqe/t$a;

    invoke-direct {v0, p0}, Lqe/t$a;-><init>(Lqe/t;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0}, Lwe/o;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public j8(CLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

    iget-object v0, p0, Lqe/t;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0}, Lwe/o;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lqe/t;->d:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Lqe/t;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public keySet()LCe/b;
    .locals 1

    iget-object v0, p0, Lqe/t;->c:LCe/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0}, Lwe/o;->keySet()LCe/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->B2(LCe/b;)LCe/b;

    move-result-object v0

    iput-object v0, p0, Lqe/t;->c:LCe/b;

    :cond_0
    iget-object v0, p0, Lqe/t;->c:LCe/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0}, Lwe/o;->l()C

    move-result v0

    return v0
.end method

.method public l0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0, p1}, Lwe/o;->l0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public m0(C)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TV;"
        }
    .end annotation

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0, p1}, Lwe/o;->m0(C)Ljava/lang/Object;

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
            "Ljava/lang/Character;",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0}, Lwe/o;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

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

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0, p1}, Lwe/o;->v0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqe/t;->b:Lwe/o;

    invoke-interface {v0}, Lwe/o;->values()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public w4(CLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
