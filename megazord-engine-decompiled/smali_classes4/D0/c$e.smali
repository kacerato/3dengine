.class public LD0/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/c$b;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Landroid/view/SurfaceView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic b:LD0/c;


# direct methods
.method public constructor <init>(LD0/c;Landroid/view/SurfaceView;)V
    .locals 2
    .param p1    # LD0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, LD0/c$e;->b:LD0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LD0/c$e;->a:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-static {p1}, LD0/c;->b(LD0/c;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, LD0/c;->a(LD0/c;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, LD0/c;->b(LD0/c;)I

    move-result v0

    invoke-static {p1}, LD0/c;->a(LD0/c;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, LD0/c$e;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, p1, v0}, LD0/c$e;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LD0/c$e;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, LD0/c$e;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, LD0/c$e;->b:LD0/c;

    invoke-static {p1}, LD0/c;->c(LD0/c;)LD0/c$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LD0/c$e;->b:LD0/c;

    invoke-static {p1}, LD0/c;->c(LD0/c;)LD0/c$c;

    move-result-object p1

    invoke-interface {p1, p3, p4}, LD0/c$c;->b(II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/c$e;->b:LD0/c;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, LD0/c;->d(LD0/c;Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, LD0/c$e;->b:LD0/c;

    invoke-static {p1}, LD0/c;->e(LD0/c;)V

    return-void
.end method
