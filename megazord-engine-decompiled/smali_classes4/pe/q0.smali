.class public Lpe/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/W;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/W;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/f;

.field public transient e:Lke/i;


# direct methods
.method public constructor <init>(Lwe/W;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/q0;->d:LCe/f;

    .line 3
    iput-object v0, p0, Lpe/q0;->e:Lke/i;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/q0;->b:Lwe/W;

    .line 6
    iput-object p0, p0, Lpe/q0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/W;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/q0;->d:LCe/f;

    .line 9
    iput-object v0, p0, Lpe/q0;->e:Lke/i;

    .line 10
    iput-object p1, p0, Lpe/q0;->b:Lwe/W;

    .line 11
    iput-object p2, p0, Lpe/q0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

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
.method public D0(J)Z
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1, p2}, Lwe/W;->D0(J)Z

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

.method public Ea(Lwe/W;)V
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1}, Lwe/W;->Ea(Lwe/W;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public F(Lze/b0;)Z
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1}, Lwe/W;->F(Lze/b0;)Z

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

.method public J(J)Z
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1, p2}, Lwe/W;->J(J)Z

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

.method public Kb(JSS)S
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1, p2, p3, p4}, Lwe/W;->Kb(JSS)S

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

.method public T9(JS)S
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1, p2, p3}, Lwe/W;->T9(JS)S

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

.method public Z([J)[J
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1}, Lwe/W;->Z([J)[J

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

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1}, Lwe/W;->b0([S)[S

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

.method public ca(Lze/c0;)Z
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1}, Lwe/W;->ca(Lze/c0;)Z

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

.method public clear()V
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1}, Lwe/W;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(J)S
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1, p2}, Lwe/W;->e(J)S

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

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

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

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1}, Lwe/W;->h0(S)Z

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

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

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

    iget-object v0, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v0}, Lwe/W;->i()S

    move-result v0

    return v0
.end method

.method public i6(Lze/c0;)Z
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1}, Lwe/W;->i6(Lze/c0;)Z

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

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1}, Lwe/W;->isEmpty()Z

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

.method public iterator()Lre/e0;
    .locals 1

    iget-object v0, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v0}, Lwe/W;->iterator()Lre/e0;

    move-result-object v0

    return-object v0
.end method

.method public j()[J
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1}, Lwe/W;->j()[J

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

.method public j7(JS)Z
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1, p2, p3}, Lwe/W;->j7(JS)Z

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

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->e:Lke/i;

    if-nez v1, :cond_0

    new-instance v1, Lpe/H0;

    iget-object v2, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v2}, Lwe/W;->k()Lke/i;

    move-result-object v2

    iget-object v3, p0, Lpe/q0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/H0;-><init>(Lke/i;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/q0;->e:Lke/i;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/q0;->e:Lke/i;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()LCe/f;
    .locals 4

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->d:LCe/f;

    if-nez v1, :cond_0

    new-instance v1, Lpe/p0;

    iget-object v2, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v2}, Lwe/W;->keySet()LCe/f;

    move-result-object v2

    iget-object v3, p0, Lpe/q0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/p0;-><init>(LCe/f;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/q0;->d:LCe/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/q0;->d:LCe/f;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v0}, Lwe/W;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1}, Lwe/W;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1}, Lwe/W;->q(Lme/h;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public qa(JS)S
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1, p2, p3}, Lwe/W;->qa(JS)S

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

.method public s(J)S
    .locals 2

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1, p2}, Lwe/W;->s(J)S

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

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1}, Lwe/W;->size()I

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

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

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

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1}, Lwe/W;->values()[S

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

    iget-object v0, p0, Lpe/q0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/q0;->b:Lwe/W;

    invoke-interface {v1, p1}, Lwe/W;->z(Lze/t0;)Z

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
