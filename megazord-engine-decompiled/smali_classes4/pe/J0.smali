.class public Lpe/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/i0;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/i0;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/g;

.field public transient e:Lke/f;


# direct methods
.method public constructor <init>(Lwe/i0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/J0;->d:LCe/g;

    .line 3
    iput-object v0, p0, Lpe/J0;->e:Lke/f;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/J0;->b:Lwe/i0;

    .line 6
    iput-object p0, p0, Lpe/J0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/i0;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/J0;->d:LCe/g;

    .line 9
    iput-object v0, p0, Lpe/J0;->e:Lke/f;

    .line 10
    iput-object p1, p0, Lpe/J0;->b:Lwe/i0;

    .line 11
    iput-object p2, p0, Lpe/J0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

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
.method public D(S)Z
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->D(S)Z

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

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->E0(S)Z

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

.method public Ka(Lze/p0;)Z
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->Ka(Lze/p0;)Z

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

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->M(Lze/t0;)Z

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

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->Q([S)[S

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

.method public U([F)[F
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->U([F)[F

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

.method public V4(SF)F
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1, p2}, Lwe/i0;->V4(SF)F

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

.method public Yb(Lwe/i0;)V
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->Yb(Lwe/i0;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1}, Lwe/i0;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(S)F
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->d(S)F

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

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

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

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

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

.method public i()F
    .locals 1

    iget-object v0, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v0}, Lwe/i0;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1}, Lwe/i0;->isEmpty()Z

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

.method public iterator()Lre/q0;
    .locals 1

    iget-object v0, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v0}, Lwe/i0;->iterator()Lre/q0;

    move-result-object v0

    return-object v0
.end method

.method public j()[S
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1}, Lwe/i0;->j()[S

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

.method public k()Lke/f;
    .locals 4

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->e:Lke/f;

    if-nez v1, :cond_0

    new-instance v1, Lpe/L;

    iget-object v2, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v2}, Lwe/i0;->k()Lke/f;

    move-result-object v2

    iget-object v3, p0, Lpe/J0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/L;-><init>(Lke/f;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/J0;->e:Lke/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/J0;->e:Lke/f;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k0(S)F
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->k0(S)F

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

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->d:LCe/g;

    if-nez v1, :cond_0

    new-instance v1, Lpe/O0;

    iget-object v2, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v2}, Lwe/i0;->keySet()LCe/g;

    move-result-object v2

    iget-object v3, p0, Lpe/J0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/O0;-><init>(LCe/g;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/J0;->d:LCe/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/J0;->d:LCe/g;

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

    iget-object v0, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v0}, Lwe/i0;->l()S

    move-result v0

    return v0
.end method

.method public o(Lme/d;)V
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->o(Lme/d;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o7(SFF)F
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1, p2, p3}, Lwe/i0;->o7(SFF)F

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

.method public p0(Lze/I;)Z
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->p0(Lze/I;)Z

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
            "+",
            "Ljava/lang/Short;",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1}, Lwe/i0;->size()I

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

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

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

.method public values()[F
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1}, Lwe/i0;->values()[F

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

.method public wb(Lze/p0;)Z
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->wb(Lze/p0;)Z

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

.method public wc(SF)Z
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1, p2}, Lwe/i0;->wc(SF)Z

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

.method public y(F)Z
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1}, Lwe/i0;->y(F)Z

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

.method public y4(SF)F
    .locals 2

    iget-object v0, p0, Lpe/J0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/J0;->b:Lwe/i0;

    invoke-interface {v1, p1, p2}, Lwe/i0;->y4(SF)F

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
