.class public final Ldf/V1$c;
.super Llf/n;
.source "SourceFile"

# interfaces
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/V1;
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
        "Llf/n<",
        "TT;",
        "Ljava/lang/Object;",
        "LTe/l<",
        "TT;>;>;",
        "LCi/d;"
    }
.end annotation


# instance fields
.field public final D0:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TB;+",
            "LCi/b<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final X0:I

.field public final Y0:LVe/b;

.field public Z0:LCi/d;

.field public final a1:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrf/h<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c1:Ljava/util/concurrent/atomic/AtomicLong;

.field public final d1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final v0:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCi/c;LCi/b;LXe/o;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "LTe/l<",
            "TT;>;>;",
            "LCi/b<",
            "TB;>;",
            "LXe/o<",
            "-TB;+",
            "LCi/b<",
            "TV;>;>;I)V"
        }
    .end annotation

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    invoke-direct {p0, p1, v0}, Llf/n;-><init>(LCi/c;Laf/n;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/V1$c;->a1:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/V1$c;->c1:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ldf/V1$c;->d1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Ldf/V1$c;->v0:LCi/b;

    iput-object p3, p0, Ldf/V1$c;->D0:LXe/o;

    iput p4, p0, Ldf/V1$c;->X0:I

    new-instance p2, LVe/b;

    invoke-direct {p2}, LVe/b;-><init>()V

    iput-object p2, p0, Ldf/V1$c;->Y0:LVe/b;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ldf/V1$c;->b1:Ljava/util/List;

    const-wide/16 p2, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, Llf/n;->Z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/n;->Z:Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldf/V1$c;->u()V

    :cond_1
    iget-object v0, p0, Ldf/V1$c;->c1:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Ldf/V1$c;->Y0:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    :cond_2
    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    return-void
.end method

.method public cancel()V
    .locals 4

    iget-object v0, p0, Ldf/V1$c;->d1:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/V1$c;->a1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Ldf/V1$c;->c1:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ldf/V1$c;->Z0:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Ldf/V1$c;->Y0:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Ldf/V1$c;->a1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Llf/n;->Z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Llf/n;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldf/V1$c;->b1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrf/h;

    invoke-virtual {v1, p1}, Lrf/h;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Llf/n;->b(I)I

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_2
    iget-object v0, p0, Llf/n;->X:Laf/n;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Ldf/V1$c;->u()V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 3

    iget-object v0, p0, Ldf/V1$c;->Z0:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Ldf/V1$c;->Z0:LCi/d;

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    iget-object v0, p0, Ldf/V1$c;->d1:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ldf/V1$b;

    invoke-direct {v0, p0}, Ldf/V1$b;-><init>(Ldf/V1$c;)V

    iget-object v1, p0, Ldf/V1$c;->a1:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    invoke-interface {p1, v1, v2}, LCi/d;->i(J)V

    iget-object p1, p0, Ldf/V1$c;->v0:LCi/b;

    invoke-interface {p1, v0}, LCi/b;->l(LCi/c;)V

    :cond_1
    return-void
.end method

.method public i(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Llf/n;->r(J)V

    return-void
.end method

.method public m(LCi/c;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "LTe/l<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    iget-boolean v0, p0, Llf/n;->Z:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Llf/n;->q0:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/n;->Z:Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldf/V1$c;->u()V

    :cond_1
    iget-object v0, p0, Ldf/V1$c;->c1:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Ldf/V1$c;->Y0:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    :cond_2
    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public s(Ldf/V1$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/V1$a<",
            "TT;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/V1$c;->Y0:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    iget-object v0, p0, Llf/n;->X:Laf/n;

    new-instance v1, Ldf/V1$d;

    iget-object p1, p1, Ldf/V1$a;->d:Lrf/h;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ldf/V1$d;-><init>(Lrf/h;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ldf/V1$c;->u()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 11

    iget-object v0, p0, Llf/n;->X:Laf/n;

    iget-object v1, p0, Llf/n;->W:LCi/c;

    iget-object v2, p0, Ldf/V1$c;->b1:Ljava/util/List;

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, Llf/n;->Z:Z

    invoke-interface {v0}, Laf/n;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Ldf/V1$c;->dispose()V

    iget-object v0, p0, Llf/n;->q0:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrf/h;

    invoke-virtual {v3, v0}, Lrf/h;->onError(Ljava/lang/Throwable;)V

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

    check-cast v1, Lrf/h;

    invoke-virtual {v1}, Lrf/h;->a()V

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_4
    if-eqz v7, :cond_5

    neg-int v4, v4

    invoke-virtual {p0, v4}, Llf/n;->b(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_5
    instance-of v5, v6, Ldf/V1$d;

    if-eqz v5, :cond_a

    check-cast v6, Ldf/V1$d;

    iget-object v5, v6, Ldf/V1$d;->a:Lrf/h;

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v6, Ldf/V1$d;->a:Lrf/h;

    invoke-virtual {v5}, Lrf/h;->a()V

    iget-object v5, p0, Ldf/V1$c;->c1:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ldf/V1$c;->dispose()V

    return-void

    :cond_6
    iget-object v5, p0, Ldf/V1$c;->d1:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_0

    :cond_7
    iget v5, p0, Ldf/V1$c;->X0:I

    invoke-static {v5}, Lrf/h;->V8(I)Lrf/h;

    move-result-object v5

    invoke-virtual {p0}, Llf/n;->k()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-eqz v7, :cond_9

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v9, v7

    if-eqz v7, :cond_8

    const-wide/16 v7, 0x1

    invoke-virtual {p0, v7, v8}, Llf/n;->e(J)J

    :cond_8
    :try_start_0
    iget-object v7, p0, Ldf/V1$c;->D0:LXe/o;

    iget-object v6, v6, Ldf/V1$d;->b:Ljava/lang/Object;

    invoke-interface {v7, v6}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The publisher supplied is null"

    invoke-static {v6, v7}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LCi/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v7, Ldf/V1$a;

    invoke-direct {v7, p0, v5}, Ldf/V1$a;-><init>(Ldf/V1$c;Lrf/h;)V

    iget-object v5, p0, Ldf/V1$c;->Y0:LVe/b;

    invoke-virtual {v5, v7}, LVe/b;->b(LVe/c;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Ldf/V1$c;->c1:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    invoke-interface {v6, v7}, LCi/b;->l(LCi/c;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Ldf/V1$c;->cancel()V

    invoke-interface {v1, v5}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Ldf/V1$c;->cancel()V

    new-instance v5, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v6, "Could not deliver new window due to lack of requests"

    invoke-direct {v5, v6}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrf/h;

    invoke-static {v6}, Lio/reactivex/internal/util/p;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lrf/h;->g(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/V1$c;->Z0:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    iget-object v0, p0, Ldf/V1$c;->Y0:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Ldf/V1$c;->a1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    iget-object v0, p0, Llf/n;->X:Laf/n;

    new-instance v1, Ldf/V1$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Ldf/V1$d;-><init>(Lrf/h;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ldf/V1$c;->u()V

    :cond_0
    return-void
.end method
