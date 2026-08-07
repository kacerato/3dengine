.class public Lpe/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/C;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/C;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/d;

.field public transient e:Lke/g;


# direct methods
.method public constructor <init>(Lwe/C;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/O;->d:LCe/d;

    .line 3
    iput-object v0, p0, Lpe/O;->e:Lke/g;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/O;->b:Lwe/C;

    .line 6
    iput-object p0, p0, Lpe/O;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/C;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/O;->d:LCe/d;

    .line 9
    iput-object v0, p0, Lpe/O;->e:Lke/g;

    .line 10
    iput-object p1, p0, Lpe/O;->b:Lwe/C;

    .line 11
    iput-object p2, p0, Lpe/O;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

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
.method public C0(F)Z
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->C0(F)Z

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

.method public Gd(Lwe/C;)V
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->Gd(Lwe/C;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public L(F)Z
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->L(F)Z

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

.method public V([F)[F
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->V([F)[F

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->W([I)[I

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

.method public W7(FI)I
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1, p2}, Lwe/C;->W7(FI)I

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

.method public Xc(FI)I
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1, p2}, Lwe/C;->Xc(FI)I

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->a0(Lze/S;)Z

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

.method public c(F)I
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->c(F)I

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1}, Lwe/C;->clear()V

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->d0(Lze/I;)Z

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->f(Lme/e;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public gc(Lze/F;)Z
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->gc(Lze/F;)Z

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

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

    iget-object v0, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v0}, Lwe/C;->i()I

    move-result v0

    return v0
.end method

.method public ia(FII)I
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1, p2, p3}, Lwe/C;->ia(FII)I

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1}, Lwe/C;->isEmpty()Z

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

.method public iterator()Lre/G;
    .locals 1

    iget-object v0, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v0}, Lwe/C;->iterator()Lre/G;

    move-result-object v0

    return-object v0
.end method

.method public j()[F
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1}, Lwe/C;->j()[F

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->e:Lke/g;

    if-nez v1, :cond_0

    new-instance v1, Lpe/X;

    iget-object v2, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v2}, Lwe/C;->k()Lke/g;

    move-result-object v2

    iget-object v3, p0, Lpe/O;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/X;-><init>(Lke/g;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/O;->e:Lke/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/O;->e:Lke/g;

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->d:LCe/d;

    if-nez v1, :cond_0

    new-instance v1, Lpe/T;

    iget-object v2, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v2}, Lwe/C;->keySet()LCe/d;

    move-result-object v2

    iget-object v3, p0, Lpe/O;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/T;-><init>(LCe/d;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/O;->d:LCe/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/O;->d:LCe/d;

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

    iget-object v0, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v0}, Lwe/C;->l()F

    move-result v0

    return v0
.end method

.method public o0(F)I
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->o0(F)I

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
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sa(Lze/F;)Z
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->sa(Lze/F;)Z

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1}, Lwe/C;->size()I

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1}, Lwe/C;->v(I)Z

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

.method public v3(FI)Z
    .locals 2

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1, p1, p2}, Lwe/C;->v3(FI)Z

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

    iget-object v0, p0, Lpe/O;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/O;->b:Lwe/C;

    invoke-interface {v1}, Lwe/C;->values()[I

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
