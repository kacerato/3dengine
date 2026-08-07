.class public LD5/e$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD5/e$g;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LD5/e$g;


# direct methods
.method public constructor <init>(LD5/e$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LD5/e$g$a;->b:LD5/e$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v0, v0, LD5/e$g;->a:LD5/e;

    invoke-static {v0}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v0, v0, LD5/e$g;->a:LD5/e;

    invoke-static {v0}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3fc00000    # 1.5f

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lsa/e;

    invoke-direct {v2}, Lsa/e;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsa/e;->B(Z)V

    invoke-virtual {v2, v3}, Lsa/e;->A(Z)V

    new-instance v3, Lsa/c;

    new-instance v4, Lsa/d;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v6, v6, LD5/e$g;->a:LD5/e;

    invoke-static {v6}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v6

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v6, v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v7, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v7, v7, LD5/e$g;->a:LD5/e;

    invoke-static {v7}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    iget-object v8, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v8, v8, LD5/e$g;->a:LD5/e;

    invoke-static {v8}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v8

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->L0()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v8, v8, LD5/e$g;->a:LD5/e;

    invoke-static {v8}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v8

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v8, v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v5, v6, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v6, v1, v7, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v4, v5, v6}, Lsa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v3, v4}, Lsa/c;-><init>(Lsa/d;)V

    invoke-virtual {v2, v3}, Lsa/e;->K(Lsa/c;)Lsa/a;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v4, v4, LD5/e$g;->a:LD5/e;

    invoke-static {v4}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {v2}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    iget-object v5, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v5, v5, LD5/e$g;->a:LD5/e;

    invoke-static {v5}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v5

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v3, v4, v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iget-object v2, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v2, v2, LD5/e$g;->a:LD5/e;

    invoke-static {v2}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v2

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushSize:F

    mul-float/2addr v2, v0

    invoke-static {v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->x1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v3, v3, LD5/e$g;->a:LD5/e;

    invoke-static {v3}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v4, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v4, v4, LD5/e$g;->a:LD5/e;

    invoke-static {v4}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v2, v3, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iget-object v3, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v3, v3, LD5/e$g;->a:LD5/e;

    invoke-static {v3}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v3

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushSize:F

    mul-float/2addr v3, v0

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->x1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v3, v3, LD5/e$g;->a:LD5/e;

    invoke-static {v3}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v4, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v4, v4, LD5/e$g;->a:LD5/e;

    invoke-static {v4}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v2, v3, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iget-object v1, p0, LD5/e$g$a;->b:LD5/e$g;

    iget-object v1, v1, LD5/e$g;->a:LD5/e;

    invoke-static {v1}, LD5/e;->H(LD5/e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushSize:F

    mul-float/2addr v1, v0

    invoke-static {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->x1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    :cond_1
    :goto_1
    return-void
.end method
