.class public Lpe/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/I;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/I;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/e;

.field public transient e:Lke/e;


# direct methods
.method public constructor <init>(Lwe/I;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/Y;->d:LCe/e;

    .line 3
    iput-object v0, p0, Lpe/Y;->e:Lke/e;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/Y;->b:Lwe/I;

    .line 6
    iput-object p0, p0, Lpe/Y;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/I;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/Y;->d:LCe/e;

    .line 9
    iput-object v0, p0, Lpe/Y;->e:Lke/e;

    .line 10
    iput-object p1, p0, Lpe/Y;->b:Lwe/I;

    .line 11
    iput-object p2, p0, Lpe/Y;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

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
.method public B0(I)Z
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->B0(I)Z

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

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->C(Lze/z;)Z

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

.method public Gb(ID)D
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1, p2, p3}, Lwe/I;->Gb(ID)D

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

.method public K(I)Z
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->K(I)Z

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

.method public N6(ID)D
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1, p2, p3}, Lwe/I;->N6(ID)D

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

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->T([D)[D

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

.method public Ub(Lze/M;)Z
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->Ub(Lze/M;)Z

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

.method public X([I)[I
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->X([I)[I

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

.method public c0(Lze/S;)Z
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->c0(Lze/S;)Z

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

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1}, Lwe/I;->clear()V

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

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

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

.method public get(I)D
    .locals 3

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->get(I)D

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

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

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

    iget-object v0, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v0}, Lwe/I;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1}, Lwe/I;->isEmpty()Z

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

.method public iterator()Lre/N;
    .locals 1

    iget-object v0, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v0}, Lwe/I;->iterator()Lre/N;

    move-result-object v0

    return-object v0
.end method

.method public j()[I
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1}, Lwe/I;->j()[I

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

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->e:Lke/e;

    if-nez v1, :cond_0

    new-instance v1, Lpe/A;

    iget-object v2, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v2}, Lwe/I;->k()Lke/e;

    move-result-object v2

    iget-object v3, p0, Lpe/Y;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/A;-><init>(Lke/e;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/Y;->e:Lke/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/Y;->e:Lke/e;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()LCe/e;
    .locals 4

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->d:LCe/e;

    if-nez v1, :cond_0

    new-instance v1, Lpe/e0;

    iget-object v2, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v2}, Lwe/I;->keySet()LCe/e;

    move-result-object v2

    iget-object v3, p0, Lpe/Y;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/e0;-><init>(LCe/e;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/Y;->d:LCe/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/Y;->d:LCe/e;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v0}, Lwe/I;->l()I

    move-result v0

    return v0
.end method

.method public n(Lme/c;)V
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->n(Lme/c;)V

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
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public qd(Lwe/I;)V
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->qd(Lwe/I;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(I)D
    .locals 3

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->remove(I)D

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

.method public size()I
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1}, Lwe/I;->size()I

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

.method public tc(Lze/M;)Z
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1}, Lwe/I;->tc(Lze/M;)Z

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

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

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

.method public v9(IDD)D
    .locals 7

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lwe/I;->v9(IDD)D

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

.method public values()[D
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1}, Lwe/I;->values()[D

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

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1, p2}, Lwe/I;->x(D)Z

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

.method public z7(ID)Z
    .locals 2

    iget-object v0, p0, Lpe/Y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/Y;->b:Lwe/I;

    invoke-interface {v1, p1, p2, p3}, Lwe/I;->z7(ID)Z

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
