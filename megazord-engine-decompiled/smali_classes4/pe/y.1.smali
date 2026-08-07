.class public Lpe/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/q;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/q;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/c;

.field public transient e:Lke/a;


# direct methods
.method public constructor <init>(Lwe/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/y;->d:LCe/c;

    .line 3
    iput-object v0, p0, Lpe/y;->e:Lke/a;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/y;->b:Lwe/q;

    .line 6
    iput-object p0, p0, Lpe/y;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/q;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/y;->d:LCe/c;

    .line 9
    iput-object v0, p0, Lpe/y;->e:Lke/a;

    .line 10
    iput-object p1, p0, Lpe/y;->b:Lwe/q;

    .line 11
    iput-object p2, p0, Lpe/y;->c:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1}, Lwe/q;->A(Lze/h;)Z

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

.method public B(Lze/z;)Z
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1}, Lwe/q;->B(Lze/z;)Z

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

.method public E2(DB)B
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1, p2, p3}, Lwe/q;->E2(DB)B

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

.method public F5(DB)Z
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1, p2, p3}, Lwe/q;->F5(DB)Z

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1, p2}, Lwe/q;->G(D)Z

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1}, Lwe/q;->O([D)[D

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

.method public P2(DB)B
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1, p2, p3}, Lwe/q;->P2(DB)B

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1}, Lwe/q;->S([B)[B

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

.method public Ud(Lze/s;)Z
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1}, Lwe/q;->Ud(Lze/s;)Z

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

.method public a(D)B
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1, p2}, Lwe/q;->a(D)B

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1}, Lwe/q;->clear()V

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1}, Lwe/q;->g(Lme/a;)V

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

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

    iget-object v0, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v0}, Lwe/q;->i()B

    move-result v0

    return v0
.end method

.method public ie(Lze/s;)Z
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1}, Lwe/q;->ie(Lze/s;)Z

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

.method public increment(D)Z
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1, p2}, Lwe/q;->increment(D)Z

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1}, Lwe/q;->isEmpty()Z

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

.method public iterator()Lre/t;
    .locals 1

    iget-object v0, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v0}, Lwe/q;->iterator()Lre/t;

    move-result-object v0

    return-object v0
.end method

.method public j()[D
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1}, Lwe/q;->j()[D

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->e:Lke/a;

    if-nez v1, :cond_0

    new-instance v1, Lpe/e;

    iget-object v2, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v2}, Lwe/q;->k()Lke/a;

    move-result-object v2

    iget-object v3, p0, Lpe/y;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/e;-><init>(Lke/a;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/y;->e:Lke/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/y;->e:Lke/a;

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->d:LCe/c;

    if-nez v1, :cond_0

    new-instance v1, Lpe/H;

    iget-object v2, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v2}, Lwe/q;->keySet()LCe/c;

    move-result-object v2

    iget-object v3, p0, Lpe/y;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/H;-><init>(LCe/c;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/y;->d:LCe/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/y;->d:LCe/c;

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

    iget-object v0, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v0}, Lwe/q;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public mc(DBB)B
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1, p2, p3, p4}, Lwe/q;->mc(DBB)B

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

.method public n0(D)B
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1, p2}, Lwe/q;->n0(D)B

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
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1}, Lwe/q;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1}, Lwe/q;->size()I

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1}, Lwe/q;->u(B)Z

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

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1}, Lwe/q;->values()[B

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

.method public x2(Lwe/q;)V
    .locals 2

    iget-object v0, p0, Lpe/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/y;->b:Lwe/q;

    invoke-interface {v1, p1}, Lwe/q;->x2(Lwe/q;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
