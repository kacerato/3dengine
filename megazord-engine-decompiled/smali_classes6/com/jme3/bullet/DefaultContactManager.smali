.class public Lcom/jme3/bullet/DefaultContactManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/ContactManager;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final invokeEnded:I = 0x2

.field private static final invokeProcessed:I = 0x10

.field private static final invokeStarted:I = 0x80

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private doEnded:Z

.field private doProcessed:Z

.field private doStarted:Z

.field private final immediateListenerFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final immediateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/ContactListener;",
            ">;"
        }
    .end annotation
.end field

.field private final ongoingEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final ongoingListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final space:Lcom/jme3/bullet/PhysicsSpace;

.field private final startedEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final startedListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/DefaultContactManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/DefaultContactManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/DefaultContactManager;->doEnded:Z

    iput-boolean v0, p0, Lcom/jme3/bullet/DefaultContactManager;->doProcessed:Z

    iput-boolean v0, p0, Lcom/jme3/bullet/DefaultContactManager;->doStarted:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->ongoingListeners:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->startedListeners:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v2, 0x63

    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->ongoingEvents:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->startedEvents:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListenerFlags:Ljava/util/List;

    const-string v0, "space"

    invoke-static {p1, v0}, LAf/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/DefaultContactManager;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method private updateFlags()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListenerFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/jme3/bullet/DefaultContactManager;->doEnded:Z

    and-int/lit8 v0, v2, 0x10

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->ongoingListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/jme3/bullet/DefaultContactManager;->doProcessed:Z

    and-int/lit16 v0, v2, 0x80

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->startedListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    iput-boolean v1, p0, Lcom/jme3/bullet/DefaultContactManager;->doStarted:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized addCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, LAf/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->startedListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/bullet/DefaultContactManager;->doStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addContactListener(Lcom/jme3/bullet/collision/ContactListener;ZZZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, LAf/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz p3, :cond_1

    const/16 v1, 0x10

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    or-int/2addr v0, v1

    if-eqz p4, :cond_2

    const/16 p1, 0x80

    :cond_2
    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListenerFlags:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    if-eqz p2, :cond_3

    iput-boolean p1, p0, Lcom/jme3/bullet/DefaultContactManager;->doEnded:Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    iput-boolean p1, p0, Lcom/jme3/bullet/DefaultContactManager;->doProcessed:Z

    :cond_4
    if-eqz p4, :cond_5

    iput-boolean p1, p0, Lcom/jme3/bullet/DefaultContactManager;->doStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addOngoingCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, LAf/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->ongoingListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/bullet/DefaultContactManager;->doProcessed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized countCollisionListeners()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->ongoingListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/DefaultContactManager;->startedListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized distributeEvents()V
    .locals 3

    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->startedEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->startedEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;

    iget-object v1, p0, Lcom/jme3/bullet/DefaultContactManager;->startedListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/collision/PhysicsCollisionListener;

    invoke-interface {v2, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionListener;->collision(Lcom/jme3/bullet/collision/PhysicsCollisionEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->ongoingEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->ongoingEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;

    iget-object v1, p0, Lcom/jme3/bullet/DefaultContactManager;->ongoingListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/collision/PhysicsCollisionListener;

    invoke-interface {v2, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionListener;->collision(Lcom/jme3/bullet/collision/PhysicsCollisionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onContactEnded(J)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListenerFlags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/collision/ContactListener;

    invoke-interface {v2, p1, p2}, Lcom/jme3/bullet/collision/ContactListener;->onContactEnded(J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onContactProcessed(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;J)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListenerFlags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/collision/ContactListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/jme3/bullet/collision/ContactListener;->onContactProcessed(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->ongoingListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;-><init>(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;J)V

    iget-object p1, p0, Lcom/jme3/bullet/DefaultContactManager;->ongoingEvents:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onContactStarted(J)V
    .locals 7

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListenerFlags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/ContactListener;

    invoke-interface {v3, p1, p2}, Lcom/jme3/bullet/collision/ContactListener;->onContactStarted(J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->startedListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p1, p2}, Lcom/jme3/bullet/collision/PersistentManifolds;->countPoints(J)I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {p1, p2}, Lcom/jme3/bullet/collision/PersistentManifolds;->getBodyAId(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->findInstance(J)Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/jme3/bullet/collision/PersistentManifolds;->getBodyBId(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->findInstance(J)Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v3

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-static {p1, p2, v1}, Lcom/jme3/bullet/collision/PersistentManifolds;->getPointId(JI)J

    move-result-wide v4

    new-instance v6, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/jme3/bullet/collision/PhysicsCollisionEvent;-><init>(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;J)V

    iget-object v4, p0, Lcom/jme3/bullet/DefaultContactManager;->startedEvents:Ljava/util/Deque;

    invoke-interface {v4, v6}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public declared-synchronized removeCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, LAf/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->startedListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/jme3/bullet/DefaultContactManager;->updateFlags()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeContactListener(Lcom/jme3/bullet/collision/ContactListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, LAf/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->immediateListenerFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/jme3/bullet/DefaultContactManager;->updateFlags()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeOngoingCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, LAf/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->ongoingListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/jme3/bullet/DefaultContactManager;->updateFlags()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public update(FI)V
    .locals 6

    iget-object v0, p0, Lcom/jme3/bullet/DefaultContactManager;->space:Lcom/jme3/bullet/PhysicsSpace;

    iget-boolean v3, p0, Lcom/jme3/bullet/DefaultContactManager;->doEnded:Z

    iget-boolean v4, p0, Lcom/jme3/bullet/DefaultContactManager;->doProcessed:Z

    iget-boolean v5, p0, Lcom/jme3/bullet/DefaultContactManager;->doStarted:Z

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/bullet/PhysicsSpace;->update(FIZZZ)V

    return-void
.end method
