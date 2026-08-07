.class public final Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbd/p;
.end annotation


# static fields
.field private static final PRE_ALLOC:I = 0x64


# instance fields
.field private final freePool:Lye/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/O<",
            "Ljava/util/ArrayList<",
            "[F>;>;"
        }
    .end annotation
.end field

.field private final preAllocs:Lye/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/O<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final usedPool:Lye/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/O<",
            "Ljava/util/ArrayList<",
            "[F>;>;"
        }
    .end annotation
.end field

.field private final usedSizes:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "[F",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lye/O;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lye/O;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->preAllocs:Lye/O;

    new-instance v0, Lye/O;

    invoke-direct {v0, v1}, Lye/O;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->freePool:Lye/O;

    new-instance v0, Lye/O;

    invoke-direct {v0, v1}, Lye/O;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->usedPool:Lye/O;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->usedSizes:Ljava/util/IdentityHashMap;

    return-void
.end method

.method private getListOfNoLock(ILye/O;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "pool"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lye/O<",
            "Ljava/util/ArrayList<",
            "[F>;>;)",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lye/O;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->preAllocs:Lye/O;

    invoke-virtual {v0, p1}, Lye/O;->K(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->preAllocs:Lye/O;

    invoke-virtual {v0, p1}, Lye/O;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2, p1, v1}, Lye/O;->Db(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private static removeSwapLastByIdentity(Ljava/util/ArrayList;[F)Z
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
            "Ljava/util/ArrayList<",
            "[F>;[F)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized acquire(I)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->freePool:Lye/O;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->getListOfNoLock(ILye/O;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-array v0, p1, [F

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->usedPool:Lye/O;

    invoke-direct {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->getListOfNoLock(ILye/O;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->usedSizes:Ljava/util/IdentityHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized acquireZeroFill(I)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->acquire(I)[F

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->freePool:Lye/O;

    invoke-virtual {v0}, Lye/O;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->usedPool:Lye/O;

    invoke-virtual {v0}, Lye/O;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->usedSizes:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized freeCount(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->freePool:Lye/O;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->getListOfNoLock(ILye/O;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized release([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->usedSizes:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->usedPool:Lye/O;

    invoke-direct {p0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->getListOfNoLock(ILye/O;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->removeSwapLastByIdentity(Ljava/util/ArrayList;[F)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->freePool:Lye/O;

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->getListOfNoLock(ILye/O;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->usedSizes:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized setPreAlloc(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "count"
        }
    .end annotation

    monitor-enter p0

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->preAllocs:Lye/O;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lye/O;->Db(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized usedCount(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->usedPool:Lye/O;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformMiniFloatArrayJP;->getListOfNoLock(ILye/O;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
