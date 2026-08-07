.class public Lpe/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/Y;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwe/Y<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final f:J = 0x1b73f9094b4b397bL


# instance fields
.field public final b:Lwe/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/Y<",
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

.field public transient e:Lke/a;


# direct methods
.method public constructor <init>(Lwe/Y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/Y<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpe/r0;->d:Ljava/util/Set;

    .line 3
    iput-object v0, p0, Lpe/r0;->e:Lke/a;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Lpe/r0;->b:Lwe/Y;

    .line 6
    iput-object p0, p0, Lpe/r0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwe/Y;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/Y<",
            "TK;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpe/r0;->d:Ljava/util/Set;

    .line 9
    iput-object v0, p0, Lpe/r0;->e:Lke/a;

    .line 10
    iput-object p1, p0, Lpe/r0;->b:Lwe/Y;

    .line 11
    iput-object p2, p0, Lpe/r0;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->A(Lze/h;)Z

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

.method public R5(Lze/d0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/d0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->R5(Lze/d0;)Z

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->S([B)[B

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

.method public U4(Ljava/lang/Object;B)B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1, p2}, Lwe/Y;->U4(Ljava/lang/Object;B)B

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1}, Lwe/Y;->clear()V

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->containsKey(Ljava/lang/Object;)Z

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

.method public d7(Ljava/lang/Object;B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1, p2}, Lwe/Y;->d7(Ljava/lang/Object;B)Z

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->g(Lme/a;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public gb(Lze/d0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/d0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->gb(Lze/d0;)Z

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

.method public get(Ljava/lang/Object;)B
    .locals 2

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->get(Ljava/lang/Object;)B

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

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

    iget-object v0, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v0}, Lwe/Y;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1}, Lwe/Y;->isEmpty()Z

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

.method public iterator()Lre/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lre/f0<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v0}, Lwe/Y;->iterator()Lre/f0;

    move-result-object v0

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1}, Lwe/Y;->j()[Ljava/lang/Object;

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->j0(Lze/k0;)Z

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

.method public k()Lke/a;
    .locals 4

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->e:Lke/a;

    if-nez v1, :cond_0

    new-instance v1, Lpe/e;

    iget-object v2, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v2}, Lwe/Y;->k()Lke/a;

    move-result-object v2

    iget-object v3, p0, Lpe/r0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/e;-><init>(Lke/a;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/r0;->e:Lke/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/r0;->e:Lke/a;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->d:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Lpe/b;

    iget-object v2, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v2}, Lwe/Y;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lpe/r0;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lpe/b;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Lpe/r0;->d:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lpe/r0;->d:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;)B
    .locals 2

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->remove(Ljava/lang/Object;)B

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1}, Lwe/Y;->size()I

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

.method public t3(Ljava/lang/Object;BB)B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;BB)B"
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1, p2, p3}, Lwe/Y;->t3(Ljava/lang/Object;BB)B

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->u(B)Z

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

.method public u3(Lwe/Y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/Y<",
            "+TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->u3(Lwe/Y;)V

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

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1}, Lwe/Y;->values()[B

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

.method public x0(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->x0(Ljava/lang/Object;)Z

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

.method public y0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)[TK;"
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1}, Lwe/Y;->y0([Ljava/lang/Object;)[Ljava/lang/Object;

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

.method public y5(Ljava/lang/Object;B)B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
        }
    .end annotation

    iget-object v0, p0, Lpe/r0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lpe/r0;->b:Lwe/Y;

    invoke-interface {v1, p1, p2}, Lwe/Y;->y5(Ljava/lang/Object;B)B

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
