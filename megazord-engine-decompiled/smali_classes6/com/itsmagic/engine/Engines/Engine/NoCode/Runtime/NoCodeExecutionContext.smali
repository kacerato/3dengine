.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;
.super Ljava/lang/Object;
.source "NoCodeExecutionContext.java"

# instance fields
.field private cancelled:Z

.field private final createdAtNanos:J

.field private eventEnvelope:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;

.field private eventName:Ljava/lang/String;

.field private final executionId:J

.field private final graph:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

.field private payload:Ljava/lang/Object;

.field private senderObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

.field private final sourceComponent:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;

.field private final sourceObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

.field private targetObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionIds;->next()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->executionId:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->createdAtNanos:J

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->graph:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->sourceObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->sourceComponent:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->eventEnvelope:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;

    if-eqz p2, :cond_1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    invoke-direct {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->sourceObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    if-eqz p3, :cond_1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;

    invoke-direct {v2, v1, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->sourceComponent:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;

    :cond_1
    return-void
.end method

# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->cancelled:Z

    return-void
.end method

.method public clearEvent()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->eventEnvelope:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->eventName:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->payload:Ljava/lang/Object;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->senderObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-void
.end method

.method public getCreatedAtNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->createdAtNanos:J

    return-wide v0
.end method

.method public getEventEnvelope()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->eventEnvelope:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutionId()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->executionId:J

    return-wide v0
.end method

.method public getGraph()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->graph:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-object v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getSenderObject()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->senderObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-object v0
.end method

.method public getSourceComponent()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->sourceComponent:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;

    return-object v0
.end method

.method public getSourceObject()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->sourceObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-object v0
.end method

.method public getTargetObject()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->targetObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->cancelled:Z

    return v0
.end method

.method public setEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->eventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->payload:Ljava/lang/Object;

    return-void
.end method

.method public setEventEnvelope(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;)V
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->eventEnvelope:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;

    return-void
.end method

.method public setSenderObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->senderObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->senderObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-void
.end method

.method public setSenderRef(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->senderObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-void
.end method

.method public setTargetObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->targetObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->targetObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-void
.end method

.method public setTargetRef(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->targetObject:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-void
.end method
