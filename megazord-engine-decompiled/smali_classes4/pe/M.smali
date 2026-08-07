.class public Lpe/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/A;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/A;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/d;

.field public transient e:Lke/e;


# direct methods
.method public constructor <init>(Lwe/A;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/M;->d:LCe/d;

    .line 3
    iput-object v0, p0, Lpe/M;->e:Lke/e;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/M;->b:Lwe/A;

    .line 6
    iput-object p0, p0, Lpe/M;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/A;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/M;->d:LCe/d;

    .line 9
    iput-object v0, p0, Lpe/M;->e:Lke/e;

    .line 10
    iput-object p1, p0, Lpe/M;->b:Lwe/A;

    .line 11
    iput-object p2, p0, Lpe/M;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

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
.method public A6(Lze/D;)Z
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->A6(Lze/D;)Z

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

.method public C(Lze/z;)Z
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->C(Lze/z;)Z

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

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->C0(F)Z

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

.method public C4(Lze/D;)Z
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->C4(Lze/D;)Z

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

.method public E3(FD)Z
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1, p2, p3}, Lwe/A;->E3(FD)Z

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

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->L(F)Z

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

.method public O3(FDD)D
    .locals 7

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lwe/A;->O3(FDD)D

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

.method public Q7(FD)D
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1, p2, p3}, Lwe/A;->Q7(FD)D

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

.method public T([D)[D
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->T([D)[D

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

.method public V([F)[F
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->V([F)[F

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

.method public bd(FD)D
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1, p2, p3}, Lwe/A;->bd(FD)D

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

.method public c(F)D
    .locals 3

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->c(F)D

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

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1}, Lwe/A;->clear()V

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

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->d0(Lze/I;)Z

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

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

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

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

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

.method public i()D
    .locals 2

    iget-object v0, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v0}, Lwe/A;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1}, Lwe/A;->isEmpty()Z

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

.method public iterator()Lre/E;
    .locals 1

    iget-object v0, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v0}, Lwe/A;->iterator()Lre/E;

    move-result-object v0

    return-object v0
.end method

.method public j()[F
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1}, Lwe/A;->j()[F

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

.method public k()Lke/e;
    .locals 4

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->e:Lke/e;

    if-nez v1, :cond_0

    new-instance v1, Lpe/A;

    iget-object v2, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v2}, Lwe/A;->k()Lke/e;

    move-result-object v2

    iget-object v3, p0, Lpe/M;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/A;-><init>(Lke/e;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/M;->e:Lke/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/M;->e:Lke/e;

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

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->d:LCe/d;

    if-nez v1, :cond_0

    new-instance v1, Lpe/T;

    iget-object v2, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v2}, Lwe/A;->keySet()LCe/d;

    move-result-object v2

    iget-object v3, p0, Lpe/M;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/T;-><init>(LCe/d;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/M;->d:LCe/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/M;->d:LCe/d;

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

    iget-object v0, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v0}, Lwe/A;->l()F

    move-result v0

    return v0
.end method

.method public n(Lme/c;)V
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->n(Lme/c;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o0(F)D
    .locals 3

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->o0(F)D

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
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1}, Lwe/A;->size()I

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

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

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

.method public values()[D
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1}, Lwe/A;->values()[D

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

.method public x(D)Z
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1, p2}, Lwe/A;->x(D)Z

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

.method public xb(Lwe/A;)V
    .locals 2

    iget-object v0, p0, Lpe/M;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/M;->b:Lwe/A;

    invoke-interface {v1, p1}, Lwe/A;->xb(Lwe/A;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
