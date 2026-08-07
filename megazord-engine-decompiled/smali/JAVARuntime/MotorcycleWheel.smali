.class public final LJAVARuntime/MotorcycleWheel;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Physics",
        "Components"
    }
.end annotation


# instance fields
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;
    .annotation runtime LZ6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/MotorcycleWheel;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)V
    .locals 0
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/MotorcycleWheel;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getRadius()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->radius:F

    return v0
.end method

.method public getFrictionSlip()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->frictionSlip:F

    return v0
.end method

.method public getSuspensionRestLength()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->suspensionRestLength:F

    return v0
.end method

.method public getCamber()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->camber:F

    return v0
.end method

.method public isFront()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->isFront:Z

    return v0
.end method

.method public setRadius(F)V
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

    iget-object v0, p0, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->radius:F

    return-void
.end method

.method public setFrictionSlip(F)V
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

    iget-object v0, p0, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->frictionSlip:F

    return-void
.end method

.method public setSuspensionRestLength(F)V
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

    iget-object v0, p0, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->suspensionRestLength:F

    return-void
.end method

.method public setCamber(F)V
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

    iget-object v0, p0, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->camber:F

    return-void
.end method

.method public setFront(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "front"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "front"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->isFront:Z

    return-void
.end method
