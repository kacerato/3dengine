.class public Lpe/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/d;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/d;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/a;

.field public transient e:Lke/f;


# direct methods
.method public constructor <init>(Lwe/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/g;->d:LCe/a;

    .line 3
    iput-object v0, p0, Lpe/g;->e:Lke/f;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/g;->b:Lwe/d;

    .line 6
    iput-object p0, p0, Lpe/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/d;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/g;->d:LCe/a;

    .line 9
    iput-object v0, p0, Lpe/g;->e:Lke/f;

    .line 10
    iput-object p1, p0, Lpe/g;->b:Lwe/d;

    .line 11
    iput-object p2, p0, Lpe/g;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

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
.method public A0(B)Z
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->A0(B)Z

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

.method public Cd(Lwe/d;)V
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->Cd(Lwe/d;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public I(B)Z
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->I(B)Z

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->P([B)[B

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->U([F)[F

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

.method public U3(Lze/d;)Z
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->U3(Lze/d;)Z

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

.method public W4(BF)F
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1, p2}, Lwe/d;->W4(BF)F

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

.method public a8(Lze/d;)Z
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->a8(Lze/d;)Z

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1}, Lwe/d;->clear()V

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

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

.method public f4(BF)F
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1, p2}, Lwe/d;->f4(BF)F

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

.method public g0(Lze/h;)Z
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->g0(Lze/h;)Z

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

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

.method public i()F
    .locals 1

    iget-object v0, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v0}, Lwe/d;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1}, Lwe/d;->isEmpty()Z

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

.method public iterator()Lre/e;
    .locals 1

    iget-object v0, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v0}, Lwe/d;->iterator()Lre/e;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1}, Lwe/d;->j()[B

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->e:Lke/f;

    if-nez v1, :cond_0

    new-instance v1, Lpe/L;

    iget-object v2, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v2}, Lwe/d;->k()Lke/f;

    move-result-object v2

    iget-object v3, p0, Lpe/g;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/L;-><init>(Lke/f;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/g;->e:Lke/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/g;->e:Lke/f;

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->d:LCe/a;

    if-nez v1, :cond_0

    new-instance v1, Lpe/l;

    iget-object v2, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v2}, Lwe/d;->keySet()LCe/a;

    move-result-object v2

    iget-object v3, p0, Lpe/g;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/l;-><init>(LCe/a;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/g;->d:LCe/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/g;->d:LCe/a;

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

    iget-object v0, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v0}, Lwe/d;->l()B

    move-result v0

    return v0
.end method

.method public m(B)F
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->m(B)F

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->o(Lme/d;)V

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->p0(Lze/I;)Z

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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q0(B)F
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->q0(B)F

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1}, Lwe/d;->size()I

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

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

.method public uc(BF)Z
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1, p2}, Lwe/d;->uc(BF)Z

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

.method public v5(BFF)F
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1, p2, p3}, Lwe/d;->v5(BFF)F

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

.method public values()[F
    .locals 2

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1}, Lwe/d;->values()[F

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

    iget-object v0, p0, Lpe/g;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/g;->b:Lwe/d;

    invoke-interface {v1, p1}, Lwe/d;->y(F)Z

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
