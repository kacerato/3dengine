.class public Lqe/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/E;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/E<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/E<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient c:LCe/d;

.field public transient d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwe/E;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/E<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/P;->c:LCe/d;

    iput-object v0, p0, Lqe/P;->d:Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/P;->b:Lwe/E;

    return-void
.end method

.method public static synthetic a(Lqe/P;)Lwe/E;
    .locals 0

    iget-object p0, p0, Lqe/P;->b:Lwe/E;

    return-object p0
.end method


# virtual methods
.method public K2(FLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public L(F)Z
    .locals 1

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0, p1}, Lwe/E;->L(F)Z

    move-result p1

    return p1
.end method

.method public Oc(Lze/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/H<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0, p1}, Lwe/E;->Oc(Lze/H;)Z

    move-result p1

    return p1
.end method

.method public Sd(FLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U7(Lwe/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/E<",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V([F)[F
    .locals 1

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0, p1}, Lwe/E;->V([F)[F

    move-result-object p1

    return-object p1
.end method

.method public bc(Lze/H;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/H<",
            "-TV;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TV;"
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

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0, p1}, Lwe/E;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d0(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0, p1}, Lwe/E;->d0(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

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

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0, p1}, Lwe/E;->f0(Lze/k0;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

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

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0}, Lwe/E;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/J;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/J<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lqe/P$a;

    invoke-direct {v0, p0}, Lqe/P$a;-><init>(Lqe/P;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0}, Lwe/E;->j()[F

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

    iget-object v0, p0, Lqe/P;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0}, Lwe/E;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lqe/P;->d:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Lqe/P;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public keySet()LCe/d;
    .locals 1

    iget-object v0, p0, Lqe/P;->c:LCe/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0}, Lwe/E;->keySet()LCe/d;

    move-result-object v0

    invoke-static {v0}, Lke/c;->D2(LCe/d;)LCe/d;

    move-result-object v0

    iput-object v0, p0, Lqe/P;->c:LCe/d;

    :cond_0
    iget-object v0, p0, Lqe/P;->c:LCe/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0}, Lwe/E;->l()F

    move-result v0

    return v0
.end method

.method public o0(F)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TV;"
        }
    .end annotation

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0, p1}, Lwe/E;->o0(F)Ljava/lang/Object;

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
            "Ljava/lang/Float;",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0}, Lwe/E;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

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

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0, p1}, Lwe/E;->v0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqe/P;->b:Lwe/E;

    invoke-interface {v0}, Lwe/E;->values()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
