.class Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;


# direct methods
.method public constructor <init>(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/String;ZF)V
    .locals 6

    const-string p3, "shoot"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {v0, v1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$002(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;F)F

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    iget-object p3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p3}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$000(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)F

    move-result p3

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float p3, p3, v2

    if-gez p3, :cond_5

    iget-object p3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p3}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$100(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Lcom/jme3/app/Application;

    move-result-object p3

    invoke-interface {p3}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jme3/input/InputManager;->getCursorPosition()Lcom/jme3/math/Vector2f;

    move-result-object p3

    new-instance v2, Lcom/jme3/collision/CollisionResults;

    invoke-direct {v2}, Lcom/jme3/collision/CollisionResults;-><init>()V

    iget-object v3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {v3}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$100(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Lcom/jme3/app/Application;

    move-result-object v3

    invoke-interface {v3}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    iget-object v4, v4, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->tmp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, p3, v1, v4}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v4, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    iget-object v4, v4, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->tmp2:Lcom/jme3/math/Vector3f;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, p3, v5, v4}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object p3

    new-instance v3, Lcom/jme3/math/Ray;

    invoke-direct {v3, v1, p3}, Lcom/jme3/math/Ray;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-object p3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p3}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$200(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Lcom/jme3/scene/Node;

    move-result-object p3

    invoke-virtual {p3, v3, v2}, Lcom/jme3/scene/Node;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    invoke-virtual {v2}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result p3

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$300(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->select(Lcom/jme3/scene/Geometry;)Lcom/jme3/anim/Joint;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/jme3/collision/CollisionResults;->getClosestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jme3/collision/CollisionResult;->getGeometry()Lcom/jme3/scene/Geometry;

    move-result-object p3

    iget-object v1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {v1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$300(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    invoke-virtual {v2, p3}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->select(Lcom/jme3/scene/Geometry;)Lcom/jme3/anim/Joint;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$400(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->getArmature()Lcom/jme3/anim/Armature;

    move-result-object p2

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "-----------------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected Joint : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in armature "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Root Bone : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getParent()Lcom/jme3/anim/Joint;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Local translation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Local rotation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Local scale: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getLocalScale()Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p2, "---"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model translation: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model rotation: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model scale: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getModelTransform()Lcom/jme3/math/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p2, "Bind inverse Transform: "

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getInverseModelBindMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string p3, "toggleJoints"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$500(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$502(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;Z)Z

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$300(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/debug/custom/ArmatureDebugger;

    iget-object p3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState$1;->this$0:Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;

    invoke-static {p3}, Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;->access$500(Lcom/jme3/scene/debug/custom/ArmatureDebugAppState;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->displayNonDeformingJoint(Z)V

    goto :goto_2

    :cond_6
    return-void
.end method
