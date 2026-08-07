.class public Lpe/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/U;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/U;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/f;

.field public transient e:Lke/h;


# direct methods
.method public constructor <init>(Lwe/U;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/n0;->d:LCe/f;

    .line 3
    iput-object v0, p0, Lpe/n0;->e:Lke/h;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/n0;->b:Lwe/U;

    .line 6
    iput-object p0, p0, Lpe/n0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/U;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/n0;->d:LCe/f;

    .line 9
    iput-object v0, p0, Lpe/n0;->e:Lke/h;

    .line 10
    iput-object p1, p0, Lpe/n0;->b:Lwe/U;

    .line 11
    iput-object p2, p0, Lpe/n0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1, p2}, Lwe/U;->D0(J)Z

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

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1}, Lwe/U;->E(Lze/b0;)Z

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

.method public F(Lze/b0;)Z
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1}, Lwe/U;->F(Lze/b0;)Z

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

.method public I8(JJJ)J
    .locals 8

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lwe/U;->I8(JJJ)J

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

.method public J(J)Z
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1, p2}, Lwe/U;->J(J)Z

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

.method public M9(Lze/Z;)Z
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1}, Lwe/U;->M9(Lze/Z;)Z

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

.method public V6(JJ)Z
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1, p2, p3, p4}, Lwe/U;->V6(JJ)Z

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

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1}, Lwe/U;->Y([J)[J

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

.method public Y7(Lze/Z;)Z
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1}, Lwe/U;->Y7(Lze/Z;)Z

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

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1}, Lwe/U;->Z([J)[J

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

.method public aa(JJ)J
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1, p2, p3, p4}, Lwe/U;->aa(JJ)J

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

.method public clear()V
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1}, Lwe/U;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(J)J
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1, p2}, Lwe/U;->e(J)J

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

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

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

.method public ga(JJ)J
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1, p2, p3, p4}, Lwe/U;->ga(JJ)J

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

.method public h(Lme/f;)V
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1}, Lwe/U;->h(Lme/f;)V

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

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

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

    iget-object v0, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v0}, Lwe/U;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1}, Lwe/U;->isEmpty()Z

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

.method public iterator()Lre/c0;
    .locals 1

    iget-object v0, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v0}, Lwe/U;->iterator()Lre/c0;

    move-result-object v0

    return-object v0
.end method

.method public j()[J
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1}, Lwe/U;->j()[J

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

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->e:Lke/h;

    if-nez v1, :cond_0

    new-instance v1, Lpe/i0;

    iget-object v2, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v2}, Lwe/U;->k()Lke/h;

    move-result-object v2

    iget-object v3, p0, Lpe/n0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/i0;-><init>(Lke/h;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/n0;->e:Lke/h;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/n0;->e:Lke/h;

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

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->d:LCe/f;

    if-nez v1, :cond_0

    new-instance v1, Lpe/p0;

    iget-object v2, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v2}, Lwe/U;->keySet()LCe/f;

    move-result-object v2

    iget-object v3, p0, Lpe/n0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/p0;-><init>(LCe/f;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/n0;->d:LCe/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/n0;->d:LCe/f;

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

    iget-object v0, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v0}, Lwe/U;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public l7(Lwe/U;)V
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1}, Lwe/U;->l7(Lwe/U;)V

    monitor-exit v0

    return-void

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
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1}, Lwe/U;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s(J)J
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1, p2}, Lwe/U;->s(J)J

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

.method public size()I
    .locals 2

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1}, Lwe/U;->size()I

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

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

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

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1}, Lwe/U;->values()[J

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

    iget-object v0, p0, Lpe/n0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/n0;->b:Lwe/U;

    invoke-interface {v1, p1, p2}, Lwe/U;->w(J)Z

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
