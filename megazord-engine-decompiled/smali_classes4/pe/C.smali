.class public Lpe/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/t;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/t;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/c;

.field public transient e:Lke/f;


# direct methods
.method public constructor <init>(Lwe/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/C;->d:LCe/c;

    .line 3
    iput-object v0, p0, Lpe/C;->e:Lke/f;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/C;->b:Lwe/t;

    .line 6
    iput-object p0, p0, Lpe/C;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/t;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/C;->d:LCe/c;

    .line 9
    iput-object v0, p0, Lpe/C;->e:Lke/f;

    .line 10
    iput-object p1, p0, Lpe/C;->b:Lwe/t;

    .line 11
    iput-object p2, p0, Lpe/C;->c:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1}, Lwe/t;->B(Lze/z;)Z

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

.method public E9(DFF)F
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1, p2, p3, p4}, Lwe/t;->E9(DFF)F

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

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1, p2}, Lwe/t;->G(D)Z

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

.method public H5(Lze/v;)Z
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1}, Lwe/t;->H5(Lze/v;)Z

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

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1}, Lwe/t;->O([D)[D

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

.method public U([F)[F
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1}, Lwe/t;->U([F)[F

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

.method public U2(DF)F
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1, p2, p3}, Lwe/t;->U2(DF)F

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

.method public V5(DF)Z
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1, p2, p3}, Lwe/t;->V5(DF)Z

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

.method public a(D)F
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1, p2}, Lwe/t;->a(D)F

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

.method public ab(Lze/v;)Z
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1}, Lwe/t;->ab(Lze/v;)Z

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

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1}, Lwe/t;->clear()V

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

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

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

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

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

.method public he(Lwe/t;)V
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1}, Lwe/t;->he(Lwe/t;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v0}, Lwe/t;->i()F

    move-result v0

    return v0
.end method

.method public increment(D)Z
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1, p2}, Lwe/t;->increment(D)Z

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

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1}, Lwe/t;->isEmpty()Z

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

.method public iterator()Lre/w;
    .locals 1

    iget-object v0, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v0}, Lwe/t;->iterator()Lre/w;

    move-result-object v0

    return-object v0
.end method

.method public j()[D
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1}, Lwe/t;->j()[D

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

.method public k()Lke/f;
    .locals 4

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->e:Lke/f;

    if-nez v1, :cond_0

    new-instance v1, Lpe/L;

    iget-object v2, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v2}, Lwe/t;->k()Lke/f;

    move-result-object v2

    iget-object v3, p0, Lpe/C;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/L;-><init>(Lke/f;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/C;->e:Lke/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/C;->e:Lke/f;

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

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->d:LCe/c;

    if-nez v1, :cond_0

    new-instance v1, Lpe/H;

    iget-object v2, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v2}, Lwe/t;->keySet()LCe/c;

    move-result-object v2

    iget-object v3, p0, Lpe/C;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/H;-><init>(LCe/c;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/C;->d:LCe/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/C;->d:LCe/c;

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

    iget-object v0, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v0}, Lwe/t;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public n0(D)F
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1, p2}, Lwe/t;->n0(D)F

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

.method public o(Lme/d;)V
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1}, Lwe/t;->o(Lme/d;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p0(Lze/I;)Z
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1}, Lwe/t;->p0(Lze/I;)Z

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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1}, Lwe/t;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1}, Lwe/t;->size()I

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

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

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

.method public values()[F
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1}, Lwe/t;->values()[F

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

.method public y(F)Z
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1}, Lwe/t;->y(F)Z

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

.method public y2(DF)F
    .locals 2

    iget-object v0, p0, Lpe/C;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/C;->b:Lwe/t;

    invoke-interface {v1, p1, p2, p3}, Lwe/t;->y2(DF)F

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
