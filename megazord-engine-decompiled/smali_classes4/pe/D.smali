.class public Lpe/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/u;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/u;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/c;

.field public transient e:Lke/g;


# direct methods
.method public constructor <init>(Lwe/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/D;->d:LCe/c;

    .line 3
    iput-object v0, p0, Lpe/D;->e:Lke/g;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/D;->b:Lwe/u;

    .line 6
    iput-object p0, p0, Lpe/D;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/u;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/D;->d:LCe/c;

    .line 9
    iput-object v0, p0, Lpe/D;->e:Lke/g;

    .line 10
    iput-object p1, p0, Lpe/D;->b:Lwe/u;

    .line 11
    iput-object p2, p0, Lpe/D;->c:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

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
.method public B(Lze/z;)Z
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1}, Lwe/u;->B(Lze/z;)Z

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

.method public C2(DI)I
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1, p2, p3}, Lwe/u;->C2(DI)I

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

.method public G(D)Z
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1, p2}, Lwe/u;->G(D)Z

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

.method public J7(Lze/w;)Z
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1}, Lwe/u;->J7(Lze/w;)Z

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

.method public M8(Lze/w;)Z
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1}, Lwe/u;->M8(Lze/w;)Z

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

.method public N5(DI)Z
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1, p2, p3}, Lwe/u;->N5(DI)Z

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

.method public O([D)[D
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1}, Lwe/u;->O([D)[D

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

.method public W([I)[I
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1}, Lwe/u;->W([I)[I

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

.method public X2(DI)I
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1, p2, p3}, Lwe/u;->X2(DI)I

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

.method public a(D)I
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1, p2}, Lwe/u;->a(D)I

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

.method public a0(Lze/S;)Z
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1}, Lwe/u;->a0(Lze/S;)Z

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

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1}, Lwe/u;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ea(Lwe/u;)V
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1}, Lwe/u;->ea(Lwe/u;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

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

.method public f(Lme/e;)V
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1}, Lwe/u;->f(Lme/e;)V

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

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

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

.method public i()I
    .locals 1

    iget-object v0, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v0}, Lwe/u;->i()I

    move-result v0

    return v0
.end method

.method public increment(D)Z
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1, p2}, Lwe/u;->increment(D)Z

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

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1}, Lwe/u;->isEmpty()Z

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

.method public iterator()Lre/x;
    .locals 1

    iget-object v0, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v0}, Lwe/u;->iterator()Lre/x;

    move-result-object v0

    return-object v0
.end method

.method public j()[D
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1}, Lwe/u;->j()[D

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

.method public k()Lke/g;
    .locals 4

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->e:Lke/g;

    if-nez v1, :cond_0

    new-instance v1, Lpe/X;

    iget-object v2, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v2}, Lwe/u;->k()Lke/g;

    move-result-object v2

    iget-object v3, p0, Lpe/D;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/X;-><init>(Lke/g;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/D;->e:Lke/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/D;->e:Lke/g;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()LCe/c;
    .locals 4

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->d:LCe/c;

    if-nez v1, :cond_0

    new-instance v1, Lpe/H;

    iget-object v2, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v2}, Lwe/u;->keySet()LCe/c;

    move-result-object v2

    iget-object v3, p0, Lpe/D;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/H;-><init>(LCe/c;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/D;->d:LCe/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/D;->d:LCe/c;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v0}, Lwe/u;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public n0(D)I
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1, p2}, Lwe/u;->n0(D)I

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
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1}, Lwe/u;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q6(DII)I
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1, p2, p3, p4}, Lwe/u;->q6(DII)I

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

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1}, Lwe/u;->size()I

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

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

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

.method public v(I)Z
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1, p1}, Lwe/u;->v(I)Z

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

.method public values()[I
    .locals 2

    iget-object v0, p0, Lpe/D;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/D;->b:Lwe/u;

    invoke-interface {v1}, Lwe/u;->values()[I

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
