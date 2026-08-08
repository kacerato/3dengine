.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;
.super Ljava/lang/Object;
.source "NoCodeFlowRuntime.java"

# static fields
.field private static final gates:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final multiGates:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;",
            ">;>;"
        }
    .end annotation
.end field

# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->gates:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->multiGates:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mapFor(Ljava/util/WeakHashMap;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)Ljava/util/Map;
    .locals 2

    if-eqz p1, :cond_none

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_ready

    if-eqz p2, :cond_ready

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ready
    return-object v0

    :cond_none
    const/4 v0, 0x0

    return-object v0
.end method

.method private static validNodeId(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_fail

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fail

    const/4 v0, 0x1

    return v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method

# virtual methods
.method public static cancelCurrent(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Z
    .locals 1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->current(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    move-result-object v0

    if-eqz v0, :cond_fail

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->cancel()V

    const/4 v0, 0x1

    return v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method

.method public static canContinue(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Z
    .locals 1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->current(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    move-result-object v0

    if-eqz v0, :cond_yes

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_no

    :cond_yes
    const/4 v0, 0x1

    return v0

    :cond_no
    const/4 v0, 0x0

    return v0
.end method

.method public static synchronized clear(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 1

    if-eqz p0, :cond_done

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->gates:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->multiGates:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_done
    return-void
.end method

.method public static synchronized gate(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;
    .locals 3

    if-eqz p0, :cond_none

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->validNodeId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_none

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->gates:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->mapFor(Ljava/util/WeakHashMap;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;

    if-nez v1, :cond_ready

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;

    invoke-direct {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;-><init>(Z)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ready
    return-object v1

    :cond_none
    const/4 v2, 0x0

    return-object v2
.end method

.method public static synchronized multiGate(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;
    .locals 3

    if-eqz p0, :cond_none

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->validNodeId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_none

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->multiGates:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->mapFor(Ljava/util/WeakHashMap;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;

    if-nez v1, :cond_ready

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ready
    return-object v1

    :cond_none
    const/4 v2, 0x0

    return-object v2
.end method
