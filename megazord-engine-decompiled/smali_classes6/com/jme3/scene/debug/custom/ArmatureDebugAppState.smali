.class public Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;
.super Lcom/jme3/app/state/BaseAppState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;
    }
.end annotation


# static fields
.field public static final CLICK_MAX_DELAY:F = 0.2f


# instance fields
.field private final actionListener:Lcom/jme3/input/controls/ActionListener;

.field private app:Lcom/jme3/app/Application;

.field private armatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/anim/Armature;",
            "Lcom/jme3/scene/debug/custom/ArmatureDebugger;",
            ">;"
        }
    .end annotation
.end field

.field private clickDelay:F

.field private debugNode:Lcom/jme3/scene/Node;

.field private displayAllJoints:Z

.field private selectedBones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/anim/Armature;",
            "Lcom/jme3/anim/Joint;",
            ">;"
        }
    .end annotation
.end field

.field tmp:Lcom/jme3/math/Vector3f;

.field tmp2:Lcom/jme3/math/Vector3f;

.field vp:Lcom/jme3/renderer/ViewPort;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "debugNode"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->armatures:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->selectedBones:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->displayAllJoints:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->clickDelay:F

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->tmp:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->tmp2:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;

    invoke-direct {v0, p0}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;-><init>(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)V

    iput-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->actionListener:Lcom/jme3/input/controls/ActionListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)F
    .locals 0

    iget p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->clickDelay:F

    return p0
.end method

.method public static synthetic access$002(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;F)F
    .locals 0

    iput p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->clickDelay:F

    return p1
.end method

.method public static synthetic access$100(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Lcom/jme3/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->app:Lcom/jme3/app/Application;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Lcom/jme3/scene/Node;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->armatures:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->selectedBones:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->displayAllJoints:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->displayAllJoints:Z

    return p1
.end method

.method private findGeoms(Lcom/jme3/scene/Node;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Node;",
            "Ljava/util/List<",
            "Lcom/jme3/scene/Geometry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    instance-of v1, v0, Lcom/jme3/scene/Geometry;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/jme3/scene/Node;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-direct {p0, v0, p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->findGeoms(Lcom/jme3/scene/Node;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addArmatureFrom(Lcom/jme3/anim/Armature;Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/debug/custom/ArmatureDebugger;
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->armatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;

    invoke-direct {v0, p0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;-><init>(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;Lcom/jme3/anim/Armature;)V

    .line 6
    invoke-virtual {p2, v0}, Lcom/jme3/scene/Spatial;->depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;)V

    .line 7
    new-instance v1, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_Armature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$JointInfoVisitor;->deformingJoints:Ljava/util/List;

    invoke-direct {v1, v2, p1, v0}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;-><init>(Ljava/lang/String;Lcom/jme3/anim/Armature;Ljava/util/List;)V

    .line 8
    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    .line 9
    instance-of v0, p2, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    check-cast p2, Lcom/jme3/scene/Node;

    invoke-direct {p0, p2, v0}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->findGeoms(Lcom/jme3/scene/Node;Ljava/util/List;)V

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    const/4 p2, 0x0

    .line 13
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Geometry;

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->armatures:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 16
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->app:Lcom/jme3/app/Application;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->app:Lcom/jme3/app/Application;

    invoke-interface {p2}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->initialize(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/Camera;)V

    :cond_2
    return-object v1
.end method

.method public addArmatureFrom(Lcom/jme3/anim/SkinningControl;)Lcom/jme3/scene/debug/custom/ArmatureDebugger;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/jme3/anim/SkinningControl;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->addArmatureFrom(Lcom/jme3/anim/Armature;Lcom/jme3/scene/Spatial;)Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    move-result-object p1

    return-object p1
.end method

.method public cleanup(Lcom/jme3/app/Application;)V
    .locals 0

    return-void
.end method

.method public getDebugNode()Lcom/jme3/scene/Node;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 8

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object v1

    const-string v2, "debug"

    invoke-interface {p1}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jme3/renderer/RenderManager;->createMainView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    iget-object v2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v1, v2}, Lcom/jme3/renderer/ViewPort;->attachScene(Lcom/jme3/scene/Spatial;)V

    iget-object v1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jme3/renderer/ViewPort;->setClearDepth(Z)V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->app:Lcom/jme3/app/Application;

    iget-object v1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->armatures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v4

    invoke-interface {p1}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->initialize(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/Camera;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object v1

    iget-object v3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->actionListener:Lcom/jme3/input/controls/ActionListener;

    const-string v4, "shoot"

    const-string v5, "toggleJoints"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object v1

    new-instance v3, Lcom/jme3/input/controls/MouseButtonTrigger;

    invoke-direct {v3, v0}, Lcom/jme3/input/controls/MouseButtonTrigger;-><init>(I)V

    new-instance v6, Lcom/jme3/input/controls/MouseButtonTrigger;

    invoke-direct {v6, v2}, Lcom/jme3/input/controls/MouseButtonTrigger;-><init>(I)V

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/jme3/input/controls/Trigger;

    aput-object v3, v7, v0

    aput-object v6, v7, v2

    invoke-virtual {v1, v4, v7}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    invoke-interface {p1}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p1

    new-instance v1, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v3, 0x44

    invoke-direct {v1, v3}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v2, v2, [Lcom/jme3/input/controls/Trigger;

    aput-object v1, v2, v0

    invoke-virtual {p1, v5, v2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    new-instance v1, Lcom/jme3/light/DirectionalLight;

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jme3/light/DirectionalLight;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->addLight(Lcom/jme3/light/Light;)V

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    new-instance v1, Lcom/jme3/light/DirectionalLight;

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v2

    new-instance v4, Lcom/jme3/math/ColorRGBA;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v4, v5, v5, v5, v3}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    invoke-direct {v1, v2, v4}, Lcom/jme3/light/DirectionalLight;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;)V

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->addLight(Lcom/jme3/light/Light;)V

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/ViewPort;->setEnabled(Z)V

    return-void
.end method

.method public onDisable()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->setEnabled(Z)V

    return-void
.end method

.method public onEnable()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->vp:Lcom/jme3/renderer/ViewPort;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->setEnabled(Z)V

    return-void
.end method

.method public setDebugNode(Lcom/jme3/scene/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    return-void
.end method

.method public update(F)V
    .locals 2

    iget v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->clickDelay:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->clickDelay:F

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->updateGeometricState()V

    return-void
.end method
