.class public final Ldf/X1$c;
.super Llf/n;
.source "SourceFile"

# interfaces
.implements LCi/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/X1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/X1$c$a;,
        Ldf/X1$c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llf/n<",
        "TT;",
        "Ljava/lang/Object;",
        "LTe/l<",
        "TT;>;>;",
        "LCi/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final D0:J

.field public final X0:Ljava/util/concurrent/TimeUnit;

.field public final Y0:LTe/J$c;

.field public final Z0:I

.field public final a1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrf/h<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public b1:LCi/d;

.field public volatile c1:Z

.field public final v0:J


# direct methods
.method public constructor <init>(LCi/c;JJLjava/util/concurrent/TimeUnit;LTe/J$c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "LTe/l<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J$c;",
            "I)V"
        }
    .end annotation

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    invoke-direct {p0, p1, v0}, Llf/n;-><init>(LCi/c;Laf/n;)V

    iput-wide p2, p0, Ldf/X1$c;->v0:J

    iput-wide p4, p0, Ldf/X1$c;->D0:J

    iput-object p6, p0, Ldf/X1$c;->X0:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Ldf/X1$c;->Y0:LTe/J$c;

    iput p8, p0, Ldf/X1$c;->Z0:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Ldf/X1$c;->a1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/n;->Z:Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldf/X1$c;->u()V

    :cond_0
    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    invoke-virtual {p0}, Ldf/X1$c;->dispose()V

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/n;->Y:Z

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Ldf/X1$c;->Y0:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Llf/n;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldf/X1$c;->a1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrf/h;

    invoke-virtual {v1, p1}, Lrf/h;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Llf/n;->b(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Llf/n;->X:Laf/n;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Ldf/X1$c;->u()V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 14

    iget-object v0, p0, Ldf/X1$c;->b1:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Ldf/X1$c;->b1:LCi/d;

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    iget-boolean v0, p0, Llf/n;->Y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Llf/n;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget v2, p0, Ldf/X1$c;->Z0:I

    invoke-static {v2}, Lrf/h;->V8(I)Lrf/h;

    move-result-object v2

    iget-object v3, p0, Ldf/X1$c;->a1:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Llf/n;->W:LCi/c;

    invoke-interface {v3, v2}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Llf/n;->e(J)J

    :cond_1
    iget-object v0, p0, Ldf/X1$c;->Y0:LTe/J$c;

    new-instance v1, Ldf/X1$c$a;

    invoke-direct {v1, p0, v2}, Ldf/X1$c$a;-><init>(Ldf/X1$c;Lrf/h;)V

    iget-wide v5, p0, Ldf/X1$c;->v0:J

    iget-object v2, p0, Ldf/X1$c;->X0:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v5, v6, v2}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    iget-object v7, p0, Ldf/X1$c;->Y0:LTe/J$c;

    iget-wide v11, p0, Ldf/X1$c;->D0:J

    iget-object v13, p0, Ldf/X1$c;->X0:Ljava/util/concurrent/TimeUnit;

    move-object v8, p0

    move-wide v9, v11

    invoke-virtual/range {v7 .. v13}, LTe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    invoke-interface {p1, v3, v4}, LCi/d;->i(J)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, LCi/d;->cancel()V

    iget-object p1, p0, Llf/n;->W:LCi/c;

    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not emit the first window due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public i(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Llf/n;->r(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, Llf/n;->q0:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/n;->Z:Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldf/X1$c;->u()V

    :cond_0
    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/X1$c;->dispose()V

    return-void
.end method

.method public run()V
    .locals 3

    iget v0, p0, Ldf/X1$c;->Z0:I

    invoke-static {v0}, Lrf/h;->V8(I)Lrf/h;

    move-result-object v0

    new-instance v1, Ldf/X1$c$b;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ldf/X1$c$b;-><init>(Lrf/h;Z)V

    iget-boolean v0, p0, Llf/n;->Y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llf/n;->X:Laf/n;

    invoke-interface {v0, v1}, Laf/o;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Llf/n;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldf/X1$c;->u()V

    :cond_1
    return-void
.end method

.method public s(Lrf/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrf/h<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Llf/n;->X:Laf/n;

    new-instance v1, Ldf/X1$c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ldf/X1$c$b;-><init>(Lrf/h;Z)V

    invoke-interface {v0, v1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ldf/X1$c;->u()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 10

    iget-object v0, p0, Llf/n;->X:Laf/n;

    iget-object v1, p0, Llf/n;->W:LCi/c;

    iget-object v2, p0, Ldf/X1$c;->a1:Ljava/util/List;

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, Ldf/X1$c;->c1:Z

    if-eqz v5, :cond_1

    iget-object v1, p0, Ldf/X1$c;->b1:LCi/d;

    invoke-interface {v1}, LCi/d;->cancel()V

    invoke-virtual {p0}, Ldf/X1$c;->dispose()V

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    iget-boolean v5, p0, Llf/n;->Z:Z

    invoke-interface {v0}, Laf/n;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    instance-of v8, v6, Ldf/X1$c$b;

    if-eqz v5, :cond_6

    if-nez v7, :cond_3

    if-eqz v8, :cond_6

    :cond_3
    invoke-interface {v0}, Laf/o;->clear()V

    iget-object v0, p0, Llf/n;->q0:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrf/h;

    invoke-virtual {v3, v0}, Lrf/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrf/h;

    invoke-virtual {v1}, Lrf/h;->a()V

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Ldf/X1$c;->dispose()V

    return-void

    :cond_6
    if-eqz v7, :cond_7

    neg-int v4, v4

    invoke-virtual {p0, v4}, Llf/n;->b(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_7
    if-eqz v8, :cond_c

    check-cast v6, Ldf/X1$c$b;

    iget-boolean v5, v6, Ldf/X1$c$b;->b:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Llf/n;->Y:Z

    if-eqz v5, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Llf/n;->k()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_a

    iget v7, p0, Ldf/X1$c;->Z0:I

    invoke-static {v7}, Lrf/h;->V8(I)Lrf/h;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v7}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v5, v8

    if-eqz v5, :cond_9

    const-wide/16 v5, 0x1

    invoke-virtual {p0, v5, v6}, Llf/n;->e(J)J

    :cond_9
    iget-object v5, p0, Ldf/X1$c;->Y0:LTe/J$c;

    new-instance v6, Ldf/X1$c$a;

    invoke-direct {v6, p0, v7}, Ldf/X1$c$a;-><init>(Ldf/X1$c;Lrf/h;)V

    iget-wide v7, p0, Ldf/X1$c;->v0:J

    iget-object v9, p0, Ldf/X1$c;->X0:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8, v9}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    goto/16 :goto_0

    :cond_a
    new-instance v5, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v6, "Can\'t emit window due to lack of requests"

    invoke-direct {v5, v6}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    iget-object v5, v6, Ldf/X1$c$b;->a:Lrf/h;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v5, v6, Ldf/X1$c$b;->a:Lrf/h;

    invoke-virtual {v5}, Lrf/h;->a()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Llf/n;->Y:Z

    if-eqz v5, :cond_0

    iput-boolean v3, p0, Ldf/X1$c;->c1:Z

    goto/16 :goto_0

    :cond_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrf/h;

    invoke-virtual {v7, v6}, Lrf/h;->g(Ljava/lang/Object;)V

    goto :goto_4
.end method
