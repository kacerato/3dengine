.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# instance fields
.field public E:Z

.field public F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public H:LMc/h;

.field public I:LMc/h;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editor3DViewer"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    return-void
.end method


# virtual methods
.method public calculate(LMc/h;LMc/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t0",
            "t1"
        }
    .end annotation

    invoke-virtual {p1}, LMc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p2}, LMc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->X0(F)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->X0(F)V

    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result p2

    add-float/2addr p1, p2

    div-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->Y0(F)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->Y0(F)V

    :goto_3
    return-void
.end method

.method public check()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:LC4/e;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->H:LMc/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, LKc/a;->n(I)LMc/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LMc/h;->q()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(LMc/h;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->H:LMc/h;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:LC4/e;

    invoke-interface {v3, v1}, LC4/e;->o(LMc/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->H:LMc/h;

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {v3}, LKc/a;->n(I)LMc/h;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LMc/h;->q()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s0(LMc/h;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->G:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object v4, v4, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:LC4/e;

    invoke-interface {v4, v1}, LC4/e;->o(LMc/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->H:LMc/h;

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    if-eqz v4, :cond_8

    invoke-virtual {v1}, LMc/h;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    invoke-virtual {v1}, LMc/h;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->H:LMc/h;

    invoke-virtual {v1}, LMc/h;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    invoke-virtual {v1}, LMc/h;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->E:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->H:LMc/h;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    invoke-virtual {p0, v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->calculate(LMc/h;LMc/h;)V

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->E:Z

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->E:Z

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->H:LMc/h;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, LMc/h;->t()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->H:LMc/h;

    invoke-virtual {v1}, LMc/h;->q()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->H:LMc/h;

    :cond_6
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, LMc/h;->t()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    invoke-virtual {v1}, LMc/h;->q()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_7
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    goto :goto_3

    :cond_8
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->E:Z

    if-eqz v1, :cond_a

    invoke-virtual {v1}, LMc/h;->t()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->H:LMc/h;

    invoke-virtual {v1}, LMc/h;->q()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->H:LMc/h;

    :cond_a
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, LMc/h;->t()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;

    invoke-virtual {v1}, LMc/h;->q()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->I:LMc/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->E:Z

    :cond_c
    :goto_3
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/RTS3DCamera/RTS3DTwoFingerSlide;->check()V

    return-void
.end method
