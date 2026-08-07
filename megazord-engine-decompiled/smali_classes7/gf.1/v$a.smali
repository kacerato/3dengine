.class public final Lgf/v$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/v$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final n:J = -0x6077449f877ccfe7L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Lio/reactivex/internal/util/c;

.field public final f:Lgf/v$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/v$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final g:Z

.field public h:Laf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:LVe/c;

.field public volatile j:Z

.field public volatile k:Z

.field public volatile l:Z

.field public m:I


# direct methods
.method public constructor <init>(LTe/I;LXe/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/v$a;->b:LTe/I;

    iput-object p2, p0, Lgf/v$a;->c:LXe/o;

    iput p3, p0, Lgf/v$a;->d:I

    iput-boolean p4, p0, Lgf/v$a;->g:Z

    new-instance p2, Lio/reactivex/internal/util/c;

    invoke-direct {p2}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p2, p0, Lgf/v$a;->e:Lio/reactivex/internal/util/c;

    new-instance p2, Lgf/v$a$a;

    invoke-direct {p2, p1, p0}, Lgf/v$a$a;-><init>(LTe/I;Lgf/v$a;)V

    iput-object p2, p0, Lgf/v$a;->f:Lgf/v$a$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/v$a;->k:Z

    invoke-virtual {p0}, Lgf/v$a;->b()V

    return-void
.end method

.method public b()V
    .locals 7

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgf/v$a;->b:LTe/I;

    iget-object v1, p0, Lgf/v$a;->h:Laf/o;

    iget-object v2, p0, Lgf/v$a;->e:Lio/reactivex/internal/util/c;

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lgf/v$a;->j:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lgf/v$a;->l:Z

    if-eqz v3, :cond_2

    invoke-interface {v1}, Laf/o;->clear()V

    return-void

    :cond_2
    iget-boolean v3, p0, Lgf/v$a;->g:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    invoke-interface {v1}, Laf/o;->clear()V

    iput-boolean v4, p0, Lgf/v$a;->l:Z

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v3, p0, Lgf/v$a;->k:Z

    :try_start_0
    invoke-interface {v1}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    iput-boolean v4, p0, Lgf/v$a;->l:Z

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v0}, LTe/I;->a()V

    :goto_2
    return-void

    :cond_6
    if-nez v6, :cond_8

    :try_start_1
    iget-object v3, p0, Lgf/v$a;->c:LXe/o;

    invoke-interface {v3, v5}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "The mapper returned a null ObservableSource"

    invoke-static {v3, v5}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LTe/G;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    instance-of v5, v3, Ljava/util/concurrent/Callable;

    if-eqz v5, :cond_7

    :try_start_2
    check-cast v3, Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lgf/v$a;->l:Z

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_7
    iput-boolean v4, p0, Lgf/v$a;->j:Z

    iget-object v4, p0, Lgf/v$a;->f:Lgf/v$a$a;

    invoke-interface {v3, v4}, LTe/G;->b(LTe/I;)V

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-static {v3}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v4, p0, Lgf/v$a;->l:Z

    iget-object v4, p0, Lgf/v$a;->i:LVe/c;

    invoke-interface {v4}, LVe/c;->dispose()V

    invoke-interface {v1}, Laf/o;->clear()V

    invoke-virtual {v2, v3}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-boolean v4, p0, Lgf/v$a;->l:Z

    iget-object v3, p0, Lgf/v$a;->i:LVe/c;

    invoke-interface {v3}, LVe/c;->dispose()V

    invoke-virtual {v2, v1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lgf/v$a;->l:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/v$a;->l:Z

    iget-object v0, p0, Lgf/v$a;->i:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/v$a;->f:Lgf/v$a$a;

    invoke-virtual {v0}, Lgf/v$a$a;->b()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 2

    iget-object v0, p0, Lgf/v$a;->i:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lgf/v$a;->i:LVe/c;

    instance-of v0, p1, Laf/j;

    if-eqz v0, :cond_1

    check-cast p1, Laf/j;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Laf/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lgf/v$a;->m:I

    iput-object p1, p0, Lgf/v$a;->h:Laf/o;

    iput-boolean v1, p0, Lgf/v$a;->k:Z

    iget-object p1, p0, Lgf/v$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    invoke-virtual {p0}, Lgf/v$a;->b()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lgf/v$a;->m:I

    iput-object p1, p0, Lgf/v$a;->h:Laf/o;

    iget-object p1, p0, Lgf/v$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    return-void

    :cond_1
    new-instance p1, Ljf/c;

    iget v0, p0, Lgf/v$a;->d:I

    invoke-direct {p1, v0}, Ljf/c;-><init>(I)V

    iput-object p1, p0, Lgf/v$a;->h:Laf/o;

    iget-object p1, p0, Lgf/v$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_2
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lgf/v$a;->m:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/v$a;->h:Laf/o;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lgf/v$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/v$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/v$a;->k:Z

    invoke-virtual {p0}, Lgf/v$a;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
