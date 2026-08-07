.class public Lpe/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/m;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/m;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/b;

.field public transient e:Lke/g;


# direct methods
.method public constructor <init>(Lwe/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/s;->d:LCe/b;

    .line 3
    iput-object v0, p0, Lpe/s;->e:Lke/g;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/s;->b:Lwe/m;

    .line 6
    iput-object p0, p0, Lpe/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/m;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/s;->d:LCe/b;

    .line 9
    iput-object v0, p0, Lpe/s;->e:Lke/g;

    .line 10
    iput-object p1, p0, Lpe/s;->b:Lwe/m;

    .line 11
    iput-object p2, p0, Lpe/s;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

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
.method public A8(Lwe/m;)V
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->A8(Lwe/m;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public H(C)Z
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->H(C)Z

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

.method public Jd(Lze/n;)Z
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->Jd(Lze/n;)Z

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

.method public Mb(CI)Z
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1, p2}, Lwe/m;->Mb(CI)Z

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

.method public N([C)[C
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->N([C)[C

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

.method public Uc(Lze/n;)Z
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->Uc(Lze/n;)Z

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

.method public W([I)[I
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->W([I)[I

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

.method public a0(Lze/S;)Z
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->a0(Lze/S;)Z

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

.method public b(C)I
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->b(C)I

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

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1}, Lwe/m;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e6(CI)I
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1, p2}, Lwe/m;->e6(CI)I

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

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

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

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->f(Lme/e;)V

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

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

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

    iget-object v0, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v0}, Lwe/m;->i()I

    move-result v0

    return v0
.end method

.method public i3(CI)I
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1, p2}, Lwe/m;->i3(CI)I

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

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1}, Lwe/m;->isEmpty()Z

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

.method public iterator()Lre/o;
    .locals 1

    iget-object v0, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v0}, Lwe/m;->iterator()Lre/o;

    move-result-object v0

    return-object v0
.end method

.method public j()[C
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1}, Lwe/m;->j()[C

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

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->e:Lke/g;

    if-nez v1, :cond_0

    new-instance v1, Lpe/X;

    iget-object v2, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v2}, Lwe/m;->k()Lke/g;

    move-result-object v2

    iget-object v3, p0, Lpe/s;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/X;-><init>(Lke/g;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/s;->e:Lke/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/s;->e:Lke/g;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()LCe/b;
    .locals 4

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->d:LCe/b;

    if-nez v1, :cond_0

    new-instance v1, Lpe/w;

    iget-object v2, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v2}, Lwe/m;->keySet()LCe/b;

    move-result-object v2

    iget-object v3, p0, Lpe/s;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/w;-><init>(LCe/b;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/s;->d:LCe/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/s;->d:LCe/b;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v0}, Lwe/m;->l()C

    move-result v0

    return v0
.end method

.method public l0(Lze/q;)Z
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->l0(Lze/q;)Z

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

.method public m0(C)I
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->m0(C)I

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
            "Ljava/lang/Character;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1}, Lwe/m;->size()I

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

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

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

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->v(I)Z

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

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1}, Lwe/m;->values()[I

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

.method public w5(CII)I
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1, p2, p3}, Lwe/m;->w5(CII)I

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

.method public z0(C)Z
    .locals 2

    iget-object v0, p0, Lpe/s;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/s;->b:Lwe/m;

    invoke-interface {v1, p1}, Lwe/m;->z0(C)Z

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
