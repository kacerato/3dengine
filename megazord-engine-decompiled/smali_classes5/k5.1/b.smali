.class public Lk5/b;
.super Lk5/a;
.source "SourceFile"


# instance fields
.field public h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

.field public final i:Lsa/e;

.field public final j:Lsa/c;

.field public final k:Lsa/d;

.field public final l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lj5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectPool",
            "axisTopBarListener"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lk5/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lj5/a;)V

    new-instance p2, Lsa/e;

    invoke-direct {p2}, Lsa/e;-><init>()V

    iput-object p2, p0, Lk5/b;->i:Lsa/e;

    new-instance p2, Lsa/c;

    invoke-direct {p2}, Lsa/c;-><init>()V

    iput-object p2, p0, Lk5/b;->j:Lsa/c;

    new-instance p2, Lsa/d;

    invoke-direct {p2}, Lsa/d;-><init>()V

    iput-object p2, p0, Lk5/b;->k:Lsa/d;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p2, p0, Lk5/b;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, p0, Lk5/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    return-void
.end method


# virtual methods
.method public h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
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

    iget-object v0, p0, Lk5/b;->j:Lsa/c;

    iget-object p2, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:LH5/d;

    iget-object p2, p2, LH5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v1, p0, Lk5/b;->k:Lsa/d;

    invoke-virtual {p2, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lsa/d;)Lsa/d;

    move-result-object p1

    iput-object p1, v0, Lsa/c;->b:Lsa/d;

    iget-object p1, p0, Lk5/b;->i:Lsa/e;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsa/e;->B(Z)V

    iget-object p1, p0, Lk5/b;->i:Lsa/e;

    invoke-virtual {p1, p2}, Lsa/e;->A(Z)V

    iget-object p1, p0, Lk5/b;->i:Lsa/e;

    iget-object p2, p0, Lk5/b;->j:Lsa/c;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lsa/e;->N(Lsa/c;Z)Lsa/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lk5/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->d1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lk5/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->applyBrushPress()V

    :cond_0
    return-void
.end method
