.class public Lcom/itsmagic/engine/Engines/Engine/GC/SGC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbd/p;
.end annotation


# static fields
.field private static final ARRAY_CHUNKS:I = 0x1388

.field private static ASYNC_TO_DELETE_REFERENCES:Ljava/util/List; = null
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final BLOCK:Ljava/lang/Object;

.field private static final DESTROY_MAP:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lea/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final REFERENCES:Ljava/util/List;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFERENCES_BY_GUIDHASH:Lye/X;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/X<",
            "Lea/c;",
            ">;"
        }
    .end annotation
.end field

.field private static SYNC_TO_DELETE_REFERENCES:Ljava/util/List; = null
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOTAL_FRAMES_TO_CLEAR_EVERYTHING:I = 0x78

.field private static volatile concreteCount:I

.field private static volatile deadCount:I

.field private static localAsyncItems:Ljava/util/List;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/c;",
            ">;"
        }
    .end annotation
.end field

.field private static localSyncItems:Ljava/util/List;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final snapShot:Ljava/util/List;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    new-instance v0, Lye/X;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lye/X;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES_BY_GUIDHASH:Lye/X;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->SYNC_TO_DELETE_REFERENCES:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->ASYNC_TO_DELETE_REFERENCES:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->snapShot:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    const/4 v0, 0x0

    sput v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->concreteCount:I

    sput v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->deadCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureConcreteCountByTypeSimpleName(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lea/c;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lea/c;->a()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v4, 0x1

    if-nez v2, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "out map can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static copyReferencesNoAlloc(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/c;",
            ">;",
            "Ljava/util/List<",
            "Lea/c;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lea/c;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static destroyImmediate(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "referencedObject"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    instance-of v1, p0, Lbd/m;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Lbd/m;

    invoke-virtual {v1}, Lbd/m;->getLongId()J

    move-result-wide v4

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES_BY_GUIDHASH:Lye/X;

    invoke-virtual {v1, v4, v5}, Lye/X;->e(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lea/c;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lea/c;->a()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_4

    invoke-static {}, Lc9/a;->q()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Lea/c;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Trying to destroy async an object marked with can destroy async = false"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lea/c;->f()J

    move-result-wide v4

    iget-object p0, v1, Lea/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->unregisterDestroyListeners(Lea/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lea/c;->d()Lea/b;

    move-result-object p0

    invoke-interface {p0, v4, v5}, Lea/b;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v2, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v1}, Lea/c;->b()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->notifyDestroyListeners(Ljava/lang/Class;J)V

    goto :goto_2

    :cond_2
    throw p0

    :cond_3
    :goto_2
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->removeReferenceFromReferences(Lea/c;)V

    monitor-exit v0

    return-void

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "HASH COLLISION"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move v1, v3

    :goto_3
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lea/c;

    invoke-virtual {v4}, Lea/c;->a()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_a

    invoke-static {}, Lc9/a;->q()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v4}, Lea/c;->h()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Trying to destroy async an object marked with can destroy async = false"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    invoke-virtual {v4}, Lea/c;->f()J

    move-result-wide v5

    iget-object p0, v4, Lea/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->unregisterDestroyListeners(Lea/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Lea/c;->d()Lea/b;

    move-result-object p0

    invoke-interface {p0, v5, v6}, Lea/b;->a(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v4}, Lea/c;->b()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->notifyDestroyListeners(Ljava/lang/Class;J)V

    goto :goto_6

    :cond_8
    throw p0

    :cond_9
    :goto_6
    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->removeReferenceFromReferences(Lea/c;)V

    iget-boolean p0, v4, Lea/c;->i:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES_BY_GUIDHASH:Lye/X;

    invoke-virtual {v4}, Lea/c;->e()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lye/X;->e(J)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    :goto_7
    monitor-exit v0

    return-void

    :goto_8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static getConcreteCount()I
    .locals 1

    sget v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->concreteCount:I

    return v0
.end method

.method public static getConcreteCountByTypeSimpleName()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->captureConcreteCountByTypeSimpleName(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getDeadCount()I
    .locals 1

    sget v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->deadCount:I

    return v0
.end method

.method public static lpUpdate()V
    .locals 7

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->ASYNC_TO_DELETE_REFERENCES:Ljava/util/List;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Ljava/util/List;

    sput-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->ASYNC_TO_DELETE_REFERENCES:Ljava/util/List;

    sput-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lea/c;

    invoke-virtual {v2}, Lea/c;->f()J

    move-result-wide v3

    iget-object v5, v2, Lea/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->unregisterDestroyListeners(Lea/c;)V

    :try_start_1
    invoke-virtual {v2}, Lea/c;->d()Lea/b;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lea/b;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v6, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    invoke-virtual {v2}, Lea/c;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->notifyDestroyListeners(Ljava/lang/Class;J)V

    goto :goto_2

    :cond_0
    throw v5

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->snapShot:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->copyReferencesNoAlloc(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->concreteCount:I

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localAsyncItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->deadCount:I

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->snapShot:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lea/c;

    invoke-virtual {v1}, Lea/c;->j()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->removeReferenceFromReferences(Lea/c;)V

    iget-boolean v3, v1, Lea/c;->i:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES_BY_GUIDHASH:Lye/X;

    invoke-virtual {v1}, Lea/c;->e()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lye/X;->e(J)Ljava/lang/Object;

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_3
    :goto_4
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->unregisterDestroyListeners(Lea/c;)V

    invoke-virtual {v1}, Lea/c;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->ASYNC_TO_DELETE_REFERENCES:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->SYNC_TO_DELETE_REFERENCES:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    monitor-exit v2

    goto :goto_7

    :goto_6
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private static notifyDestroyListeners(Ljava/lang/Class;J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "destroyedClass",
            "pointer"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lea/d;

    iget-object v4, v3, Lea/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lea/a;

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->removeRegisteredDestroyListener(Lea/d;)V

    goto :goto_1

    :cond_1
    iget-object v5, v3, Lea/d;->a:Lea/c;

    iget-object v5, v5, Lea/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lea/d;->a:Lea/c;

    invoke-virtual {v3}, Lea/c;->j()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, p1, p2}, Lea/a;->b(J)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static put(Ljava/lang/Object;JLea/b;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "referencedObject",
            "pointer",
            "destroyer",
            "canDestroyAsync"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;->getDestroyListeners()[Lea/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lea/a;->a()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v9, v1

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lea/c;

    move-object v3, v2

    move-object v4, p0

    move-wide v5, p1

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v9}, Lea/c;-><init>(Ljava/lang/Object;JLea/b;Z[Ljava/lang/Class;)V

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, v2, Lea/c;->j:I

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of p1, p0, Lbd/m;

    if-eqz p1, :cond_2

    check-cast p0, Lbd/m;

    invoke-virtual {p0}, Lbd/m;->getLongId()J

    move-result-wide p0

    const/4 p2, 0x1

    iput-boolean p2, v2, Lea/c;->i:Z

    iput-wide p0, v2, Lea/c;->h:J

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES_BY_GUIDHASH:Lye/X;

    invoke-virtual {p2, p0, p1, v2}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-static {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->registerDestroyListeners(Lea/c;[Lea/a;)V

    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static registerDestroyListeners(Lea/c;[Lea/a;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "listeners"
        }
    .end annotation

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lea/d;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v6, p1, v2

    invoke-virtual {v6}, Lea/a;->a()Ljava/lang/Class;

    move-result-object v7

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x1388

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v3, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :goto_1
    new-instance v10, Lea/d;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    move-object v4, v10

    move-object v5, p0

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lea/d;-><init>(Lea/c;Lea/a;Ljava/lang/Class;Ljava/util/List;I)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput-object v10, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lea/c;->i([Lea/d;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method private static removeReferenceFromReferences(Lea/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lea/c;->j:I

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ltz v0, :cond_1

    if-gt v0, v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_4

    :cond_1
    move v0, v2

    :goto_0
    if-ltz v0, :cond_3

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_1
    if-gez v0, :cond_4

    iput v3, p0, Lea/c;->j:I

    return-void

    :cond_4
    if-eq v0, v2, :cond_5

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lea/c;

    invoke-interface {v1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput v0, v4, Lea/c;->j:I

    :cond_5
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->REFERENCES:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput v3, p0, Lea/c;->j:I

    return-void
.end method

.method private static removeRegisteredDestroyListener(Lea/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registered"
        }
    .end annotation

    if-eqz p0, :cond_6

    iget-object v0, p0, Lea/d;->d:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Lea/d;->e:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ltz v1, :cond_1

    if-gt v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p0, :cond_4

    :cond_1
    move v1, v2

    :goto_0
    if-ltz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_1
    if-gez v1, :cond_4

    iput-object v3, p0, Lea/d;->d:Ljava/util/List;

    iput v4, p0, Lea/d;->e:I

    return-void

    :cond_4
    if-eq v1, v2, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lea/d;

    invoke-interface {v0, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput v1, v5, Lea/d;->e:I

    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v3, p0, Lea/d;->d:Ljava/util/List;

    iput v4, p0, Lea/d;->e:I

    :cond_6
    :goto_2
    return-void
.end method

.method private static unregisterDestroyListeners(Lea/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    invoke-virtual {p0}, Lea/c;->g()[Lea/d;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lea/d;->c:Ljava/lang/Class;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->DESTROY_MAP:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    aput-object v6, p0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->removeRegisteredDestroyListener(Lea/d;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    aput-object v6, p0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method public static update()V
    .locals 9

    invoke-static {}, LI6/d;->D1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SGC update"

    invoke-static {v0}, LI6/d;->K1(Ljava/lang/String;)LI6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->BLOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->SYNC_TO_DELETE_REFERENCES:Ljava/util/List;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Ljava/util/List;

    sput-object v3, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->SYNC_TO_DELETE_REFERENCES:Ljava/util/List;

    sput-object v2, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Ljava/util/List;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x78

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lgd/b;->N(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-ge v3, v1, :cond_3

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->localSyncItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lea/c;

    invoke-virtual {v4}, Lea/c;->f()J

    move-result-wide v7

    iget-object v5, v4, Lea/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->unregisterDestroyListeners(Lea/c;)V

    :try_start_1
    invoke-virtual {v4}, Lea/c;->d()Lea/b;

    move-result-object v5

    invoke-interface {v5, v7, v8}, Lea/b;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v6, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_2
    invoke-virtual {v4}, Lea/c;->b()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->notifyDestroyListeners(Ljava/lang/Class;J)V

    goto :goto_3

    :cond_1
    throw v5

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0}, LI6/d;->I1(LI6/g;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
