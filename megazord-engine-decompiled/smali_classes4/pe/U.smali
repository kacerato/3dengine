.class public Lpe/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/F;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/F;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/d;

.field public transient e:Lke/i;


# direct methods
.method public constructor <init>(Lwe/F;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/U;->d:LCe/d;

    .line 3
    iput-object v0, p0, Lpe/U;->e:Lke/i;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/U;->b:Lwe/F;

    .line 6
    iput-object p0, p0, Lpe/U;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/F;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/U;->d:LCe/d;

    .line 9
    iput-object v0, p0, Lpe/U;->e:Lke/i;

    .line 10
    iput-object p1, p0, Lpe/U;->b:Lwe/F;

    .line 11
    iput-object p2, p0, Lpe/U;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

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
.method public A2(FSS)S
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1, p2, p3}, Lwe/F;->A2(FSS)S

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

.method public C0(F)Z
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->C0(F)Z

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

.method public L(F)Z
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->L(F)Z

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

.method public O6(Lze/J;)Z
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->O6(Lze/J;)Z

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

.method public V([F)[F
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->V([F)[F

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

.method public b0([S)[S
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->b0([S)[S

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

.method public b4(FS)Z
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1, p2}, Lwe/F;->b4(FS)Z

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

.method public c(F)S
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->c(F)S

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

.method public ce(Lwe/F;)V
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->ce(Lwe/F;)V

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

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1}, Lwe/F;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d0(Lze/I;)Z
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->d0(Lze/I;)Z

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

.method public d5(Lze/J;)Z
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->d5(Lze/J;)Z

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

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

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

.method public g8(FS)S
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1, p2}, Lwe/F;->g8(FS)S

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

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->h0(S)Z

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

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

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

    iget-object v0, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->i()S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1}, Lwe/F;->isEmpty()Z

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

.method public iterator()Lre/K;
    .locals 1

    iget-object v0, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->iterator()Lre/K;

    move-result-object v0

    return-object v0
.end method

.method public j()[F
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1}, Lwe/F;->j()[F

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

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->e:Lke/i;

    if-nez v1, :cond_0

    new-instance v1, Lpe/H0;

    iget-object v2, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v2}, Lwe/F;->k()Lke/i;

    move-result-object v2

    iget-object v3, p0, Lpe/U;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/H0;-><init>(Lke/i;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/U;->e:Lke/i;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/U;->e:Lke/i;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()LCe/d;
    .locals 4

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->d:LCe/d;

    if-nez v1, :cond_0

    new-instance v1, Lpe/T;

    iget-object v2, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v2}, Lwe/F;->keySet()LCe/d;

    move-result-object v2

    iget-object v3, p0, Lpe/U;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/T;-><init>(LCe/d;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/U;->d:LCe/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/U;->d:LCe/d;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->l()F

    move-result v0

    return v0
.end method

.method public o0(F)S
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->o0(F)S

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
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->q(Lme/h;)V

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

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1}, Lwe/F;->size()I

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

.method public td(FS)S
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1, p2}, Lwe/F;->td(FS)S

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

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

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

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1}, Lwe/F;->values()[S

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

.method public z(Lze/t0;)Z
    .locals 2

    iget-object v0, p0, Lpe/U;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/U;->b:Lwe/F;

    invoke-interface {v1, p1}, Lwe/F;->z(Lze/t0;)Z

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
