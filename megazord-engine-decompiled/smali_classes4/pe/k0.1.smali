.class public Lpe/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/S;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/S;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/f;

.field public transient e:Lke/f;


# direct methods
.method public constructor <init>(Lwe/S;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/k0;->d:LCe/f;

    .line 3
    iput-object v0, p0, Lpe/k0;->e:Lke/f;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/k0;->b:Lwe/S;

    .line 6
    iput-object p0, p0, Lpe/k0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/S;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/k0;->d:LCe/f;

    .line 9
    iput-object v0, p0, Lpe/k0;->e:Lke/f;

    .line 10
    iput-object p1, p0, Lpe/k0;->b:Lwe/S;

    .line 11
    iput-object p2, p0, Lpe/k0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

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
.method public D0(J)Z
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1, p2}, Lwe/S;->D0(J)Z

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

.method public D6(JF)Z
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1, p2, p3}, Lwe/S;->D6(JF)Z

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1}, Lwe/S;->F(Lze/b0;)Z

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1, p2}, Lwe/S;->J(J)Z

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

.method public N8(Lze/X;)Z
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1}, Lwe/S;->N8(Lze/X;)Z

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

.method public U([F)[F
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1}, Lwe/S;->U([F)[F

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

.method public Va(JF)F
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1, p2, p3}, Lwe/S;->Va(JF)F

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

.method public Y9(JF)F
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1, p2, p3}, Lwe/S;->Y9(JF)F

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1}, Lwe/S;->Z([J)[J

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1}, Lwe/S;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(J)F
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1, p2}, Lwe/S;->e(J)F

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

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

    iget-object v0, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v0}, Lwe/S;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1}, Lwe/S;->isEmpty()Z

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

.method public iterator()Lre/Z;
    .locals 1

    iget-object v0, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v0}, Lwe/S;->iterator()Lre/Z;

    move-result-object v0

    return-object v0
.end method

.method public j()[J
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1}, Lwe/S;->j()[J

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->e:Lke/f;

    if-nez v1, :cond_0

    new-instance v1, Lpe/L;

    iget-object v2, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v2}, Lwe/S;->k()Lke/f;

    move-result-object v2

    iget-object v3, p0, Lpe/k0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/L;-><init>(Lke/f;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/k0;->e:Lke/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/k0;->e:Lke/f;

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->d:LCe/f;

    if-nez v1, :cond_0

    new-instance v1, Lpe/p0;

    iget-object v2, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v2}, Lwe/S;->keySet()LCe/f;

    move-result-object v2

    iget-object v3, p0, Lpe/k0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/p0;-><init>(LCe/f;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/k0;->d:LCe/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/k0;->d:LCe/f;

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

    iget-object v0, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v0}, Lwe/S;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public mb(JFF)F
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1, p2, p3, p4}, Lwe/S;->mb(JFF)F

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1}, Lwe/S;->o(Lme/d;)V

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1}, Lwe/S;->p0(Lze/I;)Z

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
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1}, Lwe/S;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s(J)F
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1, p2}, Lwe/S;->s(J)F

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

.method public s3(Lwe/S;)V
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1}, Lwe/S;->s3(Lwe/S;)V

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1}, Lwe/S;->size()I

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

.method public t6(Lze/X;)Z
    .locals 2

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1}, Lwe/S;->t6(Lze/X;)Z

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1}, Lwe/S;->values()[F

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

    iget-object v0, p0, Lpe/k0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/k0;->b:Lwe/S;

    invoke-interface {v1, p1}, Lwe/S;->y(F)Z

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
