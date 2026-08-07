.class public Lpe/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/N;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/N;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/e;

.field public transient e:Lke/i;


# direct methods
.method public constructor <init>(Lwe/N;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/f0;->d:LCe/e;

    .line 3
    iput-object v0, p0, Lpe/f0;->e:Lke/i;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/f0;->b:Lwe/N;

    .line 6
    iput-object p0, p0, Lpe/f0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/N;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/f0;->d:LCe/e;

    .line 9
    iput-object v0, p0, Lpe/f0;->e:Lke/i;

    .line 10
    iput-object p1, p0, Lpe/f0;->b:Lwe/N;

    .line 11
    iput-object p2, p0, Lpe/f0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->B0(I)Z

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

.method public H9(Lze/T;)Z
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->H9(Lze/T;)Z

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

.method public Ja(IS)S
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1, p2}, Lwe/N;->Ja(IS)S

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

.method public K(I)Z
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->K(I)Z

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

.method public Pc(Lwe/N;)V
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->Pc(Lwe/N;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public T7(IS)Z
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1, p2}, Lwe/N;->T7(IS)Z

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

.method public Ta(ISS)S
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1, p2, p3}, Lwe/N;->Ta(ISS)S

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->X([I)[I

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

.method public a4(Lze/T;)Z
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->a4(Lze/T;)Z

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

.method public b0([S)[S
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->b0([S)[S

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->c0(Lze/S;)Z

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1}, Lwe/N;->clear()V

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

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

.method public get(I)S
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->get(I)S

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->h0(S)Z

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

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

    iget-object v0, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v0}, Lwe/N;->i()S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1}, Lwe/N;->isEmpty()Z

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

.method public iterator()Lre/U;
    .locals 1

    iget-object v0, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v0}, Lwe/N;->iterator()Lre/U;

    move-result-object v0

    return-object v0
.end method

.method public j()[I
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1}, Lwe/N;->j()[I

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->e:Lke/i;

    if-nez v1, :cond_0

    new-instance v1, Lpe/H0;

    iget-object v2, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v2}, Lwe/N;->k()Lke/i;

    move-result-object v2

    iget-object v3, p0, Lpe/f0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/H0;-><init>(Lke/i;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/f0;->e:Lke/i;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/f0;->e:Lke/i;

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->d:LCe/e;

    if-nez v1, :cond_0

    new-instance v1, Lpe/e0;

    iget-object v2, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v2}, Lwe/N;->keySet()LCe/e;

    move-result-object v2

    iget-object v3, p0, Lpe/f0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/e0;-><init>(LCe/e;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/f0;->d:LCe/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/f0;->d:LCe/e;

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

    iget-object v0, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v0}, Lwe/N;->l()I

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
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->q(Lme/h;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q7(IS)S
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1, p2}, Lwe/N;->q7(IS)S

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

.method public remove(I)S
    .locals 2

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->remove(I)S

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1}, Lwe/N;->size()I

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1}, Lwe/N;->values()[S

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

    iget-object v0, p0, Lpe/f0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/f0;->b:Lwe/N;

    invoke-interface {v1, p1}, Lwe/N;->z(Lze/t0;)Z

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
