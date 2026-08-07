.class public Lpe/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/H;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/H;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/e;

.field public transient e:Lke/b;


# direct methods
.method public constructor <init>(Lwe/H;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/W;->d:LCe/e;

    .line 3
    iput-object v0, p0, Lpe/W;->e:Lke/b;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/W;->b:Lwe/H;

    .line 6
    iput-object p0, p0, Lpe/W;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/H;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/W;->d:LCe/e;

    .line 9
    iput-object v0, p0, Lpe/W;->e:Lke/b;

    .line 10
    iput-object p1, p0, Lpe/W;->b:Lwe/H;

    .line 11
    iput-object p2, p0, Lpe/W;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

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
.method public A7(IC)Z
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1, p2}, Lwe/H;->A7(IC)Z

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

.method public B0(I)Z
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->B0(I)Z

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->K(I)Z

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

.method public P6(IC)C
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1, p2}, Lwe/H;->P6(IC)C

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->R([C)[C

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

.method public Rb(IC)C
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1, p2}, Lwe/H;->Rb(IC)C

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->X([I)[I

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->c0(Lze/S;)Z

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1}, Lwe/H;->clear()V

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->e0(Lze/q;)Z

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

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

.method public f7(Lwe/H;)V
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->f7(Lwe/H;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(I)C
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->get(I)C

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

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

    iget-object v0, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v0}, Lwe/H;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1}, Lwe/H;->isEmpty()Z

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

.method public iterator()Lre/M;
    .locals 1

    iget-object v0, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v0}, Lwe/H;->iterator()Lre/M;

    move-result-object v0

    return-object v0
.end method

.method public j()[I
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1}, Lwe/H;->j()[I

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->e:Lke/b;

    if-nez v1, :cond_0

    new-instance v1, Lpe/p;

    iget-object v2, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v2}, Lwe/H;->k()Lke/b;

    move-result-object v2

    iget-object v3, p0, Lpe/W;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/p;-><init>(Lke/b;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/W;->e:Lke/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/W;->e:Lke/b;

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->d:LCe/e;

    if-nez v1, :cond_0

    new-instance v1, Lpe/e0;

    iget-object v2, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v2}, Lwe/H;->keySet()LCe/e;

    move-result-object v2

    iget-object v3, p0, Lpe/W;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/e0;-><init>(LCe/e;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/W;->d:LCe/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/W;->d:LCe/e;

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

    iget-object v0, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v0}, Lwe/H;->l()I

    move-result v0

    return v0
.end method

.method public nb(ICC)C
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1, p2, p3}, Lwe/H;->nb(ICC)C

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->p(Lme/b;)V

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
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(I)C
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->remove(I)C

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1}, Lwe/H;->size()I

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->t(C)Z

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

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

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1}, Lwe/H;->values()[C

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

.method public x6(Lze/L;)Z
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->x6(Lze/L;)Z

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

.method public z4(Lze/L;)Z
    .locals 2

    iget-object v0, p0, Lpe/W;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/W;->b:Lwe/H;

    invoke-interface {v1, p1}, Lwe/H;->z4(Lze/L;)Z

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
