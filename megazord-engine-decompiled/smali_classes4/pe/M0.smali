.class public Lpe/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/k0;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/k0;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/g;

.field public transient e:Lke/h;


# direct methods
.method public constructor <init>(Lwe/k0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/M0;->d:LCe/g;

    .line 3
    iput-object v0, p0, Lpe/M0;->e:Lke/h;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/M0;->b:Lwe/k0;

    .line 6
    iput-object p0, p0, Lpe/M0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/k0;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/M0;->d:LCe/g;

    .line 9
    iput-object v0, p0, Lpe/M0;->e:Lke/h;

    .line 10
    iput-object p1, p0, Lpe/M0;->b:Lwe/k0;

    .line 11
    iput-object p2, p0, Lpe/M0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->D(S)Z

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

.method public E(Lze/b0;)Z
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->E(Lze/b0;)Z

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

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->E0(S)Z

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

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->M(Lze/t0;)Z

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

.method public O9(Lze/r0;)Z
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->O9(Lze/r0;)Z

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

.method public P3(SJJ)J
    .locals 7

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lwe/k0;->P3(SJJ)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Q([S)[S
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->Q([S)[S

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

.method public Vc(Lze/r0;)Z
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->Vc(Lze/r0;)Z

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

.method public Y([J)[J
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->Y([J)[J

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

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1}, Lwe/k0;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(S)J
    .locals 3

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->d(S)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

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

.method public h(Lme/f;)V
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->h(Lme/f;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h5(SJ)J
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1, p2, p3}, Lwe/k0;->h5(SJ)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

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

.method public i()J
    .locals 2

    iget-object v0, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v0}, Lwe/k0;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1}, Lwe/k0;->isEmpty()Z

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

.method public iterator()Lre/t0;
    .locals 1

    iget-object v0, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v0}, Lwe/k0;->iterator()Lre/t0;

    move-result-object v0

    return-object v0
.end method

.method public j()[S
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1}, Lwe/k0;->j()[S

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

.method public k()Lke/h;
    .locals 4

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->e:Lke/h;

    if-nez v1, :cond_0

    new-instance v1, Lpe/i0;

    iget-object v2, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v2}, Lwe/k0;->k()Lke/h;

    move-result-object v2

    iget-object v3, p0, Lpe/M0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/i0;-><init>(Lke/h;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/M0;->e:Lke/h;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/M0;->e:Lke/h;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k0(S)J
    .locals 3

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->k0(S)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public keySet()LCe/g;
    .locals 4

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->d:LCe/g;

    if-nez v1, :cond_0

    new-instance v1, Lpe/O0;

    iget-object v2, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v2}, Lwe/k0;->keySet()LCe/g;

    move-result-object v2

    iget-object v3, p0, Lpe/M0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/O0;-><init>(LCe/g;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/M0;->d:LCe/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/M0;->d:LCe/g;

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

    iget-object v0, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v0}, Lwe/k0;->l()S

    move-result v0

    return v0
.end method

.method public m4(SJ)J
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1, p2, p3}, Lwe/k0;->m4(SJ)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public qc(SJ)Z
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1, p2, p3}, Lwe/k0;->qc(SJ)Z

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

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1}, Lwe/k0;->size()I

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

.method public tb(Lwe/k0;)V
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1}, Lwe/k0;->tb(Lwe/k0;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

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

.method public values()[J
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1}, Lwe/k0;->values()[J

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

.method public w(J)Z
    .locals 2

    iget-object v0, p0, Lpe/M0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M0;->b:Lwe/k0;

    invoke-interface {v1, p1, p2}, Lwe/k0;->w(J)Z

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
