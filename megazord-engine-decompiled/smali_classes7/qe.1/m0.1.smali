.class public Lqe/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/V;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/V<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/V<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient c:LCe/f;

.field public transient d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwe/V;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/V<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/m0;->c:LCe/f;

    iput-object v0, p0, Lqe/m0;->d:Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/m0;->b:Lwe/V;

    return-void
.end method

.method public static synthetic a(Lqe/m0;)Lwe/V;
    .locals 0

    iget-object p0, p0, Lqe/m0;->b:Lwe/V;

    return-object p0
.end method


# virtual methods
.method public A5(Lwe/V;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/V<",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0, p1}, Lwe/V;->F(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public J(J)Z
    .locals 1

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0, p1, p2}, Lwe/V;->J(J)Z

    move-result p1

    return p1
.end method

.method public Z([J)[J
    .locals 1

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0, p1}, Lwe/V;->Z([J)[J

    move-result-object p1

    return-object p1
.end method

.method public cb(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
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

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0, p1}, Lwe/V;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

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

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0, p1}, Lwe/V;->f0(Lze/k0;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

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

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0}, Lwe/V;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/d0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lqe/m0$a;

    invoke-direct {v0, p0}, Lqe/m0$a;-><init>(Lqe/m0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0}, Lwe/V;->j()[J

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

    iget-object v0, p0, Lqe/m0;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0}, Lwe/V;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lqe/m0;->d:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Lqe/m0;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public keySet()LCe/f;
    .locals 1

    iget-object v0, p0, Lqe/m0;->c:LCe/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0}, Lwe/V;->keySet()LCe/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->F2(LCe/f;)LCe/f;

    move-result-object v0

    iput-object v0, p0, Lqe/m0;->c:LCe/f;

    :cond_0
    iget-object v0, p0, Lqe/m0;->c:LCe/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0}, Lwe/V;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public p8(Lze/a0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/a0<",
            "-TV;>;)Z"
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
            "Ljava/lang/Long;",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0, p1, p2}, Lwe/V;->s(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0}, Lwe/V;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

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

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0, p1}, Lwe/V;->v0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0}, Lwe/V;->values()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public z6(Lze/a0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/a0<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqe/m0;->b:Lwe/V;

    invoke-interface {v0, p1}, Lwe/V;->z6(Lze/a0;)Z

    move-result p1

    return p1
.end method

.method public zb(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
