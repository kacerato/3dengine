.class public final Ldf/X1$b;
.super Llf/n;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/X1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
        "LTe/q<",
        "TT;>;",
        "LCi/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final d1:Ljava/lang/Object;


# instance fields
.field public final D0:Ljava/util/concurrent/TimeUnit;

.field public final X0:LTe/J;

.field public final Y0:I

.field public Z0:LCi/d;

.field public a1:Lrf/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrf/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b1:LYe/h;

.field public volatile c1:Z

.field public final v0:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldf/X1$b;->d1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J;I)V
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
            "I)V"
        }
    .end annotation

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    invoke-direct {p0, p1, v0}, Llf/n;-><init>(LCi/c;Laf/n;)V

    new-instance p1, LYe/h;

    invoke-direct {p1}, LYe/h;-><init>()V

    iput-object p1, p0, Ldf/X1$b;->b1:LYe/h;

    iput-wide p2, p0, Ldf/X1$b;->v0:J

    iput-object p4, p0, Ldf/X1$b;->D0:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ldf/X1$b;->X0:LTe/J;

    iput p6, p0, Ldf/X1$b;->Y0:I

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

    invoke-virtual {p0}, Ldf/X1$b;->s()V

    :cond_0
    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    invoke-virtual {p0}, Ldf/X1$b;->dispose()V

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

    iget-object v0, p0, Ldf/X1$b;->b1:LYe/h;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/X1$b;->c1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Llf/n;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldf/X1$b;->a1:Lrf/h;

    invoke-virtual {v0, p1}, Lrf/h;->g(Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Llf/n;->b(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Llf/n;->X:Laf/n;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Ldf/X1$b;->s()V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 12

    iget-object v0, p0, Ldf/X1$b;->Z0:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Ldf/X1$b;->Z0:LCi/d;

    iget v0, p0, Ldf/X1$b;->Y0:I

    invoke-static {v0}, Lrf/h;->V8(I)Lrf/h;

    move-result-object v0

    iput-object v0, p0, Ldf/X1$b;->a1:Lrf/h;

    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    invoke-virtual {p0}, Llf/n;->k()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ldf/X1$b;->a1:Lrf/h;

    invoke-interface {v0, v3}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Llf/n;->e(J)J

    :cond_0
    iget-boolean v0, p0, Llf/n;->Y:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ldf/X1$b;->b1:LYe/h;

    iget-object v5, p0, Ldf/X1$b;->X0:LTe/J;

    iget-wide v9, p0, Ldf/X1$b;->v0:J

    iget-object v11, p0, Ldf/X1$b;->D0:Ljava/util/concurrent/TimeUnit;

    move-object v6, p0

    move-wide v7, v9

    invoke-virtual/range {v5 .. v11}, LTe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object v1

    invoke-virtual {v0, v1}, LYe/h;->a(LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v3, v4}, LCi/d;->i(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Llf/n;->Y:Z

    invoke-interface {p1}, LCi/d;->cancel()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v1, "Could not deliver first window due to lack of requests."

    invoke-direct {p1, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    :cond_2
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

    invoke-virtual {p0}, Ldf/X1$b;->s()V

    :cond_0
    iget-object v0, p0, Llf/n;->W:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/X1$b;->dispose()V

    return-void
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, Llf/n;->Y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/X1$b;->c1:Z

    invoke-virtual {p0}, Ldf/X1$b;->dispose()V

    :cond_0
    iget-object v0, p0, Llf/n;->X:Laf/n;

    sget-object v1, Ldf/X1$b;->d1:Ljava/lang/Object;

    invoke-interface {v0, v1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Llf/n;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldf/X1$b;->s()V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 10

    iget-object v0, p0, Llf/n;->X:Laf/n;

    iget-object v1, p0, Llf/n;->W:LCi/c;

    iget-object v2, p0, Ldf/X1$b;->a1:Lrf/h;

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iget-boolean v4, p0, Ldf/X1$b;->c1:Z

    iget-boolean v5, p0, Llf/n;->Z:Z

    invoke-interface {v0}, Laf/n;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    if-eqz v6, :cond_1

    sget-object v5, Ldf/X1$b;->d1:Ljava/lang/Object;

    if-ne v6, v5, :cond_3

    :cond_1
    iput-object v7, p0, Ldf/X1$b;->a1:Lrf/h;

    invoke-interface {v0}, Laf/o;->clear()V

    invoke-virtual {p0}, Ldf/X1$b;->dispose()V

    iget-object v0, p0, Llf/n;->q0:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lrf/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lrf/h;->a()V

    :goto_1
    return-void

    :cond_3
    if-nez v6, :cond_4

    neg-int v3, v3

    invoke-virtual {p0, v3}, Llf/n;->b(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_4
    sget-object v5, Ldf/X1$b;->d1:Ljava/lang/Object;

    if-ne v6, v5, :cond_7

    invoke-virtual {v2}, Lrf/h;->a()V

    if-nez v4, :cond_6

    iget v2, p0, Ldf/X1$b;->Y0:I

    invoke-static {v2}, Lrf/h;->V8(I)Lrf/h;

    move-result-object v2

    iput-object v2, p0, Ldf/X1$b;->a1:Lrf/h;

    invoke-virtual {p0}, Llf/n;->k()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-eqz v6, :cond_5

    invoke-interface {v1, v2}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Llf/n;->e(J)J

    goto :goto_0

    :cond_5
    iput-object v7, p0, Ldf/X1$b;->a1:Lrf/h;

    iget-object v0, p0, Llf/n;->X:Laf/n;

    invoke-interface {v0}, Laf/o;->clear()V

    iget-object v0, p0, Ldf/X1$b;->Z0:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-virtual {p0}, Ldf/X1$b;->dispose()V

    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Could not deliver first window due to lack of requests."

    invoke-direct {v0, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    iget-object v4, p0, Ldf/X1$b;->Z0:LCi/d;

    invoke-interface {v4}, LCi/d;->cancel()V

    goto :goto_0

    :cond_7
    invoke-static {v6}, Lio/reactivex/internal/util/p;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lrf/h;->g(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
