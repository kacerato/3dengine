.class public final LJAVARuntime/VoxelCollider;
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
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;
    .annotation runtime LZ6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/VoxelCollider;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;)V
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
    iput-object p1, p0, LJAVARuntime/VoxelCollider;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/VoxelCollider;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getHorizontalSize()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelCollider;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;->getHorizontalSize()F

    move-result v0

    return v0
.end method

.method public getPositionOffset()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelCollider;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;->getPositionOffset()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVerticalSize()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelCollider;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;->getVerticalSize()F

    move-result v0

    return v0
.end method

.method public setHorizontalSize(F)V
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

    iget-object v0, p0, LJAVARuntime/VoxelCollider;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;->setHorizontalSize(F)V

    return-void
.end method

.method public setPositionOffset(LJAVARuntime/Vector3;)V
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

    iget-object v0, p0, LJAVARuntime/VoxelCollider;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;->setPositionOffset(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVerticalSize(F)V
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

    iget-object v0, p0, LJAVARuntime/VoxelCollider;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;->setVerticalSize(F)V

    return-void
.end method
