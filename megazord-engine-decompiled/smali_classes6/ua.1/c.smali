.class public Lua/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lua/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lua/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lua/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:LDb/e;

.field public static final g:LJAVARuntime/AtomicFloat;

.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation
.end field

.field public static i:I

.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lua/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lua/c;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lua/c;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lua/c;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lua/c;->e:Ljava/util/List;

    new-instance v0, LDb/e;

    invoke-direct {v0}, LDb/e;-><init>()V

    sput-object v0, Lua/c;->f:LDb/e;

    new-instance v0, LJAVARuntime/AtomicFloat;

    invoke-direct {v0}, LJAVARuntime/AtomicFloat;-><init>()V

    sput-object v0, Lua/c;->g:LJAVARuntime/AtomicFloat;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lua/c;->h:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lua/c;->i:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lua/c;->j:Ljava/util/List;

    sput v0, Lua/c;->i:I

    new-instance v0, Lua/b;

    invoke-direct {v0}, Lua/b;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lua/c$a;

    invoke-direct {v0}, Lua/c$a;-><init>()V

    sput-object v0, Lua/c;->k:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()LDb/e;
    .locals 1

    sget-object v0, Lua/c;->f:LDb/e;

    return-object v0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lua/c;->j:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c()LJAVARuntime/AtomicFloat;
    .locals 1

    sget-object v0, Lua/c;->g:LJAVARuntime/AtomicFloat;

    return-object v0
.end method

.method public static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lua/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic e()I
    .locals 1

    sget v0, Lua/c;->i:I

    return v0
.end method

.method public static synthetic f(I)I
    .locals 0

    sput p0, Lua/c;->i:I

    return p0
.end method

.method public static synthetic g()I
    .locals 2

    sget v0, Lua/c;->i:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lua/c;->i:I

    return v0
.end method

.method public static synthetic h()Ljava/util/List;
    .locals 1

    sget-object v0, Lua/c;->d:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic i()Ljava/util/List;
    .locals 1

    sget-object v0, Lua/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic j(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lua/c;->p(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k()Ljava/util/List;
    .locals 1

    sget-object v0, Lua/c;->e:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic l(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lua/c;->t(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m()Ljava/util/List;
    .locals 1

    sget-object v0, Lua/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic n()Ljava/util/List;
    .locals 1

    sget-object v0, Lua/c;->h:Ljava/util/List;

    return-object v0
.end method

.method public static o(Lua/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lpTask"
        }
    .end annotation

    sget-object v0, Lua/c;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static p(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "destination",
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static q(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static r()F
    .locals 2

    sget-object v0, Lua/c;->g:LJAVARuntime/AtomicFloat;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->floatValue()F

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static s()V
    .locals 2

    sget-object v0, Lua/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lua/c;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v1, Lua/c;->e:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static t(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "destination",
            "itemsToRemove"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lua/c;->q(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static u(Lua/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lpTask"
        }
    .end annotation

    sget-object v0, Lua/c;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static v(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    sget-object v0, Lua/c;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static w()V
    .locals 3

    sget-object v0, Lua/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lua/c;->h:Ljava/util/List;

    invoke-static {v0}, Lj9/f;->i(Ljava/util/List;)V

    sget-object v0, Lua/c;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lga/b;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
