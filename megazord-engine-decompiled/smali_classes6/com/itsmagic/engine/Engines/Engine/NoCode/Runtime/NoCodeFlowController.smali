.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowController;
.super Ljava/lang/Object;
.source "NoCodeFlowController.java"

# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static gateState(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;
    .locals 2

    if-eqz p0, :cond_none

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_none

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->gate(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;

    move-result-object v0

    return-object v0

    :cond_none
    const/4 v0, 0x0

    return-object v0
.end method

.method private static multiGateState(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;
    .locals 2

    if-eqz p0, :cond_none

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_none

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->multiGate(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;

    move-result-object v0

    return-object v0

    :cond_none
    const/4 v0, 0x0

    return-object v0
.end method

# virtual methods
.method public static gateClose(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Z)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowController;->gateState(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;

    move-result-object v0

    if-eqz v0, :cond_fail

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->close()V

    const/4 v0, 0x1

    return v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method

.method public static gateEnter(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Z)Z
    .locals 1

    invoke-static {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowController;->gateState(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;

    move-result-object v0

    if-eqz v0, :cond_fail

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_fail

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowDispatcher;->fire(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result v0

    return v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method

.method public static gateOpen(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Z)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowController;->gateState(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;

    move-result-object v0

    if-eqz v0, :cond_fail

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->open()V

    const/4 v0, 0x1

    return v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method

.method public static gateReset(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Z)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowController;->gateState(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;

    move-result-object v0

    if-eqz v0, :cond_fail

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->reset()V

    const/4 v0, 0x1

    return v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method

.method public static gateToggle(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Z)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowController;->gateState(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;

    move-result-object v0

    if-eqz v0, :cond_fail

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->toggle()Z

    move-result v0

    return v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method

.method public static multiGateNext(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Z)I
    .locals 3

    if-eqz p1, :cond_fail

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowController;->multiGateState(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;

    move-result-object v0

    if-eqz v0, :cond_fail

    array-length v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;->next(IZ)I

    move-result v1

    if-ltz v1, :cond_fail

    invoke-static {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowDispatcher;->fireIndex(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;I)Z

    move-result v2

    if-eqz v2, :cond_fail

    return v1

    :cond_fail
    const/4 v0, -0x1

    return v0
.end method

.method public static multiGateReset(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Z
    .locals 1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowController;->multiGateState(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;

    move-result-object v0

    if-eqz v0, :cond_fail

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;->reset()V

    const/4 v0, 0x1

    return v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method

.method public static sequence(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowDispatcher;->fireAll(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)I

    move-result v0

    return v0
.end method
