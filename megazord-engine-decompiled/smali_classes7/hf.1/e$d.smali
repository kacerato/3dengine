.class public final Lhf/e$d;
.super Lhf/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lhf/e$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCi/c;LXe/r;LXe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "LXe/r<",
            "-TT;>;",
            "LXe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lpf/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lhf/e$b;-><init>(LXe/r;LXe/c;)V

    iput-object p1, p0, Lhf/e$d;->f:LCi/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lhf/e$b;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhf/e$b;->e:Z

    iget-object v0, p0, Lhf/e$d;->f:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    :cond_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 1

    iget-object v0, p0, Lhf/e$b;->d:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lhf/e$b;->d:LCi/d;

    iget-object p1, p0, Lhf/e$d;->f:LCi/c;

    invoke-interface {p1, p0}, LCi/c;->h(LCi/d;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lhf/e$b;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhf/e$b;->e:Z

    iget-object v0, p0, Lhf/e$d;->f:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lhf/e$b;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-wide/16 v2, 0x0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v4, p0, Lhf/e$b;->b:LXe/r;

    invoke-interface {v4, p1}, LXe/r;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v1, p0, Lhf/e$d;->f:LCi/c;

    invoke-interface {v1, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return v0

    :cond_1
    return v1

    :catchall_0
    move-exception v4

    invoke-static {v4}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v5, p0, Lhf/e$b;->c:LXe/c;

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v4}, LXe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "The errorHandler returned a null item"

    invoke-static {v5, v6}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpf/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v6, Lhf/e$a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v0, :cond_0

    const/4 p1, 0x2

    if-eq v5, p1, :cond_3

    const/4 p1, 0x3

    if-eq v5, p1, :cond_2

    invoke-virtual {p0}, Lhf/e$b;->cancel()V

    invoke-virtual {p0, v4}, Lhf/e$d;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Lhf/e$b;->cancel()V

    invoke-virtual {p0}, Lhf/e$d;->a()V

    :cond_3
    return v1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lhf/e$b;->cancel()V

    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v4, p1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lhf/e$d;->onError(Ljava/lang/Throwable;)V

    :cond_4
    return v1
.end method
