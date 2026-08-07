.class public final Lrf/g;
.super Lrf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrf/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lrf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrf/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Lio/reactivex/internal/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Z


# direct methods
.method public constructor <init>(Lrf/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrf/c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lrf/c;-><init>()V

    iput-object p1, p0, Lrf/g;->c:Lrf/c;

    return-void
.end method


# virtual methods
.method public O8()Ljava/lang/Throwable;
    .locals 1
    .annotation build LUe/g;
    .end annotation

    iget-object v0, p0, Lrf/g;->c:Lrf/c;

    invoke-virtual {v0}, Lrf/c;->O8()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public P8()Z
    .locals 1

    iget-object v0, p0, Lrf/g;->c:Lrf/c;

    invoke-virtual {v0}, Lrf/c;->P8()Z

    move-result v0

    return v0
.end method

.method public Q8()Z
    .locals 1

    iget-object v0, p0, Lrf/g;->c:Lrf/c;

    invoke-virtual {v0}, Lrf/c;->Q8()Z

    move-result v0

    return v0
.end method

.method public R8()Z
    .locals 1

    iget-object v0, p0, Lrf/g;->c:Lrf/c;

    invoke-virtual {v0}, Lrf/c;->R8()Z

    move-result v0

    return v0
.end method

.method public T8()V
    .locals 2

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrf/g;->e:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrf/g;->d:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lrf/g;->e:Lio/reactivex/internal/util/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lrf/g;->c:Lrf/c;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/a;->a(LCi/c;)Z

    goto :goto_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 2

    iget-boolean v0, p0, Lrf/g;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrf/g;->f:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrf/g;->f:Z

    iget-boolean v1, p0, Lrf/g;->d:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lrf/g;->e:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lrf/g;->e:Lio/reactivex/internal/util/a;

    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/p;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/a;->c(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_3
    iput-boolean v0, p0, Lrf/g;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lrf/g;->c:Lrf/c;

    invoke-interface {v0}, LCi/c;->a()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lrf/g;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrf/g;->f:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lrf/g;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lrf/g;->e:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lrf/g;->e:Lio/reactivex/internal/util/a;

    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/a;->c(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrf/g;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lrf/g;->c:Lrf/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lrf/g;->T8()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-boolean v0, p0, Lrf/g;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrf/g;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lrf/g;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrf/g;->e:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_1

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lrf/g;->e:Lio/reactivex/internal/util/a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {p1}, Lio/reactivex/internal/util/p;->t(LCi/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/a;->c(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_2
    iput-boolean v1, p0, Lrf/g;->d:Z

    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {p1}, LCi/d;->cancel()V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lrf/g;->c:Lrf/c;

    invoke-interface {v0, p1}, LTe/q;->h(LCi/d;)V

    invoke-virtual {p0}, Lrf/g;->T8()V

    :goto_4
    return-void
.end method

.method public m6(LCi/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lrf/g;->c:Lrf/c;

    invoke-virtual {v0, p1}, LTe/l;->l(LCi/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lrf/g;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrf/g;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lrf/g;->f:Z

    iget-boolean v0, p0, Lrf/g;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lrf/g;->e:Lio/reactivex/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/a;-><init>(I)V

    iput-object v0, p0, Lrf/g;->e:Lio/reactivex/internal/util/a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {p1}, Lio/reactivex/internal/util/p;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/a;->f(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_3
    iput-boolean v1, p0, Lrf/g;->d:Z

    const/4 v1, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object v0, p0, Lrf/g;->c:Lrf/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
