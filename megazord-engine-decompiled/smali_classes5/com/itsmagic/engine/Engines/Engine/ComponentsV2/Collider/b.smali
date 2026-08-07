.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

.field public final b:LA9/a;

.field public final c:LUb/f;

.field public final d:Lcom/jme3/math/Transform;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

.field public f:Z

.field public final g:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Ljava/util/List;LUb/f;Lcom/jme3/math/Transform;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "shapeList",
            "matrix4",
            "bulletTransform",
            "collider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;",
            "Ljava/util/List<",
            "Lo9/b;",
            ">;",
            "LUb/f;",
            "Lcom/jme3/math/Transform;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->f:Z

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->d:Lcom/jme3/math/Transform;

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->c:LUb/f;

    new-instance p4, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {p4}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>()V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->g:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge v0, p4, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lo9/b;

    invoke-virtual {p4}, Lo9/b;->a()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object p4

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Sphere:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne p1, v1, :cond_0

    invoke-virtual {p3}, LUb/f;->F1()F

    move-result v1

    invoke-virtual {p3}, LUb/f;->H1()F

    move-result v2

    invoke-virtual {p3}, LUb/f;->J1()F

    move-result v3

    invoke-static {v2, v3}, Lgd/b;->S0(FF)F

    move-result v2

    invoke-static {v1, v2}, Lgd/b;->S0(FF)F

    move-result v1

    :try_start_0
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p4, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Capsule:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne p1, v1, :cond_1

    invoke-virtual {p3}, LUb/f;->F1()F

    move-result v1

    invoke-virtual {p3}, LUb/f;->H1()F

    move-result v2

    invoke-virtual {p3}, LUb/f;->J1()F

    move-result v3

    invoke-static {v2, v3}, Lgd/b;->X0(FF)F

    move-result v2

    invoke-static {v1, v2}, Lgd/b;->X0(FF)F

    move-result v1

    :try_start_1
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p4, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, LUb/f;->F1()F

    move-result v1

    invoke-virtual {p3}, LUb/f;->H1()F

    move-result v2

    invoke-virtual {p3}, LUb/f;->J1()F

    move-result v3

    :try_start_2
    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p4, v4}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {p5}, Lbd/m;->hashCode()I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->g:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    new-instance v2, Lcom/jme3/math/Transform;

    invoke-direct {v2}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {v1, p4, v2}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->addChildShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance p1, LA9/a;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->g:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {p1, p2, p5}, LA9/a;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:LA9/a;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->g:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {p5}, Lbd/m;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:LA9/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0}, LA9/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:LA9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, LA9/a;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->f:Z

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:LA9/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0}, LA9/a;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:LA9/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, LA9/a;->g()F

    move-result v0

    return v0
.end method

.method public e()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->g:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    return-object v0
.end method

.method public f()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:LA9/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, LA9/a;->j()F

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->f:Z

    return v0
.end method

.method public h(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounciness"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:LA9/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, LA9/a;->m(F)V

    return-void
.end method

.method public i(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friction"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:LA9/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, LA9/a;->n(F)V

    return-void
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layerReference"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:LA9/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, LA9/a;->o(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->b:LA9/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/b;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0}, LA9/a;->q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
