.class public Lcom/jme3/environment/util/LightsDebugState;
.super Lcom/jme3/app/state/BaseAppState;
.source "SourceFile"


# instance fields
.field private debugBounds:Lcom/jme3/scene/Geometry;

.field private debugGeom:Lcom/jme3/scene/Geometry;

.field private debugMaterial:Lcom/jme3/material/Material;

.field private debugNode:Lcom/jme3/scene/Node;

.field private final garbage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/light/LightProbe;",
            ">;"
        }
    .end annotation
.end field

.field private final probeMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/light/LightProbe;",
            "Lcom/jme3/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private probeScale:F

.field private final probes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/light/LightProbe;",
            ">;"
        }
    .end annotation
.end field

.field private scene:Lcom/jme3/scene/Spatial;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->probeMapping:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->garbage:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/environment/util/LightsDebugState;->probeScale:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->scene:Lcom/jme3/scene/Spatial;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->probes:Ljava/util/List;

    return-void
.end method

.method private cleanProbes()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->probes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/environment/util/LightsDebugState;->probeMapping:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->probeMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/light/LightProbe;

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->probes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->garbage:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->garbage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/light/LightProbe;

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->probeMapping:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->garbage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->probes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method


# virtual methods
.method public cleanup(Lcom/jme3/app/Application;)V
    .locals 0

    return-void
.end method

.method public getProbeScale()F
    .locals 1

    iget v0, p0, Lcom/jme3/environment/util/LightsDebugState;->probeScale:F

    return v0
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 3

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "Environment debug Node"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    new-instance v0, Lcom/jme3/scene/shape/Sphere;

    const/16 v1, 0x10

    const v2, 0x3e19999a    # 0.15f

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/scene/shape/Sphere;-><init>(IIF)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    const-string v2, "debugEnvProbe"

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v1, p0, Lcom/jme3/environment/util/LightsDebugState;->debugGeom:Lcom/jme3/scene/Geometry;

    new-instance v0, Lcom/jme3/material/Material;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v1

    const-string v2, "Common/MatDefs/Misc/reflect.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugMaterial:Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/environment/util/LightsDebugState;->debugGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/environment/util/BoundingSphereDebug;->createDebugSphere(Lcom/jme3/asset/AssetManager;)Lcom/jme3/scene/Geometry;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugBounds:Lcom/jme3/scene/Geometry;

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->scene:Lcom/jme3/scene/Spatial;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/jme3/app/Application;->getViewPort()Lcom/jme3/renderer/ViewPort;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/environment/util/LightsDebugState;->scene:Lcom/jme3/scene/Spatial;

    :cond_0
    return-void
.end method

.method public onDisable()V
    .locals 0

    return-void
.end method

.method public onEnable()V
    .locals 0

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object v1

    invoke-interface {v1}, Lcom/jme3/app/Application;->getViewPort()Lcom/jme3/renderer/ViewPort;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jme3/renderer/RenderManager;->renderScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V

    return-void
.end method

.method public setProbeScale(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/environment/util/LightsDebugState;->probeScale:F

    return-void
.end method

.method public setScene(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/environment/util/LightsDebugState;->scene:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public update(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->scene:Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v0}, Lcom/jme3/environment/util/LightsDebugState;->updateLights(Lcom/jme3/scene/Spatial;)V

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-object p1, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->updateGeometricState()V

    invoke-direct {p0}, Lcom/jme3/environment/util/LightsDebugState;->cleanProbes()V

    return-void
.end method

.method public updateLights(Lcom/jme3/scene/Spatial;)V
    .locals 7

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldLightList()Lcom/jme3/light/LightList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/light/LightList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/light/Light;

    sget-object v2, Lcom/jme3/environment/util/LightsDebugState$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    invoke-virtual {v1}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/jme3/light/LightProbe;

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->probes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->probeMapping:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Node;

    const/4 v4, 0x0

    if-nez v2, :cond_1

    new-instance v2, Lcom/jme3/scene/Node;

    const-string v5, "DebugProbe"

    invoke-direct {v2, v5}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jme3/environment/util/LightsDebugState;->debugGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v5, v3}, Lcom/jme3/scene/Geometry;->clone(Z)Lcom/jme3/scene/Geometry;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v5, p0, Lcom/jme3/environment/util/LightsDebugState;->debugBounds:Lcom/jme3/scene/Geometry;

    invoke-virtual {v5, v4}, Lcom/jme3/scene/Geometry;->clone(Z)Lcom/jme3/scene/Geometry;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v5, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v5, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v5, p0, Lcom/jme3/environment/util/LightsDebugState;->probeMapping:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v4}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Geometry;

    invoke-virtual {v4}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v5

    iget v6, p0, Lcom/jme3/environment/util/LightsDebugState;->probeScale:F

    invoke-virtual {v4, v6}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    invoke-virtual {v1}, Lcom/jme3/light/LightProbe;->isReady()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "CubeMap"

    invoke-virtual {v1}, Lcom/jme3/light/LightProbe;->getPrefilteredEnvMap()Lcom/jme3/texture/TextureCubeMap;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    :cond_2
    invoke-virtual {v1}, Lcom/jme3/light/LightProbe;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jme3/light/LightProbe;->getArea()Lcom/jme3/light/ProbeArea;

    move-result-object v1

    invoke-interface {v1}, Lcom/jme3/light/ProbeArea;->getRadius()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v0}, Lcom/jme3/environment/util/LightsDebugState;->updateLights(Lcom/jme3/scene/Spatial;)V

    goto :goto_1

    :cond_4
    return-void
.end method
