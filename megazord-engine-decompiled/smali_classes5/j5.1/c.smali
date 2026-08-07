.class public Lj5/c;
.super Lj5/b;
.source "SourceFile"


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "LMc/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final e:Lsa/e;

.field public final f:Lsa/c;

.field public final g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final h:Lsa/d;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lj5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terrain",
            "axisTopBarListener"
        }
    .end annotation

    invoke-direct {p0, p2}, Lj5/b;-><init>(Lj5/a;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lj5/c;->c:Ljava/util/HashMap;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object p2, p0, Lj5/c;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance p2, Lsa/e;

    invoke-direct {p2}, Lsa/e;-><init>()V

    iput-object p2, p0, Lj5/c;->e:Lsa/e;

    new-instance p2, Lsa/c;

    invoke-direct {p2}, Lsa/c;-><init>()V

    iput-object p2, p0, Lj5/c;->f:Lsa/c;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p2, p0, Lj5/c;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance p2, Lsa/d;

    invoke-direct {p2}, Lsa/d;-><init>()V

    iput-object p2, p0, Lj5/c;->h:Lsa/d;

    iput-object p1, p0, Lj5/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    return-void
.end method


# virtual methods
.method public c(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;LI4/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "editor3DViewer",
            "engineUpdateData"
        }
    .end annotation

    iget-object p2, p0, Lj5/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->renderBrushes()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lj5/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-boolean p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->J:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lj5/c;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LMc/h;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LMc/h;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(LMc/h;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p2, v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    sget-object p2, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {p1, p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y(LJAVARuntime/GUIUtils$TouchFilter;Z)LMc/h;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    sget-object v2, LJAVARuntime/GUIUtils$TouchFilter;->Pressed:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {p1, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w(LJAVARuntime/GUIUtils$TouchFilter;I)LMc/h;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object p2, v0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lj5/c;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a0(LMc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v1, p0, Lj5/c;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0, v1, p1}, Lj5/c;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-virtual {p2}, LMc/h;->t()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, LMc/h;->q()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p2

    :cond_4
    :goto_0
    iget-object p2, p0, Lj5/c;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lj5/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->J:Z

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchPos",
            "editor3DViewer"
        }
    .end annotation

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:LH5/d;

    iget-object p2, p2, LH5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v0, p0, Lj5/c;->h:Lsa/d;

    invoke-virtual {p2, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lsa/d;)Lsa/d;

    iget-object p1, p0, Lj5/c;->h:Lsa/d;

    iget-object p2, p1, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lj5/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v1, p0, Lj5/c;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p2, p1, v0, v1}, LR9/m;->d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj5/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p2, p0, Lj5/c;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->X0(F)V

    iget-object p1, p0, Lj5/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object p2, p0, Lj5/c;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->Y0(F)V

    iget-object p1, p0, Lj5/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object p2, p0, Lj5/c;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p2

    iput p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->H:F

    iget-object p1, p0, Lj5/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->applyBrushPress()V

    :cond_0
    return-void
.end method
