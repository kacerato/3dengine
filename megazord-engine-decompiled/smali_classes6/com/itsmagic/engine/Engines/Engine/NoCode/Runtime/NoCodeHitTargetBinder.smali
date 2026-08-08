.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitTargetBinder;
.super Ljava/lang/Object;
.source "NoCodeHitTargetBinder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;)Z
    .locals 3

    if-eqz p0, :failed

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionRuntime;->current(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;

    move-result-object v0

    if-eqz v0, :failed

    if-eqz p1, :clear

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->hasHit()Z

    move-result v1

    if-eqz v1, :clear

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeHitResult;->getObject()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    move-result-object v1

    if-eqz v1, :clear

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;->isValid()Z

    move-result v2

    if-eqz v2, :clear

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->setTargetObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const/4 v0, 0x1

    return v0

    :clear
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->setTargetObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :failed
    const/4 v0, 0x0

    return v0
.end method
