.class public Lpe/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/g0;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/g0;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/g;

.field public transient e:Lke/b;


# direct methods
.method public constructor <init>(Lwe/g0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/G0;->d:LCe/g;

    .line 3
    iput-object v0, p0, Lpe/G0;->e:Lke/b;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/G0;->b:Lwe/g0;

    .line 6
    iput-object p0, p0, Lpe/G0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/g0;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/G0;->d:LCe/g;

    .line 9
    iput-object v0, p0, Lpe/G0;->e:Lke/b;

    .line 10
    iput-object p1, p0, Lpe/G0;->b:Lwe/g0;

    .line 11
    iput-object p2, p0, Lpe/G0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

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
.method public Bc(SC)Z
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1, p2}, Lwe/g0;->Bc(SC)Z

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

.method public D(S)Z
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->D(S)Z

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

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->E0(S)Z

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

.method public F2(Lze/n0;)Z
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->F2(Lze/n0;)Z

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

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->M(Lze/t0;)Z

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

.method public N4(SC)C
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1, p2}, Lwe/g0;->N4(SC)C

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

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->Q([S)[S

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

.method public R([C)[C
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->R([C)[C

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

.method public b8(SCC)C
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1, p2, p3}, Lwe/g0;->b8(SCC)C

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

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1}, Lwe/g0;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(S)C
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->d(S)C

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

.method public e0(Lze/q;)Z
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->e0(Lze/q;)Z

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

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

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

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

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

.method public i()C
    .locals 1

    iget-object v0, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v0}, Lwe/g0;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1}, Lwe/g0;->isEmpty()Z

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

.method public iterator()Lre/o0;
    .locals 1

    iget-object v0, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v0}, Lwe/g0;->iterator()Lre/o0;

    move-result-object v0

    return-object v0
.end method

.method public j()[S
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1}, Lwe/g0;->j()[S

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

.method public k()Lke/b;
    .locals 4

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->e:Lke/b;

    if-nez v1, :cond_0

    new-instance v1, Lpe/p;

    iget-object v2, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v2}, Lwe/g0;->k()Lke/b;

    move-result-object v2

    iget-object v3, p0, Lpe/G0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/p;-><init>(Lke/b;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/G0;->e:Lke/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/G0;->e:Lke/b;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k0(S)C
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->k0(S)C

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

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->d:LCe/g;

    if-nez v1, :cond_0

    new-instance v1, Lpe/O0;

    iget-object v2, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v2}, Lwe/g0;->keySet()LCe/g;

    move-result-object v2

    iget-object v3, p0, Lpe/G0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/O0;-><init>(LCe/g;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/G0;->d:LCe/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/G0;->d:LCe/g;

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

    iget-object v0, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v0}, Lwe/g0;->l()S

    move-result v0

    return v0
.end method

.method public lb(Lwe/g0;)V
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->lb(Lwe/g0;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o4(SC)C
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1, p2}, Lwe/g0;->o4(SC)C

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

.method public p(Lme/b;)V
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->p(Lme/b;)V

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
            "Ljava/lang/Short;",
            "+",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1}, Lwe/g0;->size()I

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

.method public t(C)Z
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->t(C)Z

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

.method public t9(Lze/n0;)Z
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1, p1}, Lwe/g0;->t9(Lze/n0;)Z

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

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

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

.method public values()[C
    .locals 2

    iget-object v0, p0, Lpe/G0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/G0;->b:Lwe/g0;

    invoke-interface {v1}, Lwe/g0;->values()[C

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
