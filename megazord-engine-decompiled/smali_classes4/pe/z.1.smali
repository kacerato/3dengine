.class public Lpe/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/r;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/r;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/c;

.field public transient e:Lke/b;


# direct methods
.method public constructor <init>(Lwe/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/z;->d:LCe/c;

    .line 3
    iput-object v0, p0, Lpe/z;->e:Lke/b;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/z;->b:Lwe/r;

    .line 6
    iput-object p0, p0, Lpe/z;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/r;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/z;->d:LCe/c;

    .line 9
    iput-object v0, p0, Lpe/z;->e:Lke/b;

    .line 10
    iput-object p1, p0, Lpe/z;->b:Lwe/r;

    .line 11
    iput-object p2, p0, Lpe/z;->c:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1}, Lwe/r;->B(Lze/z;)Z

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

.method public D5(DC)Z
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1, p2, p3}, Lwe/r;->D5(DC)Z

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1, p2}, Lwe/r;->G(D)Z

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

.method public G2(DC)C
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1, p2, p3}, Lwe/r;->G2(DC)C

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1}, Lwe/r;->O([D)[D

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

.method public Q2(DC)C
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1, p2, p3}, Lwe/r;->Q2(DC)C

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

.method public R([C)[C
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1}, Lwe/r;->R([C)[C

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

.method public Rd(Lze/t;)Z
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1}, Lwe/r;->Rd(Lze/t;)Z

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

.method public a(D)C
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1, p2}, Lwe/r;->a(D)C

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1}, Lwe/r;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e0(Lze/q;)Z
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1}, Lwe/r;->e0(Lze/q;)Z

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

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

.method public ha(DCC)C
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1, p2, p3, p4}, Lwe/r;->ha(DCC)C

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

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

    iget-object v0, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v0}, Lwe/r;->i()C

    move-result v0

    return v0
.end method

.method public increment(D)Z
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1, p2}, Lwe/r;->increment(D)Z

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1}, Lwe/r;->isEmpty()Z

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

.method public iterator()Lre/u;
    .locals 1

    iget-object v0, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v0}, Lwe/r;->iterator()Lre/u;

    move-result-object v0

    return-object v0
.end method

.method public j()[D
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1}, Lwe/r;->j()[D

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->e:Lke/b;

    if-nez v1, :cond_0

    new-instance v1, Lpe/p;

    iget-object v2, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v2}, Lwe/r;->k()Lke/b;

    move-result-object v2

    iget-object v3, p0, Lpe/z;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/p;-><init>(Lke/b;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/z;->e:Lke/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/z;->e:Lke/b;

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->d:LCe/c;

    if-nez v1, :cond_0

    new-instance v1, Lpe/H;

    iget-object v2, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v2}, Lwe/r;->keySet()LCe/c;

    move-result-object v2

    iget-object v3, p0, Lpe/z;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/H;-><init>(LCe/c;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/z;->d:LCe/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/z;->d:LCe/c;

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

    iget-object v0, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v0}, Lwe/r;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public md(Lze/t;)Z
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1}, Lwe/r;->md(Lze/t;)Z

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

.method public n0(D)C
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1, p2}, Lwe/r;->n0(D)C

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1}, Lwe/r;->p(Lme/b;)V

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
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1}, Lwe/r;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q4(Lwe/r;)V
    .locals 2

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1}, Lwe/r;->q4(Lwe/r;)V

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1}, Lwe/r;->size()I

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1, p1}, Lwe/r;->t(C)Z

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

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

    iget-object v0, p0, Lpe/z;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/z;->b:Lwe/r;

    invoke-interface {v1}, Lwe/r;->values()[C

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
