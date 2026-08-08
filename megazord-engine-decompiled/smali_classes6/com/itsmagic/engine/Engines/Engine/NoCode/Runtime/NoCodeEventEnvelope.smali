.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;
.super Ljava/lang/Object;
.source "NoCodeEventEnvelope.java"

# instance fields
.field private final createdAtNanos:J

.field private final eventId:J

.field private final name:Ljava/lang/String;

.field private final parentExecutionId:J

.field private final payload:Ljava/lang/Object;

.field private final receiver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

.field private final sender:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Ljava/lang/Object;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventIds;->next()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->eventId:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->createdAtNanos:J

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->sender:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->receiver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->payload:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->parentExecutionId:J

    return-void
.end method

# virtual methods
.method public getCreatedAtNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->createdAtNanos:J

    return-wide v0
.end method

.method public getEventId()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->eventId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentExecutionId()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->parentExecutionId:J

    return-wide v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getReceiver()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->receiver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-object v0
.end method

.method public getSender()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->sender:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-object v0
.end method

.method public hasReceiver()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeEventEnvelope;->receiver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;->isValid()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
