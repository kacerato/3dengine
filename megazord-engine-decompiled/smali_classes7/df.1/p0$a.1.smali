.class public final Ldf/p0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LCi/d;
.implements Ldf/p0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LCi/d;",
        "Ldf/p0$b;"
    }
.end annotation


# static fields
.field public static final p:J = -0x54414b546f40e739L

.field public static final q:Ljava/lang/Integer;

.field public static final r:Ljava/lang/Integer;

.field public static final s:Ljava/lang/Integer;

.field public static final t:Ljava/lang/Integer;


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;

.field public final d:Ljf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljf/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:LVe/b;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lrf/h<",
            "TTRight;>;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final i:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT",
            "Left;",
            "+",
            "LCi/b<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field public final j:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TTRight;+",
            "LCi/b<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field public final k:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "-TT",
            "Left;",
            "-",
            "LTe/l<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public m:I

.field public n:I

.field public volatile o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ldf/p0$a;->q:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ldf/p0$a;->r:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ldf/p0$a;->s:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Ldf/p0$a;->t:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(LCi/c;LXe/o;LXe/o;LXe/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;",
            "LXe/o<",
            "-TT",
            "Left;",
            "+",
            "LCi/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LXe/o<",
            "-TTRight;+",
            "LCi/b<",
            "TTRightEnd;>;>;",
            "LXe/c<",
            "-TT",
            "Left;",
            "-",
            "LTe/l<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ldf/p0$a;->b:LCi/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/p0$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, LVe/b;

    invoke-direct {p1}, LVe/b;-><init>()V

    iput-object p1, p0, Ldf/p0$a;->e:LVe/b;

    new-instance p1, Ljf/c;

    invoke-static {}, LTe/l;->a0()I

    move-result v0

    invoke-direct {p1, v0}, Ljf/c;-><init>(I)V

    iput-object p1, p0, Ldf/p0$a;->d:Ljf/c;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldf/p0$a;->f:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldf/p0$a;->g:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/p0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Ldf/p0$a;->i:LXe/o;

    iput-object p3, p0, Ldf/p0$a;->j:LXe/o;

    iput-object p4, p0, Ldf/p0$a;->k:LXe/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ldf/p0$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldf/p0$a;->d:Ljf/c;

    if-eqz p1, :cond_0

    sget-object p1, Ldf/p0$a;->q:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Ldf/p0$a;->r:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljf/c;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ldf/p0$a;->g()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/p0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldf/p0$a;->g()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/p0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ldf/p0$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Ldf/p0$a;->g()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Ldf/p0$a;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/p0$a;->o:Z

    invoke-virtual {p0}, Ldf/p0$a;->f()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldf/p0$a;->d:Ljf/c;

    invoke-virtual {v0}, Ljf/c;->clear()V

    :cond_1
    return-void
.end method

.method public d(ZLdf/p0$c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldf/p0$a;->d:Ljf/c;

    if-eqz p1, :cond_0

    sget-object p1, Ldf/p0$a;->s:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Ldf/p0$a;->t:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljf/c;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ldf/p0$a;->g()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Ldf/p0$d;)V
    .locals 1

    iget-object v0, p0, Ldf/p0$a;->e:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    iget-object p1, p0, Ldf/p0$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Ldf/p0$a;->g()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Ldf/p0$a;->e:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    return-void
.end method

.method public g()V
    .locals 10

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldf/p0$a;->d:Ljf/c;

    iget-object v1, p0, Ldf/p0$a;->b:LCi/c;

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    :goto_0
    iget-boolean v4, p0, Ldf/p0$a;->o:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljf/c;->clear()V

    return-void

    :cond_2
    iget-object v4, p0, Ldf/p0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljf/c;->clear()V

    invoke-virtual {p0}, Ldf/p0$a;->f()V

    invoke-virtual {p0, v1}, Ldf/p0$a;->h(LCi/c;)V

    return-void

    :cond_3
    iget-object v4, p0, Ldf/p0$a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    invoke-virtual {v0}, Ljf/c;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_5

    move v7, v2

    goto :goto_2

    :cond_5
    move v7, v5

    :goto_2
    if-eqz v4, :cond_7

    if-eqz v7, :cond_7

    iget-object v0, p0, Ldf/p0$a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrf/h;

    invoke-virtual {v2}, Lrf/h;->a()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Ldf/p0$a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Ldf/p0$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Ldf/p0$a;->e:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    invoke-interface {v1}, LCi/c;->a()V

    return-void

    :cond_7
    if-eqz v7, :cond_8

    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_8
    invoke-virtual {v0}, Ljf/c;->poll()Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Ldf/p0$a;->q:Ljava/lang/Integer;

    if-ne v6, v7, :cond_b

    invoke-static {}, Lrf/h;->U8()Lrf/h;

    move-result-object v5

    iget v6, p0, Ldf/p0$a;->m:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ldf/p0$a;->m:I

    iget-object v7, p0, Ldf/p0$a;->f:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v7, p0, Ldf/p0$a;->i:LXe/o;

    invoke-interface {v7, v4}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The leftEnd returned a null Publisher"

    invoke-static {v7, v8}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LCi/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v8, Ldf/p0$c;

    invoke-direct {v8, p0, v2, v6}, Ldf/p0$c;-><init>(Ldf/p0$b;ZI)V

    iget-object v6, p0, Ldf/p0$a;->e:LVe/b;

    invoke-virtual {v6, v8}, LVe/b;->b(LVe/c;)Z

    invoke-interface {v7, v8}, LCi/b;->l(LCi/c;)V

    iget-object v6, p0, Ldf/p0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Ljf/c;->clear()V

    invoke-virtual {p0}, Ldf/p0$a;->f()V

    invoke-virtual {p0, v1}, Ldf/p0$a;->h(LCi/c;)V

    return-void

    :cond_9
    :try_start_1
    iget-object v6, p0, Ldf/p0$a;->k:LXe/c;

    invoke-interface {v6, v4, v5}, LXe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "The resultSelector returned a null value"

    invoke-static {v4, v6}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Ldf/p0$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    invoke-interface {v1, v4}, LCi/c;->g(Ljava/lang/Object;)V

    iget-object v4, p0, Ldf/p0$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    invoke-static {v4, v6, v7}, Lio/reactivex/internal/util/d;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object v4, p0, Ldf/p0$a;->g:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrf/h;->g(Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    new-instance v2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v3, "Could not emit value due to lack of requests"

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1, v0}, Ldf/p0$a;->j(Ljava/lang/Throwable;LCi/c;Laf/o;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p0, v2, v1, v0}, Ldf/p0$a;->j(Ljava/lang/Throwable;LCi/c;Laf/o;)V

    return-void

    :catchall_1
    move-exception v2

    invoke-virtual {p0, v2, v1, v0}, Ldf/p0$a;->j(Ljava/lang/Throwable;LCi/c;Laf/o;)V

    return-void

    :cond_b
    sget-object v7, Ldf/p0$a;->r:Ljava/lang/Integer;

    if-ne v6, v7, :cond_d

    iget v6, p0, Ldf/p0$a;->n:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ldf/p0$a;->n:I

    iget-object v7, p0, Ldf/p0$a;->g:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    iget-object v7, p0, Ldf/p0$a;->j:LXe/o;

    invoke-interface {v7, v4}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The rightEnd returned a null Publisher"

    invoke-static {v7, v8}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LCi/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-instance v8, Ldf/p0$c;

    invoke-direct {v8, p0, v5, v6}, Ldf/p0$c;-><init>(Ldf/p0$b;ZI)V

    iget-object v5, p0, Ldf/p0$a;->e:LVe/b;

    invoke-virtual {v5, v8}, LVe/b;->b(LVe/c;)Z

    invoke-interface {v7, v8}, LCi/b;->l(LCi/c;)V

    iget-object v5, p0, Ldf/p0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Ljf/c;->clear()V

    invoke-virtual {p0}, Ldf/p0$a;->f()V

    invoke-virtual {p0, v1}, Ldf/p0$a;->h(LCi/c;)V

    return-void

    :cond_c
    iget-object v5, p0, Ldf/p0$a;->f:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrf/h;

    invoke-virtual {v6, v4}, Lrf/h;->g(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_2
    move-exception v2

    invoke-virtual {p0, v2, v1, v0}, Ldf/p0$a;->j(Ljava/lang/Throwable;LCi/c;Laf/o;)V

    return-void

    :cond_d
    sget-object v5, Ldf/p0$a;->s:Ljava/lang/Integer;

    if-ne v6, v5, :cond_e

    check-cast v4, Ldf/p0$c;

    iget-object v5, p0, Ldf/p0$a;->f:Ljava/util/Map;

    iget v6, v4, Ldf/p0$c;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrf/h;

    iget-object v6, p0, Ldf/p0$a;->e:LVe/b;

    invoke-virtual {v6, v4}, LVe/b;->c(LVe/c;)Z

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lrf/h;->a()V

    goto/16 :goto_0

    :cond_e
    sget-object v5, Ldf/p0$a;->t:Ljava/lang/Integer;

    if-ne v6, v5, :cond_1

    check-cast v4, Ldf/p0$c;

    iget-object v5, p0, Ldf/p0$a;->g:Ljava/util/Map;

    iget v6, v4, Ldf/p0$c;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Ldf/p0$a;->e:LVe/b;

    invoke-virtual {v5, v4}, LVe/b;->c(LVe/c;)Z

    goto/16 :goto_0
.end method

.method public h(LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/p0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, Ldf/p0$a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrf/h;

    invoke-virtual {v2, v0}, Lrf/h;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldf/p0$a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Ldf/p0$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {p1, v0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/p0$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/Throwable;LCi/c;Laf/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "LCi/c<",
            "*>;",
            "Laf/o<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ldf/p0$a;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-interface {p3}, Laf/o;->clear()V

    invoke-virtual {p0}, Ldf/p0$a;->f()V

    invoke-virtual {p0, p2}, Ldf/p0$a;->h(LCi/c;)V

    return-void
.end method
