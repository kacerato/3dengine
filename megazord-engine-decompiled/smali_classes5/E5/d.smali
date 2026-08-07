.class public LE5/d;
.super Lz5/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE5/d$D;,
        LE5/d$E;
    }
.end annotation


# static fields
.field public static final A:LUc/b;

.field public static final B:LUc/b;

.field public static final C:LUc/b;

.field public static final D:LUc/b;

.field public static final E:F = 50.0f

.field public static final F:F = 8.0f

.field public static final G:I = 0x8

.field public static final H:I = 0x8

.field public static final I:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static final J:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static final K:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static final x:F = 5000.0f

.field public static final y:LUc/b;

.field public static final z:LUc/b;


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE5/d$D;",
            ">;"
        }
    .end annotation
.end field

.field public l:LE5/d$D;

.field public m:Le8/e;

.field public n:Z

.field public o:Z

.field public p:LMb/p;

.field public q:LMb/p;

.field public r:LMb/p;

.field public s:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public t:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public u:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public v:LE5/c;

.field public w:LE5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_COLOR:LUc/b;

    sput-object v0, LE5/d;->y:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_PRESSED_BUTTONS_COLOR:LUc/b;

    sput-object v0, LE5/d;->z:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_TEXT_COLOR:LUc/b;

    sput-object v0, LE5/d;->A:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BUTTONS_OUTLINE_COLOR:LUc/b;

    sput-object v0, LE5/d;->B:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_PRESSED_BUTTONS_OUTLINE_COLOR:LUc/b;

    sput-object v0, LE5/d;->C:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_BACKGROUND_COLOR:LUc/b;

    sput-object v0, LE5/d;->D:LUc/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xff

    invoke-direct {v1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v1, LE5/d;->I:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    sput-object v1, LE5/d;->J:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    sput-object v1, LE5/d;->K:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lz5/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LE5/d;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LE5/d;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LE5/d;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LE5/d;->j:Ljava/util/List;

    new-instance v0, LE5/d$k;

    invoke-direct {v0, p0}, LE5/d$k;-><init>(LE5/d;)V

    iput-object v0, p0, LE5/d;->k:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE5/d$D;

    iput-object v0, p0, LE5/d;->l:LE5/d$D;

    const/4 v0, 0x0

    iput-boolean v0, p0, LE5/d;->n:Z

    iput-boolean v0, p0, LE5/d;->o:Z

    sget-object v0, LE5/c;->Rect:LE5/c;

    iput-object v0, p0, LE5/d;->v:LE5/c;

    invoke-virtual {p0}, LE5/d;->b0()V

    return-void
.end method

.method public static synthetic G(LE5/d;LE5/c;)LE5/c;
    .locals 0

    iput-object p1, p0, LE5/d;->v:LE5/c;

    return-object p1
.end method

.method public static synthetic H(LE5/d;)LE5/a;
    .locals 0

    iget-object p0, p0, LE5/d;->w:LE5/a;

    return-object p0
.end method

.method public static synthetic I(LE5/d;LE5/a;)LE5/a;
    .locals 0

    iput-object p1, p0, LE5/d;->w:LE5/a;

    return-object p1
.end method

.method public static synthetic J(LE5/d;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;
    .locals 0

    invoke-virtual {p0}, LE5/d;->T()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object p0

    return-object p0
.end method

.method private c0()V
    .locals 1

    iget-boolean v0, p0, LE5/d;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LE5/d;->o:Z

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public C()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public F()V
    .locals 1

    invoke-super {p0}, Lz5/d;->F()V

    iget-boolean v0, p0, LE5/d;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LE5/d;->m:Le8/e;

    invoke-virtual {v0}, Le8/g;->g()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LE5/d;->m:Le8/e;

    invoke-virtual {v0}, Le8/g;->p()V

    :goto_0
    return-void
.end method

.method public final K(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;ZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "panel3DView",
            "touchCaptured",
            "controller"
        }
    .end annotation

    if-eqz p3, :cond_0

    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)LMc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, LMc/h;->e:Z

    if-nez v1, :cond_0

    sget-object v1, LKc/a;->u:LKc/a$g;

    invoke-virtual {v1}, LKc/a$g;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a0(LMc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:LH5/d;

    iget-object p1, p1, LH5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lsa/d;

    move-result-object p1

    invoke-virtual {p1}, Lsa/d;->s()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p2

    neg-float p2, p2

    float-to-int p2, p2

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lsa/d;->s()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, p3, p2, p1}, LE5/d;->a0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;II)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, LE5/d$a;

    invoke-direct {p2, p0, p1}, LE5/d$a;-><init>(LE5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {p2}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final L(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedGameObject"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()Loa/c;

    move-result-object v3

    invoke-virtual {v3}, Loa/c;->c()I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()Loa/c;

    move-result-object v0

    invoke-virtual {v0}, Loa/c;->b()I

    move-result v0

    int-to-float v0, v0

    new-instance v7, LJAVARuntime/Vector3;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v7, v3}, LJAVARuntime/Vector3;-><init>(F)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v3

    invoke-virtual {v3}, Loa/c;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v3

    invoke-virtual {v3}, Loa/c;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, LJAVARuntime/Vector3;->setY(F)V

    iget-object v9, p0, LE5/d;->j:Ljava/util/List;

    sget-object v10, LE5/d$E;->TopRight:LE5/d$E;

    const/4 v11, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move v6, v11

    invoke-virtual/range {v3 .. v10}, LE5/d;->R(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;ILJAVARuntime/Vector3;ZLjava/util/List;LE5/d$E;)Z

    move-result v8

    move-object v5, v1

    move v6, v0

    move v7, v11

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, LE5/d;->Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;FIZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Z

    move-result p1

    return p1
.end method

.method public final M(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z
    .locals 5
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
            "point",
            "screenH",
            "layer",
            "touchCaptured",
            "buttonSize",
            "onTouch"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    const p1, 0x459c4000    # 5000.0f

    int-to-float p3, p3

    sub-float/2addr p1, p3

    invoke-direct {v0, v1, p2, p1}, LJAVARuntime/Vector3;-><init>(IFF)V

    int-to-float p1, p5

    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, p1, p2

    neg-float p3, p2

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, LJAVARuntime/Vector3;->subLocal(FFF)V

    invoke-virtual {p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v2

    sget-object v3, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)LMc/h;

    move-result-object v2

    invoke-virtual {v0}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p5}, LE5/d;->d0(LMc/h;LJAVARuntime/Vector3;I)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-static {p6}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    move p4, v4

    :cond_0
    invoke-virtual {v0}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object p5

    invoke-virtual {p5, p3, p2, v1}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    new-instance p2, LJAVARuntime/GizmoObject;

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CIRCLE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->I1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C2()LJAVARuntime/Vertex;

    move-result-object p3

    invoke-direct {p2, p3}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    invoke-virtual {p2, p5}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-virtual {p2, p1, p1, p1}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    const/high16 p1, -0x3d4c0000    # -90.0f

    invoke-virtual {p2, p1, v1, v1}, LJAVARuntime/GizmoTransform;->setRotation(FFF)V

    new-instance p1, LJAVARuntime/Color;

    const/16 p3, 0xfc

    const/16 p5, 0xff

    const/16 p6, 0xde

    invoke-direct {p1, p6, p3, p5}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object p1, p0, LE5/d;->r:LMb/p;

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    invoke-virtual {p2, v4}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    invoke-virtual {p2, v4}, LJAVARuntime/GizmoObject;->setDualFaceRender(Z)V

    invoke-static {p2}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    return p4
.end method

.method public final N(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "screenW",
            "screenH",
            "touchCaptured",
            "anchorOutputObject"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p5

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    const/4 v0, 0x0

    if-nez v10, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {p0}, LE5/d;->W()F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v1, v2

    float-to-int v11, v1

    new-instance v1, LJAVARuntime/Vector3;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2}, LJAVARuntime/Vector3;-><init>(F)V

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v2

    invoke-virtual {v2}, Loa/c;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v2

    invoke-virtual {v2}, Loa/c;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, LJAVARuntime/Vector3;->setY(F)V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIAnchor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getLeftTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    if-eq v3, v9, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getRightTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    if-ne v3, v9, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v0

    :goto_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getTopTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    if-eq v4, v9, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getBottomTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-ne v1, v9, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :cond_4
    :goto_2
    move v12, v3

    goto :goto_3

    :cond_5
    move v0, v2

    move v12, v0

    :goto_3
    iget-object v1, v7, LE5/d;->w:LE5/a;

    sget-object v2, LE5/a;->Top:LE5/a;

    const/4 v13, 0x2

    if-eq v1, v2, :cond_6

    sget-object v2, LE5/a;->Bottom:LE5/a;

    if-ne v1, v2, :cond_7

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0, v10}, LE5/d;->Z(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, LE5/d$b;

    invoke-direct {v6, p0, v9, p1}, LE5/d$b;-><init>(LE5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    move-object v0, p0

    move/from16 v2, p3

    move v3, v13

    move/from16 v4, p4

    move v5, v11

    invoke-virtual/range {v0 .. v6}, LE5/d;->M(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    invoke-virtual {p0, v10}, LE5/d;->U(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, LE5/d$c;

    invoke-direct {v6, p0, v9, p1}, LE5/d$c;-><init>(LE5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual/range {v0 .. v6}, LE5/d;->M(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_7
    iget-object v0, v7, LE5/d;->w:LE5/a;

    sget-object v1, LE5/a;->Left:LE5/a;

    if-eq v0, v1, :cond_8

    sget-object v1, LE5/a;->Right:LE5/a;

    if-ne v0, v1, :cond_9

    :cond_8
    if-eqz v12, :cond_9

    invoke-virtual {p0, v10}, LE5/d;->X(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, LE5/d$d;

    invoke-direct {v6, p0, v9, p1}, LE5/d$d;-><init>(LE5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    move-object v0, p0

    move/from16 v2, p3

    move v3, v13

    move/from16 v4, p4

    move v5, v11

    invoke-virtual/range {v0 .. v6}, LE5/d;->M(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    invoke-virtual {p0, v10}, LE5/d;->Y(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, LE5/d$e;

    invoke-direct {v6, p0, v9, p1}, LE5/d$e;-><init>(LE5/d;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual/range {v0 .. v6}, LE5/d;->M(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_9
    return p4
.end method

.method public final O(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedGameObject"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-nez v5, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()Loa/c;

    move-result-object v2

    invoke-virtual {v2}, Loa/c;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()Loa/c;

    move-result-object v0

    invoke-virtual {v0}, Loa/c;->b()I

    move-result v0

    int-to-float v0, v0

    new-instance v7, LJAVARuntime/Vector3;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v7, v3}, LJAVARuntime/Vector3;-><init>(F)V

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v3

    invoke-virtual {v3}, Loa/c;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v3

    invoke-virtual {v3}, Loa/c;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, LJAVARuntime/Vector3;->setY(F)V

    iget-object v9, p0, LE5/d;->i:Ljava/util/List;

    sget-object v10, LE5/d$E;->TopRight:LE5/d$E;

    const/4 v6, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, LE5/d;->R(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;ILJAVARuntime/Vector3;ZLjava/util/List;LE5/d$E;)Z

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V0()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->O0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    move v10, v3

    :goto_0
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v7

    if-eq v7, p1, :cond_2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v6, p0

    move v8, v2

    move v9, v0

    move-object v11, p1

    invoke-virtual/range {v6 .. v11}, LE5/d;->N(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v10

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v10

    :cond_4
    return v3
.end method

.method public final P(Lna/j;FIZILjava/lang/Runnable;)Z
    .locals 5
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
            "ap",
            "screenH",
            "layer",
            "touchCaptured",
            "buttonSize",
            "onTouch"
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, LJAVARuntime/Vector3;

    invoke-virtual {p1}, Lna/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Lna/j;->c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    const p1, 0x459c4000    # 5000.0f

    int-to-float p3, p3

    sub-float/2addr p1, p3

    invoke-direct {v0, v1, p2, p1}, LJAVARuntime/Vector3;-><init>(IFF)V

    int-to-float p1, p5

    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, p1, p2

    neg-float p3, p2

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, LJAVARuntime/Vector3;->subLocal(FFF)V

    invoke-virtual {p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v2

    sget-object v3, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)LMc/h;

    move-result-object v2

    invoke-virtual {v0}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p5}, LE5/d;->d0(LMc/h;LJAVARuntime/Vector3;I)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-static {p6}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    move p4, v4

    :cond_0
    invoke-virtual {v0}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object p5

    invoke-virtual {p5, p3, p2, v1}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    new-instance p2, LJAVARuntime/GizmoObject;

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CIRCLE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->I1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C2()LJAVARuntime/Vertex;

    move-result-object p3

    invoke-direct {p2, p3}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    invoke-virtual {p2, p5}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-virtual {p2, p1, p1, p1}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    const/high16 p1, -0x3d4c0000    # -90.0f

    invoke-virtual {p2, p1, v1, v1}, LJAVARuntime/GizmoTransform;->setRotation(FFF)V

    new-instance p1, LJAVARuntime/Color;

    const/16 p3, 0xe5

    const/16 p5, 0xde

    const/16 p6, 0xff

    invoke-direct {p1, p6, p3, p5}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    iget-object p1, p0, LE5/d;->q:LMb/p;

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    invoke-virtual {p2, v4}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    invoke-virtual {p2, v4}, LJAVARuntime/GizmoObject;->setDualFaceRender(Z)V

    invoke-static {p2}, LJAVARuntime/Gizmo;->drawEngine(LJAVARuntime/GizmoElement;)V

    :cond_1
    return p4
.end method

.method public final Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;FIZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Z
    .locals 15
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
            "selectedGameObject",
            "panel3DView",
            "screenH",
            "layer",
            "touchCaptured",
            "rect"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p6

    invoke-virtual {p0}, LE5/d;->W()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    float-to-int v9, v0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIAnchor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    const/4 v0, 0x0

    if-eqz v10, :cond_5

    move-object/from16 v1, p2

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr v1, v2

    iget-object v2, v7, LE5/d;->v:LE5/c;

    sget-object v3, LE5/c;->ManageAnchors:LE5/c;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v10, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->drawGizmos(FZ)V

    iget-object v1, v7, LE5/d;->v:LE5/c;

    if-ne v1, v3, :cond_5

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getTopAnchorPoints()Lna/j;

    move-result-object v1

    if-eqz v1, :cond_1

    move v11, v4

    goto :goto_1

    :cond_1
    move v11, v0

    :goto_1
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getLeftAnchorPoints()Lna/j;

    move-result-object v1

    if-eqz v1, :cond_2

    move v12, v4

    goto :goto_2

    :cond_2
    move v12, v0

    :goto_2
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getRightAnchorPoints()Lna/j;

    move-result-object v1

    if-eqz v1, :cond_3

    move v13, v4

    goto :goto_3

    :cond_3
    move v13, v0

    :goto_3
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getBottomAnchorPoints()Lna/j;

    move-result-object v1

    if-eqz v1, :cond_4

    move v14, v4

    goto :goto_4

    :cond_4
    move v14, v0

    :goto_4
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getTopAnchorPoints()Lna/j;

    move-result-object v1

    new-instance v6, LE5/d$f;

    invoke-direct {v6, p0, v10}, LE5/d$f;-><init>(LE5/d;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move v5, v9

    invoke-virtual/range {v0 .. v6}, LE5/d;->P(Lna/j;FIZILjava/lang/Runnable;)Z

    move-result v4

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getBottomAnchorPoints()Lna/j;

    move-result-object v1

    new-instance v6, LE5/d$g;

    invoke-direct {v6, p0, v10}, LE5/d$g;-><init>(LE5/d;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    invoke-virtual/range {v0 .. v6}, LE5/d;->P(Lna/j;FIZILjava/lang/Runnable;)Z

    move-result v4

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getRightAnchorPoints()Lna/j;

    move-result-object v1

    new-instance v6, LE5/d$h;

    invoke-direct {v6, p0, v10}, LE5/d$h;-><init>(LE5/d;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    invoke-virtual/range {v0 .. v6}, LE5/d;->P(Lna/j;FIZILjava/lang/Runnable;)Z

    move-result v4

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->getLeftAnchorPoints()Lna/j;

    move-result-object v1

    new-instance v6, LE5/d$i;

    invoke-direct {v6, p0, v10}, LE5/d$i;-><init>(LE5/d;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;)V

    invoke-virtual/range {v0 .. v6}, LE5/d;->P(Lna/j;FIZILjava/lang/Runnable;)Z

    move-result v0

    move v10, v0

    move v0, v11

    goto :goto_5

    :cond_5
    move/from16 v10, p5

    move v12, v0

    move v13, v12

    move v14, v13

    :goto_5
    iget-object v1, v7, LE5/d;->v:LE5/c;

    sget-object v2, LE5/c;->ManageAnchors:LE5/c;

    if-ne v1, v2, :cond_9

    if-nez v0, :cond_6

    invoke-virtual {p0, v8}, LE5/d;->Z(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, LE5/d$j;

    invoke-direct {v6, p0}, LE5/d$j;-><init>(LE5/d;)V

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v10

    move v5, v9

    invoke-virtual/range {v0 .. v6}, LE5/d;->M(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_6
    if-nez v12, :cond_7

    invoke-virtual {p0, v8}, LE5/d;->X(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, LE5/d$l;

    invoke-direct {v6, p0}, LE5/d$l;-><init>(LE5/d;)V

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v10

    move v5, v9

    invoke-virtual/range {v0 .. v6}, LE5/d;->M(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_7
    if-nez v13, :cond_8

    invoke-virtual {p0, v8}, LE5/d;->Y(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, LE5/d$m;

    invoke-direct {v6, p0}, LE5/d$m;-><init>(LE5/d;)V

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v10

    move v5, v9

    invoke-virtual/range {v0 .. v6}, LE5/d;->M(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_8
    if-nez v14, :cond_9

    invoke-virtual {p0, v8}, LE5/d;->U(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    new-instance v6, LE5/d$n;

    invoke-direct {v6, p0}, LE5/d$n;-><init>(LE5/d;)V

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v10

    move v5, v9

    invoke-virtual/range {v0 .. v6}, LE5/d;->M(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;FIZILjava/lang/Runnable;)Z

    :cond_9
    return v10
.end method

.method public final R(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;ILJAVARuntime/Vector3;ZLjava/util/List;LE5/d$E;)Z
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "selectedGameObject",
            "rect",
            "layer",
            "scale",
            "touchCaptured",
            "inSceneOptions",
            "location"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;",
            "I",
            "LJAVARuntime/Vector3;",
            "Z",
            "Ljava/util/List<",
            "LE5/b;",
            ">;",
            "LE5/d$E;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()Loa/c;

    move-result-object v5

    invoke-virtual {v5}, Loa/c;->c()I

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()Loa/c;

    move-result-object v3

    invoke-virtual {v3}, Loa/c;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, LE5/d;->W()F

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, LE5/d;->W()F

    move-result v8

    mul-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual/range {p0 .. p0}, LE5/d;->W()F

    move-result v8

    const/high16 v9, 0x42480000    # 50.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    new-instance v9, LJAVARuntime/Vector3;

    invoke-direct {v9}, LJAVARuntime/Vector3;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v10

    invoke-virtual {v10}, Loa/c;->d()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v10

    invoke-virtual {v10}, Loa/c;->e()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v3, v10

    int-to-float v11, v7

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, LJAVARuntime/Vector3;->setY(F)V

    const v10, 0x459c4000    # 5000.0f

    move/from16 v11, p3

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, LJAVARuntime/Vector3;->setZ(F)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v10, v12, :cond_1

    if-eq v10, v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v10

    invoke-virtual {v10}, Loa/c;->e()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v7

    invoke-virtual {v7}, Loa/c;->b()I

    move-result v7

    add-int/2addr v10, v7

    add-int/2addr v10, v8

    int-to-float v7, v10

    sub-float/2addr v3, v7

    invoke-virtual {v9, v3}, LJAVARuntime/Vector3;->setY(F)V

    :goto_0
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v10, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v10, :cond_2

    if-eq v3, v12, :cond_3

    if-eq v3, v11, :cond_2

    move v3, v4

    move v11, v3

    goto :goto_1

    :cond_2
    invoke-virtual/range {p4 .. p4}, LJAVARuntime/Vector3;->getX()F

    move-result v3

    float-to-int v3, v3

    move v11, v3

    move v3, v4

    goto :goto_1

    :cond_3
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v8

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v10

    mul-int/2addr v11, v6

    add-int/2addr v3, v11

    int-to-float v3, v3

    div-float/2addr v3, v7

    int-to-float v11, v6

    const/high16 v12, 0x40800000    # 4.0f

    div-float/2addr v11, v12

    sub-float/2addr v3, v11

    float-to-int v3, v3

    invoke-virtual/range {p4 .. p4}, LJAVARuntime/Vector3;->getX()F

    move-result v11

    div-float/2addr v11, v7

    float-to-int v11, v11

    :goto_1
    sget-object v12, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {v5, v12, v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)LMc/h;

    move-result-object v12

    sget-object v13, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {v5, v13, v10}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)LMc/h;

    move-result-object v5

    move/from16 v13, p5

    move v14, v4

    :goto_2
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_9

    move-object/from16 v15, p6

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, LE5/b;

    invoke-virtual/range {p0 .. p0}, LE5/d;->W()F

    move-result v16

    iget v10, v4, LE5/b;->a:I

    int-to-float v10, v10

    mul-float v10, v10, v16

    float-to-int v10, v10

    mul-int v16, v14, v8

    mul-int v17, v14, v6

    add-int v16, v16, v17

    sub-int v16, v11, v16

    sub-int v16, v16, v8

    add-int v7, v16, v3

    move/from16 p4, v3

    iget-object v3, v4, LE5/b;->c:LMc/h;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, LMc/h;->q()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v4, LE5/b;->c:LMc/h;

    invoke-virtual {v4, v1, v2, v3}, LE5/b;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;LMc/h;)V

    const/4 v3, 0x0

    iput-object v3, v4, LE5/b;->c:LMc/h;

    :cond_4
    iget-object v3, v4, LE5/b;->c:LMc/h;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, LMc/h;->s()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v4, LE5/b;->c:LMc/h;

    invoke-virtual {v3}, LMc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    move/from16 v16, v6

    iget-object v6, v4, LE5/b;->c:LMc/h;

    invoke-virtual {v4, v1, v2, v3, v6}, LE5/b;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;LMc/h;)V

    goto :goto_3

    :cond_5
    move/from16 v16, v6

    :goto_3
    invoke-virtual {v9}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v3

    neg-int v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v7}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    invoke-virtual {v0, v12, v3, v8}, LE5/d;->d0(LMc/h;LJAVARuntime/Vector3;I)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-object v12, v4, LE5/b;->c:LMc/h;

    invoke-virtual {v4, v1, v2, v12}, LE5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;LMc/h;)V

    :cond_6
    invoke-virtual {v9}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v3

    invoke-virtual {v3, v6, v7, v7}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    invoke-virtual {v0, v5, v3, v8}, LE5/d;->d0(LMc/h;LJAVARuntime/Vector3;I)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, LE5/d$o;

    invoke-direct {v3, v0, v4, v1, v2}, LE5/d$o;-><init>(LE5/d;LE5/b;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    invoke-static {v3}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v9}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v7

    neg-int v1, v8

    int-to-float v1, v1

    const/high16 v17, 0x40000000    # 2.0f

    div-float v1, v1, v17

    int-to-float v2, v8

    div-float v2, v2, v17

    move-object/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v1, v2, v5}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    invoke-virtual {v7, v6, v5, v5}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    if-eqz v3, :cond_8

    new-instance v1, LJAVARuntime/Vector3;

    const/4 v2, 0x1

    invoke-direct {v1, v8, v8, v2}, LJAVARuntime/Vector3;-><init>(III)V

    iget-object v3, v0, LE5/d;->p:LMb/p;

    invoke-virtual {v3}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v3

    iget-object v5, v0, LE5/d;->t:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v5

    invoke-static {v7, v1, v3, v5, v2}, LJAVARuntime/Gizmo;->drawTransparentQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;LJAVARuntime/Color;Z)V

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    new-instance v1, LJAVARuntime/Vector3;

    invoke-direct {v1, v8, v8, v2}, LJAVARuntime/Vector3;-><init>(III)V

    iget-object v3, v0, LE5/d;->p:LMb/p;

    invoke-virtual {v3}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v3

    iget-object v5, v0, LE5/d;->s:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v5

    invoke-static {v7, v1, v3, v5, v2}, LJAVARuntime/Gizmo;->drawTransparentQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;LJAVARuntime/Color;Z)V

    :goto_5
    sub-int v1, v8, v10

    sub-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {v9}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v2

    neg-float v3, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    div-float v7, v1, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v7, v5}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    invoke-virtual {v2, v6, v5, v5}, LJAVARuntime/Vector3;->sumLocal(FFF)V

    neg-int v3, v10

    int-to-float v3, v3

    int-to-float v5, v10

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v5, v6}, LJAVARuntime/Vector3;->sum(FFF)LJAVARuntime/Vector3;

    move-result-object v2

    new-instance v3, LJAVARuntime/Vector3;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v1, v5}, LJAVARuntime/Vector3;-><init>(FFI)V

    iget-object v1, v4, LE5/b;->b:LMb/p;

    invoke-virtual {v1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v1

    iget-object v4, v0, LE5/d;->u:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v4

    invoke-static {v2, v3, v1, v4, v5}, LJAVARuntime/Gizmo;->drawTransparentQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;LJAVARuntime/Color;Z)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move v10, v5

    move/from16 v6, v16

    move-object/from16 v5, v18

    const/4 v4, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_2

    :cond_9
    return v13
.end method

.method public final S(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedGameObject"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()Loa/c;

    move-result-object v3

    invoke-virtual {v3}, Loa/c;->c()I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()Loa/c;

    move-result-object v0

    invoke-virtual {v0}, Loa/c;->b()I

    move-result v0

    int-to-float v0, v0

    new-instance v11, LJAVARuntime/Vector3;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v11, v3}, LJAVARuntime/Vector3;-><init>(F)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v3

    invoke-virtual {v3}, Loa/c;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v3

    invoke-virtual {v3}, Loa/c;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, LJAVARuntime/Vector3;->setY(F)V

    iget-object v9, p0, LE5/d;->g:Ljava/util/List;

    sget-object v10, LE5/d$E;->TopCenter:LE5/d$E;

    const/4 v12, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move v6, v12

    move-object v7, v11

    invoke-virtual/range {v3 .. v10}, LE5/d;->R(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;ILJAVARuntime/Vector3;ZLjava/util/List;LE5/d$E;)Z

    move-result v8

    iget-object v9, p0, LE5/d;->h:Ljava/util/List;

    sget-object v10, LE5/d$E;->BottomCenter:LE5/d$E;

    invoke-virtual/range {v3 .. v10}, LE5/d;->R(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;ILJAVARuntime/Vector3;ZLjava/util/List;LE5/d$E;)Z

    move-result v8

    move-object v5, v1

    move v6, v0

    move v7, v12

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, LE5/d;->Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;FIZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Z

    move-result p1

    return p1
.end method

.method public final T()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;
    .locals 4

    :try_start_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v0}, Lj9/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final U(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v1

    invoke-virtual {v1}, Loa/c;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v2

    invoke-virtual {v2}, Loa/c;->c()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->j(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v1

    invoke-virtual {v1}, Loa/c;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object p1

    invoke-virtual {p1}, Loa/c;->b()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->k(I)V

    return-object v0
.end method

.method public V()LE5/d$D;
    .locals 1

    iget-object v0, p0, LE5/d;->l:LE5/d$D;

    return-object v0
.end method

.method public final W()F
    .locals 3

    const/16 v0, 0x32

    invoke-static {v0}, Lf8/c;->f(I)F

    move-result v0

    invoke-virtual {p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:LH5/d;

    iget-object v1, v1, LH5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectHeight()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    mul-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final X(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v1

    invoke-virtual {v1}, Loa/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->j(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v1

    invoke-virtual {v1}, Loa/c;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object p1

    invoke-virtual {p1}, Loa/c;->b()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->k(I)V

    return-object v0
.end method

.method public final Y(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v1

    invoke-virtual {v1}, Loa/c;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v2

    invoke-virtual {v2}, Loa/c;->c()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->j(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v1

    invoke-virtual {v1}, Loa/c;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object p1

    invoke-virtual {p1}, Loa/c;->b()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->k(I)V

    return-object v0
.end method

.method public final Z(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v1

    invoke-virtual {v1}, Loa/c;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v2

    invoke-virtual {v2}, Loa/c;->c()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->j(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object p1

    invoke-virtual {p1}, Loa/c;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->k(I)V

    return-object v0
.end method

.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIController:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->p0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "Object needs to be a UI object."

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public a0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;II)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, LE5/d;->a0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;II)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->o1()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()Loa/c;

    move-result-object v0

    invoke-virtual {v0}, Loa/c;->d()I

    move-result v1

    invoke-virtual {v0}, Loa/c;->e()I

    move-result v2

    invoke-virtual {v0}, Loa/c;->f()I

    move-result v3

    invoke-virtual {v0}, Loa/c;->g()I

    move-result v0

    if-lt p2, v1, :cond_2

    if-gt p2, v3, :cond_2

    if-lt p3, v2, :cond_2

    if-gt p3, v0, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public b0()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, LE5/d;->w:LE5/a;

    sget-object v0, LE5/c;->Rect:LE5/c;

    iput-object v0, p0, LE5/d;->v:LE5/c;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, LE5/d;->y:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, LE5/d;->s:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, LE5/d;->z:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, LE5/d;->t:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, LE5/d;->u:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v0, LE5/d;->K:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, LE5/d;->D:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->V(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    iput-boolean v0, p0, LE5/d;->o:Z

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d0(LMc/h;LJAVARuntime/Vector3;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "quadPos",
            "buttonSize"
        }
    .end annotation

    invoke-virtual {p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, LMc/h;->e:Z

    if-nez v1, :cond_0

    sget-object v1, LKc/a;->u:LKc/a$g;

    invoke-virtual {v1}, LKc/a$g;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a0(LMc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:LH5/d;

    iget-object p1, p1, LH5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lsa/d;

    move-result-object p1

    invoke-virtual {p1}, Lsa/d;->s()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lsa/d;->s()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, LJAVARuntime/Vector3;->getX()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {p2}, LJAVARuntime/Vector3;->getY()F

    move-result p2

    float-to-int p2, p2

    add-int v2, v1, p3

    add-int/2addr p3, p2

    if-lt v0, v1, :cond_0

    if-gt v0, v2, :cond_0

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 7

    invoke-direct {p0}, LE5/d;->c0()V

    invoke-virtual {p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraYaw:F

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->selectedPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v2, 0x459c1800    # 4995.0f

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    iget-boolean v1, p0, LE5/d;->n:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, LE5/d;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LE5/d$D;

    iput-object v1, p0, LE5/d;->l:LE5/d$D;

    :cond_0
    sget-object v1, Lo8/b;->i:Ls8/a;

    iget-object v3, v1, Ls8/a;->a:Ls8/b;

    iget-object v3, v3, Ls8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v3, :cond_5

    iput-boolean v2, p0, LE5/d;->n:Z

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->q0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getResolutionMode()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    move-result-object v3

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;->FixedResolution:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    if-ne v3, v6, :cond_1

    iput-boolean v5, p0, LE5/d;->n:Z

    :cond_1
    sget-object v3, LE5/d$u;->a:[I

    iget-object v6, p0, LE5/d;->v:LE5/c;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    if-eq v3, v5, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v1, Ls8/a;->a:Ls8/b;

    iget-object v1, v1, Ls8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v1}, LE5/d;->O(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, v1, Ls8/a;->a:Ls8/b;

    iget-object v1, v1, Ls8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v1}, LE5/d;->L(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v1, v1, Ls8/a;->a:Ls8/b;

    iget-object v1, v1, Ls8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v1}, LE5/d;->S(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_8

    :try_start_0
    invoke-static {v4}, Lj9/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lz5/d;->h()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, LE5/d;->l:LE5/d$D;

    iget v6, v5, LE5/d$D;->b:I

    iput v6, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->W:I

    iget v5, v5, LE5/d$D;->c:I

    iput v5, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->X:I

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_6
    const/4 v5, -0x1

    iput v5, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->W:I

    iput v5, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->X:I

    :goto_3
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->updateOnEditor()V

    invoke-virtual {p0, v0, v1, v4}, LE5/d;->K(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;ZLcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    return-void
.end method

.method public g()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;->T:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "UI Editor"

    return-object v0
.end method

.method public j()I
    .locals 1

    sget-object v0, LE5/d;->B:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    sget-object v0, LE5/d;->C:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    sget-object v0, LE5/d;->A:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget-object v0, LE5/d;->y:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v0

    return v0
.end method

.method public o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lz5/d;->o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance p3, Le8/k;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v0

    invoke-direct {p3, v0}, Le8/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Le8/o;

    new-instance p3, LE5/d$t;

    invoke-direct {p3, p0}, LE5/d$t;-><init>(LE5/d;)V

    sget-object v0, Le8/c$b;->Top:Le8/c$b;

    const v1, 0x7f070244

    invoke-direct {p1, v1, p3, v0, p2}, Le8/o;-><init>(ILe8/r;Le8/c$b;Landroid/content/Context;)V

    sget-object p3, LE5/d;->y:LUc/b;

    invoke-virtual {p1, p3}, Le8/o;->J0(LUc/b;)Le8/o;

    move-result-object p1

    sget-object p3, LE5/d;->z:LUc/b;

    invoke-virtual {p1, p3}, Le8/o;->x0(LUc/b;)Le8/o;

    move-result-object p1

    sget-object p3, LE5/d;->B:LUc/b;

    invoke-virtual {p1, p3}, Le8/o;->D0(LUc/b;)Le8/o;

    move-result-object p1

    sget-object p3, LE5/d;->C:LUc/b;

    invoke-virtual {p1, p3}, Le8/o;->A0(LUc/b;)Le8/o;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060232

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Le8/c;->j0(I)Le8/c;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060231

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Le8/c;->X(I)Le8/c;

    return-void
.end method

.method public r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lz5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance p3, Le8/k;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {p3, v1}, Le8/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v1, LE5/d$p;

    invoke-direct {v1, p0}, LE5/d$p;-><init>(LE5/d;)V

    sget-object v2, Le8/c$b;->Disconnected:Le8/c$b;

    const v3, 0x7f0701d1

    invoke-direct {p3, v3, v1, v2, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    sget-object v1, LE5/d;->y:LUc/b;

    invoke-virtual {p3, v1}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object p3

    sget-object v3, LE5/d;->z:LUc/b;

    invoke-virtual {p3, v3}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object p3

    sget-object v4, LE5/d;->B:LUc/b;

    invoke-virtual {p3, v4}, Le8/c;->h0(LUc/b;)Le8/c;

    move-result-object p3

    sget-object v5, LE5/d;->C:LUc/b;

    invoke-virtual {p3, v5}, Le8/c;->O(LUc/b;)Le8/c;

    move-result-object p3

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LUc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v8

    invoke-direct {v6, v8}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {p3, v6}, Le8/c;->c0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060232

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3, v6}, Le8/c;->j0(I)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f060231

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3, v6}, Le8/c;->X(I)Le8/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v6, LE5/d$q;

    invoke-direct {v6, p0}, LE5/d$q;-><init>(LE5/d;)V

    const v10, 0x7f07024e

    invoke-direct {p3, v10, v6, v2, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p3, v3}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p3, v4}, Le8/c;->h0(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p3, v5}, Le8/c;->O(LUc/b;)Le8/c;

    move-result-object p3

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v10

    invoke-direct {v6, v10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {p3, v6}, Le8/c;->c0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3, v6}, Le8/c;->j0(I)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p3, v6}, Le8/c;->X(I)Le8/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v6, LE5/d$r;

    invoke-direct {v6, p0}, LE5/d$r;-><init>(LE5/d;)V

    const v10, 0x7f0701b3

    invoke-direct {p3, v10, v6, v2, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p3, v3}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p3, v4}, Le8/c;->h0(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p3, v5}, Le8/c;->O(LUc/b;)Le8/c;

    move-result-object p3

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v6

    invoke-direct {v2, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {p3, v2}, Le8/c;->c0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3, v2}, Le8/c;->j0(I)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3, v2}, Le8/c;->X(I)Le8/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/e;

    iget-object v2, p0, LE5/d;->l:LE5/d$D;

    iget-object v2, v2, LE5/d$D;->a:Ljava/lang/String;

    new-instance v6, LE5/d$s;

    invoke-direct {v6, p0}, LE5/d$s;-><init>(LE5/d;)V

    const v8, 0x7f07022f

    invoke-direct {p3, v8, v2, v6, p2}, Le8/e;-><init>(ILjava/lang/String;Le8/f;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Le8/e;->T(LUc/b;)Le8/e;

    move-result-object p3

    invoke-virtual {p3, v3}, Le8/e;->M(LUc/b;)Le8/e;

    move-result-object p3

    invoke-virtual {p3, v4}, Le8/e;->f0(LUc/b;)Le8/e;

    move-result-object p3

    invoke-virtual {p3, v5}, Le8/e;->P(LUc/b;)Le8/e;

    move-result-object p3

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {p3, v1}, Le8/e;->b0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Le8/e;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3, v1}, Le8/e;->X(I)Le8/e;

    move-result-object p3

    iput-object p3, p0, LE5/d;->m:Le8/e;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/k;

    invoke-static {v0, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result p2

    invoke-direct {p3, p2}, Le8/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "panel3DView"
        }
    .end annotation

    :try_start_0
    const-class p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {p1}, Lj9/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->W:I

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->X:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:LH5/d;

    iget-object p1, p1, LH5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setProjection(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;)V

    invoke-virtual {p0}, LE5/d;->b0()V

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "panel3DView"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;->Disable:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->R1(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;ZZ)V

    iget-object p1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:LH5/d;

    iget-object p1, p1, LH5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setProjection(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;)V

    const/4 p1, 0x0

    iput p1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraPitch:F

    iput p1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraYaw:F

    invoke-virtual {p0}, LE5/d;->T()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v1

    int-to-float v1, v1

    iput v1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->cameraZoom:F

    iget-object v1, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->selectedPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    const v3, 0x459c1800    # 4995.0f

    invoke-virtual {v1, v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T1(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    iget-object p1, p0, LE5/d;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-eqz p1, :cond_1

    iget-object p1, p0, LE5/d;->g:Ljava/util/List;

    new-instance v4, LE5/d$v;

    const v5, 0x7f07021e

    invoke-static {v5, v3, v0, v2, v0}, LV3/j;->h(IIZZZ)LMb/n;

    move-result-object v5

    invoke-direct {v4, p0, v1, v5, p2}, LE5/d$v;-><init>(LE5/d;ILMb/p;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LE5/d;->g:Ljava/util/List;

    new-instance p2, LE5/d$w;

    const v4, 0x7f070095

    invoke-static {v4, v3, v0, v2, v0}, LV3/j;->h(IIZZZ)LMb/n;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, LE5/d$w;-><init>(LE5/d;ILMb/p;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LE5/d;->g:Ljava/util/List;

    new-instance p2, LE5/d$x;

    const v4, 0x7f070078

    invoke-static {v4, v3, v0, v2, v0}, LV3/j;->h(IIZZZ)LMb/n;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, LE5/d$x;-><init>(LE5/d;ILMb/p;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LE5/d;->g:Ljava/util/List;

    new-instance p2, LE5/d$y;

    const v4, 0x7f07009f

    invoke-static {v4, v3, v0, v2, v0}, LV3/j;->h(IIZZZ)LMb/n;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, LE5/d$y;-><init>(LE5/d;ILMb/p;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LE5/d;->g:Ljava/util/List;

    new-instance p2, LE5/d$z;

    const v4, 0x7f070263

    invoke-static {v4, v3, v0, v2, v0}, LV3/j;->h(IIZZZ)LMb/n;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, LE5/d$z;-><init>(LE5/d;ILMb/p;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LE5/d;->g:Ljava/util/List;

    new-instance p2, LE5/d$A;

    const v4, 0x7f07022b

    invoke-static {v4, v3, v0, v2, v0}, LV3/j;->h(IIZZZ)LMb/n;

    move-result-object v4

    invoke-direct {p2, p0, v1, v4}, LE5/d$A;-><init>(LE5/d;ILMb/p;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, LE5/d;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const p2, 0x7f0700b7

    if-eqz p1, :cond_2

    iget-object p1, p0, LE5/d;->i:Ljava/util/List;

    new-instance v4, LE5/d$B;

    invoke-static {p2, v3, v0, v2, v0}, LV3/j;->h(IIZZZ)LMb/n;

    move-result-object v5

    invoke-direct {v4, p0, v1, v5}, LE5/d$B;-><init>(LE5/d;ILMb/p;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, LE5/d;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LE5/d;->j:Ljava/util/List;

    new-instance v4, LE5/d$C;

    invoke-static {p2, v3, v0, v2, v0}, LV3/j;->h(IIZZZ)LMb/n;

    move-result-object p2

    invoke-direct {v4, p0, v1, p2}, LE5/d$C;-><init>(LE5/d;ILMb/p;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, LE5/d;->p:LMb/p;

    if-nez p1, :cond_4

    const p1, 0x7f07024a

    invoke-static {p1, v3}, LV3/j;->c(II)LMb/n;

    move-result-object p1

    iput-object p1, p0, LE5/d;->p:LMb/p;

    :cond_4
    iget-object p1, p0, LE5/d;->q:LMb/p;

    if-nez p1, :cond_5

    const p1, 0x7f070198

    invoke-static {p1, v3, v0, v2, v0}, LV3/j;->h(IIZZZ)LMb/n;

    move-result-object p1

    iput-object p1, p0, LE5/d;->q:LMb/p;

    :cond_5
    iget-object p1, p0, LE5/d;->r:LMb/p;

    if-nez p1, :cond_6

    const p1, 0x7f070066

    invoke-static {p1, v3, v0, v2, v0}, LV3/j;->h(IIZZZ)LMb/n;

    move-result-object p1

    iput-object p1, p0, LE5/d;->r:LMb/p;

    :cond_6
    invoke-virtual {p0}, LE5/d;->b0()V

    return-void
.end method

.method public v()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, LE5/d;->y:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, LE5/d;->s:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, LE5/d;->z:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, LE5/d;->t:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, LE5/d;->u:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v0, LE5/d;->K:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, LE5/d;->D:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->V(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public w()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    sget-object v0, LE5/d;->I:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public x()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    sget-object v0, LE5/d;->J:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public y()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    sget-object v0, LE5/d;->K:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method
