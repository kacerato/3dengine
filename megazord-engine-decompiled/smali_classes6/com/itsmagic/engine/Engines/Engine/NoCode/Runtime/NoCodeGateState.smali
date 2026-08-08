.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;
.super Ljava/lang/Object;
.source "NoCodeGateState.java"

# instance fields
.field private final initialOpen:Z

.field private open:Z

# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->initialOpen:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->open:Z

    return-void
.end method

# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->open:Z

    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->open:Z

    return v0
.end method

.method public open()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->open:Z

    return-void
.end method

.method public reset()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->initialOpen:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->open:Z

    return-void
.end method

.method public setOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->open:Z

    return-void
.end method

.method public toggle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->open:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeGateState;->open:Z

    return v0
.end method
