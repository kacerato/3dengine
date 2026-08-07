.class public LOi/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:I = 0x6


# instance fields
.field public final a:LOi/s;

.field public final b:LRi/p;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "LOi/u;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LRi/N;

.field public final e:LEi/y;

.field public final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "LOi/x;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public h:LEi/v;

.field public i:Z


# direct methods
.method public constructor <init>(LQi/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voxelFile"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LOi/r;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, LOi/r;->f:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, LOi/r;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    iput-boolean v0, p0, LOi/r;->i:Z

    new-instance v1, LOi/s;

    iget-boolean v2, p1, LQi/c;->s:Z

    iget v3, p1, LQi/c;->t:I

    iget v4, p1, LQi/c;->u:I

    iget v5, p1, LQi/c;->j:F

    invoke-direct {v1, v2, v3, v4, v5}, LOi/s;-><init>(ZIIF)V

    iput-object v1, p0, LOi/r;->a:LOi/s;

    iget v2, p1, LQi/c;->g:F

    iput v2, v1, LOi/s;->g:F

    iget v2, p1, LQi/c;->f:F

    iput v2, v1, LOi/s;->i:F

    iget v2, p1, LQi/c;->h:F

    iput v2, v1, LOi/s;->j:F

    iget v2, p1, LQi/c;->i:F

    iput v2, v1, LOi/s;->h:F

    iget v2, p1, LQi/c;->k:F

    iput v2, v1, LOi/s;->n:F

    iget v2, p1, LQi/c;->l:F

    iput v2, v1, LOi/s;->m:F

    iget v2, p1, LQi/c;->m:F

    iput v2, v1, LOi/s;->k:F

    iget v2, p1, LQi/c;->n:F

    iput v2, v1, LOi/s;->l:F

    iget v2, p1, LQi/c;->o:I

    iput v2, v1, LOi/s;->o:I

    iget-boolean v2, p1, LQi/c;->p:Z

    iput-boolean v2, v1, LOi/s;->p:Z

    iget v2, p1, LQi/c;->q:F

    iput v2, v1, LOi/s;->q:F

    iget v2, p1, LQi/c;->r:F

    iput v2, v1, LOi/s;->r:F

    new-instance v1, LRi/p;

    invoke-direct {v1}, LRi/p;-><init>()V

    iput-object v1, p0, LOi/r;->b:LRi/p;

    new-instance v1, LEi/y;

    invoke-direct {v1}, LEi/y;-><init>()V

    iput-object v1, p0, LOi/r;->e:LEi/y;

    iget-object v2, v1, LEi/y;->a:[F

    iget-object v3, p1, LQi/c;->w:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    aput v5, v2, v4

    aget v4, v3, v0

    aput v4, v2, v0

    const/4 v0, 0x2

    aget v3, v3, v0

    aput v3, v2, v0

    iget v0, p1, LQi/c;->j:F

    iget v2, p1, LQi/c;->t:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iput v2, v1, LEi/y;->b:F

    iget v2, p1, LQi/c;->u:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, v1, LEi/y;->c:F

    iget-object v0, p1, LQi/c;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, LEi/y;->d:I

    const v0, 0x8000

    iput v0, v1, LEi/y;->e:I

    iget-object p1, p1, LQi/c;->x:Ljava/util/List;

    new-instance v0, LOi/f;

    invoke-direct {v0, p0}, LOi/f;-><init>(LOi/r;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance p1, LRi/N;

    invoke-direct {p1}, LRi/N;-><init>()V

    iput-object p1, p0, LOi/r;->d:LRi/N;

    return-void
.end method

.method public static synthetic A(LOi/x;)Ljava/util/stream/Stream;
    .locals 0

    invoke-interface {p0}, LOi/x;->b()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(I)[Ljava/util/concurrent/CompletableFuture;
    .locals 0

    new-array p0, p0, [Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static synthetic F(LOi/u;)LRi/p$b;
    .locals 0

    iget-object p0, p0, LOi/u;->c:LRi/p$b;

    return-object p0
.end method

.method public static synthetic G(LEi/v;LOi/u;)V
    .locals 0

    invoke-virtual {p1, p0}, LOi/u;->c(LEi/v;)V

    return-void
.end method

.method public static synthetic H(LOi/u;)LQi/f;
    .locals 0

    iget-object p0, p0, LOi/u;->a:LQi/f;

    return-object p0
.end method

.method public static synthetic a(JLOi/u;)Z
    .locals 0

    invoke-static {p0, p1, p2}, LOi/r;->w(JLOi/u;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(LOi/r;LOi/u;)V
    .locals 0

    invoke-virtual {p0, p1}, LOi/r;->B(LOi/u;)V

    return-void
.end method

.method public static synthetic c(LOi/r;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, LOi/r;->E(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(LOi/r;II)Ljava/util/Optional;
    .locals 0

    invoke-virtual {p0, p1, p2}, LOi/r;->I(II)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(LOi/x;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, LOi/r;->A(LOi/x;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(LOi/u;)LRi/p$b;
    .locals 0

    invoke-static {p0}, LOi/r;->F(LOi/u;)LRi/p$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(LEi/v;LOi/u;)V
    .locals 0

    invoke-static {p0, p1}, LOi/r;->G(LEi/v;LOi/u;)V

    return-void
.end method

.method public static synthetic h(LOi/r;Ljava/util/concurrent/ExecutorService;LOi/u;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    invoke-virtual {p0, p1, p2}, LOi/r;->C(Ljava/util/concurrent/ExecutorService;LOi/u;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(LOi/v;)LRi/h;
    .locals 0

    invoke-static {p0}, LOi/r;->y(LOi/v;)LRi/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(LOi/u;)LQi/f;
    .locals 0

    invoke-static {p0}, LOi/r;->H(LOi/u;)LQi/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(LOi/u;)LOi/v;
    .locals 0

    invoke-static {p0}, LOi/r;->x(LOi/u;)LOi/v;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(I)[Ljava/util/concurrent/CompletableFuture;
    .locals 0

    invoke-static {p0}, LOi/r;->D(I)[Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(LOi/r;LOi/x;)V
    .locals 0

    invoke-virtual {p0, p1}, LOi/r;->L(LOi/x;)V

    return-void
.end method

.method public static synthetic n(LOi/r;LOi/u;)V
    .locals 0

    invoke-virtual {p0, p1}, LOi/r;->O(LOi/u;)V

    return-void
.end method

.method public static synthetic o(LOi/r;LQi/f;)V
    .locals 0

    invoke-virtual {p0, p1}, LOi/r;->z(LQi/f;)V

    return-void
.end method

.method public static synthetic w(JLOi/u;)Z
    .locals 0

    invoke-virtual {p2, p0, p1}, LOi/u;->g(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(LOi/u;)LOi/v;
    .locals 0

    iget-object p0, p0, LOi/u;->b:LOi/v;

    return-object p0
.end method

.method public static synthetic y(LOi/v;)LRi/h;
    .locals 0

    iget-object p0, p0, LOi/v;->a:LRi/h;

    return-object p0
.end method


# virtual methods
.method public final synthetic B(LOi/u;)V
    .locals 0

    invoke-virtual {p0, p1}, LOi/r;->O(LOi/u;)V

    return-void
.end method

.method public final synthetic C(Ljava/util/concurrent/ExecutorService;LOi/u;)Ljava/util/concurrent/CompletableFuture;
    .locals 1

    new-instance v0, LOi/d;

    invoke-direct {v0, p0, p2}, LOi/d;-><init>(LOi/r;LOi/u;)V

    invoke-static {v0, p1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic E(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, LOi/r;->U()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final I(II)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Optional<",
            "LRi/h;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LOi/r;->t(II)LOi/u;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LOi/o;

    invoke-direct {p2}, LOi/o;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LOi/p;

    invoke-direct {p2}, LOi/p;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final J(JJ)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    const/16 v0, 0x20

    shl-long/2addr p3, v0

    or-long/2addr p1, p3

    return-wide p1
.end method

.method public K()LEi/v;
    .locals 1

    iget-object v0, p0, LOi/r;->h:LEi/v;

    return-object v0
.end method

.method public final L(LOi/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    invoke-interface {p1}, LOi/x;->b()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, LOi/n;

    invoke-direct {v1, p1}, LOi/n;-><init>(LOi/x;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final M()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "LOi/u;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, LOi/r;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOi/b;

    invoke-direct {v1, p0}, LOi/b;-><init>(LOi/r;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOi/i;

    invoke-direct {v1}, LOi/i;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final N(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tiles",
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LOi/u;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LOi/j;

    invoke-direct {v0, p0, p2}, LOi/j;-><init>(LOi/r;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, LOi/k;

    invoke-direct {p2}, LOi/k;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance p2, LOi/l;

    invoke-direct {p2, p0}, LOi/l;-><init>(LOi/r;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final O(LOi/u;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tile"
        }
    .end annotation

    new-instance v0, LEi/x;

    invoke-direct {v0}, LEi/x;-><init>()V

    iget-object v1, p0, LOi/r;->a:LOi/s;

    iget v2, v1, LOi/s;->g:F

    iput v2, v0, LEi/x;->z:F

    iget-boolean v0, p0, LOi/r;->i:Z

    iget-object v2, p0, LOi/r;->b:LRi/p;

    iget-object v3, p0, LOi/r;->d:LRi/N;

    invoke-virtual {p1, v2, v1, v3}, LOi/u;->d(LRi/p;LOi/s;LRi/N;)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, LOi/r;->i:Z

    return-void
.end method

.method public final P(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LOi/u;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, LOi/c;

    invoke-direct {v0, p0}, LOi/c;-><init>(LOi/r;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, LOi/r;->U()Z

    move-result p1

    return p1
.end method

.method public Q()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LRi/p$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LOi/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOi/q;

    invoke-direct {v1}, LOi/q;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public R(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colliderId"
        }
    .end annotation

    iget-object v0, p0, LOi/r;->f:Ljava/util/Queue;

    new-instance v1, LOi/w;

    invoke-virtual {p0, p1, p2}, LOi/r;->v(J)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, LOi/w;-><init>(JLjava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public S(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, LOi/r;->M()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LOi/r;->N(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public T()Z
    .locals 1

    invoke-virtual {p0}, LOi/r;->M()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, LOi/r;->P(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final U()Z
    .locals 4

    iget-boolean v0, p0, LOi/r;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, LEi/v;

    iget-object v2, p0, LOi/r;->e:LEi/y;

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, LEi/v;-><init>(LEi/y;I)V

    iget-object v2, p0, LOi/r;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, LOi/e;

    invoke-direct {v3, v0}, LOi/e;-><init>(LEi/v;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iput-object v0, p0, LOi/r;->h:LEi/v;

    iput-boolean v1, p0, LOi/r;->i:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public V()LOi/y;
    .locals 5

    new-instance v0, LOi/y;

    iget-object v1, p0, LOi/r;->e:LEi/y;

    iget-object v2, v1, LEi/y;->a:[F

    iget v3, v1, LEi/y;->b:F

    iget v1, v1, LEi/y;->c:F

    new-instance v4, LOi/g;

    invoke-direct {v4, p0}, LOi/g;-><init>(LOi/r;)V

    invoke-direct {v0, v2, v3, v1, v4}, LOi/y;-><init>([FFFLjava/util/function/BiFunction;)V

    return-object v0
.end method

.method public W()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LQi/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LOi/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOi/m;

    invoke-direct {v1}, LOi/m;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public p(LPi/d;)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collider"
        }
    .end annotation

    iget-object v0, p0, LOi/r;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object v2, p0, LOi/r;->f:Ljava/util/Queue;

    new-instance v3, LOi/a;

    invoke-interface {p1}, LPi/d;->a()[F

    move-result-object v4

    invoke-virtual {p0, v4}, LOi/r;->u([F)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v0, v1, p1, v4}, LOi/a;-><init>(JLPi/d;Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-wide v0
.end method

.method public q(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, LOi/r;->M()Ljava/util/Collection;

    iget-object v0, p0, LOi/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LOi/r;->N(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public r()V
    .locals 1

    invoke-virtual {p0}, LOi/r;->M()Ljava/util/Collection;

    iget-object v0, p0, LOi/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, LOi/r;->P(Ljava/util/Collection;)Z

    return-void
.end method

.method public final s()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOi/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, LOi/r;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOi/x;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final t(II)LOi/u;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    iget-object v0, p0, LOi/r;->c:Ljava/util/Map;

    int-to-long v1, p1

    int-to-long p1, p2

    invoke-virtual {p0, v1, v2, p1, p2}, LOi/r;->J(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOi/u;

    return-object p1
.end method

.method public final u([F)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/Collection<",
            "LOi/u;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, LOi/r;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, LOi/r;->e:LEi/y;

    iget-object v3, v2, LEi/y;->a:[F

    aget v3, v3, v0

    sub-float/2addr v1, v3

    iget v2, v2, LEi/y;->b:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x2

    aget v3, p1, v2

    iget-object v4, p0, LOi/r;->e:LEi/y;

    iget-object v5, v4, LEi/y;->a:[F

    aget v5, v5, v2

    sub-float/2addr v3, v5

    iget v4, v4, LEi/y;->c:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    iget-object v5, p0, LOi/r;->e:LEi/y;

    iget-object v6, v5, LEi/y;->a:[F

    aget v0, v6, v0

    sub-float/2addr v4, v0

    iget v0, v5, LEi/y;->b:F

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    const/4 v4, 0x5

    aget p1, p1, v4

    iget-object v4, p0, LOi/r;->e:LEi/y;

    iget-object v5, v4, LEi/y;->a:[F

    aget v2, v5, v2

    sub-float/2addr p1, v2

    iget v2, v4, LEi/y;->c:F

    div-float/2addr p1, v2

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v3, p1, :cond_3

    move v4, v1

    :goto_1
    if-gt v4, v0, :cond_2

    invoke-virtual {p0, v4, v3}, LOi/r;->t(II)LOi/u;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public final v(J)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection<",
            "LOi/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LOi/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOi/h;

    invoke-direct {v1, p1, p2}, LOi/h;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final synthetic z(LQi/f;)V
    .locals 5

    iget-object v0, p0, LOi/r;->c:Ljava/util/Map;

    iget v1, p1, LQi/f;->a:I

    int-to-long v1, v1

    iget v3, p1, LQi/f;->b:I

    int-to-long v3, v3

    invoke-virtual {p0, v1, v2, v3, v4}, LOi/r;->J(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, LOi/u;

    invoke-direct {v2, p1}, LOi/u;-><init>(LQi/f;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
