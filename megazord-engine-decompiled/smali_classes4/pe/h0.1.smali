.class public Lpe/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/P;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/P;

.field public final c:Ljava/lang/Object;

.field public transient d:LCe/f;

.field public transient e:Lke/b;


# direct methods
.method public constructor <init>(Lwe/P;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/h0;->d:LCe/f;

    .line 3
    iput-object v0, p0, Lpe/h0;->e:Lke/b;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/h0;->b:Lwe/P;

    .line 6
    iput-object p0, p0, Lpe/h0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/P;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/h0;->d:LCe/f;

    .line 9
    iput-object v0, p0, Lpe/h0;->e:Lke/b;

    .line 10
    iput-object p1, p0, Lpe/h0;->b:Lwe/P;

    .line 11
    iput-object p2, p0, Lpe/h0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1, p2}, Lwe/P;->D0(J)Z

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1}, Lwe/P;->F(Lze/b0;)Z

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

.method public H6(JC)Z
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1, p2, p3}, Lwe/P;->H6(JC)Z

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1, p2}, Lwe/P;->J(J)Z

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1}, Lwe/P;->R([C)[C

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

.method public W9(JC)C
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1, p2, p3}, Lwe/P;->W9(JC)C

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

.method public Xb(JCC)C
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1, p2, p3, p4}, Lwe/P;->Xb(JCC)C

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

.method public Xd(Lze/V;)Z
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1}, Lwe/P;->Xd(Lze/V;)Z

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1}, Lwe/P;->Z([J)[J

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

.method public a9(Lwe/P;)V
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1}, Lwe/P;->a9(Lwe/P;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1}, Lwe/P;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(J)C
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1, p2}, Lwe/P;->e(J)C

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

.method public e0(Lze/q;)Z
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1}, Lwe/P;->e0(Lze/q;)Z

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

.method public eb(JC)C
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1, p2, p3}, Lwe/P;->eb(JC)C

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

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

    iget-object v0, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v0}, Lwe/P;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1}, Lwe/P;->isEmpty()Z

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

.method public iterator()Lre/X;
    .locals 1

    iget-object v0, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v0}, Lwe/P;->iterator()Lre/X;

    move-result-object v0

    return-object v0
.end method

.method public j()[J
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1}, Lwe/P;->j()[J

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->e:Lke/b;

    if-nez v1, :cond_0

    new-instance v1, Lpe/p;

    iget-object v2, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v2}, Lwe/P;->k()Lke/b;

    move-result-object v2

    iget-object v3, p0, Lpe/h0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/p;-><init>(Lke/b;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/h0;->e:Lke/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/h0;->e:Lke/b;

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->d:LCe/f;

    if-nez v1, :cond_0

    new-instance v1, Lpe/p0;

    iget-object v2, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v2}, Lwe/P;->keySet()LCe/f;

    move-result-object v2

    iget-object v3, p0, Lpe/h0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/p0;-><init>(LCe/f;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/h0;->d:LCe/f;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/h0;->d:LCe/f;

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

    iget-object v0, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v0}, Lwe/P;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public p(Lme/b;)V
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1}, Lwe/P;->p(Lme/b;)V

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
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1}, Lwe/P;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s(J)C
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1, p2}, Lwe/P;->s(J)C

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1}, Lwe/P;->size()I

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1}, Lwe/P;->t(C)Z

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

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

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1}, Lwe/P;->values()[C

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

.method public xd(Lze/V;)Z
    .locals 2

    iget-object v0, p0, Lpe/h0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/h0;->b:Lwe/P;

    invoke-interface {v1, p1}, Lwe/P;->xd(Lze/V;)Z

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
