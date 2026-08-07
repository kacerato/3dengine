.class public Lpe/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/d0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/d0<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/d0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public transient d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient e:Lke/h;


# direct methods
.method public constructor <init>(Lwe/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/d0<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/w0;->d:Ljava/util/Set;

    .line 3
    iput-object v0, p0, Lpe/w0;->e:Lke/h;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/w0;->b:Lwe/d0;

    .line 6
    iput-object p0, p0, Lpe/w0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/d0;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/d0<",
            "TK;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/w0;->d:Ljava/util/Set;

    .line 9
    iput-object v0, p0, Lpe/w0;->e:Lke/h;

    .line 10
    iput-object p1, p0, Lpe/w0;->b:Lwe/d0;

    .line 11
    iput-object p2, p0, Lpe/w0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

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
.method public E(Lze/b0;)Z
    .locals 2

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->E(Lze/b0;)Z

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

.method public Id(Lze/i0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/i0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->Id(Lze/i0;)Z

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

.method public Y([J)[J
    .locals 2

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->Y([J)[J

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

.method public cd(Lwe/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/d0<",
            "+TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->cd(Lwe/d0;)V

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

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1}, Lwe/d0;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->containsKey(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

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

.method public get(Ljava/lang/Object;)J
    .locals 3

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->get(Ljava/lang/Object;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Lme/f;)V
    .locals 2

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->h(Lme/f;)V

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

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

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

.method public i()J
    .locals 2

    iget-object v0, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v0}, Lwe/d0;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1}, Lwe/d0;->isEmpty()Z

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

.method public iterator()Lre/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/k0<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v0}, Lwe/d0;->iterator()Lre/k0;

    move-result-object v0

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1}, Lwe/d0;->j()[Ljava/lang/Object;

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

.method public j0(Lze/k0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/k0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->j0(Lze/k0;)Z

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

.method public k()Lke/h;
    .locals 4

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->e:Lke/h;

    if-nez v1, :cond_0

    new-instance v1, Lpe/i0;

    iget-object v2, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v2}, Lwe/d0;->k()Lke/h;

    move-result-object v2

    iget-object v3, p0, Lpe/w0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/i0;-><init>(Lke/h;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/w0;->e:Lke/h;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/w0;->e:Lke/h;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k4(Ljava/lang/Object;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1, p2, p3}, Lwe/d0;->k4(Ljava/lang/Object;J)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->d:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Lpe/b;

    iget-object v2, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v2}, Lwe/d0;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lpe/w0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/b;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/w0;->d:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/w0;->d:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l5(Ljava/lang/Object;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1, p2, p3}, Lwe/d0;->l5(Ljava/lang/Object;J)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pb(Lze/i0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/i0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->pb(Lze/i0;)Z

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
            "+TK;+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;)J
    .locals 3

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->remove(Ljava/lang/Object;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s7(Ljava/lang/Object;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1, p2, p3}, Lwe/d0;->s7(Ljava/lang/Object;J)Z

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

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1}, Lwe/d0;->size()I

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

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

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

.method public values()[J
    .locals 2

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1}, Lwe/d0;->values()[J

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

.method public w(J)Z
    .locals 2

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1, p2}, Lwe/d0;->w(J)Z

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

.method public x0(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->x0(Ljava/lang/Object;)Z

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

.method public x9(Ljava/lang/Object;JJ)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;JJ)J"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lwe/d0;->x9(Ljava/lang/Object;JJ)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public y0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)[TK;"
        }
    .end annotation

    iget-object v0, p0, Lpe/w0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/w0;->b:Lwe/d0;

    invoke-interface {v1, p1}, Lwe/d0;->y0([Ljava/lang/Object;)[Ljava/lang/Object;

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
