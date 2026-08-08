.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowDispatcher;
.super Ljava/lang/Object;
.source "NoCodeFlowDispatcher.java"

# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isBranch(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z
    .locals 1

    if-eqz p0, :cond_no

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lya/H;

    sget-object p0, Lya/H;->BRANCH:Lya/H;

    if-ne v0, p0, :cond_no

    const/4 v0, 0x1

    return v0

    :cond_no
    const/4 v0, 0x0

    return v0
.end method

# virtual methods
.method public static fire(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z
    .locals 2

    if-eqz p0, :cond_fail

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowDispatcher;->isBranch(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result v0

    if-eqz v0, :cond_fail

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_fail

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->canContinue(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Z

    move-result v1

    if-eqz v1, :cond_fail

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    const/4 v0, 0x1

    return v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method

.method public static fireAll(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_done

    if-eqz p1, :cond_done

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v1

    if-eqz v1, :cond_done

    const/4 v2, 0x0

    :loop
    array-length v3, p1

    if-ge v2, v3, :cond_done

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->canContinue(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Z

    move-result v3

    if-eqz v3, :cond_done

    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowDispatcher;->isBranch(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result v4

    if-eqz v4, :next

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    add-int/lit8 v0, v0, 0x1

    :next
    add-int/lit8 v2, v2, 0x1

    goto :loop

    :cond_done
    return v0
.end method

.method public static fireIndex(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;I)Z
    .locals 2

    if-eqz p0, :cond_fail

    if-eqz p1, :cond_fail

    if-ltz p2, :cond_fail

    array-length v0, p1

    if-ge p2, v0, :cond_fail

    aget-object v0, p1, p2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowDispatcher;->isBranch(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result v1

    if-eqz v1, :cond_fail

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v1

    if-eqz v1, :cond_fail

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeFlowRuntime;->canContinue(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Z

    move-result v1

    if-eqz v1, :cond_fail

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    const/4 v0, 0x1

    return v0

    :cond_fail
    const/4 v0, 0x0

    return v0
.end method
