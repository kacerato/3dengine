.class public LJAVARuntime/MotorcyclePhysics;
.super LJAVARuntime/Rigidbody;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Physics",
        "Components"
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;
    .annotation runtime LZ6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/MotorcyclePhysics;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;)V
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
    invoke-direct {p0, p1}, LJAVARuntime/Rigidbody;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/MotorcyclePhysics;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/MotorcyclePhysics;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getSpeedKMH()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/MotorcyclePhysics;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->getSpeedKMH()F

    move-result v0

    return v0
.end method

.method public getWheels()Ljava/util/List;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/MotorcyclePhysics;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->getWheels()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public addWheel(LJAVARuntime/MotorcycleWheel;)Z
    .locals 1
    .annotation runtime LZ6/g;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds a MotorcycleWheel to this motorcycle."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona uma MotorcycleWheel a esta moto."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "wheel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheel"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/MotorcyclePhysics;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;

    iget-object p1, p1, LJAVARuntime/MotorcycleWheel;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->addWheel(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)Z

    move-result p1

    return p1
.end method

.method public setSteer(FI)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the steering angle for the specified wheel (in degrees)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o \u00e2ngulo da roda especificada (em graus)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "steer",
            "wheelID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "steer",
            "wheelID"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/MotorcyclePhysics;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->setSteer(FI)V

    return-void
.end method

.method public setBrake(FI)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the brake force for the specified wheel."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a for\u00e7a de frenagem para a roda especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "brake",
            "wheelID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "brake",
            "wheelID"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/MotorcyclePhysics;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->setBrake(FI)V

    return-void
.end method

.method public setTorque(FI)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the torque for the specified wheel."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define o torque para a roda especificada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "torque",
            "wheelID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "torque",
            "wheelID"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/MotorcyclePhysics;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->setTorque(FI)V

    return-void
.end method
