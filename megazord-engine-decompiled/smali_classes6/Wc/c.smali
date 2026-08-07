.class public LWc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/concurrent/ExecutorService;

.field public static final i:Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/jme3/bullet/PhysicsSpace;

.field public d:Lcom/itsmagic/engine/Engines/Engine/World/World;

.field public final e:Lbd/a;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "bulletjme"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, LWc/c$a;

    invoke-direct {v8}, LWc/c$a;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, LWc/c;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LWc/c;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LWc/c;->a:I

    new-instance v0, Lbd/a;

    const/4 v1, 0x1

    const-string v2, "pe:latchUpdate"

    invoke-direct {v0, v1, v2}, Lbd/a;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, LWc/c;->e:Lbd/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LWc/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, LWc/c$b;

    invoke-direct {v0, p0}, LWc/c$b;-><init>(LWc/c;)V

    iput-object v0, p0, LWc/c;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(LWc/c;)Lcom/itsmagic/engine/Engines/Engine/World/World;
    .locals 0

    iget-object p0, p0, LWc/c;->d:Lcom/itsmagic/engine/Engines/Engine/World/World;

    return-object p0
.end method

.method public static synthetic b(LWc/c;)Lbd/a;
    .locals 0

    iget-object p0, p0, LWc/c;->e:Lbd/a;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    sget-object v0, LWc/c;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LWc/c$c;

    invoke-direct {v1, p0}, LWc/c$c;-><init>(LWc/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 4

    invoke-static {}, Lu8/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lu8/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lz9/a;

    invoke-static {v0}, Lj9/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v2, Lz9/a;

    invoke-interface {v2}, Lz9/a;->isActiveForPhysics()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lz9/a;->resyncOnFrame()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->b0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, LWc/c;->d:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object p1, p0, LWc/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LWc/c;->e:Lbd/a;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    sget-object p1, LWc/c;->h:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, LWc/c;->g:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, LWc/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LWc/c;->e:Lbd/a;

    invoke-virtual {v0}, Lbd/a;->a()V

    iget-object v0, p0, LWc/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
