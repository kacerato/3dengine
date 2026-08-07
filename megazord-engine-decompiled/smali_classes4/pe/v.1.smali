.class public Lpe/v;
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
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/o<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/b;

.field public transient e:Ljava/util/Collection;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/v;->d:LCe/b;

    .line 3
    iput-object v0, p0, Lpe/v;->e:Ljava/util/Collection;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/v;->b:Lwe/o;

    .line 6
    iput-object p0, p0, Lpe/v;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/o;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/o<",
            "TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/v;->d:LCe/b;

    .line 9
    iput-object v0, p0, Lpe/v;->e:Ljava/util/Collection;

    .line 10
    iput-object p1, p0, Lpe/v;->b:Lwe/o;

    .line 11
    iput-object p2, p0, Lpe/v;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public H(C)Z
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->H(C)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public N([C)[C
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->N([C)[C

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Q6(Lze/p;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/p<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->Q6(Lze/p;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Q9(Lze/p;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/p<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->Q9(Lze/p;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(C)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TV;"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->b(C)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1}, Lwe/o;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f0(Lze/k0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/k0<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->f0(Lze/k0;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h7(Lwe/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/o<",
            "+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->h7(Lwe/o;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i0(Lme/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/g<",
            "TV;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->i0(Lme/g;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1}, Lwe/o;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    iget-object v0, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v0}, Lwe/o;->iterator()Lre/r;

    move-result-object v0

    return-object v0
.end method

.method public j()[C
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1}, Lwe/o;->j()[C

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j8(CLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CTV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1, p2}, Lwe/o;->j8(CLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->e:Ljava/util/Collection;

    if-nez v1, :cond_0

    new-instance v1, Lpe/a;

    iget-object v2, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v2}, Lwe/o;->k()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lpe/v;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/a;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/v;->e:Ljava/util/Collection;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/v;->e:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()LCe/b;
    .locals 4

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->d:LCe/b;

    if-nez v1, :cond_0

    new-instance v1, Lpe/w;

    iget-object v2, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v2}, Lwe/o;->keySet()LCe/b;

    move-result-object v2

    iget-object v3, p0, Lpe/v;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/w;-><init>(LCe/b;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/v;->d:LCe/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/v;->d:LCe/b;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v0}, Lwe/o;->l()C

    move-result v0

    return v0
.end method

.method public l0(Lze/q;)Z
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->l0(Lze/q;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m0(C)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TV;"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->m0(C)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Character;",
            "+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1}, Lwe/o;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public v0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TV;)[TV;"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1}, Lwe/o;->v0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public values()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1}, Lwe/o;->values()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public w4(CLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CTV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lpe/v;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/v;->b:Lwe/o;

    invoke-interface {v1, p1, p2}, Lwe/o;->w4(CLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
