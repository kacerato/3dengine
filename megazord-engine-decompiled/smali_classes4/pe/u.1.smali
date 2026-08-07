.class public Lpe/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/n;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/n;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/b;

.field public transient e:Lke/h;


# direct methods
.method public constructor <init>(Lwe/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/u;->d:LCe/b;

    .line 3
    iput-object v0, p0, Lpe/u;->e:Lke/h;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/u;->b:Lwe/n;

    .line 6
    iput-object p0, p0, Lpe/u;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/n;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/u;->d:LCe/b;

    .line 9
    iput-object v0, p0, Lpe/u;->e:Lke/h;

    .line 10
    iput-object p1, p0, Lpe/u;->b:Lwe/n;

    .line 11
    iput-object p2, p0, Lpe/u;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

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
.method public E(Lze/b0;)Z
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->E(Lze/b0;)Z

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

.method public Ed(Lze/o;)Z
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->Ed(Lze/o;)Z

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

.method public H(C)Z
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->H(C)Z

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

.method public I2(Lze/o;)Z
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->I2(Lze/o;)Z

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

.method public Jb(CJ)Z
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1, p2, p3}, Lwe/n;->Jb(CJ)Z

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

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->N([C)[C

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

.method public Y([J)[J
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->Y([J)[J

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

.method public b(C)J
    .locals 3

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->b(C)J

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

.method public clear()V
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1}, Lwe/n;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

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

.method public f6(CJ)J
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1, p2, p3}, Lwe/n;->f6(CJ)J

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

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->h(Lme/f;)V

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

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

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

    iget-object v0, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v0}, Lwe/n;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1}, Lwe/n;->isEmpty()Z

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

.method public iterator()Lre/q;
    .locals 1

    iget-object v0, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v0}, Lwe/n;->iterator()Lre/q;

    move-result-object v0

    return-object v0
.end method

.method public j()[C
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1}, Lwe/n;->j()[C

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

.method public j3(CJ)J
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1, p2, p3}, Lwe/n;->j3(CJ)J

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

.method public k()Lke/h;
    .locals 4

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->e:Lke/h;

    if-nez v1, :cond_0

    new-instance v1, Lpe/i0;

    iget-object v2, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v2}, Lwe/n;->k()Lke/h;

    move-result-object v2

    iget-object v3, p0, Lpe/u;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/i0;-><init>(Lke/h;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/u;->e:Lke/h;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/u;->e:Lke/h;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k3(Lwe/n;)V
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->k3(Lwe/n;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public keySet()LCe/b;
    .locals 4

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->d:LCe/b;

    if-nez v1, :cond_0

    new-instance v1, Lpe/w;

    iget-object v2, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v2}, Lwe/n;->keySet()LCe/b;

    move-result-object v2

    iget-object v3, p0, Lpe/u;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/w;-><init>(LCe/b;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/u;->d:LCe/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/u;->d:LCe/b;

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

    iget-object v0, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v0}, Lwe/n;->l()C

    move-result v0

    return v0
.end method

.method public l0(Lze/q;)Z
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->l0(Lze/q;)Z

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

.method public m0(C)J
    .locals 3

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->m0(C)J

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

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Character;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1}, Lwe/n;->size()I

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

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

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

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1}, Lwe/n;->values()[J

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

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1, p2}, Lwe/n;->w(J)Z

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

.method public z0(C)Z
    .locals 2

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    invoke-interface {v1, p1}, Lwe/n;->z0(C)Z

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

.method public z2(CJJ)J
    .locals 7

    iget-object v0, p0, Lpe/u;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/u;->b:Lwe/n;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lwe/n;->z2(CJJ)J

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
