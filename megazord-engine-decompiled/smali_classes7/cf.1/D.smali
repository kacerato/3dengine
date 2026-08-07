.class public final Lcf/D;
.super LTe/c;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "LTe/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/D;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 6

    new-instance v0, LVe/b;

    invoke-direct {v0}, LVe/b;-><init>()V

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    :try_start_0
    iget-object v1, p0, Lcf/D;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "The source iterator returned is null"

    invoke-static {v1, v2}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Lio/reactivex/internal/util/c;

    invoke-direct {v3}, Lio/reactivex/internal/util/c;-><init>()V

    :goto_0
    invoke-virtual {v0}, LVe/b;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, LVe/b;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The iterator returned a null CompletableSource"

    invoke-static {v4, v5}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LTe/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, LVe/b;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v5, Lcf/C$a;

    invoke-direct {v5, p1, v0, v3, v2}, Lcf/C$a;-><init>(LTe/f;LVe/b;Lio/reactivex/internal/util/c;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v4, v5}, LTe/i;->b(LTe/f;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {p1}, LTe/f;->a()V

    goto :goto_2

    :cond_4
    invoke-interface {p1, v0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
