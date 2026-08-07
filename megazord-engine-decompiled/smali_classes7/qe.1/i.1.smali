.class public Lqe/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/g;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/g<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/g<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient c:LCe/a;

.field public transient d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwe/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/g<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/i;->c:LCe/a;

    iput-object v0, p0, Lqe/i;->d:Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/i;->b:Lwe/g;

    return-void
.end method

.method public static synthetic a(Lqe/i;)Lwe/g;
    .locals 0

    iget-object p0, p0, Lqe/i;->b:Lwe/g;

    return-object p0
.end method


# virtual methods
.method public I(B)Z
    .locals 1

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0, p1}, Lwe/g;->I(B)Z

    move-result p1

    return p1
.end method

.method public P([B)[B
    .locals 1

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0, p1}, Lwe/g;->P([B)[B

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0, p1}, Lwe/g;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public ed(Lze/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/g<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0, p1}, Lwe/g;->ed(Lze/g;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

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

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0, p1}, Lwe/g;->f0(Lze/k0;)Z

    move-result p1

    return p1
.end method

.method public f8(Lwe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/g<",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g0(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0, p1}, Lwe/g;->g0(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

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

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0}, Lwe/g;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/i<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lqe/i$a;

    invoke-direct {v0, p0}, Lqe/i$a;-><init>(Lqe/i;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0}, Lwe/g;->j()[B

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

    iget-object v0, p0, Lqe/i;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0}, Lwe/g;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lqe/i;->d:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Lqe/i;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public keySet()LCe/a;
    .locals 1

    iget-object v0, p0, Lqe/i;->c:LCe/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0}, Lwe/g;->keySet()LCe/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->A2(LCe/a;)LCe/a;

    move-result-object v0

    iput-object v0, p0, Lqe/i;->c:LCe/a;

    :cond_0
    iget-object v0, p0, Lqe/i;->c:LCe/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0}, Lwe/g;->l()B

    move-result v0

    return v0
.end method

.method public m(B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)TV;"
        }
    .end annotation

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
            "Ljava/lang/Byte;",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)TV;"
        }
    .end annotation

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0, p1}, Lwe/g;->q0(B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r5(BLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0}, Lwe/g;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ud(Lze/g;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/g<",
            "-TV;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public v0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TV;)[TV;"
        }
    .end annotation

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0, p1}, Lwe/g;->v0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqe/i;->b:Lwe/g;

    invoke-interface {v0}, Lwe/g;->values()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public w6(BLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
