.class public final Lgf/l0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LVe/c;
.implements Lgf/l0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/l0;
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
        "LVe/c;",
        "Lgf/l0$b;"
    }
.end annotation


# static fields
.field public static final o:J = -0x54414b546f40e739L

.field public static final p:Ljava/lang/Integer;

.field public static final q:Ljava/lang/Integer;

.field public static final r:Ljava/lang/Integer;

.field public static final s:Ljava/lang/Integer;


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:Ljf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljf/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LVe/b;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltf/j<",
            "TTRight;>;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final h:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT",
            "Left;",
            "+",
            "LTe/G<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TTRight;+",
            "LTe/G<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field public final j:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "-TT",
            "Left;",
            "-",
            "LTe/B<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public l:I

.field public m:I

.field public volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lgf/l0$a;->p:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lgf/l0$a;->q:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lgf/l0$a;->r:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lgf/l0$a;->s:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(LTe/I;LXe/o;LXe/o;LXe/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;",
            "LXe/o<",
            "-TT",
            "Left;",
            "+",
            "LTe/G<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LXe/o<",
            "-TTRight;+",
            "LTe/G<",
            "TTRightEnd;>;>;",
            "LXe/c<",
            "-TT",
            "Left;",
            "-",
            "LTe/B<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/l0$a;->b:LTe/I;

    new-instance p1, LVe/b;

    invoke-direct {p1}, LVe/b;-><init>()V

    iput-object p1, p0, Lgf/l0$a;->d:LVe/b;

    new-instance p1, Ljf/c;

    invoke-static {}, LTe/B;->V()I

    move-result v0

    invoke-direct {p1, v0}, Ljf/c;-><init>(I)V

    iput-object p1, p0, Lgf/l0$a;->c:Ljf/c;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lgf/l0$a;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lgf/l0$a;->f:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/l0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lgf/l0$a;->h:LXe/o;

    iput-object p3, p0, Lgf/l0$a;->i:LXe/o;

    iput-object p4, p0, Lgf/l0$a;->j:LXe/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lgf/l0$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgf/l0$a;->c:Ljf/c;

    if-eqz p1, :cond_0

    sget-object p1, Lgf/l0$a;->p:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lgf/l0$a;->q:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljf/c;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lgf/l0$a;->h()V

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

    iget-object v0, p0, Lgf/l0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgf/l0$a;->h()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/l0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lgf/l0$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lgf/l0$a;->h()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lgf/l0$a;->n:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lgf/l0$a;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/l0$a;->n:Z

    invoke-virtual {p0}, Lgf/l0$a;->g()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgf/l0$a;->c:Ljf/c;

    invoke-virtual {v0}, Ljf/c;->clear()V

    :cond_1
    return-void
.end method

.method public e(ZLgf/l0$c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgf/l0$a;->c:Ljf/c;

    if-eqz p1, :cond_0

    sget-object p1, Lgf/l0$a;->r:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lgf/l0$a;->s:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljf/c;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lgf/l0$a;->h()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f(Lgf/l0$d;)V
    .locals 1

    iget-object v0, p0, Lgf/l0$a;->d:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    iget-object p1, p0, Lgf/l0$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {p0}, Lgf/l0$a;->h()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lgf/l0$a;->d:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    return-void
.end method

.method public h()V
    .locals 9

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgf/l0$a;->c:Ljf/c;

    iget-object v1, p0, Lgf/l0$a;->b:LTe/I;

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lgf/l0$a;->n:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljf/c;->clear()V

    return-void

    :cond_2
    iget-object v4, p0, Lgf/l0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljf/c;->clear()V

    invoke-virtual {p0}, Lgf/l0$a;->g()V

    invoke-virtual {p0, v1}, Lgf/l0$a;->i(LTe/I;)V

    return-void

    :cond_3
    iget-object v4, p0, Lgf/l0$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

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

    iget-object v0, p0, Lgf/l0$a;->e:Ljava/util/Map;

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

    check-cast v2, Ltf/j;

    invoke-virtual {v2}, Ltf/j;->a()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lgf/l0$a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lgf/l0$a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lgf/l0$a;->d:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    invoke-interface {v1}, LTe/I;->a()V

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

    sget-object v7, Lgf/l0$a;->p:Ljava/lang/Integer;

    if-ne v6, v7, :cond_a

    invoke-static {}, Ltf/j;->o8()Ltf/j;

    move-result-object v5

    iget v6, p0, Lgf/l0$a;->l:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lgf/l0$a;->l:I

    iget-object v7, p0, Lgf/l0$a;->e:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v7, p0, Lgf/l0$a;->h:LXe/o;

    invoke-interface {v7, v4}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The leftEnd returned a null ObservableSource"

    invoke-static {v7, v8}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LTe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v8, Lgf/l0$c;

    invoke-direct {v8, p0, v2, v6}, Lgf/l0$c;-><init>(Lgf/l0$b;ZI)V

    iget-object v6, p0, Lgf/l0$a;->d:LVe/b;

    invoke-virtual {v6, v8}, LVe/b;->b(LVe/c;)Z

    invoke-interface {v7, v8}, LTe/G;->b(LTe/I;)V

    iget-object v6, p0, Lgf/l0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Ljf/c;->clear()V

    invoke-virtual {p0}, Lgf/l0$a;->g()V

    invoke-virtual {p0, v1}, Lgf/l0$a;->i(LTe/I;)V

    return-void

    :cond_9
    :try_start_1
    iget-object v6, p0, Lgf/l0$a;->j:LXe/c;

    invoke-interface {v6, v4, v5}, LXe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "The resultSelector returned a null value"

    invoke-static {v4, v6}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1, v4}, LTe/I;->g(Ljava/lang/Object;)V

    iget-object v4, p0, Lgf/l0$a;->f:Ljava/util/Map;

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

    invoke-virtual {v5, v6}, Ltf/j;->g(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_0
    move-exception v2

    invoke-virtual {p0, v2, v1, v0}, Lgf/l0$a;->j(Ljava/lang/Throwable;LTe/I;Ljf/c;)V

    return-void

    :catchall_1
    move-exception v2

    invoke-virtual {p0, v2, v1, v0}, Lgf/l0$a;->j(Ljava/lang/Throwable;LTe/I;Ljf/c;)V

    return-void

    :cond_a
    sget-object v7, Lgf/l0$a;->q:Ljava/lang/Integer;

    if-ne v6, v7, :cond_c

    iget v6, p0, Lgf/l0$a;->m:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lgf/l0$a;->m:I

    iget-object v7, p0, Lgf/l0$a;->f:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    iget-object v7, p0, Lgf/l0$a;->i:LXe/o;

    invoke-interface {v7, v4}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The rightEnd returned a null ObservableSource"

    invoke-static {v7, v8}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LTe/G;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-instance v8, Lgf/l0$c;

    invoke-direct {v8, p0, v5, v6}, Lgf/l0$c;-><init>(Lgf/l0$b;ZI)V

    iget-object v5, p0, Lgf/l0$a;->d:LVe/b;

    invoke-virtual {v5, v8}, LVe/b;->b(LVe/c;)Z

    invoke-interface {v7, v8}, LTe/G;->b(LTe/I;)V

    iget-object v5, p0, Lgf/l0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Ljf/c;->clear()V

    invoke-virtual {p0}, Lgf/l0$a;->g()V

    invoke-virtual {p0, v1}, Lgf/l0$a;->i(LTe/I;)V

    return-void

    :cond_b
    iget-object v5, p0, Lgf/l0$a;->e:Ljava/util/Map;

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

    check-cast v6, Ltf/j;

    invoke-virtual {v6, v4}, Ltf/j;->g(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_2
    move-exception v2

    invoke-virtual {p0, v2, v1, v0}, Lgf/l0$a;->j(Ljava/lang/Throwable;LTe/I;Ljf/c;)V

    return-void

    :cond_c
    sget-object v5, Lgf/l0$a;->r:Ljava/lang/Integer;

    if-ne v6, v5, :cond_d

    check-cast v4, Lgf/l0$c;

    iget-object v5, p0, Lgf/l0$a;->e:Ljava/util/Map;

    iget v6, v4, Lgf/l0$c;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltf/j;

    iget-object v6, p0, Lgf/l0$a;->d:LVe/b;

    invoke-virtual {v6, v4}, LVe/b;->c(LVe/c;)Z

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ltf/j;->a()V

    goto/16 :goto_0

    :cond_d
    sget-object v5, Lgf/l0$a;->s:Ljava/lang/Integer;

    if-ne v6, v5, :cond_1

    check-cast v4, Lgf/l0$c;

    iget-object v5, p0, Lgf/l0$a;->f:Ljava/util/Map;

    iget v6, v4, Lgf/l0$c;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lgf/l0$a;->d:LVe/b;

    invoke-virtual {v5, v4}, LVe/b;->c(LVe/c;)Z

    goto/16 :goto_0
.end method

.method public i(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/l0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->c(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, Lgf/l0$a;->e:Ljava/util/Map;

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

    check-cast v2, Ltf/j;

    invoke-virtual {v2, v0}, Ltf/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lgf/l0$a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lgf/l0$a;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {p1, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public j(Ljava/lang/Throwable;LTe/I;Ljf/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "LTe/I<",
            "*>;",
            "Ljf/c<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lgf/l0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    invoke-virtual {p3}, Ljf/c;->clear()V

    invoke-virtual {p0}, Lgf/l0$a;->g()V

    invoke-virtual {p0, p2}, Lgf/l0$a;->i(LTe/I;)V

    return-void
.end method
