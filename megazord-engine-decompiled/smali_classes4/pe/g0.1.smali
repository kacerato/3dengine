.class public Lpe/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/O;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/O;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/f;

.field public transient e:Lke/a;


# direct methods
.method public constructor <init>(Lwe/O;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/g0;->d:LCe/f;

    .line 3
    iput-object v0, p0, Lpe/g0;->e:Lke/a;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/g0;->b:Lwe/O;

    .line 6
    iput-object p0, p0, Lpe/g0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/O;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/g0;->d:LCe/f;

    .line 9
    iput-object v0, p0, Lpe/g0;->e:Lke/a;

    .line 10
    iput-object p1, p0, Lpe/g0;->b:Lwe/O;

    .line 11
    iput-object p2, p0, Lpe/g0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1}, Lwe/O;->A(Lze/h;)Z

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

.method public D0(J)Z
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1, p2}, Lwe/O;->D0(J)Z

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

.method public F(Lze/b0;)Z
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1}, Lwe/O;->F(Lze/b0;)Z

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

.method public I6(JB)Z
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1, p2, p3}, Lwe/O;->I6(JB)Z

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

.method public J(J)Z
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1, p2}, Lwe/O;->J(J)Z

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

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1}, Lwe/O;->S([B)[B

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

.method public V9(JB)B
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1, p2, p3}, Lwe/O;->V9(JB)B

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

.method public Wb(Lze/U;)Z
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1}, Lwe/O;->Wb(Lze/U;)Z

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

.method public Yc(Lze/U;)Z
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1}, Lwe/O;->Yc(Lze/U;)Z

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

.method public Z([J)[J
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1}, Lwe/O;->Z([J)[J

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

.method public clear()V
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1}, Lwe/O;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public db(JB)B
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1, p2, p3}, Lwe/O;->db(JB)B

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

.method public e(J)B
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1, p2}, Lwe/O;->e(J)B

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

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

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

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1}, Lwe/O;->g(Lme/a;)V

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

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

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

    iget-object v0, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v0}, Lwe/O;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1}, Lwe/O;->isEmpty()Z

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

.method public iterator()Lre/W;
    .locals 1

    iget-object v0, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v0}, Lwe/O;->iterator()Lre/W;

    move-result-object v0

    return-object v0
.end method

.method public j()[J
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1}, Lwe/O;->j()[J

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

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->e:Lke/a;

    if-nez v1, :cond_0

    new-instance v1, Lpe/e;

    iget-object v2, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v2}, Lwe/O;->k()Lke/a;

    move-result-object v2

    iget-object v3, p0, Lpe/g0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/e;-><init>(Lke/a;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/g0;->e:Lke/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/g0;->e:Lke/a;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()LCe/f;
    .locals 4

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->d:LCe/f;

    if-nez v1, :cond_0

    new-instance v1, Lpe/p0;

    iget-object v2, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v2}, Lwe/O;->keySet()LCe/f;

    move-result-object v2

    iget-object v3, p0, Lpe/g0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/p0;-><init>(LCe/f;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/g0;->d:LCe/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/g0;->d:LCe/f;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v0}, Lwe/O;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1}, Lwe/O;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public rb(JBB)B
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1, p2, p3, p4}, Lwe/O;->rb(JBB)B

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

.method public s(J)B
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1, p2}, Lwe/O;->s(J)B

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

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1}, Lwe/O;->size()I

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

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

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

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1}, Lwe/O;->u(B)Z

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

.method public va(Lwe/O;)V
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1, p1}, Lwe/O;->va(Lwe/O;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public values()[B
    .locals 2

    iget-object v0, p0, Lpe/g0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g0;->b:Lwe/O;

    invoke-interface {v1}, Lwe/O;->values()[B

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
