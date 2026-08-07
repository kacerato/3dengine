.class public final Ldf/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(LCi/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/util/f;

    invoke-direct {v0}, Lio/reactivex/internal/util/f;-><init>()V

    new-instance v1, Llf/m;

    invoke-static {}, LZe/a;->h()LXe/g;

    move-result-object v2

    sget-object v3, LZe/a;->l:LXe/g;

    invoke-direct {v1, v2, v0, v0, v3}, Llf/m;-><init>(LXe/g;LXe/g;LXe/a;LXe/g;)V

    invoke-interface {p0, v1}, LCi/b;->l(LCi/c;)V

    invoke-static {v0, v1}, Lio/reactivex/internal/util/e;->a(Ljava/util/concurrent/CountDownLatch;LVe/c;)V

    iget-object p0, v0, Lio/reactivex/internal/util/f;->b:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static b(LCi/b;LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT;>;",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Llf/f;

    invoke-direct {v1, v0}, Llf/f;-><init>(Ljava/util/Queue;)V

    invoke-interface {p0, v1}, LCi/b;->l(LCi/c;)V

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Llf/f;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {v1}, Llf/f;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/e;->b()V

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v1}, Llf/f;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object v2, Llf/f;->d:Ljava/lang/Object;

    if-eq p0, v2, :cond_5

    invoke-static {p0, p1}, Lio/reactivex/internal/util/p;->c(Ljava/lang/Object;LCi/c;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Llf/f;->cancel()V

    invoke-interface {p1, p0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static c(LCi/b;LXe/g;LXe/g;LXe/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT;>;",
            "LXe/g<",
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LXe/a;",
            ")V"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Llf/m;

    sget-object v1, LZe/a;->l:LXe/g;

    invoke-direct {v0, p1, p2, p3, v1}, Llf/m;-><init>(LXe/g;LXe/g;LXe/a;LXe/g;)V

    invoke-static {p0, v0}, Ldf/l;->b(LCi/b;LCi/c;)V

    return-void
.end method

.method public static d(LCi/b;LXe/g;LXe/g;LXe/a;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/b<",
            "+TT;>;",
            "LXe/g<",
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LXe/a;",
            "I)V"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "number > 0 required"

    invoke-static {p4, v0}, LZe/b;->h(ILjava/lang/String;)I

    new-instance v0, Llf/g;

    invoke-static {p4}, LZe/a;->d(I)LXe/g;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Llf/g;-><init>(LXe/g;LXe/g;LXe/a;LXe/g;I)V

    invoke-static {p0, v0}, Ldf/l;->b(LCi/b;LCi/c;)V

    return-void
.end method
