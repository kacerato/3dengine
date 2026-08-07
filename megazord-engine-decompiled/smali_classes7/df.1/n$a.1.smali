.class public final Ldf/n$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/n$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final p:J = -0x757ec2d16eaff404L


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TC;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final d:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field public final e:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TOpen;+",
            "LCi/b<",
            "+TClose;>;>;"
        }
    .end annotation
.end field

.field public final f:LVe/b;

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lio/reactivex/internal/util/c;

.field public volatile j:Z

.field public final k:Ljf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljf/c<",
            "TC;>;"
        }
    .end annotation
.end field

.field public volatile l:Z

.field public m:J

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TC;>;"
        }
    .end annotation
.end field

.field public o:J


# direct methods
.method public constructor <init>(LCi/c;LCi/b;LXe/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TC;>;",
            "LCi/b<",
            "+TOpen;>;",
            "LXe/o<",
            "-TOpen;+",
            "LCi/b<",
            "+TClose;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ldf/n$a;->b:LCi/c;

    iput-object p4, p0, Ldf/n$a;->c:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Ldf/n$a;->d:LCi/b;

    iput-object p3, p0, Ldf/n$a;->e:LXe/o;

    new-instance p1, Ljf/c;

    invoke-static {}, LTe/l;->a0()I

    move-result p2

    invoke-direct {p1, p2}, Ljf/c;-><init>(I)V

    iput-object p1, p0, Ldf/n$a;->k:Ljf/c;

    new-instance p1, LVe/b;

    invoke-direct {p1}, LVe/b;-><init>()V

    iput-object p1, p0, Ldf/n$a;->f:LVe/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/n$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/n$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldf/n$a;->n:Ljava/util/Map;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Ldf/n$a;->i:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Ldf/n$a;->f:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldf/n$a;->n:Ljava/util/Map;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Ldf/n$a;->k:Ljf/c;

    invoke-virtual {v2, v1}, Ljf/c;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ldf/n$a;->n:Ljava/util/Map;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/n$a;->j:Z

    invoke-virtual {p0}, Ldf/n$a;->d()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(LVe/c;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/n$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Ldf/n$a;->f:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    invoke-virtual {p0, p2}, Ldf/n$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ldf/n$b;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/n$b<",
            "TT;TC;>;J)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/n$a;->f:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    iget-object p1, p0, Ldf/n$a;->f:LVe/b;

    invoke-virtual {p1}, LVe/b;->h()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldf/n$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ldf/n$a;->n:Ljava/util/Map;

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Ldf/n$a;->k:Ljf/c;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljf/c;->offer(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Ldf/n$a;->j:Z

    :cond_2
    invoke-virtual {p0}, Ldf/n$a;->d()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Ldf/n$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/n$a;->l:Z

    iget-object v0, p0, Ldf/n$a;->f:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ldf/n$a;->n:Ljava/util/Map;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/n$a;->k:Ljf/c;

    invoke-virtual {v0}, Ljf/c;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public d()V
    .locals 12

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Ldf/n$a;->o:J

    iget-object v2, p0, Ldf/n$a;->b:LCi/c;

    iget-object v3, p0, Ldf/n$a;->k:Ljf/c;

    const/4 v4, 0x1

    move v5, v4

    :cond_1
    iget-object v6, p0, Ldf/n$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    :goto_0
    cmp-long v8, v0, v6

    if-eqz v8, :cond_7

    iget-boolean v9, p0, Ldf/n$a;->l:Z

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Ljf/c;->clear()V

    return-void

    :cond_2
    iget-boolean v9, p0, Ldf/n$a;->j:Z

    if-eqz v9, :cond_3

    iget-object v10, p0, Ldf/n$a;->i:Lio/reactivex/internal/util/c;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v3}, Ljf/c;->clear()V

    iget-object v0, p0, Ldf/n$a;->i:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-virtual {v3}, Ljf/c;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    if-nez v10, :cond_4

    move v11, v4

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_5

    if-eqz v11, :cond_5

    invoke-interface {v2}, LCi/c;->a()V

    return-void

    :cond_5
    if-eqz v11, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v2, v10}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    goto :goto_0

    :cond_7
    :goto_2
    if-nez v8, :cond_a

    iget-boolean v6, p0, Ldf/n$a;->l:Z

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Ljf/c;->clear()V

    return-void

    :cond_8
    iget-boolean v6, p0, Ldf/n$a;->j:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Ldf/n$a;->i:Lio/reactivex/internal/util/c;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Ljf/c;->clear()V

    iget-object v0, p0, Ldf/n$a;->i:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    invoke-virtual {v3}, Ljf/c;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, LCi/c;->a()V

    return-void

    :cond_a
    iput-wide v0, p0, Ldf/n$a;->o:J

    neg-int v5, v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOpen;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldf/n$a;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null Collection"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Ldf/n$a;->e:LXe/o;

    invoke-interface {v1, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The bufferClose returned a null Publisher"

    invoke-static {p1, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCi/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-wide v1, p0, Ldf/n$a;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Ldf/n$a;->m:J

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ldf/n$a;->n:Ljava/util/Map;

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Ldf/n$b;

    invoke-direct {v0, p0, v1, v2}, Ldf/n$b;-><init>(Ldf/n$a;J)V

    iget-object v1, p0, Ldf/n$a;->f:LVe/b;

    invoke-virtual {v1, v0}, LVe/b;->b(LVe/c;)Z

    invoke-interface {p1, v0}, LCi/b;->l(LCi/c;)V

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ldf/n$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0, p1}, Ldf/n$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public f(Ldf/n$a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/n$a$a<",
            "TOpen;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/n$a;->f:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    iget-object p1, p0, Ldf/n$a;->f:LVe/b;

    invoke-virtual {p1}, LVe/b;->h()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldf/n$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldf/n$a;->j:Z

    invoke-virtual {p0}, Ldf/n$a;->d()V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldf/n$a;->n:Ljava/util/Map;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/n$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lmf/j;->j(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ldf/n$a$a;

    invoke-direct {v0, p0}, Ldf/n$a$a;-><init>(Ldf/n$a;)V

    iget-object v1, p0, Ldf/n$a;->f:LVe/b;

    invoke-virtual {v1, v0}, LVe/b;->b(LVe/c;)Z

    iget-object v1, p0, Ldf/n$a;->d:LCi/b;

    invoke-interface {v1, v0}, LCi/b;->l(LCi/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, Ldf/n$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Ldf/n$a;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/n$a;->i:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ldf/n$a;->f:LVe/b;

    invoke-virtual {p1}, LVe/b;->dispose()V

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Ldf/n$a;->n:Ljava/util/Map;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldf/n$a;->j:Z

    invoke-virtual {p0}, Ldf/n$a;->d()V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
