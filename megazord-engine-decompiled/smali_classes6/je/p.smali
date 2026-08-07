.class public Lje/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lje/a;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation


# instance fields
.field public final a:Landroid/graphics/RenderNode;

.field public b:I

.field public c:I

.field public d:F

.field public e:Lje/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BlurViewNode"

    invoke-static {v0}, Lje/o;->a(Ljava/lang/String;)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, p0, Lje/p;->a:Landroid/graphics/RenderNode;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lje/p;->d:F

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lje/p;->a:Landroid/graphics/RenderNode;

    invoke-static {p1, p2}, Lje/i;->a(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lje/p;->e:Lje/a;

    if-nez v0, :cond_1

    new-instance v0, Lje/q;

    iget-object v1, p0, Lje/p;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lje/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lje/p;->e:Lje/a;

    :cond_1
    iget-object v0, p0, Lje/p;->e:Lje/a;

    iget v1, p0, Lje/p;->d:F

    invoke-interface {v0, p2, v1}, Lje/a;->e(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lje/p;->e:Lje/a;

    invoke-interface {v0, p1, p2}, Lje/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public d()F
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lje/p;->a:Landroid/graphics/RenderNode;

    invoke-static {v0}, Lje/h;->a(Landroid/graphics/RenderNode;)V

    iget-object v0, p0, Lje/p;->e:Lje/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lje/a;->destroy()V

    :cond_0
    return-void
.end method

.method public e(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput p2, p0, Lje/p;->d:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lje/p;->b:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lje/p;->c:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lje/p;->b:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lje/p;->c:I

    iget-object v1, p0, Lje/p;->a:Landroid/graphics/RenderNode;

    iget v2, p0, Lje/p;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v0, v2}, Lje/j;->a(Landroid/graphics/RenderNode;IIII)Z

    :cond_1
    iget-object v0, p0, Lje/p;->a:Landroid/graphics/RenderNode;

    invoke-static {v0}, Lje/k;->a(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lje/p;->a:Landroid/graphics/RenderNode;

    invoke-static {v0}, Lje/l;->a(Landroid/graphics/RenderNode;)V

    iget-object v0, p0, Lje/p;->a:Landroid/graphics/RenderNode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-static {p2, p2, v1}, Lje/m;->a(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p2

    invoke-static {v0, p2}, Lje/n;->a(Landroid/graphics/RenderNode;Landroid/graphics/RenderEffect;)Z

    return-object p1
.end method

.method public f(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lje/p;->f:Landroid/content/Context;

    return-void
.end method
