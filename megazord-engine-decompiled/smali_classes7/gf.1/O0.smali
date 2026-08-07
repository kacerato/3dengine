.class public final Lgf/O0;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/O0$b;,
        Lgf/O0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lnf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LTe/J;

.field public g:Lgf/O0$a;


# direct methods
.method public constructor <init>(Lnf/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnf/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v6, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lgf/O0;-><init>(Lnf/a;IJLjava/util/concurrent/TimeUnit;LTe/J;)V

    return-void
.end method

.method public constructor <init>(Lnf/a;IJLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnf/a<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LTe/B;-><init>()V

    .line 3
    iput-object p1, p0, Lgf/O0;->b:Lnf/a;

    .line 4
    iput p2, p0, Lgf/O0;->c:I

    .line 5
    iput-wide p3, p0, Lgf/O0;->d:J

    .line 6
    iput-object p5, p0, Lgf/O0;->e:Ljava/util/concurrent/TimeUnit;

    .line 7
    iput-object p6, p0, Lgf/O0;->f:LTe/J;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgf/O0;->g:Lgf/O0$a;

    if-nez v0, :cond_0

    new-instance v0, Lgf/O0$a;

    invoke-direct {v0, p0}, Lgf/O0$a;-><init>(Lgf/O0;)V

    iput-object v0, p0, Lgf/O0;->g:Lgf/O0$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-wide v1, v0, Lgf/O0$a;->d:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lgf/O0$a;->c:LVe/c;

    if-eqz v3, :cond_1

    invoke-interface {v3}, LVe/c;->dispose()V

    :cond_1
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lgf/O0$a;->d:J

    iget-boolean v3, v0, Lgf/O0$a;->e:Z

    if-nez v3, :cond_2

    iget v3, p0, Lgf/O0;->c:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgf/O0$a;->e:Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lgf/O0;->b:Lnf/a;

    new-instance v3, Lgf/O0$b;

    invoke-direct {v3, p1, p0, v0}, Lgf/O0$b;-><init>(LTe/I;Lgf/O0;Lgf/O0$a;)V

    invoke-virtual {v2, v3}, LTe/B;->b(LTe/I;)V

    if-eqz v1, :cond_3

    iget-object p1, p0, Lgf/O0;->b:Lnf/a;

    invoke-virtual {p1, v0}, Lnf/a;->n8(LXe/g;)V

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public j8(Lgf/O0$a;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgf/O0;->g:Lgf/O0$a;

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p1, Lgf/O0$a;->d:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lgf/O0$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lgf/O0$a;->e:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lgf/O0;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lgf/O0;->l8(Lgf/O0$a;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    new-instance v0, LYe/h;

    invoke-direct {v0}, LYe/h;-><init>()V

    iput-object v0, p1, Lgf/O0$a;->c:LVe/c;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lgf/O0;->f:LTe/J;

    iget-wide v2, p0, Lgf/O0;->d:J

    iget-object v4, p0, Lgf/O0;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, v2, v3, v4}, LTe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LYe/h;->a(LVe/c;)Z

    return-void

    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public k8(Lgf/O0$a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgf/O0;->g:Lgf/O0$a;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lgf/O0;->g:Lgf/O0$a;

    iget-object v0, p1, Lgf/O0$a;->c:LVe/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LVe/c;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-wide v0, p1, Lgf/O0$a;->d:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lgf/O0$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lgf/O0;->b:Lnf/a;

    instance-of v1, v0, LVe/c;

    if-eqz v1, :cond_1

    check-cast v0, LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    goto :goto_1

    :cond_1
    instance-of v1, v0, LYe/g;

    if-eqz v1, :cond_2

    check-cast v0, LYe/g;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVe/c;

    invoke-interface {v0, p1}, LYe/g;->c(LVe/c;)V

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l8(Lgf/O0$a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p1, Lgf/O0$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lgf/O0;->g:Lgf/O0$a;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lgf/O0;->g:Lgf/O0$a;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {p1}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v1, p0, Lgf/O0;->b:Lnf/a;

    instance-of v2, v1, LVe/c;

    if-eqz v2, :cond_0

    check-cast v1, LVe/c;

    invoke-interface {v1}, LVe/c;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    instance-of v2, v1, LYe/g;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lgf/O0$a;->f:Z

    goto :goto_0

    :cond_1
    check-cast v1, LYe/g;

    invoke-interface {v1, v0}, LYe/g;->c(LVe/c;)V

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
