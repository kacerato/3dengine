.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;
.source "SourceFile"


# static fields
.field public static final b1:Ljava/lang/String; = "MotorcyclePhysics"

.field public static final c1:Ljava/lang/Class;


# instance fields
.field public transient V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;",
            ">;"
        }
    .end annotation
.end field

.field public rollStiffness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public rollDamping:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public leanGain:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public lowSpeedThreshold:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public comLoweringFactor:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public maxSpeedKMH:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final mRayFrom:Lcom/jme3/math/Vector3f;

.field public final mRayTo:Lcom/jme3/math/Vector3f;

.field public final mWheelPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final mDownWorld:Lcom/jme3/math/Vector3f;

.field public final mNormal:Lcom/jme3/math/Vector3f;

.field public final mRollTorque:Lcom/jme3/math/Vector3f;

.field public final mRight:Lcom/jme3/math/Vector3f;

.field public final mForward:Lcom/jme3/math/Vector3f;

.field public final mTmp:Lcom/jme3/math/Vector3f;

.field public a1:LJAVARuntime/Component;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->c1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics$a;-><init>()V

    invoke-static {v0}, Lxb/a;->b(Lxb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->V:Ljava/util/List;

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->rollStiffness:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->rollDamping:F

    const v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->leanGain:F

    const v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->lowSpeedThreshold:F

    const v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->comLoweringFactor:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->maxSpeedKMH:F

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mRayFrom:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mRayTo:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mWheelPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mDownWorld:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mNormal:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mRollTorque:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mRight:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mForward:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mTmp:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "MotorcyclePhysics"

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "MotorcyclePhysics"

    return-object v0
.end method


.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->a1:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/MotorcyclePhysics;

    invoke-direct {v0, p0}, LJAVARuntime/MotorcyclePhysics;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->a1:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->a1:LJAVARuntime/Component;

    return-void
.end method

.method public getWheels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->V:Ljava/util/List;

    return-object v0
.end method

.method public addWheel(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->V:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->V:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->V:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->bindToMotorcycle(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;)V

    const/4 v0, 0x1

    return v0
.end method

.method public removeWheel(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->V:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setSteer(FI)V
    .locals 2
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->V:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->setSteer(F)V

    :cond_0
    return-void
.end method

.method public setBrake(FI)V
    .locals 2
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->V:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->setBrake(F)V

    :cond_0
    return-void
.end method

.method public setTorque(FI)V
    .locals 2
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->V:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Vehicle/MotorcycleWheel;->setTorque(F)V

    :cond_0
    return-void
.end method

.method public getSpeedKMH()F
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getLinearVelocity()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    const v1, 0x40733333    # 3.6f

    mul-float/2addr v0, v1

    return v0
.end method

.method public prePhysic()V
    .locals 10

    # Chama o prePhysic do Rigidbody (configure mass, damping, friction, etc.)
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->prePhysic()V

    # v0 = R (PhysicsRigidBody)
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->R:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    # Se R == null, retorna
    if-eqz v0, :cond_return

    # Se R nao eh dinamico, retorna
    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v1

    if-eqz v1, :cond_return

    # v1 = q = R.getPhysicsRotation() -> Quaternion
    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getPhysicsRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    # v2 = mTmp (chassiUp temporario)
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mTmp:Lcom/jme3/math/Vector3f;

    # chassiUp = q.mult(UNIT_Y, mTmp) -> mTmp passa a conter o "up" do chassi no mundo
    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v3, v2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    # v3 = mNormal (worldUp temporario)
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mNormal:Lcom/jme3/math/Vector3f;

    # worldUp = -R.getGravity(mNormal); primeiro preenche mNormal com a gravidade
    invoke-virtual {v0, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    # Se a gravidade for zero, fallback pra UNIT_Y (mundo sem gravidade)
    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_gravity_zero

    # mNormal.normalizeLocal().negateLocal() => worldUp
    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    goto :goto_have_worldup

    :cond_gravity_zero
    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    :goto_have_worldup
    # Aqui: v2 = chassiUp, v3 = worldUp
    # v4 = mRight (errorAxis temporario)
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mRight:Lcom/jme3/math/Vector3f;

    # errorAxis = chassiUp.cross(worldUp, mRight) -> mRight passa a ser eixo que leva chassiUp -> worldUp (mag = sin(theta))
    invoke-virtual {v2, v3, v4}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    # torque = errorAxis * rollStiffness (em mRollTorque)
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->mRollTorque:Lcom/jme3/math/Vector3f;

    # Copia errorAxis pra mRollTorque usando mRollTorque.set(errorAxis)
    invoke-virtual {v5, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    # mRollTorque.multLocal(rollStiffness)
    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->rollStiffness:F

    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    # v6 = angVel = R.getAngularVelocity() -> novo Vector3f
    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getAngularVelocity()Lcom/jme3/math/Vector3f;

    move-result-object v6

    # angVel.multLocal(-rollDamping) -> v6 agora eh -angVel*rollDamping
    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/MotorcyclePhysics;->rollDamping:F

    neg-float v7, v7

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    # mRollTorque.addLocal(angVel * -rollDamping) -> torque final
    invoke-virtual {v5, v6}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    # R.applyTorque(mRollTorque)
    invoke-virtual {v0, v5}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->applyTorque(Lcom/jme3/math/Vector3f;)V

    :cond_return
    return-void
.end method
