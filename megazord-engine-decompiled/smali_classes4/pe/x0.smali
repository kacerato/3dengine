.class public Lpe/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/e0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/e0<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/e0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public transient d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient e:Lke/i;


# direct methods
.method public constructor <init>(Lwe/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/e0<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/x0;->d:Ljava/util/Set;

    .line 3
    iput-object v0, p0, Lpe/x0;->e:Lke/i;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/x0;->b:Lwe/e0;

    .line 6
    iput-object p0, p0, Lpe/x0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/e0;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/e0<",
            "TK;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/x0;->d:Ljava/util/Set;

    .line 9
    iput-object v0, p0, Lpe/x0;->e:Lke/i;

    .line 10
    iput-object p1, p0, Lpe/x0;->b:Lwe/e0;

    .line 11
    iput-object p2, p0, Lpe/x0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

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
.method public D4(Ljava/lang/Object;S)S
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)S"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1, p2}, Lwe/e0;->D4(Ljava/lang/Object;S)S

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

.method public E4(Ljava/lang/Object;S)S
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)S"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1, p2}, Lwe/e0;->E4(Ljava/lang/Object;S)S

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

.method public E6(Ljava/lang/Object;S)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1, p2}, Lwe/e0;->E6(Ljava/lang/Object;S)Z

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

.method public S5(Lze/l0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/l0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->S5(Lze/l0;)Z

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

.method public V8(Lwe/e0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/e0<",
            "+TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->V8(Lwe/e0;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b0([S)[S
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->b0([S)[S

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

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1}, Lwe/e0;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->containsKey(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

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

.method public f3(Ljava/lang/Object;SS)S
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;SS)S"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1, p2, p3}, Lwe/e0;->f3(Ljava/lang/Object;SS)S

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

.method public get(Ljava/lang/Object;)S
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->get(Ljava/lang/Object;)S

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

.method public h0(S)Z
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->h0(S)Z

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

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

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

.method public i()S
    .locals 1

    iget-object v0, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v0}, Lwe/e0;->i()S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1}, Lwe/e0;->isEmpty()Z

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

.method public iterator()Lre/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/l0<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v0}, Lwe/e0;->iterator()Lre/l0;

    move-result-object v0

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1}, Lwe/e0;->j()[Ljava/lang/Object;

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

.method public j0(Lze/k0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/k0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->j0(Lze/k0;)Z

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

.method public k()Lke/i;
    .locals 4

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->e:Lke/i;

    if-nez v1, :cond_0

    new-instance v1, Lpe/H0;

    iget-object v2, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v2}, Lwe/e0;->k()Lke/i;

    move-result-object v2

    iget-object v3, p0, Lpe/x0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/H0;-><init>(Lke/i;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/x0;->e:Lke/i;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/x0;->e:Lke/i;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->d:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Lpe/b;

    iget-object v2, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v2}, Lwe/e0;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lpe/x0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/b;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/x0;->d:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/x0;->d:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public oa(Lze/l0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/l0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->oa(Lze/l0;)Z

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

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q(Lme/h;)V
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->q(Lme/h;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;)S
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->remove(Ljava/lang/Object;)S

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

.method public size()I
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1}, Lwe/e0;->size()I

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

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

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

.method public values()[S
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1}, Lwe/e0;->values()[S

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

.method public x0(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->x0(Ljava/lang/Object;)Z

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

.method public y0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)[TK;"
        }
    .end annotation

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->y0([Ljava/lang/Object;)[Ljava/lang/Object;

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

.method public z(Lze/t0;)Z
    .locals 2

    iget-object v0, p0, Lpe/x0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/x0;->b:Lwe/e0;

    invoke-interface {v1, p1}, Lwe/e0;->z(Lze/t0;)Z

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
