.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventDispatcher;
.super Ljava/lang/Object;
.source "NoCodeEventDispatcher.java"

# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatch(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;)Z
    .locals 8

    if-eqz p0, :cond_fail

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->hasReceiver()Z

    move-result v0

    if-eqz v0, :cond_fail

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fail

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fail

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->getReceiver()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_fail

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->l0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    if-eqz v4, :cond_fail

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v4

    if-eqz v4, :cond_fail

    invoke-virtual {v4, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-static {v4, v2, v3, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->beginEnvelope(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    move-result-object v5

    if-eqz v5, :cond_fail

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->getPayload()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :payload_ready

    instance-of v1, v7, [Ljava/lang/Object;

    if-eqz v1, :payload_single

    check-cast v7, [Ljava/lang/Object;

    move-object v6, v7

    goto :payload_ready

    :payload_single
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v6, v1

    :payload_ready
    :try_start_0
    invoke-virtual {v4, v0, v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->C(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->end(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;)Z

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->end(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;)Z

    throw v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method

.method public static send(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Ljava/lang/Object;)Z
    .locals 3

    if-eqz p0, :cond_fail

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->current(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    move-result-object v1

    if-eqz v1, :sender_ready

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->getSourceObject()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    move-result-object v0

    :sender_ready
    invoke-static {p0, p1, v0, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventFactory;->create(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventDispatcher;->dispatch(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;)Z

    move-result v0

    return v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method
