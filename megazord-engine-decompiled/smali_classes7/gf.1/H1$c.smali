.class public final Lgf/H1$c;
.super Lbf/v;
.source "SourceFile"

# interfaces
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/H1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lbf/v<",
        "TT;",
        "Ljava/lang/Object;",
        "LTe/B<",
        "TT;>;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final L:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final M:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TB;+",
            "LTe/G<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final N:I

.field public final O:LVe/b;

.field public P:LVe/c;

.field public final Q:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltf/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final S:Ljava/util/concurrent/atomic/AtomicLong;

.field public final T:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(LTe/I;LTe/G;LXe/o;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;",
            "LTe/G<",
            "TB;>;",
            "LXe/o<",
            "-TB;+",
            "LTe/G<",
            "TV;>;>;I)V"
        }
    .end annotation

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lbf/v;-><init>(LTe/I;Laf/n;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/H1$c;->Q:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lgf/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lgf/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lgf/H1$c;->L:LTe/G;

    iput-object p3, p0, Lgf/H1$c;->M:LXe/o;

    iput p4, p0, Lgf/H1$c;->N:I

    new-instance p2, LVe/b;

    invoke-direct {p2}, LVe/b;-><init>()V

    iput-object p2, p0, Lgf/H1$c;->O:LVe/b;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lgf/H1$c;->R:Ljava/util/List;

    const-wide/16 p2, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, Lbf/v;->J:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/v;->J:Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgf/H1$c;->p()V

    :cond_1
    iget-object v0, p0, Lgf/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lgf/H1$c;->O:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    :cond_2
    iget-object v0, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 4

    iget-object v0, p0, Lgf/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/H1$c;->Q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/H1$c;->P:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 2

    iget-object v0, p0, Lgf/H1$c;->P:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lgf/H1$c;->P:LVe/c;

    iget-object p1, p0, Lbf/v;->G:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    iget-object p1, p0, Lgf/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lgf/H1$b;

    invoke-direct {p1, p0}, Lgf/H1$b;-><init>(Lgf/H1$c;)V

    iget-object v0, p0, Lgf/H1$c;->Q:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgf/H1$c;->L:LTe/G;

    invoke-interface {v0, p1}, LTe/G;->b(LTe/I;)V

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lbf/v;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgf/H1$c;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltf/j;

    invoke-virtual {v1, p1}, Ltf/j;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lbf/v;->b(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Lbf/v;->H:Laf/n;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lgf/H1$c;->p()V

    return-void
.end method

.method public m(LTe/I;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public n(Lgf/H1$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/H1$a<",
            "TT;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/H1$c;->O:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    iget-object v0, p0, Lbf/v;->H:Laf/n;

    new-instance v1, Lgf/H1$d;

    iget-object p1, p1, Lgf/H1$a;->d:Ltf/j;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lgf/H1$d;-><init>(Ltf/j;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lgf/H1$c;->p()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lgf/H1$c;->O:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lgf/H1$c;->Q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    iget-boolean v0, p0, Lbf/v;->J:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Lbf/v;->K:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/v;->J:Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgf/H1$c;->p()V

    :cond_1
    iget-object v0, p0, Lgf/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lgf/H1$c;->O:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    :cond_2
    iget-object v0, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public p()V
    .locals 9

    iget-object v0, p0, Lbf/v;->H:Laf/n;

    check-cast v0, Ljf/a;

    iget-object v1, p0, Lbf/v;->G:LTe/I;

    iget-object v2, p0, Lgf/H1$c;->R:Ljava/util/List;

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lbf/v;->J:Z

    invoke-virtual {v0}, Ljf/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lgf/H1$c;->o()V

    iget-object v0, p0, Lbf/v;->K:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltf/j;

    invoke-virtual {v3, v0}, Ltf/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltf/j;

    invoke-virtual {v1}, Ltf/j;->a()V

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_4
    if-eqz v7, :cond_5

    neg-int v4, v4

    invoke-virtual {p0, v4}, Lbf/v;->b(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_5
    instance-of v5, v6, Lgf/H1$d;

    if-eqz v5, :cond_8

    check-cast v6, Lgf/H1$d;

    iget-object v5, v6, Lgf/H1$d;->a:Ltf/j;

    if-eqz v5, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v6, Lgf/H1$d;->a:Ltf/j;

    invoke-virtual {v5}, Ltf/j;->a()V

    iget-object v5, p0, Lgf/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lgf/H1$c;->o()V

    return-void

    :cond_6
    iget-object v5, p0, Lgf/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_0

    :cond_7
    iget v5, p0, Lgf/H1$c;->N:I

    invoke-static {v5}, Ltf/j;->p8(I)Ltf/j;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, LTe/I;->g(Ljava/lang/Object;)V

    :try_start_0
    iget-object v7, p0, Lgf/H1$c;->M:LXe/o;

    iget-object v6, v6, Lgf/H1$d;->b:Ljava/lang/Object;

    invoke-interface {v7, v6}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The ObservableSource supplied is null"

    invoke-static {v6, v7}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LTe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v7, Lgf/H1$a;

    invoke-direct {v7, p0, v5}, Lgf/H1$a;-><init>(Lgf/H1$c;Ltf/j;)V

    iget-object v5, p0, Lgf/H1$c;->O:LVe/b;

    invoke-virtual {v5, v7}, LVe/b;->b(LVe/c;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lgf/H1$c;->S:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    invoke-interface {v6, v7}, LTe/G;->b(LTe/I;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v5}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v6, p0, Lgf/H1$c;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {v1, v5}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltf/j;

    invoke-static {v6}, Lio/reactivex/internal/util/p;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ltf/j;->g(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public q(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/H1$c;->P:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/H1$c;->O:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    invoke-virtual {p0, p1}, Lgf/H1$c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public r(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object v0, p0, Lbf/v;->H:Laf/n;

    new-instance v1, Lgf/H1$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lgf/H1$d;-><init>(Ltf/j;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lgf/H1$c;->p()V

    :cond_0
    return-void
.end method
