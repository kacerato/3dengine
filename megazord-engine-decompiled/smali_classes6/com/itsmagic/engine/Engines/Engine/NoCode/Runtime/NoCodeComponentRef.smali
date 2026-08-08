.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;
.super Ljava/lang/Object;
.source "NoCodeComponentRef.java"

# instance fields
.field private final component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field private final owner:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;->owner:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    return-void
.end method

# virtual methods
.method public getComponent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    return-object v0
.end method

.method public getOwner()Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;->owner:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;->owner:Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeObjectRef;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Runtime/NoCodeComponentRef;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
