.class public Lpe/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/D;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/D;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/d;

.field public transient e:Lke/h;


# direct methods
.method public constructor <init>(Lwe/D;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/Q;->d:LCe/d;

    .line 3
    iput-object v0, p0, Lpe/Q;->e:Lke/h;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/Q;->b:Lwe/D;

    .line 6
    iput-object p0, p0, Lpe/Q;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/D;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/Q;->d:LCe/d;

    .line 9
    iput-object v0, p0, Lpe/Q;->e:Lke/h;

    .line 10
    iput-object p1, p0, Lpe/Q;->b:Lwe/D;

    .line 11
    iput-object p2, p0, Lpe/Q;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

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
.method public B6(Lwe/D;)V
    .locals 2

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->B6(Lwe/D;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public C0(F)Z
    .locals 2

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->C0(F)Z

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->E(Lze/b0;)Z

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->L(F)Z

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

.method public Nc(FJ)J
    .locals 2

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1, p2, p3}, Lwe/D;->Nc(FJ)J

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

.method public R3(Lze/G;)Z
    .locals 2

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->R3(Lze/G;)Z

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

.method public S3(FJ)Z
    .locals 2

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1, p2, p3}, Lwe/D;->S3(FJ)Z

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

.method public Sa(FJJ)J
    .locals 7

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lwe/D;->Sa(FJJ)J

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

.method public V([F)[F
    .locals 2

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->V([F)[F

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

.method public X7(FJ)J
    .locals 2

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1, p2, p3}, Lwe/D;->X7(FJ)J

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

.method public Y([J)[J
    .locals 2

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->Y([J)[J

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

.method public c(F)J
    .locals 3

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->c(F)J

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1}, Lwe/D;->clear()V

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->d0(Lze/I;)Z

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->h(Lme/f;)V

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

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

    iget-object v0, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v0}, Lwe/D;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1}, Lwe/D;->isEmpty()Z

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

.method public iterator()Lre/I;
    .locals 1

    iget-object v0, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v0}, Lwe/D;->iterator()Lre/I;

    move-result-object v0

    return-object v0
.end method

.method public j()[F
    .locals 2

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1}, Lwe/D;->j()[F

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->e:Lke/h;

    if-nez v1, :cond_0

    new-instance v1, Lpe/i0;

    iget-object v2, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v2}, Lwe/D;->k()Lke/h;

    move-result-object v2

    iget-object v3, p0, Lpe/Q;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/i0;-><init>(Lke/h;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/Q;->e:Lke/h;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/Q;->e:Lke/h;

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->d:LCe/d;

    if-nez v1, :cond_0

    new-instance v1, Lpe/T;

    iget-object v2, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v2}, Lwe/D;->keySet()LCe/d;

    move-result-object v2

    iget-object v3, p0, Lpe/Q;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/T;-><init>(LCe/d;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/Q;->d:LCe/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/Q;->d:LCe/d;

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

    iget-object v0, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v0}, Lwe/D;->l()F

    move-result v0

    return v0
.end method

.method public o0(F)J
    .locals 3

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->o0(F)J

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
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sc(Lze/G;)Z
    .locals 2

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1}, Lwe/D;->sc(Lze/G;)Z

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1}, Lwe/D;->size()I

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1}, Lwe/D;->values()[J

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

    iget-object v0, p0, Lpe/Q;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Q;->b:Lwe/D;

    invoke-interface {v1, p1, p2}, Lwe/D;->w(J)Z

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
