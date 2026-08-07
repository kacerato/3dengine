.class public Lid/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/Integer;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/util/concurrent/ExecutorService;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lid/n;->d:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lid/n;->a:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lid/n;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid/n;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threads"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lid/n;->a:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lid/n;->b:Ljava/util/concurrent/ExecutorService;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lid/n;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lid/p;Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lid/n;->w(Lid/p;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic b(Lid/p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lid/n;->z(Lid/p;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lid/n;IILjava/util/List;Lid/p;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lid/n;->u(IILjava/util/List;Lid/p;)V

    return-void
.end method

.method public static synthetic d(Lid/n;Lid/p;Ljava/util/List;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lid/n;->t(Lid/p;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic e(Lid/n;Lid/p;Lid/o;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lid/n;->B(Lid/p;Lid/o;I)V

    return-void
.end method

.method public static synthetic f([Ljava/lang/Object;Lid/p;Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lid/n;->q([Ljava/lang/Object;Lid/p;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic g(Lid/p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lid/n;->p(Lid/p;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lid/n;ILjava/util/List;[Ljava/lang/Object;Lid/p;I)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lid/n;->s(ILjava/util/List;[Ljava/lang/Object;Lid/p;I)V

    return-void
.end method

.method public static synthetic i(Lid/n;Lid/p;Lid/o;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lid/n;->A(Lid/p;Lid/o;I)V

    return-void
.end method

.method public static synthetic j(Lid/n;ILjava/util/List;Lid/p;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lid/n;->y(ILjava/util/List;Lid/p;I)V

    return-void
.end method

.method public static synthetic k(Lid/n;ILjava/util/List;Lid/p;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lid/n;->v(ILjava/util/List;Lid/p;I)V

    return-void
.end method

.method public static synthetic l(IILjava/util/List;[Ljava/lang/Object;Lid/p;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lid/n;->r(IILjava/util/List;[Ljava/lang/Object;Lid/p;)V

    return-void
.end method

.method public static synthetic m(IILjava/util/List;Lid/p;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lid/n;->x(IILjava/util/List;Lid/p;)V

    return-void
.end method

.method public static synthetic p(Lid/p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lid/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q([Ljava/lang/Object;Lid/p;Ljava/util/List;I)V
    .locals 0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lid/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p3

    return-void
.end method

.method public static synthetic r(IILjava/util/List;[Ljava/lang/Object;Lid/p;)V
    .locals 1

    mul-int/2addr p0, p1

    add-int/2addr p1, p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    invoke-static {p0, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance p1, Lid/l;

    invoke-direct {p1, p3, p4, p2}, Lid/l;-><init>([Ljava/lang/Object;Lid/p;Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static synthetic w(Lid/p;Ljava/util/List;I)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lid/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic x(IILjava/util/List;Lid/p;)V
    .locals 1

    mul-int/2addr p0, p1

    add-int/2addr p1, p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    invoke-static {p0, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance p1, Lid/f;

    invoke-direct {p1, p3, p2}, Lid/f;-><init>(Lid/p;Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static synthetic z(Lid/p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lid/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic A(Lid/p;Lid/o;I)V
    .locals 0

    invoke-virtual {p2, p3}, Lid/o;->j(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lid/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lid/n;->c:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lid/n;->c:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final synthetic B(Lid/p;Lid/o;I)V
    .locals 2

    iget-object v0, p0, Lid/n;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lid/m;

    invoke-direct {v1, p0, p1, p2, p3}, Lid/m;-><init>(Lid/n;Lid/p;Lid/o;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public C(Ljava/util/List;Lid/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputList",
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lid/p<",
            "TT;TE;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lid/b;

    invoke-direct {v0, p2}, Lid/b;-><init>(Lid/p;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lid/n;->c:Ljava/util/List;

    return-void
.end method

.method public D(Ljava/util/List;Lid/p;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputList",
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lid/p<",
            "TT;TE;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v7

    new-instance v8, Lid/g;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lid/g;-><init>(Lid/n;ILjava/util/List;[Ljava/lang/Object;Lid/p;)V

    invoke-interface {v7, v8}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    invoke-virtual {p0}, Lid/n;->J()V

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lid/n;->c:Ljava/util/List;

    return-void
.end method

.method public E(Ljava/util/List;Lid/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputList",
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lid/p<",
            "TT;TE;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lid/n;->c:Ljava/util/List;

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lid/d;

    invoke-direct {v2, p0, v0, p1, p2}, Lid/d;-><init>(Lid/n;ILjava/util/List;Lid/p;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public F(Ljava/util/List;Lid/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputList",
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lid/p<",
            "TT;TE;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lid/j;

    invoke-direct {v2, p0, v0, p1, p2}, Lid/j;-><init>(Lid/n;ILjava/util/List;Lid/p;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public G(Ljava/util/List;Lid/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputList",
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lid/p<",
            "TT;TE;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lid/c;

    invoke-direct {v0, p2}, Lid/c;-><init>(Lid/p;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lid/n;->c:Ljava/util/List;

    return-void
.end method

.method public H(Ljava/util/List;Lid/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputList",
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lid/p<",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TE;>;>;)V"
        }
    .end annotation

    new-instance v0, Lid/o;

    iget-object v1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lid/o;-><init>(Ljava/util/List;I)V

    iget-object p1, p0, Lid/n;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v1, Lid/i;

    invoke-direct {v1, p0, p2, v0}, Lid/i;-><init>(Lid/n;Lid/p;Lid/o;)V

    invoke-interface {p1, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public I(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numThreads"
        }
    .end annotation

    iput-object p1, p0, Lid/n;->a:Ljava/lang/Integer;

    return-void
.end method

.method public J()V
    .locals 4

    iget-object v0, p0, Lid/n;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :try_start_0
    iget-object v0, p0, Lid/n;->b:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lid/n;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public K()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lid/n;->b:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lid/n;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public n()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lid/n;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lid/n;->c:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic s(ILjava/util/List;[Ljava/lang/Object;Lid/p;I)V
    .locals 8

    iget-object v0, p0, Lid/n;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lid/h;

    move-object v1, v7

    move v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lid/h;-><init>(IILjava/util/List;[Ljava/lang/Object;Lid/p;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic t(Lid/p;Ljava/util/List;I)V
    .locals 1

    iget-object v0, p0, Lid/n;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lid/p;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic u(IILjava/util/List;Lid/p;)V
    .locals 1

    mul-int/2addr p1, p2

    add-int/2addr p2, p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-le p1, p2, :cond_0

    move p1, p2

    :cond_0
    invoke-static {p1, p2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance p2, Lid/k;

    invoke-direct {p2, p0, p4, p3}, Lid/k;-><init>(Lid/n;Lid/p;Ljava/util/List;)V

    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic v(ILjava/util/List;Lid/p;I)V
    .locals 8

    iget-object v0, p0, Lid/n;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lid/a;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lid/a;-><init>(Lid/n;IILjava/util/List;Lid/p;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic y(ILjava/util/List;Lid/p;I)V
    .locals 2

    iget-object v0, p0, Lid/n;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lid/e;

    invoke-direct {v1, p4, p1, p2, p3}, Lid/e;-><init>(IILjava/util/List;Lid/p;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
