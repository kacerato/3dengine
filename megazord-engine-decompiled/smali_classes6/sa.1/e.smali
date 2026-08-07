.class public Lsa/e;
.super Lc9/f;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "LUb/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "LUb/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsa/e$a;

    invoke-direct {v0}, Lsa/e$a;-><init>()V

    sput-object v0, Lsa/e;->g:Ljava/lang/ThreadLocal;

    new-instance v0, Lsa/e$b;

    invoke-direct {v0}, Lsa/e$b;-><init>()V

    sput-object v0, Lsa/e;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Lsa/e$c;

    invoke-direct {v0}, Lsa/e$c;-><init>()V

    sput-object v0, Lsa/e;->j:Ljava/lang/ThreadLocal;

    new-instance v0, Lsa/e$d;

    invoke-direct {v0}, Lsa/e$d;-><init>()V

    sput-object v0, Lsa/e;->k:Ljava/lang/ThreadLocal;

    new-instance v0, Lsa/e$e;

    invoke-direct {v0}, Lsa/e$e;-><init>()V

    sput-object v0, Lsa/e;->l:Ljava/lang/ThreadLocal;

    new-instance v0, Lsa/e$f;

    invoke-direct {v0}, Lsa/e$f;-><init>()V

    sput-object v0, Lsa/e;->m:Ljava/lang/ThreadLocal;

    new-instance v0, Lsa/e$g;

    invoke-direct {v0}, Lsa/e$g;-><init>()V

    sput-object v0, Lsa/e;->n:Ljava/lang/ThreadLocal;

    new-instance v0, Lsa/e$h;

    invoke-direct {v0}, Lsa/e$h;-><init>()V

    sput-object v0, Lsa/e;->o:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lc9/f;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lsa/e;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lsa/e;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsa/e;->d:Z

    iput-boolean v0, p0, Lsa/e;->e:Z

    return-void
.end method

.method public static S(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lsa/c;Z)Lsa/a;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "ray",
            "ignoreGizmo"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {p1}, Lsa/c;->u()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {p1}, Lsa/c;->r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    iget v5, p1, Lsa/c;->c:F

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->traceRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FZ)Lsa/a;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lsa/e;->S(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lsa/c;Z)Lsa/a;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic q(Lsa/e;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lsa/e;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic r(Lsa/e;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lsa/e;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic s()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lsa/e;->g:Ljava/lang/ThreadLocal;

    return-object v0
.end method


# virtual methods
.method public A(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calculateFaceUV"
        }
    .end annotation

    iput-boolean p1, p0, Lsa/e;->e:Z

    return-void
.end method

.method public B(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "determineHitCollider"
        }
    .end annotation

    iput-boolean p1, p0, Lsa/e;->d:Z

    return-void
.end method

.method public C(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "HIT_COLOR"
        }
    .end annotation

    iput-object p1, p0, Lsa/e;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public D(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "NO_HIT_COLOR"
        }
    .end annotation

    iput-object p1, p0, Lsa/e;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public E(Lsa/c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsa/c;",
            ")",
            "Ljava/util/List<",
            "Lsa/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsa/e;->F(Lsa/c;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public F(Lsa/c;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "ignoreGizmo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsa/c;",
            "Z)",
            "Ljava/util/List<",
            "Lsa/a;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    iget-object v0, p1, Lsa/c;->b:Lsa/d;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lsa/e;->G(Lsa/c;)Ljava/util/List;

    move-result-object v0

    if-nez p2, :cond_5

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isAnyEditorCameraRendering()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, LJAVARuntime/GizmoPath;

    invoke-direct {p2}, LJAVARuntime/GizmoPath;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lsa/e;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v1

    invoke-virtual {p2, v1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lsa/e;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v1

    invoke-virtual {p2, v1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    sget-object v1, Lsa/e;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p1, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v2, p1, Lsa/c;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v3, p1, Lsa/c;->b:Lsa/d;

    iget-object v3, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v3, p1, Lsa/c;->c:F

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lsa/c;->b:Lsa/d;

    iget-object p1, p1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v3, p1, Lsa/c;->b:Lsa/d;

    iget-object v3, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v3, 0x497423f0    # 999999.0f

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lsa/c;->b:Lsa/d;

    iget-object p1, p1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    :cond_4
    :goto_1
    invoke-virtual {p2}, LJAVARuntime/GizmoPath;->apply()V

    invoke-static {p2}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    :cond_5
    return-object v0

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final G(Lsa/c;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsa/c;",
            ")",
            "Ljava/util/List<",
            "Lsa/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Trying to ray a null ray"

    invoke-static {v0}, Ld5/d;->a2(Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v2, Lc9/a;->o:LWc/c;

    iget-object v3, v2, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    if-nez v3, :cond_1

    const-string v0, "Trying to ray a null world"

    invoke-static {v0}, Ld5/d;->a2(Ljava/lang/String;)V

    return-object v1

    :cond_1
    sget-object v1, Lsa/e;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v0, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, v0, Lsa/c;->c:F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_2
    const v1, 0x47c35000    # 100000.0f

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    sget-object v1, Lsa/e;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/jme3/math/Vector3f;

    iget-object v1, v0, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    iget-object v3, v0, Lsa/c;->b:Lsa/d;

    iget-object v3, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    iget-object v4, v0, Lsa/c;->b:Lsa/d;

    iget-object v4, v4, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v4

    invoke-virtual {v9, v1, v3, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    sget-object v1, Lsa/e;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/jme3/math/Vector3f;

    iget v1, v9, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v3

    add-float/2addr v1, v3

    iget v3, v9, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v9, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v10, v1, v3, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v1, v0, Lsa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lsa/c;->s()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc9/a;->l(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->i(I)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->b:I

    const/4 v4, 0x1

    shl-int/2addr v4, v1

    invoke-static {v1}, LWc/d;->a(I)I

    move-result v1

    move v11, v1

    move v12, v4

    goto :goto_2

    :cond_4
    move v11, v3

    move v12, v11

    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget-object v14, LWc/c;->i:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget-object v1, v2, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {v1, v9, v10}, Lcom/jme3/bullet/CollisionSpace;->rayTest(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Ljava/util/List;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    move v6, v3

    :goto_3
    if-ge v6, v7, :cond_7

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/jme3/bullet/collision/PhysicsRayTestResult;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionGroup()I

    move-result v1

    invoke-virtual {v4}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollideWithGroups()I

    move-result v2

    and-int/2addr v2, v12

    if-eqz v2, :cond_5

    and-int/2addr v1, v11

    if-nez v1, :cond_6

    :cond_5
    move/from16 v16, v6

    move/from16 v17, v7

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lz9/a;

    if-eqz v3, :cond_5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v9

    move/from16 v16, v6

    move-object v6, v10

    move/from16 v17, v7

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lsa/e;->u(Lsa/c;Lz9/a;Lcom/jme3/bullet/collision/PhysicsRayTestResult;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lsa/a;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :goto_4
    add-int/lit8 v6, v16, 0x1

    move/from16 v7, v17

    goto :goto_3

    :goto_5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    monitor-exit v14

    return-object v13

    :goto_6
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public H(Lsa/c;F)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsa/c;",
            "F)",
            "Ljava/util/List<",
            "Lsa/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lsa/e;->I(Lsa/c;FZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public I(Lsa/c;FZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ray",
            "radius",
            "ignoreGizmo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsa/c;",
            "FZ)",
            "Ljava/util/List<",
            "Lsa/a;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6

    iget-object v0, p1, Lsa/c;->b:Lsa/d;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lsa/e;->J(Lsa/c;F)Ljava/util/List;

    move-result-object p2

    if-nez p3, :cond_5

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isAnyEditorCameraRendering()Z

    move-result p3

    if-eqz p3, :cond_5

    new-instance p3, LJAVARuntime/GizmoPath;

    invoke-direct {p3}, LJAVARuntime/GizmoPath;-><init>()V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsa/e;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p3, v0}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsa/e;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p3, v0}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    sget-object v0, Lsa/e;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p1, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p1, Lsa/c;->c:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v2, p1, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v2, p1, Lsa/c;->c:F

    invoke-virtual {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lsa/c;->b:Lsa/d;

    iget-object p1, p1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v2, p1, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v2, 0x497423f0    # 999999.0f

    invoke-virtual {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lsa/c;->b:Lsa/d;

    iget-object p1, p1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    :cond_4
    :goto_1
    invoke-virtual {p3}, LJAVARuntime/GizmoPath;->apply()V

    invoke-static {p3}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    :cond_5
    return-object p2

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final J(Lsa/c;F)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsa/c;",
            "F)",
            "Ljava/util/List<",
            "Lsa/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Trying to ray a null ray"

    invoke-static {v0}, Ld5/d;->a2(Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v2, Lc9/a;->o:LWc/c;

    iget-object v3, v2, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    if-nez v3, :cond_1

    const-string v0, "Trying to ray a null world"

    invoke-static {v0}, Ld5/d;->a2(Ljava/lang/String;)V

    return-object v1

    :cond_1
    sget-object v1, Lsa/e;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v0, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, v0, Lsa/c;->c:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_2

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_2
    const v1, 0x47c35000    # 100000.0f

    invoke-virtual {v8, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    sget-object v1, Lsa/e;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/jme3/math/Vector3f;

    iget-object v1, v0, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    iget-object v4, v0, Lsa/c;->b:Lsa/d;

    iget-object v4, v4, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    iget-object v5, v0, Lsa/c;->b:Lsa/d;

    iget-object v5, v5, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v5

    invoke-virtual {v9, v1, v4, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    sget-object v1, Lsa/e;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/jme3/math/Vector3f;

    iget v1, v9, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v4

    add-float/2addr v1, v4

    iget v4, v9, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, v9, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v10, v1, v4, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v1, v0, Lsa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lsa/c;->s()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc9/a;->l(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->i(I)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->b:I

    const/4 v5, 0x1

    shl-int/2addr v5, v1

    invoke-static {v1}, LWc/d;->a(I)I

    move-result v1

    move v11, v1

    move v12, v5

    goto :goto_2

    :cond_4
    move v11, v4

    move v12, v11

    :goto_2
    cmpl-float v1, p2, v3

    if-lez v1, :cond_5

    move/from16 v1, p2

    goto :goto_3

    :cond_5
    const v1, 0x3d4ccccd    # 0.05f

    :goto_3
    new-instance v3, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-direct {v3, v1}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;-><init>(F)V

    new-instance v1, Lcom/jme3/math/Transform;

    invoke-direct {v1}, Lcom/jme3/math/Transform;-><init>()V

    new-instance v5, Lcom/jme3/math/Transform;

    invoke-direct {v5}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->loadIdentity()V

    invoke-virtual {v5}, Lcom/jme3/math/Transform;->loadIdentity()V

    invoke-virtual {v1, v9}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-virtual {v5, v10}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v15, LWc/c;->i:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    iget-object v2, v2, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {v2, v3, v1, v5, v14}, Lcom/jme3/bullet/CollisionSpace;->sweepTest(Lcom/jme3/bullet/collision/shapes/ConvexShape;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_4
    if-ge v6, v7, :cond_8

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionGroup()I

    move-result v1

    invoke-virtual {v4}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollideWithGroups()I

    move-result v2

    and-int/2addr v2, v12

    if-eqz v2, :cond_6

    and-int/2addr v1, v11

    if-nez v1, :cond_7

    :cond_6
    move/from16 v16, v6

    move/from16 v17, v7

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lz9/a;

    if-eqz v3, :cond_6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v9

    move/from16 v16, v6

    move-object v6, v10

    move/from16 v17, v7

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lsa/e;->v(Lsa/c;Lz9/a;Lcom/jme3/bullet/collision/PhysicsSweepTestResult;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lsa/a;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :goto_5
    add-int/lit8 v6, v16, 0x1

    move/from16 v7, v17

    goto :goto_4

    :goto_6
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    monitor-exit v15

    return-object v13

    :goto_7
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public K(Lsa/c;)Lsa/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ray"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsa/e;->L(Lsa/c;Z)Lsa/a;

    move-result-object p1

    return-object p1
.end method

.method public L(Lsa/c;Z)Lsa/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "ignoreGizmo"
        }
    .end annotation

    sget-object v0, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lsa/e;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot trace a ray with \'calculateFaceUV\' true from async threads"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    iget-object v0, p1, Lsa/c;->b:Lsa/d;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lsa/e;->O(Lsa/c;)Lsa/a;

    move-result-object v0

    if-nez p2, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isAnyEditorCameraRendering()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lsa/e$i;

    invoke-direct {p2, p0, v0, p1}, Lsa/e$i;-><init>(Lsa/e;Lsa/a;Lsa/c;)V

    invoke-static {p2}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public M(Lsa/c;)Lsa/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ray"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsa/e;->N(Lsa/c;Z)Lsa/a;

    move-result-object p1

    return-object p1
.end method

.method public N(Lsa/c;Z)Lsa/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "ignoreGizmo"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lsa/e;->L(Lsa/c;Z)Lsa/a;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lsa/e;->U(Lsa/c;Z)Lsa/a;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lsa/a;->getDistance()F

    move-result p2

    invoke-virtual {p1}, Lsa/a;->getDistance()F

    move-result v1

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_0

    return-object v0

    :cond_0
    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final O(Lsa/c;)Lsa/a;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ray"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Trying to ray a null ray"

    invoke-static {p1}, Ld5/d;->a2(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v1, Lc9/a;->o:LWc/c;

    iget-object v2, v1, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    if-nez v2, :cond_1

    const-string p1, "Trying to ray a null world"

    invoke-static {p1}, Ld5/d;->a2(Ljava/lang/String;)V

    return-object v0

    :cond_1
    sget-object v2, Lsa/e;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p1, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v2, p1, Lsa/c;->c:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_2
    const v2, 0x47c35000    # 100000.0f

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    sget-object v2, Lsa/e;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    iget-object v3, p1, Lsa/c;->b:Lsa/d;

    iget-object v3, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    iget-object v4, p1, Lsa/c;->b:Lsa/d;

    iget-object v4, v4, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v4

    invoke-virtual {v7, v2, v3, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    sget-object v2, Lsa/e;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/jme3/math/Vector3f;

    iget v2, v7, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v7, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v7, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8, v2, v3, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lsa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lsa/c;->s()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc9/a;->l(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->i(I)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->b:I

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    invoke-static {v2}, LWc/d;->a(I)I

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v3

    move v4, v2

    :goto_2
    sget-object v10, LWc/c;->i:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v1, v1, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {v1, v7, v8}, Lcom/jme3/bullet/CollisionSpace;->rayTest(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_5
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_3
    if-ge v3, v5, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/bullet/collision/PhysicsRayTestResult;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionGroup()I

    move-result v11

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollideWithGroups()I

    move-result v12

    and-int/2addr v12, v4

    if-eqz v12, :cond_7

    and-int/2addr v11, v2

    if-nez v11, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lz9/a;

    if-eqz v11, :cond_7

    move-object v3, p0

    move-object v4, p1

    move-object v5, v11

    invoke-virtual/range {v3 .. v9}, Lsa/e;->u(Lsa/c;Lz9/a;Lcom/jme3/bullet/collision/PhysicsRayTestResult;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lsa/a;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v10

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    monitor-exit v10

    return-object v0

    :goto_6
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public P(Lsa/c;F)Lsa/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "radius"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lsa/e;->Q(Lsa/c;FZ)Lsa/a;

    move-result-object p1

    return-object p1
.end method

.method public Q(Lsa/c;FZ)Lsa/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ray",
            "radius",
            "ignoreGizmo"
        }
    .end annotation

    if-eqz p1, :cond_6

    iget-object v0, p1, Lsa/c;->b:Lsa/d;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p1, p2}, Lsa/e;->R(Lsa/c;F)Lsa/a;

    move-result-object p2

    if-nez p3, :cond_5

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isAnyEditorCameraRendering()Z

    move-result p3

    if-eqz p3, :cond_5

    new-instance p3, LJAVARuntime/GizmoPath;

    invoke-direct {p3}, LJAVARuntime/GizmoPath;-><init>()V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lsa/e;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p3, v0}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsa/e;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p3, v0}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lsa/c;->b:Lsa/d;

    iget-object p1, p1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {p2}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v0, Lsa/e;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p1, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p1, Lsa/c;->c:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v2, p1, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v2, p1, Lsa/c;->c:F

    invoke-virtual {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lsa/c;->b:Lsa/d;

    iget-object p1, p1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v2, p1, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v2, 0x497423f0    # 999999.0f

    invoke-virtual {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lsa/c;->b:Lsa/d;

    iget-object p1, p1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    :goto_2
    invoke-virtual {p3}, LJAVARuntime/GizmoPath;->apply()V

    invoke-static {p3}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    :cond_5
    return-object p2

    :cond_6
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final R(Lsa/c;F)Lsa/a;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "radius"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Trying to ray a null ray"

    invoke-static {p1}, Ld5/d;->a2(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v1, Lc9/a;->o:LWc/c;

    iget-object v2, v1, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    if-nez v2, :cond_1

    const-string p1, "Trying to ray a null world"

    invoke-static {p1}, Ld5/d;->a2(Ljava/lang/String;)V

    return-object v0

    :cond_1
    sget-object v2, Lsa/e;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p1, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v2, p1, Lsa/c;->c:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_2
    const v2, 0x47c35000    # 100000.0f

    invoke-virtual {v9, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    sget-object v2, Lsa/e;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    iget-object v4, p1, Lsa/c;->b:Lsa/d;

    iget-object v4, v4, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    iget-object v5, p1, Lsa/c;->b:Lsa/d;

    iget-object v5, v5, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v5

    invoke-virtual {v7, v2, v4, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    sget-object v2, Lsa/e;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/jme3/math/Vector3f;

    iget v2, v7, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v4

    add-float/2addr v2, v4

    iget v4, v7, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, v7, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v8, v2, v4, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lsa/c;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lsa/c;->s()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc9/a;->l(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->i(I)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->b:I

    const/4 v5, 0x1

    shl-int/2addr v5, v2

    invoke-static {v2}, LWc/d;->a(I)I

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v4

    move v5, v2

    :goto_2
    cmpl-float v3, p2, v3

    if-lez v3, :cond_5

    goto :goto_3

    :cond_5
    const p2, 0x3d4ccccd    # 0.05f

    :goto_3
    new-instance v3, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-direct {v3, p2}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;-><init>(F)V

    new-instance p2, Lcom/jme3/math/Transform;

    invoke-direct {p2}, Lcom/jme3/math/Transform;-><init>()V

    new-instance v6, Lcom/jme3/math/Transform;

    invoke-direct {v6}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->loadIdentity()V

    invoke-virtual {v6}, Lcom/jme3/math/Transform;->loadIdentity()V

    invoke-virtual {p2, v7}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-virtual {v6, v8}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v11, LWc/c;->i:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v1, v1, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {v1, v3, p2, v6, v10}, Lcom/jme3/bullet/CollisionSpace;->sweepTest(Lcom/jme3/bullet/collision/shapes/ConvexShape;Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;Ljava/util/List;)Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_6
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result p2

    :goto_4
    if-ge v4, p2, :cond_9

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionGroup()I

    move-result v1

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollideWithGroups()I

    move-result v3

    and-int/2addr v3, v5

    if-eqz v3, :cond_8

    and-int/2addr v1, v2

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz9/a;

    if-eqz v1, :cond_8

    move-object v3, p0

    move-object v4, p1

    move-object v5, v1

    invoke-virtual/range {v3 .. v9}, Lsa/e;->v(Lsa/c;Lz9/a;Lcom/jme3/bullet/collision/PhysicsSweepTestResult;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lsa/a;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v11

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    monitor-exit v11

    return-object v0

    :goto_7
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public T(Lsa/c;)Lsa/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ray"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsa/e;->U(Lsa/c;Z)Lsa/a;

    move-result-object p1

    return-object p1
.end method

.method public U(Lsa/c;Z)Lsa/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "ignoreGizmo"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p1, Lsa/c;->b:Lsa/d;

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2, p1, p2}, Lsa/e;->S(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lsa/c;Z)Lsa/a;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p2, :cond_7

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isAnyEditorCameraRendering()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, LJAVARuntime/GizmoPath;

    invoke-direct {p2}, LJAVARuntime/GizmoPath;-><init>()V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lsa/e;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v1

    invoke-virtual {p2, v1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lsa/e;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v1

    invoke-virtual {p2, v1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p1, Lsa/c;->b:Lsa/d;

    iget-object p1, p1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v0}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v1, Lsa/e;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p1, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v2, p1, Lsa/c;->c:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v3, p1, Lsa/c;->b:Lsa/d;

    iget-object v3, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v3, p1, Lsa/c;->c:F

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lsa/c;->b:Lsa/d;

    iget-object p1, p1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_4

    :cond_6
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object v3, p1, Lsa/c;->b:Lsa/d;

    iget-object v3, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v3, 0x497423f0    # 999999.0f

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lsa/c;->b:Lsa/d;

    iget-object p1, p1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    :goto_4
    invoke-virtual {p2}, LJAVARuntime/GizmoPath;->apply()V

    invoke-static {p2}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    :cond_7
    :goto_5
    return-object v0
.end method

.method public final u(Lsa/c;Lz9/a;Lcom/jme3/bullet/collision/PhysicsRayTestResult;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lsa/a;
    .locals 30
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ray",
            "physicsEntity",
            "hitZero",
            "from",
            "to",
            "dir"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v3, Lsa/a;

    invoke-direct {v3}, Lsa/a;-><init>()V

    iget-boolean v0, v1, Lsa/e;->e:Z

    iput-boolean v0, v3, Lsa/a;->r:Z

    invoke-interface/range {p2 .. p2}, Lz9/a;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getHitFraction()F

    move-result v0

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual {v5, v6, v7, v0}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    new-instance v14, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v14, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-interface/range {p2 .. p2}, Lz9/a;->getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v13, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iget-boolean v0, v1, Lsa/e;->d:Z

    const/16 v16, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lsa/e;->e:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move-object/from16 p5, v13

    move-object/from16 v15, v16

    goto/16 :goto_16

    :cond_2
    :goto_1
    invoke-interface/range {p2 .. p2}, Lz9/a;->getBulletShapeChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object v12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v6, -0x1

    :try_start_0
    array-length v0, v12

    if-ne v0, v10, :cond_3

    aget-object v0, v12, v11

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex()I

    move-result v0

    invoke-interface {v2, v0}, Lz9/a;->findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->triangleIndex()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v17, v6

    move-object/from16 v18, v7

    move v0, v10

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move v5, v10

    move v4, v11

    move-object/from16 p5, v13

    goto/16 :goto_14

    :catch_1
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move v5, v10

    move v4, v11

    move-object/from16 p5, v13

    move-object/from16 v7, v16

    goto/16 :goto_14

    :cond_3
    move/from16 v17, v6

    move v0, v11

    move-object/from16 v18, v16

    :goto_2
    if-nez v0, :cond_7

    move v6, v10

    move v0, v11

    :goto_3
    :try_start_2
    array-length v7, v12

    if-ge v0, v7, :cond_6

    aget-object v7, v12, v0

    invoke-virtual {v7}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v8

    instance-of v8, v8, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    if-nez v8, :cond_4

    invoke-virtual {v7}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v7

    instance-of v7, v7, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    if-eqz v7, :cond_5

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move v5, v10

    move v4, v11

    move-object/from16 p5, v13

    :goto_4
    move/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_14

    :cond_4
    :goto_5
    move v6, v11

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->triangleIndex()I

    move-result v0

    aget-object v0, v12, v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex()I

    move-result v0

    invoke-interface {v2, v0}, Lz9/a;->findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->triangleIndex()I

    move-result v17
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v18, v7

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move v5, v10

    move v4, v11

    move-object/from16 p5, v13

    move/from16 v6, v17

    goto/16 :goto_14

    :cond_7
    :goto_6
    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move v5, v10

    move v4, v11

    move-object/from16 p5, v13

    goto/16 :goto_13

    :cond_8
    move v9, v11

    :goto_7
    :try_start_4
    array-length v0, v12

    if-ge v9, v0, :cond_7

    aget-object v0, v12, v9

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v6

    instance-of v6, v6, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    if-nez v6, :cond_a

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v6

    instance-of v6, v6, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    if-eqz v6, :cond_9

    goto :goto_8

    :cond_9
    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move/from16 v20, v9

    move v5, v10

    move v4, v11

    move-object/from16 v21, v12

    move-object/from16 p5, v13

    goto/16 :goto_12

    :cond_a
    :goto_8
    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex()I

    move-result v0

    invoke-interface {v2, v0}, Lz9/a;->findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v8, :cond_9

    :try_start_5
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object v0

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v6, :cond_9

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v6, v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v6, :cond_9

    new-instance v6, LOc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->p1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-direct {v6, v7}, LOc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    move v7, v11

    :goto_9
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e1()I

    move-result v15

    if-ge v7, v15, :cond_9

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S0(I)LUb/h;

    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    :try_start_6
    iget v10, v15, LUb/h;->b:I

    invoke-virtual {v6, v10}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    :try_start_7
    iget v11, v15, LUb/h;->c:I

    invoke-virtual {v6, v11}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    move/from16 v20, v9

    :try_start_8
    iget v9, v15, LUb/h;->d:I

    invoke-virtual {v6, v9}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v9

    sget-object v21, Lsa/e;->l:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    check-cast v6, LUb/f;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    move-object/from16 v21, v12

    :try_start_9
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getOnPhysicsMatrix()[F

    move-result-object v12

    invoke-virtual {v6, v12}, LUb/f;->L0([F)V

    sget-object v12, Lsa/e;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v12}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LUb/f;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-object/from16 v23, v13

    :try_start_a
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getAttachedPhysicsObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v13

    iget-object v13, v13, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_b
    invoke-virtual {v12, v13, v5, v5, v4}, LUb/f;->c1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;ZZZ)V

    invoke-virtual {v12, v6}, LUb/f;->p0(LUb/f;)LUb/f;

    invoke-virtual {v12, v10, v10}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v12, v11, v11}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v12, v9, v9}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v11, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    invoke-virtual {v9, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12

    invoke-virtual {v14, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v13

    invoke-virtual {v12, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v25

    invoke-virtual {v12, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v26

    invoke-virtual {v12, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v12

    invoke-virtual {v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v27

    invoke-virtual {v6, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v6

    mul-float v13, v25, v27

    mul-float v28, v26, v26

    sub-float v13, v13, v28

    const/16 v28, 0x0

    cmpl-float v29, v13, v28

    if-nez v29, :cond_c

    :cond_b
    move-object v15, v8

    move-object/from16 p5, v23

    goto/16 :goto_c

    :cond_c
    const/high16 v28, 0x3f800000    # 1.0f

    div-float v13, v28, v13

    mul-float v27, v27, v12

    mul-float v29, v26, v6

    sub-float v27, v27, v29

    mul-float v27, v27, v13

    mul-float v25, v25, v6

    mul-float v26, v26, v12

    sub-float v25, v25, v26

    mul-float v25, v25, v13

    const/4 v6, 0x0

    cmpl-float v12, v27, v6

    if-ltz v12, :cond_b

    cmpl-float v12, v25, v6

    if-ltz v12, :cond_b

    add-float v27, v27, v25

    cmpg-float v6, v27, v28

    if-gtz v6, :cond_b

    iget-boolean v6, v1, Lsa/e;->e:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    if-eqz v6, :cond_d

    :try_start_c
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->d0()I

    move-result v6

    iget v7, v15, LUb/h;->b:I

    if-le v6, v7, :cond_d

    iget v12, v15, LUb/h;->c:I

    if-le v6, v12, :cond_d

    iget v12, v15, LUb/h;->d:I

    if-le v6, v12, :cond_d

    sget-object v6, Lsa/e;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v7, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v12

    iget v6, v15, LUb/h;->c:I

    sget-object v7, Lsa/e;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v13

    iget v6, v15, LUb/h;->d:I

    sget-object v7, Lsa/e;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    move-object v6, v10

    move-object v7, v11

    move-object v15, v8

    move-object v8, v9

    move-object v9, v14

    move-object v10, v12

    move-object v11, v13

    move-object v12, v0

    move-object/from16 p5, v23

    move-object/from16 v13, p5

    :try_start_d
    invoke-static/range {v6 .. v13}, Lsa/b;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v15, v8

    move-object/from16 p5, v23

    :goto_a
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    goto/16 :goto_11

    :cond_d
    move-object v15, v8

    move-object/from16 p5, v23

    :goto_b
    move v11, v5

    move/from16 v6, v17

    goto/16 :goto_15

    :catch_7
    move-exception v0

    move-object/from16 p5, v23

    goto/16 :goto_11

    :goto_c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v13, p5

    move v11, v4

    move v10, v5

    move-object v8, v15

    move-object/from16 v5, v19

    move/from16 v9, v20

    move-object/from16 v12, v21

    move-object/from16 v6, v22

    move-object/from16 v4, v24

    goto/16 :goto_9

    :catch_8
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move-object/from16 p5, v23

    :goto_d
    const/4 v4, 0x0

    :goto_e
    const/4 v5, 0x1

    goto :goto_11

    :catch_9
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    :goto_f
    move-object/from16 p5, v13

    goto :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    :goto_10
    move-object/from16 v21, v12

    goto :goto_f

    :catch_b
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move/from16 v20, v9

    goto :goto_10

    :catch_c
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move/from16 v20, v9

    move v4, v11

    move-object/from16 v21, v12

    move-object/from16 p5, v13

    goto :goto_e

    :catch_d
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move/from16 v20, v9

    move v5, v10

    move v4, v11

    move-object/from16 v21, v12

    move-object/from16 p5, v13

    :goto_11
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    goto/16 :goto_4

    :goto_12
    add-int/lit8 v9, v20, 0x1

    move-object/from16 v13, p5

    move v11, v4

    move v10, v5

    move-object/from16 v5, v19

    move-object/from16 v12, v21

    move-object/from16 v4, v24

    goto/16 :goto_7

    :goto_13
    move v11, v4

    move/from16 v6, v17

    move-object/from16 v15, v18

    goto :goto_15

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v11, v4

    move-object v15, v7

    :goto_15
    if-nez v11, :cond_e

    iget-boolean v0, v1, Lsa/e;->e:Z

    if-eqz v0, :cond_e

    if-ltz v6, :cond_e

    if-eqz v15, :cond_e

    :try_start_10
    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object v0

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v7, :cond_e

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v7, v15, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v7, :cond_e

    new-instance v7, LOc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->p1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-direct {v7, v8}, LOc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e1()I

    move-result v8

    if-le v8, v6, :cond_e

    invoke-virtual {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S0(I)LUb/h;

    move-result-object v6

    iget v8, v6, LUb/h;->b:I

    invoke-virtual {v7, v8}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v8

    iget v9, v6, LUb/h;->c:I

    invoke-virtual {v7, v9}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v9

    iget v10, v6, LUb/h;->d:I

    invoke-virtual {v7, v10}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10

    sget-object v7, Lsa/e;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LUb/f;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getOnPhysicsMatrix()[F

    move-result-object v11

    invoke-virtual {v7, v11}, LUb/f;->L0([F)V

    sget-object v11, Lsa/e;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LUb/f;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getAttachedPhysicsObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v12

    iget-object v12, v12, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v11, v12, v5, v5, v4}, LUb/f;->c1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;ZZZ)V

    invoke-virtual {v11, v7}, LUb/f;->p0(LUb/f;)LUb/f;

    invoke-virtual {v11, v8, v8}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v11, v9, v9}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v11, v10, v10}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    :try_start_11
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->d0()I

    move-result v4

    iget v5, v6, LUb/h;->b:I

    if-le v4, v5, :cond_e

    iget v7, v6, LUb/h;->c:I

    if-le v4, v7, :cond_e

    iget v7, v6, LUb/h;->d:I

    if-le v4, v7, :cond_e

    sget-object v4, Lsa/e;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v4

    iget v5, v6, LUb/h;->c:I

    sget-object v7, Lsa/e;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v5, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v11

    iget v5, v6, LUb/h;->d:I

    sget-object v6, Lsa/e;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v12

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v14

    move-object v10, v4

    move-object/from16 v13, p5

    invoke-static/range {v6 .. v13}, Lsa/b;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_16

    :catch_f
    move-exception v0

    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_16
    invoke-virtual {v3, v15}, Lsa/a;->D(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    if-eqz v15, :cond_f

    iget-object v0, v15, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_17

    :cond_f
    move-object/from16 v0, v16

    :goto_17
    invoke-virtual {v3, v0}, Lsa/a;->E(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Lsa/a;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_18

    :cond_10
    move-object/from16 v24, v4

    move-object/from16 v19, v5

    :goto_18
    instance-of v0, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;

    if-eqz v0, :cond_11

    move-object v0, v2

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsa/a;->I(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;->c()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsa/a;->J(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    :cond_11
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v2, v19

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v3, v0}, Lsa/a;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v2, p6

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsa/a;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual/range {p3 .. p3}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getHitNormalLocal()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsa/a;->F(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    move-object/from16 v4, v24

    invoke-virtual {v3, v4}, Lsa/a;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v3}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    move-object/from16 v2, p1

    iget-object v2, v2, Lsa/c;->b:Lsa/d;

    iget-object v2, v2, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    invoke-virtual {v3, v0}, Lsa/a;->setDistance(F)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lsa/a;->L(F)V

    return-object v3
.end method

.method public final v(Lsa/c;Lz9/a;Lcom/jme3/bullet/collision/PhysicsSweepTestResult;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lsa/a;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ray",
            "physicsEntity",
            "hitZero",
            "from",
            "to",
            "dir"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface/range {p2 .. p2}, Lz9/a;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->getHitFraction()F

    move-result v0

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual {v4, v5, v6, v0}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    new-instance v13, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v13, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance v14, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iget-boolean v0, v1, Lsa/e;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lsa/e;->e:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v18, v3

    const/4 v15, 0x0

    goto/16 :goto_14

    :cond_2
    :goto_1
    invoke-interface/range {p2 .. p2}, Lz9/a;->getBulletShapeChildren()[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    move-result-object v11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v5, -0x1

    :try_start_0
    array-length v0, v11

    if-ne v0, v9, :cond_3

    aget-object v0, v11, v10

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex()I

    move-result v0

    invoke-interface {v2, v0}, Lz9/a;->findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->triangleIndex()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v16, v5

    move-object/from16 v17, v6

    move v0, v9

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    move v3, v9

    move v2, v10

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move-object/from16 v18, v3

    move v3, v9

    move v2, v10

    const/4 v6, 0x0

    goto/16 :goto_12

    :cond_3
    move/from16 v16, v5

    move v0, v10

    const/16 v17, 0x0

    :goto_2
    if-nez v0, :cond_7

    move v5, v9

    move v0, v10

    :goto_3
    :try_start_2
    array-length v6, v11

    if-ge v0, v6, :cond_6

    aget-object v6, v11, v0

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v7

    instance-of v7, v7, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v6

    instance-of v6, v6, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    if-eqz v6, :cond_5

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v18, v3

    move v3, v9

    move v2, v10

    :goto_4
    move/from16 v5, v16

    move-object/from16 v6, v17

    goto/16 :goto_12

    :cond_4
    :goto_5
    move v5, v10

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->triangleIndex()I

    move-result v0

    aget-object v0, v11, v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex()I

    move-result v0

    invoke-interface {v2, v0}, Lz9/a;->findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->triangleIndex()I

    move-result v16
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v17, v6

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v18, v3

    move v3, v9

    move v2, v10

    move/from16 v5, v16

    goto/16 :goto_12

    :cond_7
    :goto_6
    move-object/from16 v18, v3

    move v3, v9

    move v2, v10

    goto/16 :goto_11

    :cond_8
    move v8, v10

    :goto_7
    :try_start_4
    array-length v0, v11

    if-ge v8, v0, :cond_7

    aget-object v0, v11, v8

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v5

    instance-of v5, v5, Lcom/jme3/bullet/collision/shapes/GImpactCollisionShape;

    if-nez v5, :cond_a

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v5

    instance-of v5, v5, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    if-eqz v5, :cond_9

    goto :goto_8

    :cond_9
    move-object/from16 v18, v3

    move/from16 v21, v8

    move v3, v9

    move v2, v10

    move-object/from16 v19, v11

    goto/16 :goto_10

    :cond_a
    :goto_8
    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;->getShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex()I

    move-result v0

    invoke-interface {v2, v0}, Lz9/a;->findColliderFromHash(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v7, :cond_9

    :try_start_5
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object v0

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v5, :cond_9

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v5, v7, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v5, :cond_9

    new-instance v5, LOc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->p1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-direct {v5, v6}, LOc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    move v6, v10

    :goto_9
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e1()I

    move-result v15

    if-ge v6, v15, :cond_9

    invoke-virtual {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S0(I)LUb/h;

    move-result-object v15

    iget v12, v15, LUb/h;->b:I

    invoke-virtual {v5, v12}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    :try_start_6
    iget v9, v15, LUb/h;->c:I

    invoke-virtual {v5, v9}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    :try_start_7
    iget v10, v15, LUb/h;->d:I

    invoke-virtual {v5, v10}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10

    sget-object v20, Lsa/e;->l:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v2, v20

    check-cast v2, LUb/f;

    move-object/from16 v20, v5

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getOnPhysicsMatrix()[F

    move-result-object v5

    invoke-virtual {v2, v5}, LUb/f;->L0([F)V

    sget-object v5, Lsa/e;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LUb/f;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    move/from16 v21, v8

    :try_start_8
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getAttachedPhysicsObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v8

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object/from16 v18, v3

    move-object/from16 v22, v11

    const/4 v3, 0x1

    const/4 v11, 0x0

    :try_start_9
    invoke-virtual {v5, v8, v3, v3, v11}, LUb/f;->c1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;ZZZ)V

    invoke-virtual {v5, v2}, LUb/f;->p0(LUb/f;)LUb/f;

    invoke-virtual {v5, v12, v12}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v5, v9, v9}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v5, v10, v10}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v9, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v10, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v13, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v8

    invoke-virtual {v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v19

    invoke-virtual {v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v23

    invoke-virtual {v5, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v5

    invoke-virtual {v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v24

    invoke-virtual {v2, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    mul-float v8, v19, v24

    mul-float v25, v23, v23

    sub-float v8, v8, v25

    const/16 v25, 0x0

    cmpl-float v26, v8, v25

    if-nez v26, :cond_c

    :cond_b
    move-object v15, v7

    move v2, v11

    move-object/from16 v19, v22

    goto/16 :goto_c

    :cond_c
    const/high16 v25, 0x3f800000    # 1.0f

    div-float v8, v25, v8

    mul-float v24, v24, v5

    mul-float v26, v23, v2

    sub-float v24, v24, v26

    mul-float v24, v24, v8

    mul-float v19, v19, v2

    mul-float v23, v23, v5

    sub-float v19, v19, v23

    mul-float v19, v19, v8

    const/4 v2, 0x0

    cmpl-float v5, v24, v2

    if-ltz v5, :cond_b

    cmpl-float v5, v19, v2

    if-ltz v5, :cond_b

    add-float v24, v24, v19

    cmpg-float v5, v24, v25

    if-gtz v5, :cond_b

    iget-boolean v5, v1, Lsa/e;->e:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    if-eqz v5, :cond_d

    :try_start_a
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->d0()I

    move-result v5

    iget v6, v15, LUb/h;->b:I

    if-le v5, v6, :cond_d

    iget v8, v15, LUb/h;->c:I

    if-le v5, v8, :cond_d

    iget v8, v15, LUb/h;->d:I

    if-le v5, v8, :cond_d

    sget-object v5, Lsa/e;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v19

    iget v5, v15, LUb/h;->c:I

    sget-object v6, Lsa/e;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v20

    iget v5, v15, LUb/h;->d:I

    sget-object v6, Lsa/e;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object v5, v12

    move-object v6, v9

    move-object v15, v7

    move-object v7, v10

    move-object v8, v13

    move-object/from16 v9, v19

    move v12, v11

    move-object/from16 v10, v20

    move-object/from16 v19, v22

    move-object v11, v0

    move v2, v12

    move-object v12, v14

    :try_start_b
    invoke-static/range {v5 .. v12}, Lsa/b;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v15, v7

    move v2, v11

    move-object/from16 v19, v22

    :goto_a
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_f

    :cond_d
    move-object v15, v7

    move v2, v11

    :goto_b
    move v10, v3

    move/from16 v5, v16

    goto/16 :goto_13

    :catch_7
    move-exception v0

    move v2, v11

    move-object/from16 v19, v22

    goto :goto_f

    :goto_c
    add-int/lit8 v6, v6, 0x1

    move v10, v2

    move v9, v3

    move-object v7, v15

    move-object/from16 v3, v18

    move-object/from16 v11, v19

    move-object/from16 v5, v20

    move/from16 v8, v21

    move-object/from16 v2, p2

    goto/16 :goto_9

    :catch_8
    move-exception v0

    move-object/from16 v18, v3

    :goto_d
    move-object/from16 v19, v11

    const/4 v2, 0x0

    :goto_e
    const/4 v3, 0x1

    goto :goto_f

    :catch_9
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v8

    goto :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v8

    move v2, v10

    move-object/from16 v19, v11

    goto :goto_e

    :catch_b
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v8

    move v3, v9

    move v2, v10

    move-object/from16 v19, v11

    :goto_f
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    goto/16 :goto_4

    :goto_10
    add-int/lit8 v8, v21, 0x1

    move v10, v2

    move v9, v3

    move-object/from16 v3, v18

    move-object/from16 v11, v19

    move-object/from16 v2, p2

    goto/16 :goto_7

    :goto_11
    move v10, v2

    move/from16 v5, v16

    move-object/from16 v15, v17

    goto :goto_13

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v10, v2

    move-object v15, v6

    :goto_13
    if-nez v10, :cond_e

    iget-boolean v0, v1, Lsa/e;->e:Z

    if-eqz v0, :cond_e

    if-ltz v5, :cond_e

    if-eqz v15, :cond_e

    :try_start_e
    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object v0

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v6, :cond_e

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v6, v15, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v6, :cond_e

    new-instance v6, LOc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->p1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-direct {v6, v7}, LOc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e1()I

    move-result v7

    if-le v7, v5, :cond_e

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S0(I)LUb/h;

    move-result-object v5

    iget v7, v5, LUb/h;->b:I

    invoke-virtual {v6, v7}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    iget v8, v5, LUb/h;->c:I

    invoke-virtual {v6, v8}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v8

    iget v9, v5, LUb/h;->d:I

    invoke-virtual {v6, v9}, LOc/q;->h(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v9

    sget-object v6, Lsa/e;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LUb/f;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getOnPhysicsMatrix()[F

    move-result-object v10

    invoke-virtual {v6, v10}, LUb/f;->L0([F)V

    sget-object v10, Lsa/e;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LUb/f;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getAttachedPhysicsObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v11

    iget-object v11, v11, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v10, v11, v3, v3, v2}, LUb/f;->c1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;ZZZ)V

    invoke-virtual {v10, v6}, LUb/f;->p0(LUb/f;)LUb/f;

    invoke-virtual {v10, v7, v7}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v10, v8, v8}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v10, v9, v9}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    :try_start_f
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->d0()I

    move-result v2

    iget v3, v5, LUb/h;->b:I

    if-le v2, v3, :cond_e

    iget v6, v5, LUb/h;->c:I

    if-le v2, v6, :cond_e

    iget v6, v5, LUb/h;->d:I

    if-le v2, v6, :cond_e

    sget-object v2, Lsa/e;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    iget v3, v5, LUb/h;->c:I

    sget-object v6, Lsa/e;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v10

    iget v3, v5, LUb/h;->d:I

    sget-object v5, Lsa/e;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h1(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v11

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v13

    move-object v9, v2

    move-object v12, v14

    invoke-static/range {v5 .. v12}, Lsa/b;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_14

    :catch_d
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_14
    new-instance v0, Lsa/a;

    invoke-direct {v0}, Lsa/a;-><init>()V

    iget-boolean v2, v1, Lsa/e;->e:Z

    iput-boolean v2, v0, Lsa/a;->r:Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, v2}, Lsa/a;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v3, p6

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsa/a;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Lcom/jme3/bullet/collision/PhysicsSweepTestResult;->getHitNormalLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsa/a;->F(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Lsa/a;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v0}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    move-object/from16 v3, p1

    iget-object v3, v3, Lsa/c;->b:Lsa/d;

    iget-object v3, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    invoke-virtual {v0, v2}, Lsa/a;->setDistance(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lsa/a;->L(F)V

    invoke-virtual {v0, v15}, Lsa/a;->D(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;)V

    if-eqz v15, :cond_f

    iget-object v15, v15, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_15

    :cond_f
    const/4 v15, 0x0

    :goto_15
    invoke-virtual {v0, v15}, Lsa/a;->E(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v0, v14}, Lsa/a;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object v0
.end method

.method public w()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lsa/e;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public x()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lsa/e;->c:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lsa/e;->e:Z

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lsa/e;->d:Z

    return v0
.end method
