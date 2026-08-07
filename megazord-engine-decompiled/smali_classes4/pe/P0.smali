.class public Lpe/P0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/m0;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/m0;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/g;

.field public transient e:Lke/i;


# direct methods
.method public constructor <init>(Lwe/m0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/P0;->d:LCe/g;

    .line 3
    iput-object v0, p0, Lpe/P0;->e:Lke/i;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/P0;->b:Lwe/m0;

    .line 6
    iput-object p0, p0, Lpe/P0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/m0;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/P0;->d:LCe/g;

    .line 9
    iput-object v0, p0, Lpe/P0;->e:Lke/i;

    .line 10
    iput-object p1, p0, Lpe/P0;->b:Lwe/m0;

    .line 11
    iput-object p2, p0, Lpe/P0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public D(S)Z
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->D(S)Z

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

.method public Dc(SS)Z
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1, p2}, Lwe/m0;->Dc(SS)Z

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

.method public E0(S)Z
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->E0(S)Z

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

.method public F7(SSS)S
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1, p2, p3}, Lwe/m0;->F7(SSS)S

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

.method public F8(Lze/u0;)Z
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->F8(Lze/u0;)Z

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

.method public M(Lze/t0;)Z
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->M(Lze/t0;)Z

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

.method public Q([S)[S
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->Q([S)[S

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

.method public Y4(SS)S
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1, p2}, Lwe/m0;->Y4(SS)S

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

.method public final a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

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

.method public b0([S)[S
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->b0([S)[S

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

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1}, Lwe/m0;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(S)S
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->d(S)S

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

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

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

.method public h0(S)Z
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->h0(S)Z

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

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

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

    iget-object v0, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v0}, Lwe/m0;->i()S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1}, Lwe/m0;->isEmpty()Z

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

.method public iterator()Lre/v0;
    .locals 1

    iget-object v0, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v0}, Lwe/m0;->iterator()Lre/v0;

    move-result-object v0

    return-object v0
.end method

.method public j()[S
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1}, Lwe/m0;->j()[S

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

.method public k()Lke/i;
    .locals 4

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->e:Lke/i;

    if-nez v1, :cond_0

    new-instance v1, Lpe/H0;

    iget-object v2, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v2}, Lwe/m0;->k()Lke/i;

    move-result-object v2

    iget-object v3, p0, Lpe/P0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/H0;-><init>(Lke/i;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/P0;->e:Lke/i;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/P0;->e:Lke/i;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k0(S)S
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->k0(S)S

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

.method public keySet()LCe/g;
    .locals 4

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->d:LCe/g;

    if-nez v1, :cond_0

    new-instance v1, Lpe/O0;

    iget-object v2, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v2}, Lwe/m0;->keySet()LCe/g;

    move-result-object v2

    iget-object v3, p0, Lpe/P0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/O0;-><init>(LCe/g;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/P0;->d:LCe/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/P0;->d:LCe/g;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v0}, Lwe/m0;->l()S

    move-result v0

    return v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Short;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->q(Lme/h;)V

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

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1}, Lwe/m0;->size()I

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

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

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

.method public u5(SS)S
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1, p2}, Lwe/m0;->u5(SS)S

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

.method public values()[S
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1}, Lwe/m0;->values()[S

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

.method public w8(Lze/u0;)Z
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->w8(Lze/u0;)Z

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

.method public z(Lze/t0;)Z
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->z(Lze/t0;)Z

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

.method public z9(Lwe/m0;)V
    .locals 2

    iget-object v0, p0, Lpe/P0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/P0;->b:Lwe/m0;

    invoke-interface {v1, p1}, Lwe/m0;->z9(Lwe/m0;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
