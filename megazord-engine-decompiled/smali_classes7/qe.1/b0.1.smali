.class public Lqe/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/M;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/M<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/M<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient c:LCe/e;

.field public transient d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwe/M;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/M<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/b0;->c:LCe/e;

    iput-object v0, p0, Lqe/b0;->d:Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/b0;->b:Lwe/M;

    return-void
.end method

.method public static synthetic a(Lqe/b0;)Lwe/M;
    .locals 0

    iget-object p0, p0, Lqe/b0;->b:Lwe/M;

    return-object p0
.end method


# virtual methods
.method public Db(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(I)Z
    .locals 1

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0, p1}, Lwe/M;->K(I)Z

    move-result p1

    return p1
.end method

.method public L8(Lze/Q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/Q<",
            "-TV;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X([I)[I
    .locals 1

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0, p1}, Lwe/M;->X([I)[I

    move-result-object p1

    return-object p1
.end method

.method public Zb(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0, p1}, Lwe/M;->c0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0, p1}, Lwe/M;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

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

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0, p1}, Lwe/M;->f0(Lze/k0;)Z

    move-result p1

    return p1
.end method

.method public f9(Lwe/M;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/M<",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0, p1}, Lwe/M;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

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

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0}, Lwe/M;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/T;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/T<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lqe/b0$a;

    invoke-direct {v0, p0}, Lqe/b0$a;-><init>(Lqe/b0;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0}, Lwe/M;->j()[I

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

    iget-object v0, p0, Lqe/b0;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0}, Lwe/M;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lqe/b0;->d:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Lqe/b0;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public keySet()LCe/e;
    .locals 1

    iget-object v0, p0, Lqe/b0;->c:LCe/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0}, Lwe/M;->keySet()LCe/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->E2(LCe/e;)LCe/e;

    move-result-object v0

    iput-object v0, p0, Lqe/b0;->c:LCe/e;

    :cond_0
    iget-object v0, p0, Lqe/b0;->c:LCe/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0}, Lwe/M;->l()I

    move-result v0

    return v0
.end method

.method public o8(Lze/Q;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/Q<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0, p1}, Lwe/M;->o8(Lze/Q;)Z

    move-result p1

    return p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Integer;",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0}, Lwe/M;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

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

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0, p1}, Lwe/M;->v0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqe/b0;->b:Lwe/M;

    invoke-interface {v0}, Lwe/M;->values()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
