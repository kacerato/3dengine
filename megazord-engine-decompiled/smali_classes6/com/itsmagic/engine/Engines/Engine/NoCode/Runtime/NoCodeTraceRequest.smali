.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;
.super Ljava/lang/Object;
.source "NoCodeTraceRequest.java"

# instance fields
.field private final direction:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
.field private final maxDistance:F
.field private final origin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
.field private final source:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :origin_missing
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    goto :origin_done
    :origin_missing
    const/4 v0, 0x0
    :origin_done
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->origin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p2, :direction_missing
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    invoke-direct {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    goto :direction_done
    :direction_missing
    const/4 v0, 0x0
    :direction_done
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->direction:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->maxDistance:F
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->source:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-void
.end method

# virtual methods
.method public getDirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->direction:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    if-eqz v0, :missing
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    return-object v1
    :missing
    const/4 v0, 0x0
    return-object v0
.end method

.method public getMaxDistance()F
    .locals 1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->maxDistance:F
    return v0
.end method

.method public getOrigin()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->origin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    if-eqz v0, :missing
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    return-object v1
    :missing
    const/4 v0, 0x0
    return-object v0
.end method

.method public getSource()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;
    .locals 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->source:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;
    return-object v0
.end method

.method public isValid()Z
    .locals 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->origin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    if-eqz v0, :invalid
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->direction:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    if-eqz v0, :invalid
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTraceRequest;->maxDistance:F
    const/4 v1, 0x0
    cmpg-float v0, v0, v1
    if-lez v0, :invalid
    const/4 v0, 0x1
    return v0
    :invalid
    const/4 v0, 0x0
    return v0
.end method
