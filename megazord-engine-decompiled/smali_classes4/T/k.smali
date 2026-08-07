.class public LT/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT/e;
.implements LT/d;


# instance fields
.field public final a:LT/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

.field public volatile c:LT/d;

.field public volatile d:LT/d;

.field public e:LT/e$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public f:LT/e$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field

.field public g:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;LT/e;)V
    .locals 1
    .param p2    # LT/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LT/e$a;->CLEARED:LT/e$a;

    iput-object v0, p0, LT/k;->e:LT/e$a;

    iput-object v0, p0, LT/k;->f:LT/e$a;

    iput-object p1, p0, LT/k;->b:Ljava/lang/Object;

    iput-object p2, p0, LT/k;->a:LT/e;

    return-void
.end method

.method private k()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LT/k;->a:LT/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, LT/e;->b(LT/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private l()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LT/k;->a:LT/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, LT/e;->d(LT/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private m()Z
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "requestLock"
    .end annotation

    iget-object v0, p0, LT/k;->a:LT/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, LT/e;->c(LT/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LT/k;->d:LT/d;

    invoke-interface {v1}, LT/d;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, LT/k;->c:LT/d;

    invoke-interface {v1}, LT/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(LT/d;)Z
    .locals 2

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, LT/k;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LT/k;->c:LT/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LT/k;->e:LT/e$a;

    sget-object v1, LT/e$a;->PAUSED:LT/e$a;

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(LT/d;)Z
    .locals 2

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, LT/k;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LT/k;->c:LT/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LT/k;->e:LT/e$a;

    sget-object v1, LT/e$a;->SUCCESS:LT/e$a;

    if-eq p1, v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, LT/k;->g:Z

    sget-object v1, LT/e$a;->CLEARED:LT/e$a;

    iput-object v1, p0, LT/k;->e:LT/e$a;

    iput-object v1, p0, LT/k;->f:LT/e$a;

    iget-object v1, p0, LT/k;->d:LT/d;

    invoke-interface {v1}, LT/d;->clear()V

    iget-object v1, p0, LT/k;->c:LT/d;

    invoke-interface {v1}, LT/d;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(LT/d;)Z
    .locals 2

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, LT/k;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LT/k;->c:LT/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LT/k;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LT/k;->e:LT/e$a;

    sget-object v2, LT/e$a;->CLEARED:LT/e$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f(LT/d;)V
    .locals 2

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LT/k;->c:LT/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, LT/e$a;->FAILED:LT/e$a;

    iput-object p1, p0, LT/k;->f:LT/e$a;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    sget-object p1, LT/e$a;->FAILED:LT/e$a;

    iput-object p1, p0, LT/k;->e:LT/e$a;

    iget-object p1, p0, LT/k;->a:LT/e;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, LT/e;->f(LT/d;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LT/k;->e:LT/e$a;

    sget-object v2, LT/e$a;->SUCCESS:LT/e$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRoot()LT/e;
    .locals 2

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LT/k;->a:LT/e;

    if-eqz v1, :cond_0

    invoke-interface {v1}, LT/e;->getRoot()LT/e;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, p0

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h(LT/d;)Z
    .locals 3

    instance-of v0, p1, LT/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, LT/k;

    iget-object v0, p0, LT/k;->c:LT/d;

    if-nez v0, :cond_0

    iget-object v0, p1, LT/k;->c:LT/d;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, LT/k;->c:LT/d;

    iget-object v2, p1, LT/k;->c:LT/d;

    invoke-interface {v0, v2}, LT/d;->h(LT/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, LT/k;->d:LT/d;

    if-nez v0, :cond_1

    iget-object p1, p1, LT/k;->d:LT/d;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    iget-object v0, p0, LT/k;->d:LT/d;

    iget-object p1, p1, LT/k;->d:LT/d;

    invoke-interface {v0, p1}, LT/d;->h(LT/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LT/k;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, LT/k;->e:LT/e$a;

    sget-object v3, LT/e$a;->SUCCESS:LT/e$a;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, LT/k;->f:LT/e$a;

    sget-object v3, LT/e$a;->RUNNING:LT/e$a;

    if-eq v2, v3, :cond_0

    iput-object v3, p0, LT/k;->f:LT/e$a;

    iget-object v2, p0, LT/k;->d:LT/d;

    invoke-interface {v2}, LT/d;->i()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v2, p0, LT/k;->g:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, LT/k;->e:LT/e$a;

    sget-object v3, LT/e$a;->RUNNING:LT/e$a;

    if-eq v2, v3, :cond_1

    iput-object v3, p0, LT/k;->e:LT/e$a;

    iget-object v2, p0, LT/k;->c:LT/d;

    invoke-interface {v2}, LT/d;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iput-boolean v1, p0, LT/k;->g:Z

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :goto_1
    iput-boolean v1, p0, LT/k;->g:Z

    throw v2

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public isRunning()Z
    .locals 3

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LT/k;->e:LT/e$a;

    sget-object v2, LT/e$a;->RUNNING:LT/e$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(LT/d;)V
    .locals 2

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LT/k;->d:LT/d;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, LT/e$a;->SUCCESS:LT/e$a;

    iput-object p1, p0, LT/k;->f:LT/e$a;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    sget-object p1, LT/e$a;->SUCCESS:LT/e$a;

    iput-object p1, p0, LT/k;->e:LT/e$a;

    iget-object p1, p0, LT/k;->a:LT/e;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, LT/e;->j(LT/d;)V

    :cond_1
    iget-object p1, p0, LT/k;->f:LT/e$a;

    invoke-virtual {p1}, LT/e$a;->a()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, LT/k;->d:LT/d;

    invoke-interface {p1}, LT/d;->clear()V

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n(LT/d;LT/d;)V
    .locals 0

    iput-object p1, p0, LT/k;->c:LT/d;

    iput-object p2, p0, LT/k;->d:LT/d;

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, LT/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LT/k;->f:LT/e$a;

    invoke-virtual {v1}, LT/e$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, LT/e$a;->PAUSED:LT/e$a;

    iput-object v1, p0, LT/k;->f:LT/e$a;

    iget-object v1, p0, LT/k;->d:LT/d;

    invoke-interface {v1}, LT/d;->pause()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LT/k;->e:LT/e$a;

    invoke-virtual {v1}, LT/e$a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, LT/e$a;->PAUSED:LT/e$a;

    iput-object v1, p0, LT/k;->e:LT/e$a;

    iget-object v1, p0, LT/k;->c:LT/d;

    invoke-interface {v1}, LT/d;->pause()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
