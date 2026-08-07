.class public Lfh/f$j;
.super LYg/b;
.source "SourceFile"

# interfaces
.implements Lfh/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfh/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final c:Lfh/g;

.field public final synthetic d:Lfh/f;


# direct methods
.method public constructor <init>(Lfh/f;Lfh/g;)V
    .locals 1

    iput-object p1, p0, Lfh/f$j;->d:Lfh/f;

    iget-object p1, p1, Lfh/f;->e:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OkHttp %s"

    invoke-direct {p0, v0, p1}, LYg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lfh/f$j;->c:Lfh/g;

    return-void
.end method


# virtual methods
.method public a(ZIILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lfh/b;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {p3, p2}, Lfh/f;->w(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {p3, p2, p4, p1}, Lfh/f;->s(ILjava/util/List;Z)V

    return-void

    :cond_0
    iget-object p3, p0, Lfh/f$j;->d:Lfh/f;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v0, p2}, Lfh/f;->k(I)Lfh/h;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    iget-boolean v1, v0, Lfh/f;->h:Z

    if-eqz v1, :cond_1

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget v1, v0, Lfh/f;->f:I

    if-gt p2, v1, :cond_2

    monitor-exit p3

    return-void

    :cond_2
    rem-int/lit8 v1, p2, 0x2

    iget v0, v0, Lfh/f;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v1, v0, :cond_3

    monitor-exit p3

    return-void

    :cond_3
    invoke-static {p4}, LYg/c;->I(Ljava/util/List;)Lokhttp3/u;

    move-result-object v5

    new-instance p4, Lfh/h;

    iget-object v2, p0, Lfh/f$j;->d:Lfh/f;

    const/4 v3, 0x0

    move-object v0, p4

    move v1, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lfh/h;-><init>(ILfh/f;ZZLokhttp3/u;)V

    iget-object p1, p0, Lfh/f$j;->d:Lfh/f;

    iput p2, p1, Lfh/f;->f:I

    iget-object p1, p1, Lfh/f;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lfh/f;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lfh/f$j$a;

    const-string v1, "OkHttp %s stream %d"

    iget-object v2, p0, Lfh/f$j;->d:Lfh/f;

    iget-object v2, v2, Lfh/f;->e:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, p0, v1, p2, p4}, Lfh/f$j$a;-><init>(Lfh/f$j;Ljava/lang/String;[Ljava/lang/Object;Lfh/h;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p3

    return-void

    :cond_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p4}, Lfh/h;->s(Ljava/util/List;)V

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lfh/h;->r()V

    :cond_5
    return-void

    :goto_0
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(IJ)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lfh/f$j;->d:Lfh/f;

    iget-wide v1, p1, Lfh/f;->n:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lfh/f;->n:J

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v0, p1}, Lfh/f;->k(I)Lfh/h;

    move-result-object p1

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2, p3}, Lfh/h;->c(J)V

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public c(ILjava/lang/String;Llh/f;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public d(ILfh/a;Llh/f;)V
    .locals 3

    invoke-virtual {p3}, Llh/f;->R()I

    iget-object p2, p0, Lfh/f$j;->d:Lfh/f;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lfh/f$j;->d:Lfh/f;

    iget-object p3, p3, Lfh/f;->d:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    iget-object v0, v0, Lfh/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lfh/h;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lfh/h;

    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfh/f;->h:Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lfh/h;->k()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lfh/h;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lfh/a;->REFUSED_STREAM:Lfh/a;

    invoke-virtual {v1, v2}, Lfh/h;->t(Lfh/a;)V

    iget-object v2, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v1}, Lfh/h;->k()I

    move-result v1

    invoke-virtual {v2, v1}, Lfh/f;->x(I)Lfh/h;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(ZILlh/e;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v0, p2}, Lfh/f;->w(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v0, p2, p3, p4, p1}, Lfh/f;->q(ILlh/e;IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v0, p2}, Lfh/f;->k(I)Lfh/h;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lfh/f$j;->d:Lfh/f;

    sget-object v0, Lfh/a;->PROTOCOL_ERROR:Lfh/a;

    invoke-virtual {p1, p2, v0}, Lfh/f;->U(ILfh/a;)V

    iget-object p1, p0, Lfh/f$j;->d:Lfh/f;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lfh/f;->B(J)V

    invoke-interface {p3, v0, v1}, Llh/e;->skip(J)V

    return-void

    :cond_1
    invoke-virtual {v0, p3, p4}, Lfh/h;->q(Llh/e;I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lfh/h;->r()V

    :cond_2
    return-void
.end method

.method public f(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lfh/b;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {p1, p2, p3}, Lfh/f;->t(ILjava/util/List;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h(ZLfh/l;)V
    .locals 8

    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfh/f$j;->d:Lfh/f;

    iget-object v1, v1, Lfh/f;->p:Lfh/l;

    invoke-virtual {v1}, Lfh/l;->e()I

    move-result v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfh/f$j;->d:Lfh/f;

    iget-object p1, p1, Lfh/f;->p:Lfh/l;

    invoke-virtual {p1}, Lfh/l;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object p1, p0, Lfh/f$j;->d:Lfh/f;

    iget-object p1, p1, Lfh/f;->p:Lfh/l;

    invoke-virtual {p1, p2}, Lfh/l;->j(Lfh/l;)V

    invoke-virtual {p0, p2}, Lfh/f$j;->n(Lfh/l;)V

    iget-object p1, p0, Lfh/f$j;->d:Lfh/f;

    iget-object p1, p1, Lfh/f;->p:Lfh/l;

    invoke-virtual {p1}, Lfh/l;->e()I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    sub-int/2addr p1, v1

    int-to-long p1, p1

    iget-object v1, p0, Lfh/f$j;->d:Lfh/f;

    iget-boolean v5, v1, Lfh/f;->q:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, v1, Lfh/f;->q:Z

    :cond_1
    iget-object v1, v1, Lfh/f;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lfh/f$j;->d:Lfh/f;

    iget-object v1, v1, Lfh/f;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v4, p0, Lfh/f$j;->d:Lfh/f;

    iget-object v4, v4, Lfh/f;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lfh/h;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Lfh/h;

    goto :goto_1

    :cond_2
    move-wide p1, v2

    :cond_3
    :goto_1
    invoke-static {}, Lfh/f;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v5, Lfh/f$j$b;

    const-string v6, "OkHttp %s settings"

    iget-object v7, p0, Lfh/f$j;->d:Lfh/f;

    iget-object v7, v7, Lfh/f;->e:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lfh/f$j$b;-><init>(Lfh/f$j;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    array-length v0, v4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    aget-object v2, v4, v1

    monitor-enter v2

    :try_start_1
    invoke-virtual {v2, p1, p2}, Lfh/h;->c(J)V

    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_4
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public i(ZII)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfh/f$j;->d:Lfh/f;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lfh/f$j;->d:Lfh/f;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lfh/f;->e(Lfh/f;Z)Z

    iget-object p2, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :try_start_1
    iget-object p1, p0, Lfh/f$j;->d:Lfh/f;

    invoke-static {p1}, Lfh/f;->d(Lfh/f;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lfh/f$i;

    iget-object v1, p0, Lfh/f$j;->d:Lfh/f;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2, p3}, Lfh/f$i;-><init>(Lfh/f;ZII)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public k(IIIZ)V
    .locals 0

    return-void
.end method

.method public l(ILfh/a;)V
    .locals 1

    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v0, p1}, Lfh/f;->w(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v0, p1, p2}, Lfh/f;->u(ILfh/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v0, p1}, Lfh/f;->x(I)Lfh/h;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lfh/h;->t(Lfh/a;)V

    :cond_1
    return-void
.end method

.method public m()V
    .locals 4

    sget-object v0, Lfh/a;->INTERNAL_ERROR:Lfh/a;

    :try_start_0
    iget-object v1, p0, Lfh/f$j;->c:Lfh/g;

    invoke-virtual {v1, p0}, Lfh/g;->c(Lfh/g$b;)V

    :goto_0
    iget-object v1, p0, Lfh/f$j;->c:Lfh/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lfh/g;->b(ZLfh/g$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lfh/a;->NO_ERROR:Lfh/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lfh/a;->CANCEL:Lfh/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v2, v1, v0}, Lfh/f;->g(Lfh/a;Lfh/a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    iget-object v0, p0, Lfh/f$j;->c:Lfh/g;

    invoke-static {v0}, LYg/c;->g(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-object v1, v0

    :catch_2
    :try_start_3
    sget-object v0, Lfh/a;->PROTOCOL_ERROR:Lfh/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v1, v0, v0}, Lfh/f;->g(Lfh/a;Lfh/a;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    :try_start_5
    iget-object v3, p0, Lfh/f$j;->d:Lfh/f;

    invoke-virtual {v3, v1, v0}, Lfh/f;->g(Lfh/a;Lfh/a;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    iget-object v0, p0, Lfh/f$j;->c:Lfh/g;

    invoke-static {v0}, LYg/c;->g(Ljava/io/Closeable;)V

    throw v2
.end method

.method public final n(Lfh/l;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lfh/f$j;->d:Lfh/f;

    invoke-static {v0}, Lfh/f;->d(Lfh/f;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lfh/f$j$c;

    const-string v2, "OkHttp %s ACK Settings"

    iget-object v3, p0, Lfh/f$j;->d:Lfh/f;

    iget-object v3, v3, Lfh/f;->e:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lfh/f$j$c;-><init>(Lfh/f$j;Ljava/lang/String;[Ljava/lang/Object;Lfh/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
