.class public Lpe/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/a0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/a0<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/a0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public transient d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient e:Lke/e;


# direct methods
.method public constructor <init>(Lwe/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/a0<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/t0;->d:Ljava/util/Set;

    .line 3
    iput-object v0, p0, Lpe/t0;->e:Lke/e;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/t0;->b:Lwe/a0;

    .line 6
    iput-object p0, p0, Lpe/t0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/a0;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/a0<",
            "TK;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/t0;->d:Ljava/util/Set;

    .line 9
    iput-object v0, p0, Lpe/t0;->e:Lke/e;

    .line 10
    iput-object p1, p0, Lpe/t0;->b:Lwe/a0;

    .line 11
    iput-object p2, p0, Lpe/t0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

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
.method public C(Lze/z;)Z
    .locals 2

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->C(Lze/z;)Z

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

.method public Hd(Lze/f0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/f0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->Hd(Lze/f0;)Z

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

.method public J5(Ljava/lang/Object;DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;DD)D"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lwe/a0;->J5(Ljava/lang/Object;DD)D

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

.method public Rc(Lze/f0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/f0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->Rc(Lze/f0;)Z

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

.method public T([D)[D
    .locals 2

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->T([D)[D

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

.method public Wc(Lwe/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/a0<",
            "+TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->Wc(Lwe/a0;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Z4(Ljava/lang/Object;D)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1, p2, p3}, Lwe/a0;->Z4(Ljava/lang/Object;D)D

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

.method public a7(Ljava/lang/Object;D)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1, p2, p3}, Lwe/a0;->a7(Ljava/lang/Object;D)Z

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

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1}, Lwe/a0;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->containsKey(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

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

.method public get(Ljava/lang/Object;)D
    .locals 3

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->get(Ljava/lang/Object;)D

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

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

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

    iget-object v0, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v0}, Lwe/a0;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1}, Lwe/a0;->isEmpty()Z

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

.method public iterator()Lre/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/h0<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v0}, Lwe/a0;->iterator()Lre/h0;

    move-result-object v0

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1}, Lwe/a0;->j()[Ljava/lang/Object;

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

.method public j0(Lze/k0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/k0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->j0(Lze/k0;)Z

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

.method public k()Lke/e;
    .locals 4

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->e:Lke/e;

    if-nez v1, :cond_0

    new-instance v1, Lpe/A;

    iget-object v2, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v2}, Lwe/a0;->k()Lke/e;

    move-result-object v2

    iget-object v3, p0, Lpe/t0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/A;-><init>(Lke/e;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/t0;->e:Lke/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/t0;->e:Lke/e;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->d:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Lpe/b;

    iget-object v2, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v2}, Lwe/a0;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lpe/t0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/b;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/t0;->d:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/t0;->d:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public n(Lme/c;)V
    .locals 2

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->n(Lme/c;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n5(Ljava/lang/Object;D)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1, p2, p3}, Lwe/a0;->n5(Ljava/lang/Object;D)D

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

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;)D
    .locals 3

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->remove(Ljava/lang/Object;)D

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

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1}, Lwe/a0;->size()I

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

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

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

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1}, Lwe/a0;->values()[D

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

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1, p2}, Lwe/a0;->x(D)Z

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

.method public x0(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->x0(Ljava/lang/Object;)Z

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

.method public y0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)[TK;"
        }
    .end annotation

    iget-object v0, p0, Lpe/t0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/t0;->b:Lwe/a0;

    invoke-interface {v1, p1}, Lwe/a0;->y0([Ljava/lang/Object;)[Ljava/lang/Object;

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
