.class public Lpe/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lke/h;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:J = 0x2a61f84d099c99b5L


# instance fields
.field public final b:Lke/h;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lke/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lpe/i0;->b:Lke/h;

    .line 4
    iput-object p0, p0, Lpe/i0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lke/h;Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lpe/i0;->b:Lke/h;

    .line 7
    iput-object p2, p0, Lpe/i0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

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
.method public J0(J)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1, p2}, Lke/h;->J0(J)Z

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

.method public L0([J)[J
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->L0([J)[J

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

.method public M1([J)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->M1([J)Z

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

.method public W0(J)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1, p2}, Lke/h;->W0(J)Z

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

.method public a1(Lze/b0;)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->a1(Lze/b0;)Z

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

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->addAll(Ljava/util/Collection;)Z

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

.method public b2([J)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->b2([J)Z

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

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1}, Lke/h;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->containsAll(Ljava/util/Collection;)Z

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

.method public e(J)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1, p2}, Lke/h;->e(J)Z

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

.method public g2(Lke/h;)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->g2(Lke/h;)Z

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

.method public i()J
    .locals 2

    iget-object v0, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v0}, Lke/h;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1}, Lke/h;->isEmpty()Z

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

.method public iterator()Lre/b0;
    .locals 1

    iget-object v0, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v0}, Lke/h;->iterator()Lre/b0;

    move-result-object v0

    return-object v0
.end method

.method public j2(Lke/h;)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->j2(Lke/h;)Z

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

.method public l2([J)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->l2([J)Z

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

.method public m2([J)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->m2([J)Z

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

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->removeAll(Ljava/util/Collection;)Z

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

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->retainAll(Ljava/util/Collection;)Z

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

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1}, Lke/h;->size()I

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

.method public t1(Lke/h;)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->t1(Lke/h;)Z

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

.method public toArray()[J
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1}, Lke/h;->toArray()[J

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

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

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

.method public v1(Lke/h;)Z
    .locals 2

    iget-object v0, p0, Lpe/i0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/i0;->b:Lke/h;

    invoke-interface {v1, p1}, Lke/h;->v1(Lke/h;)Z

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
