.class public Lpe/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/G;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/G;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/e;

.field public transient e:Lke/a;


# direct methods
.method public constructor <init>(Lwe/G;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/V;->d:LCe/e;

    .line 3
    iput-object v0, p0, Lpe/V;->e:Lke/a;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/V;->b:Lwe/G;

    .line 6
    iput-object p0, p0, Lpe/V;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/G;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/V;->d:LCe/e;

    .line 9
    iput-object v0, p0, Lpe/V;->e:Lke/a;

    .line 10
    iput-object p1, p0, Lpe/V;->b:Lwe/G;

    .line 11
    iput-object p2, p0, Lpe/V;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

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
.method public A(Lze/h;)Z
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->A(Lze/h;)Z

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

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->B0(I)Z

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

.method public C7(IB)Z
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1, p2}, Lwe/G;->C7(IB)Z

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

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->K(I)Z

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

.method public M6(IB)B
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1, p2}, Lwe/G;->M6(IB)B

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

.method public Ma(Lze/K;)Z
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->Ma(Lze/K;)Z

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

.method public Pb(IB)B
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1, p2}, Lwe/G;->Pb(IB)B

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

.method public S([B)[B
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->S([B)[B

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

.method public X([I)[I
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->X([I)[I

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

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->c0(Lze/S;)Z

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

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1}, Lwe/G;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ee(Lwe/G;)V
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->ee(Lwe/G;)V

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

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

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

.method public g(Lme/a;)V
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->g(Lme/a;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g6(Lze/K;)Z
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->g6(Lze/K;)Z

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

.method public get(I)B
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->get(I)B

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

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

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

.method public i()B
    .locals 1

    iget-object v0, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v0}, Lwe/G;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1}, Lwe/G;->isEmpty()Z

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

.method public iterator()Lre/L;
    .locals 1

    iget-object v0, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v0}, Lwe/G;->iterator()Lre/L;

    move-result-object v0

    return-object v0
.end method

.method public j()[I
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1}, Lwe/G;->j()[I

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

.method public k()Lke/a;
    .locals 4

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->e:Lke/a;

    if-nez v1, :cond_0

    new-instance v1, Lpe/e;

    iget-object v2, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v2}, Lwe/G;->k()Lke/a;

    move-result-object v2

    iget-object v3, p0, Lpe/V;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/e;-><init>(Lke/a;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/V;->e:Lke/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/V;->e:Lke/a;

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

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->d:LCe/e;

    if-nez v1, :cond_0

    new-instance v1, Lpe/e0;

    iget-object v2, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v2}, Lwe/G;->keySet()LCe/e;

    move-result-object v2

    iget-object v3, p0, Lpe/V;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/e0;-><init>(LCe/e;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/V;->d:LCe/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/V;->d:LCe/e;

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

    iget-object v0, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v0}, Lwe/G;->l()I

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
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(I)B
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->remove(I)B

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

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1}, Lwe/G;->size()I

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

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

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

.method public u(B)Z
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1}, Lwe/G;->u(B)Z

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

.method public values()[B
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1}, Lwe/G;->values()[B

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

.method public wa(IBB)B
    .locals 2

    iget-object v0, p0, Lpe/V;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/V;->b:Lwe/G;

    invoke-interface {v1, p1, p2, p3}, Lwe/G;->wa(IBB)B

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
