.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTargetResolver;
.super Ljava/lang/Object;
.source "NoCodeTargetResolver.java"

# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static valid(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;->isValid()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

# virtual methods
.method public static resolve(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;
    .locals 1

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTargetResolver;->valid(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->getTargetObject()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTargetResolver;->valid(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;->getSourceObject()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTargetResolver;->valid(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resolveGameObject(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeTargetResolver;->resolve(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeExecutionContext;Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
