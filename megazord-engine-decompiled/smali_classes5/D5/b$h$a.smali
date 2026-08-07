.class public LD5/b$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD5/b$h;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LD5/b$h;


# direct methods
.method public constructor <init>(LD5/b$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LD5/b$h$a;->b:LD5/b$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    new-instance v0, Lsa/e;

    invoke-direct {v0}, Lsa/e;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsa/e;->B(Z)V

    invoke-virtual {v0, v1}, Lsa/e;->A(Z)V

    new-instance v1, Lsa/c;

    new-instance v2, Lsa/d;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, LD5/b$h$a;->b:LD5/b$h;

    iget-object v4, v4, LD5/b$h;->a:LD5/b;

    invoke-static {v4}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v5, p0, LD5/b$h$a;->b:LD5/b$h;

    iget-object v5, v5, LD5/b$h;->a:LD5/b;

    invoke-static {v5}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v5

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    iget-object v6, p0, LD5/b$h$a;->b:LD5/b$h;

    iget-object v6, v6, LD5/b$h;->a:LD5/b;

    invoke-static {v6}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v6

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->L0()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, LD5/b$h$a;->b:LD5/b$h;

    iget-object v6, v6, LD5/b$h;->a:LD5/b;

    invoke-static {v6}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v6

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v6, v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v3, v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v2, v3, v4}, Lsa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v1, v2}, Lsa/c;-><init>(Lsa/d;)V

    invoke-virtual {v0, v1}, Lsa/e;->K(Lsa/c;)Lsa/a;

    move-result-object v0

    const/high16 v1, 0x3fc00000    # 1.5f

    if-eqz v0, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, LD5/b$h$a;->b:LD5/b$h;

    iget-object v3, v3, LD5/b$h;->a:LD5/b;

    invoke-static {v3}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {v0}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    iget-object v4, p0, LD5/b$h$a;->b:LD5/b$h;

    iget-object v4, v4, LD5/b$h;->a:LD5/b;

    invoke-static {v4}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v2, v3, v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iget-object v0, p0, LD5/b$h$a;->b:LD5/b$h;

    iget-object v0, v0, LD5/b$h;->a:LD5/b;

    invoke-static {v0}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushSize:F

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->x1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, LD5/b$h$a;->b:LD5/b$h;

    iget-object v2, v2, LD5/b$h;->a:LD5/b;

    invoke-static {v2}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v3, p0, LD5/b$h$a;->b:LD5/b$h;

    iget-object v3, v3, LD5/b$h;->a:LD5/b;

    invoke-static {v3}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-direct {v0, v2, v6, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iget-object v2, p0, LD5/b$h$a;->b:LD5/b$h;

    iget-object v2, v2, LD5/b$h;->a:LD5/b;

    invoke-static {v2}, LD5/b;->H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v2

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushSize:F

    mul-float/2addr v2, v1

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->x1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
