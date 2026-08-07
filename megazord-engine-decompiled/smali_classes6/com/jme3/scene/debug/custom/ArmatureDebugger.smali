.class public Lcom/jme3/scene/debug/custom/ArmatureDebugger;
.super Lcom/jme3/scene/Node;
.source "SourceFile"


# instance fields
.field private armature:Lcom/jme3/anim/Armature;

.field private armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

.field private interJointWires:Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;

.field private joints:Lcom/jme3/scene/Node;

.field private outlines:Lcom/jme3/scene/Node;

.field private wires:Lcom/jme3/scene/Node;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/anim/Armature;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jme3/anim/Armature;",
            "Ljava/util/List<",
            "Lcom/jme3/anim/Joint;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armature:Lcom/jme3/anim/Armature;

    .line 4
    invoke-virtual {p2}, Lcom/jme3/anim/Armature;->update()V

    .line 5
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "joints"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    .line 6
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "outlines"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    .line 7
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "bones"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    .line 8
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 9
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 10
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 11
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "non deforming Joints"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "non deforming Joints outlines"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v1, Lcom/jme3/scene/Node;

    const-string v2, "non deforming Joints wires"

    invoke-direct {v1, v2}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    invoke-virtual {v2, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 15
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 16
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 17
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "Outlines Dashed"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "Wires Dashed"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v1, Lcom/jme3/scene/Node;

    const-string v2, "dashed non defrom"

    invoke-direct {v1, v2}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 20
    new-instance v1, Lcom/jme3/scene/Node;

    invoke-direct {v1, v2}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 21
    iget-object v1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 22
    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 23
    new-instance p1, Lcom/jme3/scene/debug/custom/ArmatureNode;

    iget-object v3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    iget-object v4, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    iget-object v5, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jme3/scene/debug/custom/ArmatureNode;-><init>(Lcom/jme3/anim/Armature;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Lcom/jme3/scene/Node;Ljava/util/List;)V

    iput-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    .line 24
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->displayNonDeformingJoint(Z)V

    return-void
.end method


# virtual methods
.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/scene/debug/custom/ArmatureNode;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1
.end method

.method public displayNonDeformingJoint(Z)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_0
    invoke-virtual {v0, v2}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz p1, :cond_1

    sget-object v2, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_1
    invoke-virtual {v0, v2}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz p1, :cond_2

    sget-object v2, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_2
    invoke-virtual {v0, v2}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz p1, :cond_3

    sget-object v3, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_3

    :cond_3
    sget-object v3, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_3
    invoke-virtual {v0, v3}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz p1, :cond_4

    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    goto :goto_4

    :cond_4
    sget-object p1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    :goto_4
    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    return-void
.end method

.method public getArmature()Lcom/jme3/anim/Armature;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armature:Lcom/jme3/anim/Armature;

    return-object v0
.end method

.method public getBoneShapes()Lcom/jme3/scene/debug/custom/ArmatureNode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    return-object v0
.end method

.method public getInterJointWires()Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->interJointWires:Lcom/jme3/scene/debug/custom/ArmatureInterJointsWire;

    return-object v0
.end method

.method public initialize(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/Camera;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    invoke-virtual {v0, p2}, Lcom/jme3/scene/debug/custom/ArmatureNode;->setCamera(Lcom/jme3/renderer/Camera;)V

    new-instance p2, Lcom/jme3/material/Material;

    const-string v0, "Common/MatDefs/Misc/Billboard.j3md"

    invoke-direct {p2, p1, v0}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v0, "Common/Textures/dot.png"

    invoke-interface {p1, v0}, Lcom/jme3/asset/AssetManager;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v0

    const-string v1, "Texture"

    invoke-virtual {p2, v1, v0}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    invoke-virtual {p2}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    invoke-virtual {p2}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->joints:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p2}, Lcom/jme3/scene/Node;->setMaterial(Lcom/jme3/material/Material;)V

    new-instance p2, Lcom/jme3/material/Material;

    const-string v0, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {p2, p1, v0}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v1, "VertexColor"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    iget-object v3, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {v3, p2}, Lcom/jme3/scene/Node;->setMaterial(Lcom/jme3/material/Material;)V

    new-instance p2, Lcom/jme3/material/Material;

    invoke-direct {p2, p1, v0}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p2}, Lcom/jme3/scene/Node;->setMaterial(Lcom/jme3/material/Material;)V

    new-instance p2, Lcom/jme3/material/Material;

    const-string v0, "Common/MatDefs/Misc/DashedLine.j3md"

    invoke-direct {p2, p1, v0}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    iget-object v1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->outlines:Lcom/jme3/scene/Node;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/jme3/scene/Spatial;->setMaterial(Lcom/jme3/material/Material;)V

    new-instance p2, Lcom/jme3/material/Material;

    invoke-direct {p2, p1, v0}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->wires:Lcom/jme3/scene/Node;

    invoke-virtual {p1, v2}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Spatial;->setMaterial(Lcom/jme3/material/Material;)V

    return-void
.end method

.method public select(Lcom/jme3/scene/Geometry;)Lcom/jme3/anim/Joint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/debug/custom/ArmatureNode;->select(Lcom/jme3/scene/Geometry;)Lcom/jme3/anim/Joint;

    move-result-object p1

    return-object p1
.end method

.method public updateLogicalState(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-object p1, p0, Lcom/jme3/scene/debug/custom/ArmatureDebugger;->armatureNode:Lcom/jme3/scene/debug/custom/ArmatureNode;

    invoke-virtual {p1}, Lcom/jme3/scene/debug/custom/ArmatureNode;->updateGeometry()V

    return-void
.end method
