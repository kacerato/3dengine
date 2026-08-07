.class public final Lgf/w$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;
.implements Lbf/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
        "LVe/c;",
        "Lbf/t<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final p:J = 0x7023f1bcc236905eL


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

.field public final e:I

.field public final f:Lio/reactivex/internal/util/j;

.field public final g:Lio/reactivex/internal/util/c;

.field public final h:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lbf/s<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public i:Laf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public j:LVe/c;

.field public volatile k:Z

.field public l:I

.field public volatile m:Z

.field public n:Lbf/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/s<",
            "TR;>;"
        }
    .end annotation
.end field

.field public o:I


# direct methods
.method public constructor <init>(LTe/I;LXe/o;IILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/w$a;->b:LTe/I;

    iput-object p2, p0, Lgf/w$a;->c:LXe/o;

    iput p3, p0, Lgf/w$a;->d:I

    iput p4, p0, Lgf/w$a;->e:I

    iput-object p5, p0, Lgf/w$a;->f:Lio/reactivex/internal/util/j;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lgf/w$a;->h:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/w$a;->k:Z

    invoke-virtual {p0}, Lgf/w$a;->f()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lgf/w$a;->n:Lbf/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbf/s;->dispose()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lgf/w$a;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf/s;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lbf/s;->dispose()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lgf/w$a;->i:Laf/o;

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-virtual {p0}, Lgf/w$a;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lgf/w$a;->m:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lgf/w$a;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/w$a;->m:Z

    iget-object v0, p0, Lgf/w$a;->j:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0}, Lgf/w$a;->c()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 2

    iget-object v0, p0, Lgf/w$a;->j:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lgf/w$a;->j:LVe/c;

    instance-of v0, p1, Laf/j;

    if-eqz v0, :cond_1

    check-cast p1, Laf/j;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Laf/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lgf/w$a;->l:I

    iput-object p1, p0, Lgf/w$a;->i:Laf/o;

    iput-boolean v1, p0, Lgf/w$a;->k:Z

    iget-object p1, p0, Lgf/w$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    invoke-virtual {p0}, Lgf/w$a;->f()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lgf/w$a;->l:I

    iput-object p1, p0, Lgf/w$a;->i:Laf/o;

    iget-object p1, p0, Lgf/w$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    return-void

    :cond_1
    new-instance p1, Ljf/c;

    iget v0, p0, Lgf/w$a;->e:I

    invoke-direct {p1, v0}, Ljf/c;-><init>(I)V

    iput-object p1, p0, Lgf/w$a;->i:Laf/o;

    iget-object p1, p0, Lgf/w$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 13

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgf/w$a;->i:Laf/o;

    iget-object v1, p0, Lgf/w$a;->h:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lgf/w$a;->b:LTe/I;

    iget-object v3, p0, Lgf/w$a;->f:Lio/reactivex/internal/util/j;

    const/4 v4, 0x1

    move v5, v4

    :cond_1
    :goto_0
    iget v6, p0, Lgf/w$a;->o:I

    :goto_1
    iget v7, p0, Lgf/w$a;->d:I

    if-eq v6, v7, :cond_5

    iget-boolean v7, p0, Lgf/w$a;->m:Z

    if-eqz v7, :cond_2

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-virtual {p0}, Lgf/w$a;->b()V

    return-void

    :cond_2
    sget-object v7, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne v3, v7, :cond_3

    iget-object v7, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-virtual {p0}, Lgf/w$a;->b()V

    iget-object v0, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :try_start_0
    invoke-interface {v0}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lgf/w$a;->c:LXe/o;

    invoke-interface {v8, v7}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The mapper returned a null ObservableSource"

    invoke-static {v7, v8}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LTe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v8, Lbf/s;

    iget v9, p0, Lgf/w$a;->e:I

    invoke-direct {v8, p0, v9}, Lbf/s;-><init>(Lbf/t;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    invoke-interface {v7, v8}, LTe/G;->b(LTe/I;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lgf/w$a;->j:LVe/c;

    invoke-interface {v3}, LVe/c;->dispose()V

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-virtual {p0}, Lgf/w$a;->b()V

    iget-object v0, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :goto_2
    iput v6, p0, Lgf/w$a;->o:I

    iget-boolean v6, p0, Lgf/w$a;->m:Z

    if-eqz v6, :cond_6

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-virtual {p0}, Lgf/w$a;->b()V

    return-void

    :cond_6
    sget-object v6, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne v3, v6, :cond_7

    iget-object v6, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_7

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-virtual {p0}, Lgf/w$a;->b()V

    iget-object v0, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    iget-object v6, p0, Lgf/w$a;->n:Lbf/s;

    const/4 v7, 0x0

    if-nez v6, :cond_d

    sget-object v6, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    if-ne v3, v6, :cond_8

    iget-object v6, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-virtual {p0}, Lgf/w$a;->b()V

    iget-object v0, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    iget-boolean v6, p0, Lgf/w$a;->k:Z

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbf/s;

    if-nez v8, :cond_9

    move v9, v4

    goto :goto_3

    :cond_9
    move v9, v7

    :goto_3
    if-eqz v6, :cond_b

    if-eqz v9, :cond_b

    iget-object v1, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-virtual {p0}, Lgf/w$a;->b()V

    iget-object v0, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-interface {v2}, LTe/I;->a()V

    :goto_4
    return-void

    :cond_b
    if-nez v9, :cond_c

    iput-object v8, p0, Lgf/w$a;->n:Lbf/s;

    :cond_c
    move-object v6, v8

    :cond_d
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lbf/s;->f()Laf/o;

    move-result-object v8

    :goto_5
    iget-boolean v9, p0, Lgf/w$a;->m:Z

    if-eqz v9, :cond_e

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-virtual {p0}, Lgf/w$a;->b()V

    return-void

    :cond_e
    invoke-virtual {v6}, Lbf/s;->c()Z

    move-result v9

    sget-object v10, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne v3, v10, :cond_f

    iget-object v10, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_f

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-virtual {p0}, Lgf/w$a;->b()V

    iget-object v0, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_f
    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v8}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_10

    move v12, v4

    goto :goto_6

    :cond_10
    move v12, v7

    :goto_6
    if-eqz v9, :cond_11

    if-eqz v12, :cond_11

    iput-object v10, p0, Lgf/w$a;->n:Lbf/s;

    iget v6, p0, Lgf/w$a;->o:I

    sub-int/2addr v6, v4

    iput v6, p0, Lgf/w$a;->o:I

    goto/16 :goto_0

    :cond_11
    if-eqz v12, :cond_12

    goto :goto_7

    :cond_12
    invoke-interface {v2, v11}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception v6

    invoke-static {v6}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v7, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v7, v6}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iput-object v10, p0, Lgf/w$a;->n:Lbf/s;

    iget v6, p0, Lgf/w$a;->o:I

    sub-int/2addr v6, v4

    iput v6, p0, Lgf/w$a;->o:I

    goto/16 :goto_0

    :cond_13
    :goto_7
    neg-int v5, v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lgf/w$a;->l:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/w$a;->i:Laf/o;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lgf/w$a;->f()V

    return-void
.end method

.method public h(Lbf/s;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/s<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lgf/w$a;->f:Lio/reactivex/internal/util/j;

    sget-object v0, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lgf/w$a;->j:LVe/c;

    invoke-interface {p2}, LVe/c;->dispose()V

    :cond_0
    invoke-virtual {p1}, Lbf/s;->h()V

    invoke-virtual {p0}, Lgf/w$a;->f()V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public i(Lbf/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/s<",
            "TR;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lbf/s;->h()V

    invoke-virtual {p0}, Lgf/w$a;->f()V

    return-void
.end method

.method public j(Lbf/s;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/s<",
            "TR;>;TR;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lbf/s;->f()Laf/o;

    move-result-object p1

    invoke-interface {p1, p2}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lgf/w$a;->f()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/w$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/w$a;->k:Z

    invoke-virtual {p0}, Lgf/w$a;->f()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
