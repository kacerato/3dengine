.class public final LJAVARuntime/VoxelPlayerController;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Voxels",
        "Components"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;
    .annotation runtime LZ6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/VoxelPlayerController;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;)V

    return-void
.end method

.method public constructor <init>(Lc9/a;)V
    .locals 0
    .annotation runtime LG8/c;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;)V
    .locals 0
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/VoxelPlayerController;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method


# virtual methods
.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/VoxelPlayerController;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getHorizontalSlideName()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelPlayerController;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;->getHorizontalSlideName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHorizontalSlideSens()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelPlayerController;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;->getHorizontalSlideSens()F

    move-result v0

    return v0
.end method

.method public getJoystickName()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelPlayerController;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;->getJoystickName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelPlayerController;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;->getRunSpeed()F

    move-result v0

    return v0
.end method

.method public getWalkSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelPlayerController;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;->getWalkSpeed()F

    move-result v0

    return v0
.end method

.method public setHorizontalSlideName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LJAVARuntime/VoxelPlayerController;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;->setHorizontalSlideName(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHorizontalSlideSens(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelPlayerController;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;->setHorizontalSlideSens(F)V

    return-void
.end method

.method public setJoystickName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LJAVARuntime/VoxelPlayerController;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;->setJoystickName(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRunSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelPlayerController;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;->setRunSpeed(F)V

    return-void
.end method

.method public setWalkSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelPlayerController;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelPlayerController;->setWalkSpeed(F)V

    return-void
.end method
