.class public Lcom/jme3/scene/control/LightControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/control/LightControl$ControlDirection;
    }
.end annotation


# static fields
.field private static final CONTROL_DIR_NAME:Ljava/lang/String; = "controlDir"

.field private static final LIGHT_NAME:Ljava/lang/String; = "light"


# instance fields
.field private controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

.field private light:Lcom/jme3/light/Light;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 2
    sget-object v0, Lcom/jme3/scene/control/LightControl$ControlDirection;->SpatialToLight:Lcom/jme3/scene/control/LightControl$ControlDirection;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/light/Light;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 4
    sget-object v0, Lcom/jme3/scene/control/LightControl$ControlDirection;->SpatialToLight:Lcom/jme3/scene/control/LightControl$ControlDirection;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    .line 5
    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/light/Light;Lcom/jme3/scene/control/LightControl$ControlDirection;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    .line 7
    sget-object v0, Lcom/jme3/scene/control/LightControl$ControlDirection;->SpatialToLight:Lcom/jme3/scene/control/LightControl$ControlDirection;

    .line 8
    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    .line 9
    iput-object p2, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    return-void
.end method

.method private lightToSpatial(Lcom/jme3/light/Light;)V
    .locals 8

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    instance-of v4, p1, Lcom/jme3/light/PointLight;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    check-cast p1, Lcom/jme3/light/PointLight;

    invoke-virtual {p1}, Lcom/jme3/light/PointLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move v7, v6

    move v6, v5

    move v5, v7

    goto :goto_0

    :cond_0
    instance-of v4, p1, Lcom/jme3/light/DirectionalLight;

    if-eqz v4, :cond_1

    check-cast p1, Lcom/jme3/light/DirectionalLight;

    invoke-virtual {p1}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    instance-of v4, p1, Lcom/jme3/light/SpotLight;

    if-eqz v4, :cond_2

    check-cast p1, Lcom/jme3/light/SpotLight;

    invoke-virtual {p1}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    move v6, v5

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    iget-object v4, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, v4}, Lcom/jme3/scene/Spatial;->getLocalToWorldMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    iget-object p1, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Matrix4f;->rotateVect(Lcom/jme3/math/Vector3f;)V

    iget-object p1, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Matrix4f;->translateVect(Lcom/jme3/math/Vector3f;)V

    iget-object p1, v0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1, v2}, Lcom/jme3/math/Matrix4f;->rotateVect(Lcom/jme3/math/Vector3f;)V

    :cond_3
    if-eqz v5, :cond_4

    sget-object p1, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v2, p1}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v3}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :cond_4
    if-eqz v6, :cond_5

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    :cond_5
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method private spatialToLight(Lcom/jme3/light/Light;)V
    .locals 5

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    sget-object v4, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4, v2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    instance-of v3, p1, Lcom/jme3/light/PointLight;

    if-eqz v3, :cond_0

    check-cast p1, Lcom/jme3/light/PointLight;

    invoke-virtual {p1, v1}, Lcom/jme3/light/PointLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_0
    instance-of v3, p1, Lcom/jme3/light/DirectionalLight;

    if-eqz v3, :cond_1

    check-cast p1, Lcom/jme3/light/DirectionalLight;

    invoke-virtual {p1, v2}, Lcom/jme3/light/DirectionalLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_1
    instance-of v3, p1, Lcom/jme3/light/SpotLight;

    if-eqz v3, :cond_2

    check-cast p1, Lcom/jme3/light/SpotLight;

    invoke-virtual {p1, v1}, Lcom/jme3/light/SpotLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1, v2}, Lcom/jme3/light/SpotLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/light/Light;

    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    return-void
.end method

.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public controlUpdate(F)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    invoke-direct {p0, p1}, Lcom/jme3/scene/control/LightControl;->spatialToLight(Lcom/jme3/light/Light;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    invoke-direct {p0, p1}, Lcom/jme3/scene/control/LightControl;->lightToSpatial(Lcom/jme3/light/Light;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getControlDir()Lcom/jme3/scene/control/LightControl$ControlDirection;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    return-object v0
.end method

.method public getLight()Lcom/jme3/light/Light;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-class v0, Lcom/jme3/scene/control/LightControl$ControlDirection;

    sget-object v1, Lcom/jme3/scene/control/LightControl$ControlDirection;->SpatialToLight:Lcom/jme3/scene/control/LightControl$ControlDirection;

    const-string v2, "controlDir"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/control/LightControl$ControlDirection;

    iput-object v0, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    const-string v0, "light"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/light/Light;

    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    return-void
.end method

.method public setControlDir(Lcom/jme3/scene/control/LightControl$ControlDirection;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    return-void
.end method

.method public setLight(Lcom/jme3/light/Light;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/control/LightControl;->controlDir:Lcom/jme3/scene/control/LightControl$ControlDirection;

    const-string v1, "controlDir"

    sget-object v2, Lcom/jme3/scene/control/LightControl$ControlDirection;->SpatialToLight:Lcom/jme3/scene/control/LightControl$ControlDirection;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/scene/control/LightControl;->light:Lcom/jme3/light/Light;

    const-string v1, "light"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
