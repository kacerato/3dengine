.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;
.super Ljava/lang/Object;
.source "NoCodeMultiGateState.java"

# instance fields
.field private nextIndex:I

# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;->nextIndex:I

    return-void
.end method

# virtual methods
.method public getNextIndex()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;->nextIndex:I

    return v0
.end method

.method public next(IZ)I
    .locals 2

    if-lez p1, :cond_fail

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;->nextIndex:I

    if-lt v0, p1, :cond_ready

    if-eqz p2, :cond_fail

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;->nextIndex:I

    :cond_ready
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;->nextIndex:I

    move v1, v0

    add-int/lit8 v0, v0, 0x1

    if-eqz p2, :cond_store

    if-lt v0, p1, :cond_store

    const/4 v0, 0x0

    :cond_store
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;->nextIndex:I

    return v1

    :cond_fail
    const/4 v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;->nextIndex:I

    return-void
.end method

.method public restore(I)V
    .locals 0

    if-ltz p1, :cond_done

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeMultiGateState;->nextIndex:I

    :cond_done
    return-void
.end method
