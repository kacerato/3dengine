.class public Lh7/c$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/c;->A1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:Lh7/c;


# direct methods
.method public constructor <init>(Lh7/c;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh7/c$l;->c:Lh7/c;

    iput-object p2, p0, Lh7/c$l;->b:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v3, v1, Lh7/c$l;->c:Lh7/c;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->p1(Lh7/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LTb/b;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v6}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v6

    iput v4, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    iget-object v6, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v6}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v6

    iput v5, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalHeight:I

    if-lt v4, v5, :cond_0

    int-to-float v6, v5

    int-to-float v7, v4

    div-float/2addr v6, v7

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v8, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v8}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v8

    iget v8, v8, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v7, v7, v8

    if-le v4, v7, :cond_1

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v5, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v5}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v5

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v4, v4, v5

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v7, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v7}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v5, v5, v7

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_10

    :cond_0
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v8, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v8}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v8

    iget v8, v8, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v7, v7, v8

    if-le v5, v7, :cond_1

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v5, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v5}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v5

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v5, v4, v5

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v7, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v7}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v4, v4, v7

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v3

    :goto_0
    iget-object v7, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v7}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->w()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-object v7, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v7}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->w()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v7}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v7

    iget-boolean v7, v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->blackIsAlpha:Z

    if-eqz v7, :cond_2

    new-instance v7, Lh7/c$l$a;

    invoke-direct {v7, v1}, Lh7/c$l$a;-><init>(Lh7/c$l;)V

    invoke-static {v6, v7}, LRb/a;->f(Landroid/graphics/Bitmap;LRb/a$a;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_2
    iget-object v7, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v7}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v7

    iput v4, v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iput v5, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->height:I

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipX:Z

    if-nez v4, :cond_3

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipY:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipX:Z

    iget-object v5, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v5}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v5

    iget-boolean v5, v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->flipY:Z

    invoke-static {v6, v4, v5}, LRb/a;->h(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    move-object v6, v4

    :cond_4
    sget-object v4, Lh7/c$T;->a:[I

    iget-object v5, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v5}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->rotate:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v4, v8, :cond_7

    if-eq v4, v7, :cond_6

    if-eq v4, v5, :cond_5

    goto :goto_2

    :cond_5
    const/high16 v4, 0x43870000    # 270.0f

    invoke-static {v6, v4}, LRb/a;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    move-object v6, v4

    goto :goto_2

    :cond_6
    const/high16 v4, 0x43340000    # 180.0f

    invoke-static {v6, v4}, LRb/a;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_7
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static {v6, v4}, LRb/a;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :goto_2
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->invertColors:Z

    if-eqz v4, :cond_8

    invoke-static {v6}, LRb/a;->m(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_8
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->grayscale:Z

    if-eqz v4, :cond_9

    invoke-static {v6}, LRb/a;->k(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_9
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowHUE:Z

    if-eqz v4, :cond_a

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->hue:I

    int-to-float v4, v4

    invoke-static {v6, v4}, LRb/a;->l(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_a
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->noise:Z

    if-eqz v4, :cond_b

    invoke-static {v6}, LRb/a;->o(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_b
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowSaturation:Z

    if-eqz v4, :cond_c

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->saturation:I

    invoke-static {v6, v4}, LRb/a;->q(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_c
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sepia:Z

    if-eqz v4, :cond_d

    invoke-static {v6}, LRb/a;->r(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_d
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sharpen:Z

    if-eqz v4, :cond_e

    invoke-static {v6}, LRb/a;->s(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_e
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sketch:Z

    if-eqz v4, :cond_f

    invoke-static {v6}, LRb/a;->t(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_f
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->vignette:Z

    if-eqz v4, :cond_10

    invoke-static {v6}, LRb/a;->v(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_10
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gaussian:Z

    if-eqz v4, :cond_11

    invoke-static {v6}, LRb/a;->j(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_11
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowContrast:Z

    if-eqz v4, :cond_12

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->contrast:I

    int-to-double v9, v4

    invoke-static {v6, v9, v10}, LRb/a;->e(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_12
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBrightness:Z

    if-eqz v4, :cond_13

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->brightness:I

    invoke-static {v6, v4}, LRb/a;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_13
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBoost:Z

    if-eqz v4, :cond_16

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostRed:I

    if-lez v4, :cond_14

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostRed:I

    int-to-float v4, v4

    invoke-static {v6, v8, v4}, LRb/a;->a(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_14
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostGreen:I

    if-lez v4, :cond_15

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostGreen:I

    int-to-float v4, v4

    invoke-static {v6, v7, v4}, LRb/a;->a(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v6, v4

    :cond_15
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostBlue:I

    if-lez v4, :cond_16

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->boostBlue:I

    int-to-float v4, v4

    invoke-static {v6, v5, v4}, LRb/a;->a(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_16
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowColorDepth:Z

    if-eqz v4, :cond_1b

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->colordepth:I

    if-eqz v4, :cond_1a

    if-eq v4, v8, :cond_19

    if-eq v4, v7, :cond_18

    if-eq v4, v5, :cond_17

    goto :goto_3

    :cond_17
    const/16 v4, 0x80

    invoke-static {v6, v4}, LRb/a;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3

    :cond_18
    const/16 v4, 0x40

    invoke-static {v6, v4}, LRb/a;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3

    :cond_19
    const/16 v4, 0x20

    invoke-static {v6, v4}, LRb/a;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3

    :cond_1a
    const/16 v4, 0x10

    invoke-static {v6, v4}, LRb/a;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_1b
    :goto_3
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowOpacity:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1d

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-boolean v8, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    new-instance v9, LMb/g;

    iget-object v10, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v10}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v10

    iget-object v10, v10, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->opacityTextureFile:Ljava/lang/String;

    invoke-direct {v9, v10, v4}, LMb/g;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move v13, v2

    :goto_4
    if-ge v13, v15, :cond_1d

    move v12, v2

    :goto_5
    if-ge v12, v14, :cond_1c

    int-to-float v11, v13

    int-to-float v2, v15

    div-float/2addr v11, v2

    int-to-float v2, v12

    int-to-float v7, v14

    div-float/2addr v2, v7

    invoke-virtual {v6, v13, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->V(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v9}, LMb/g;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-virtual {v9}, LMb/g;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v2

    float-to-int v2, v11

    invoke-virtual {v9, v7, v2, v10}, LMb/g;->w(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->O()I

    move-result v2

    int-to-float v2, v2

    sub-float v16, v5, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    move v5, v12

    move v12, v2

    move v2, v13

    move v13, v7

    move v7, v14

    move/from16 v14, v17

    move/from16 v17, v15

    move/from16 v15, v18

    invoke-virtual/range {v11 .. v16}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u(FFFFF)V

    iget v11, v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v6, v2, v5, v11}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v12, v5, 0x1

    move v13, v2

    move v14, v7

    move/from16 v15, v17

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    goto :goto_5

    :cond_1c
    move v2, v13

    move v7, v14

    move/from16 v17, v15

    add-int/lit8 v13, v2, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    goto :goto_4

    :cond_1d
    sget-object v2, Lh7/c$T;->b:[I

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v8, :cond_1e

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1e

    goto :goto_6

    :cond_1e
    new-instance v2, Lh7/c$l$b;

    invoke-direct {v2, v1}, Lh7/c$l$b;-><init>(Lh7/c$l;)V

    invoke-static {v6, v2}, LRb/a;->f(Landroid/graphics/Bitmap;LRb/a$a;)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_6
    if-eqz v6, :cond_23

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v4, v7, :cond_21

    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ge v7, v9, :cond_20

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->V(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1f

    move v5, v8

    goto :goto_9

    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_20
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->p1(Lh7/c;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".texture"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lh7/c$l;->c:Lh7/c;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v4}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->w()Z

    move-result v4

    if-eqz v4, :cond_22

    if-eqz v5, :cond_22

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v5, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v5}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->r()I

    move-result v5

    invoke-virtual {v6, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_b

    :cond_22
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v5, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v5}, Lh7/c;->r1(Lh7/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->r()I

    move-result v5

    invoke-virtual {v6, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_a
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_e

    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_d

    :goto_b
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_d
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    :cond_23
    move-object v6, v3

    :goto_e
    if-eq v3, v6, :cond_24

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_24
    iget-object v2, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v2}, Lh7/c;->o1(Lh7/c;)V

    new-instance v2, Lh7/c$l$c;

    invoke-direct {v2, v1, v6}, Lh7/c$l$c;-><init>(Lh7/c$l;Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lc9/a;->I(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_f
    iget-object v2, v1, Lh7/c$l;->b:LI7/a;

    invoke-virtual {v2}, LI7/a;->o1()V

    iget-object v2, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v2}, Lh7/c;->t1(Lh7/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_11

    :cond_25
    :try_start_7
    iget-object v2, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v2}, Lh7/c;->o1(Lh7/c;)V

    const-string v2, "Failed to prepare texture"

    invoke-static {v2}, Lf8/c;->u0(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v2, v1, Lh7/c$l;->b:LI7/a;

    invoke-virtual {v2}, LI7/a;->o1()V

    iget-object v2, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v2}, Lh7/c;->t1(Lh7/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_10
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to prepare texture:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf8/c;->u0(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_f

    :goto_11
    return-void

    :goto_12
    iget-object v3, v1, Lh7/c$l;->b:LI7/a;

    invoke-virtual {v3}, LI7/a;->o1()V

    iget-object v3, v1, Lh7/c$l;->c:Lh7/c;

    invoke-static {v3}, Lh7/c;->t1(Lh7/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
