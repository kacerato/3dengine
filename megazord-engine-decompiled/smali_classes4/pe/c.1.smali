.class public Lpe/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/a;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/a;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/a;

.field public transient e:Lke/a;


# direct methods
.method public constructor <init>(Lwe/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/c;->d:LCe/a;

    .line 3
    iput-object v0, p0, Lpe/c;->e:Lke/a;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/c;->b:Lwe/a;

    .line 6
    iput-object p0, p0, Lpe/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/a;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/c;->d:LCe/a;

    .line 9
    iput-object v0, p0, Lpe/c;->e:Lke/a;

    .line 10
    iput-object p1, p0, Lpe/c;->b:Lwe/a;

    .line 11
    iput-object p2, p0, Lpe/c;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->A(Lze/h;)Z

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

.method public A0(B)Z
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->A0(B)Z

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

.method public Ac(BB)Z
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1, p2}, Lwe/a;->Ac(BB)Z

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

.method public Fc(Lze/a;)Z
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->Fc(Lze/a;)Z

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

.method public I(B)Z
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->I(B)Z

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

.method public M4(BB)B
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1, p2}, Lwe/a;->M4(BB)B

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

.method public P([B)[B
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->P([B)[B

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

.method public S([B)[B
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->S([B)[B

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

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1}, Lwe/a;->clear()V

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

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

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

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->g(Lme/a;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g0(Lze/h;)Z
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->g0(Lze/h;)Z

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

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

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

    iget-object v0, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v0}, Lwe/a;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1}, Lwe/a;->isEmpty()Z

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

.method public iterator()Lre/b;
    .locals 1

    iget-object v0, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v0}, Lwe/a;->iterator()Lre/b;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1}, Lwe/a;->j()[B

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

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->e:Lke/a;

    if-nez v1, :cond_0

    new-instance v1, Lpe/e;

    iget-object v2, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v2}, Lwe/a;->k()Lke/a;

    move-result-object v2

    iget-object v3, p0, Lpe/c;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/e;-><init>(Lke/a;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/c;->e:Lke/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/c;->e:Lke/a;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()LCe/a;
    .locals 4

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->d:LCe/a;

    if-nez v1, :cond_0

    new-instance v1, Lpe/l;

    iget-object v2, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v2}, Lwe/a;->keySet()LCe/a;

    move-result-object v2

    iget-object v3, p0, Lpe/c;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/l;-><init>(LCe/a;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/c;->d:LCe/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/c;->d:LCe/a;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v0}, Lwe/a;->l()B

    move-result v0

    return v0
.end method

.method public m(B)B
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->m(B)B

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

.method public ma(Lze/a;)Z
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->ma(Lze/a;)Z

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

.method public n8(BBB)B
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1, p2, p3}, Lwe/a;->n8(BBB)B

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

.method public p4(BB)B
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1, p2}, Lwe/a;->p4(BB)B

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
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q0(B)B
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->q0(B)B

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

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1}, Lwe/a;->size()I

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

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

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

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->u(B)Z

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

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1}, Lwe/a;->values()[B

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

.method public y9(Lwe/a;)V
    .locals 2

    iget-object v0, p0, Lpe/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/c;->b:Lwe/a;

    invoke-interface {v1, p1}, Lwe/a;->y9(Lwe/a;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
