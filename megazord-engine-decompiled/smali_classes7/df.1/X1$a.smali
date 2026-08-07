.class public final Ldf/X1$a;
.super Llf/n;
.source "SourceFile"

# interfaces
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/X1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/X1$a$a;
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
        "LCi/d;"
    }
.end annotation


# instance fields
.field public final D0:Ljava/util/concurrent/TimeUnit;

.field public final X0:LTe/J;

.field public final Y0:I

.field public final Z0:Z

.field public final a1:J

.field public final b1:LTe/J$c;

.field public c1:J

.field public d1:J

.field public e1:LCi/d;

.field public f1:Lrf/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrf/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile g1:Z

.field public final h1:LYe/h;

.field public final v0:J


# direct methods
.method public constructor <init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J;IJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "LTe/l<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "IJZ)V"
        }
    .end annotation

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    invoke-direct {p0, p1, v0}, Llf/n;-><init>(LCi/c;Laf/n;)V

    new-instance p1, LYe/h;

    invoke-direct {p1}, LYe/h;-><init>()V

    iput-object p1, p0, Ldf/X1$a;->h1:LYe/h;

    iput-wide p2, p0, Ldf/X1$a;->v0:J

    iput-object p4, p0, Ldf/X1$a;->D0:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ldf/X1$a;->X0:LTe/J;

    iput p6, p0, Ldf/X1$a;->Y0:I

    iput-wide p7, p0, Ldf/X1$a;->a1:J

    iput-boolean p9, p0, Ldf/X1$a;->Z0:Z

    if-eqz p9, :cond_0

    invoke-virtual {p5}, LTe/J;->c()LTe/J$c;

    move-result-object p1

    iput-object p1, p0, Ldf/X1$a;->b1:LTe/J$c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ldf/X1$a;->b1:LTe/J$c;

    :goto_0
    return-void
.end method

.method public static synthetic s(Ldf/X1$a;)Z
    .locals 0

    iget-boolean p0, p0, Llf/n;->Y:Z

    return p0
.end method

.method public static synthetic u(Ldf/X1$a;)Laf/n;
    .locals 0

    iget-object p0, p0, Llf/n;->X:Laf/n;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/n;->Z:Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldf/X1$a;->v()V

    :cond_0
    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    invoke-virtual {p0}, Ldf/X1$a;->dispose()V

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

    iget-object v0, p0, Ldf/X1$a;->h1:LYe/h;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Ldf/X1$a;->b1:LTe/J$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/X1$a;->g1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Llf/n;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldf/X1$a;->f1:Lrf/h;

    invoke-virtual {v0, p1}, Lrf/h;->g(Ljava/lang/Object;)V

    iget-wide v1, p0, Ldf/X1$a;->c1:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-wide v5, p0, Ldf/X1$a;->a1:J

    cmp-long p1, v1, v5

    if-ltz p1, :cond_3

    iget-wide v1, p0, Ldf/X1$a;->d1:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ldf/X1$a;->d1:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ldf/X1$a;->c1:J

    invoke-virtual {v0}, Lrf/h;->a()V

    invoke-virtual {p0}, Llf/n;->k()J

    move-result-wide v5

    cmp-long p1, v5, v1

    if-eqz p1, :cond_2

    iget p1, p0, Ldf/X1$a;->Y0:I

    invoke-static {p1}, Lrf/h;->V8(I)Lrf/h;

    move-result-object p1

    iput-object p1, p0, Ldf/X1$a;->f1:Lrf/h;

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, v5, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v3, v4}, Llf/n;->e(J)J

    :cond_1
    iget-boolean p1, p0, Ldf/X1$a;->Z0:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldf/X1$a;->h1:LYe/h;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    iget-object v0, p0, Ldf/X1$a;->b1:LTe/J$c;

    new-instance v1, Ldf/X1$a$a;

    iget-wide v2, p0, Ldf/X1$a;->d1:J

    invoke-direct {v1, v2, v3, p0}, Ldf/X1$a$a;-><init>(JLdf/X1$a;)V

    iget-wide v4, p0, Ldf/X1$a;->v0:J

    iget-object v6, p0, Ldf/X1$a;->D0:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, LTe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    iget-object v0, p0, Ldf/X1$a;->h1:LYe/h;

    invoke-virtual {v0, p1}, LYe/h;->a(LVe/c;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Ldf/X1$a;->f1:Lrf/h;

    iget-object p1, p0, Ldf/X1$a;->e1:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    iget-object p1, p0, Llf/n;->W:LCi/c;

    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not deliver window due to lack of requests"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/X1$a;->dispose()V

    return-void

    :cond_3
    iput-wide v1, p0, Ldf/X1$a;->c1:J

    :cond_4
    :goto_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Llf/n;->b(I)I

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_5
    iget-object v0, p0, Llf/n;->X:Laf/n;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Ldf/X1$a;->v()V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 11

    iget-object v0, p0, Ldf/X1$a;->e1:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p1, p0, Ldf/X1$a;->e1:LCi/d;

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    iget-boolean v1, p0, Llf/n;->Y:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Ldf/X1$a;->Y0:I

    invoke-static {v1}, Lrf/h;->V8(I)Lrf/h;

    move-result-object v1

    iput-object v1, p0, Ldf/X1$a;->f1:Lrf/h;

    invoke-virtual {p0}, Llf/n;->k()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v1}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Llf/n;->e(J)J

    :cond_1
    new-instance v5, Ldf/X1$a$a;

    iget-wide v2, p0, Ldf/X1$a;->d1:J

    invoke-direct {v5, v2, v3, p0}, Ldf/X1$a$a;-><init>(JLdf/X1$a;)V

    iget-boolean v2, p0, Ldf/X1$a;->Z0:Z

    if-eqz v2, :cond_2

    iget-object v4, p0, Ldf/X1$a;->b1:LTe/J$c;

    iget-wide v8, p0, Ldf/X1$a;->v0:J

    iget-object v10, p0, Ldf/X1$a;->D0:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, LTe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Ldf/X1$a;->X0:LTe/J;

    iget-wide v8, p0, Ldf/X1$a;->v0:J

    iget-object v10, p0, Ldf/X1$a;->D0:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, LTe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Ldf/X1$a;->h1:LYe/h;

    invoke-virtual {v3, v2}, LYe/h;->a(LVe/c;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Llf/n;->Y:Z

    invoke-interface {p1}, LCi/d;->cancel()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not deliver initial window due to lack of requests."

    invoke-direct {p1, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
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

    invoke-virtual {p0}, Ldf/X1$a;->v()V

    :cond_0
    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/X1$a;->dispose()V

    return-void
.end method

.method public v()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Llf/n;->X:Laf/n;

    iget-object v2, v0, Llf/n;->W:LCi/c;

    iget-object v3, v0, Ldf/X1$a;->f1:Lrf/h;

    const/4 v5, 0x1

    :cond_0
    :goto_0
    iget-boolean v6, v0, Ldf/X1$a;->g1:Z

    if-eqz v6, :cond_1

    iget-object v2, v0, Ldf/X1$a;->e1:LCi/d;

    invoke-interface {v2}, LCi/d;->cancel()V

    invoke-interface {v1}, Laf/o;->clear()V

    invoke-virtual/range {p0 .. p0}, Ldf/X1$a;->dispose()V

    return-void

    :cond_1
    iget-boolean v6, v0, Llf/n;->Z:Z

    invoke-interface {v1}, Laf/n;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    instance-of v9, v7, Ldf/X1$a$a;

    const/4 v10, 0x0

    if-eqz v6, :cond_5

    if-nez v8, :cond_3

    if-eqz v9, :cond_5

    :cond_3
    iput-object v10, v0, Ldf/X1$a;->f1:Lrf/h;

    invoke-interface {v1}, Laf/o;->clear()V

    iget-object v1, v0, Llf/n;->q0:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    invoke-virtual {v3, v1}, Lrf/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lrf/h;->a()V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ldf/X1$a;->dispose()V

    return-void

    :cond_5
    if-eqz v8, :cond_6

    neg-int v5, v5

    invoke-virtual {v0, v5}, Llf/n;->b(I)I

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_6
    const-wide v11, 0x7fffffffffffffffL

    move v8, v5

    const-wide/16 v4, 0x0

    if-eqz v9, :cond_a

    check-cast v7, Ldf/X1$a$a;

    iget-boolean v9, v0, Ldf/X1$a;->Z0:Z

    if-nez v9, :cond_8

    iget-wide v13, v0, Ldf/X1$a;->d1:J

    iget-wide v6, v7, Ldf/X1$a$a;->b:J

    cmp-long v6, v13, v6

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v8

    goto :goto_0

    :cond_8
    :goto_4
    invoke-virtual {v3}, Lrf/h;->a()V

    iput-wide v4, v0, Ldf/X1$a;->c1:J

    iget v3, v0, Ldf/X1$a;->Y0:I

    invoke-static {v3}, Lrf/h;->V8(I)Lrf/h;

    move-result-object v3

    iput-object v3, v0, Ldf/X1$a;->f1:Lrf/h;

    invoke-virtual/range {p0 .. p0}, Llf/n;->k()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_9

    invoke-interface {v2, v3}, LCi/c;->g(Ljava/lang/Object;)V

    cmp-long v4, v6, v11

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Llf/n;->e(J)J

    goto :goto_3

    :cond_9
    iput-object v10, v0, Ldf/X1$a;->f1:Lrf/h;

    iget-object v1, v0, Llf/n;->X:Laf/n;

    invoke-interface {v1}, Laf/o;->clear()V

    iget-object v1, v0, Ldf/X1$a;->e1:LCi/d;

    invoke-interface {v1}, LCi/d;->cancel()V

    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v3, "Could not deliver first window due to lack of requests."

    invoke-direct {v1, v3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Ldf/X1$a;->dispose()V

    return-void

    :cond_a
    invoke-static {v7}, Lio/reactivex/internal/util/p;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lrf/h;->g(Ljava/lang/Object;)V

    iget-wide v6, v0, Ldf/X1$a;->c1:J

    const-wide/16 v13, 0x1

    add-long/2addr v6, v13

    iget-wide v9, v0, Ldf/X1$a;->a1:J

    cmp-long v9, v6, v9

    if-ltz v9, :cond_d

    iget-wide v6, v0, Ldf/X1$a;->d1:J

    add-long/2addr v6, v13

    iput-wide v6, v0, Ldf/X1$a;->d1:J

    iput-wide v4, v0, Ldf/X1$a;->c1:J

    invoke-virtual {v3}, Lrf/h;->a()V

    invoke-virtual/range {p0 .. p0}, Llf/n;->k()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_c

    iget v3, v0, Ldf/X1$a;->Y0:I

    invoke-static {v3}, Lrf/h;->V8(I)Lrf/h;

    move-result-object v3

    iput-object v3, v0, Ldf/X1$a;->f1:Lrf/h;

    iget-object v4, v0, Llf/n;->W:LCi/c;

    invoke-interface {v4, v3}, LCi/c;->g(Ljava/lang/Object;)V

    cmp-long v4, v6, v11

    if-eqz v4, :cond_b

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Llf/n;->e(J)J

    :cond_b
    iget-boolean v4, v0, Ldf/X1$a;->Z0:Z

    if-eqz v4, :cond_7

    iget-object v4, v0, Ldf/X1$a;->h1:LYe/h;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LVe/c;

    invoke-interface {v4}, LVe/c;->dispose()V

    iget-object v9, v0, Ldf/X1$a;->b1:LTe/J$c;

    new-instance v10, Ldf/X1$a$a;

    iget-wide v4, v0, Ldf/X1$a;->d1:J

    invoke-direct {v10, v4, v5, v0}, Ldf/X1$a$a;-><init>(JLdf/X1$a;)V

    iget-wide v13, v0, Ldf/X1$a;->v0:J

    iget-object v15, v0, Ldf/X1$a;->D0:Ljava/util/concurrent/TimeUnit;

    move-wide v11, v13

    invoke-virtual/range {v9 .. v15}, LTe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object v4

    iget-object v5, v0, Ldf/X1$a;->h1:LYe/h;

    invoke-virtual {v5, v4}, LYe/h;->a(LVe/c;)Z

    goto/16 :goto_3

    :cond_c
    const/4 v3, 0x0

    iput-object v3, v0, Ldf/X1$a;->f1:Lrf/h;

    iget-object v1, v0, Ldf/X1$a;->e1:LCi/d;

    invoke-interface {v1}, LCi/d;->cancel()V

    iget-object v1, v0, Llf/n;->W:LCi/c;

    new-instance v2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v3, "Could not deliver window due to lack of requests"

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, LCi/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Ldf/X1$a;->dispose()V

    return-void

    :cond_d
    iput-wide v6, v0, Ldf/X1$a;->c1:J

    goto/16 :goto_3
.end method
