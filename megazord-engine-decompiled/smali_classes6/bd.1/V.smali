.class public Lbd/V;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbd/V$i;
    }
.end annotation


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/graphics/Canvas;

.field public d:I

.field public e:I

.field public f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

.field public final g:LMb/l;

.field public h:Ljava/nio/ByteBuffer;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Landroid/view/View$OnFocusChangeListener;

.field public n:Z

.field public o:I

.field public p:J

.field public final q:Landroid/webkit/WebChromeClient;

.field public final r:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "width",
            "height",
            "url"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbd/V;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbd/V;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbd/V;->l:Z

    const/16 v0, 0x18

    iput v0, p0, Lbd/V;->o:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbd/V;->p:J

    new-instance v0, Lbd/V$a;

    invoke-direct {v0, p0}, Lbd/V$a;-><init>(Lbd/V;)V

    iput-object v0, p0, Lbd/V;->q:Landroid/webkit/WebChromeClient;

    new-instance v0, Lbd/V$b;

    invoke-direct {v0, p0}, Lbd/V$b;-><init>(Lbd/V;)V

    iput-object v0, p0, Lbd/V;->r:Landroid/webkit/WebViewClient;

    iput p2, p0, Lbd/V;->d:I

    iput p3, p0, Lbd/V;->e:I

    new-instance v0, Lbd/V$c;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lbd/V$c;-><init>(Lbd/V;Landroid/content/Context;IILjava/lang/String;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lbd/V;->b:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object p4, p0, Lbd/V;->b:Landroid/graphics/Bitmap;

    invoke-direct {p1, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lbd/V;->c:Landroid/graphics/Canvas;

    invoke-virtual {p0, p2, p3}, Lbd/V;->x(II)V

    invoke-virtual {p0}, Lbd/V;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-direct {p4, p2, p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object p4, p0, Lbd/V;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    new-instance p2, LMb/l;

    iget-object p3, p0, Lbd/V;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-direct {p2, p3, p1}, LMb/l;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object p2, p0, Lbd/V;->g:LMb/l;

    return-void
.end method

.method public static synthetic a(Lbd/V;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lbd/V;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b(Lbd/V;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lbd/V;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic c(Lbd/V;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lbd/V;->a:Landroid/webkit/WebView;

    return-object p1
.end method

.method public static synthetic d(Lbd/V;)Landroid/webkit/WebChromeClient;
    .locals 0

    iget-object p0, p0, Lbd/V;->q:Landroid/webkit/WebChromeClient;

    return-object p0
.end method

.method public static synthetic e(Lbd/V;)Landroid/webkit/WebViewClient;
    .locals 0

    iget-object p0, p0, Lbd/V;->r:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method public static synthetic f(Lbd/V;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    iget-object p0, p0, Lbd/V;->m:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method public static synthetic g(Lbd/V;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbd/V;->n:Z

    return p1
.end method

.method public static synthetic h(Lbd/V;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lbd/V;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lbd/V;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lbd/V;->k:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic j(Lbd/V;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lbd/V;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public A(IFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Lbd/V;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lbd/V$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lbd/V$e;-><init>(Lbd/V;IFF)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public B(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowHibernate"
        }
    .end annotation

    iput-boolean p1, p0, Lbd/V;->l:Z

    return-void
.end method

.method public C(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fps"
        }
    .end annotation

    iput p1, p0, Lbd/V;->o:I

    return-void
.end method

.method public D(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFocusChangeListener"
        }
    .end annotation

    iput-object p1, p0, Lbd/V;->m:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public E()V
    .locals 7

    iget-object v0, p0, Lbd/V;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbd/V;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbd/V;->l:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v3, 0x3e8

    iget v4, p0, Lbd/V;->o:I

    div-int/2addr v3, v4

    int-to-long v3, v3

    iget-wide v5, p0, Lbd/V;->p:J

    sub-long v5, v0, v5

    cmp-long v3, v5, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lbd/V;->c:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lbd/V;->c:Landroid/graphics/Canvas;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lbd/V;->q()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {p0}, Lbd/V;->r()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v5, p0, Lbd/V;->c:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :try_start_0
    iget-object v3, p0, Lbd/V;->a:Landroid/webkit/WebView;

    iget-object v5, p0, Lbd/V;->c:Landroid/graphics/Canvas;

    invoke-virtual {v3, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v3, p0, Lbd/V;->c:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lbd/V;->c:Landroid/graphics/Canvas;

    iget-object v5, p0, Lbd/V;->b:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lbd/V;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lbd/V;->b:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lbd/V;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    iget-object v3, p0, Lbd/V;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lbd/V;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iget-object v3, p0, Lbd/V;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->g1(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)V

    iput-wide v0, p0, Lbd/V;->p:J

    :cond_2
    return-void
.end method

.method public final k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->k0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->X(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->n0(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->G0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object v0
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lbd/V;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lbd/V$h;

    invoke-direct {v0, p0}, Lbd/V$h;-><init>(Lbd/V;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lbd/V;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbd/V;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbd/V;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lbd/V;->c:Landroid/graphics/Canvas;

    iput-object v0, p0, Lbd/V;->h:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lbd/V;->g:LMb/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LMb/l;->destroyImmediate()V

    :cond_1
    iput-object v0, p0, Lbd/V;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    iget-object v0, p0, Lbd/V;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lbd/V$d;

    invoke-direct {v0, p0, p1}, Lbd/V$d;-><init>(Lbd/V;Ljava/lang/String;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n()LMb/l;
    .locals 1

    iget-object v0, p0, Lbd/V;->g:LMb/l;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lbd/V;->o:I

    return v0
.end method

.method public p()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lbd/V;->m:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public final q()F
    .locals 1

    iget-object v0, p0, Lbd/V;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final r()F
    .locals 1

    iget-object v0, p0, Lbd/V;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public s()LMb/l;
    .locals 1

    iget-object v0, p0, Lbd/V;->g:LMb/l;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbd/V;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lbd/V;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lbd/V;->l:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lbd/V;->n:Z

    return v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    iget-object v0, p0, Lbd/V;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lbd/V$g;

    invoke-direct {v0, p0, p1}, Lbd/V$g;-><init>(Lbd/V;Ljava/lang/String;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lbd/V;->h:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public y(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newWidth",
            "newHeight"
        }
    .end annotation

    iget-object v0, p0, Lbd/V;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lbd/V;->d:I

    if-ne v0, p1, :cond_1

    iget v1, p0, Lbd/V;->e:I

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lbd/V;->e:I

    iget-object v2, p0, Lbd/V;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lbd/V;->c:Landroid/graphics/Canvas;

    iget-object v4, p0, Lbd/V;->h:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lbd/V;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iput p1, p0, Lbd/V;->d:I

    iput p2, p0, Lbd/V;->e:I

    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lbd/V;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lbd/V;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p2

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iget v7, p0, Lbd/V;->d:I

    iget v8, p0, Lbd/V;->e:I

    invoke-direct {v6, v7, v8, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget p1, p0, Lbd/V;->d:I

    iget v7, p0, Lbd/V;->e:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lbd/V;->b:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v7, p0, Lbd/V;->b:Landroid/graphics/Bitmap;

    invoke-direct {p1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lbd/V;->c:Landroid/graphics/Canvas;

    iget p1, p0, Lbd/V;->d:I

    iget v7, p0, Lbd/V;->e:I

    invoke-virtual {p0, p1, v7}, Lbd/V;->x(II)V

    iput-object v6, p0, Lbd/V;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iget-object p1, p0, Lbd/V;->g:LMb/l;

    invoke-virtual {p1, v6, p2}, LMb/l;->H0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iget-object p1, p0, Lbd/V;->a:Landroid/webkit/WebView;

    iget p2, p0, Lbd/V;->d:I

    iget v7, p0, Lbd/V;->e:I

    const/4 v8, 0x0

    invoke-virtual {p1, v8, v8, p2, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lbd/V;->E()V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->destroyImmediate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p2

    :goto_0
    move-object v6, p1

    move-object p1, p2

    goto :goto_1

    :catch_3
    move-exception p2

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iput v0, p0, Lbd/V;->d:I

    iput v1, p0, Lbd/V;->e:I

    iput-object v2, p0, Lbd/V;->b:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lbd/V;->c:Landroid/graphics/Canvas;

    iput-object v4, p0, Lbd/V;->h:Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lbd/V;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    if-eqz v5, :cond_2

    iget-object p1, p0, Lbd/V;->g:LMb/l;

    invoke-virtual {p0}, Lbd/V;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, LMb/l;->H0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    :cond_2
    if-eqz v6, :cond_3

    if-eq v6, v5, :cond_3

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->destroyImmediate()V

    :cond_3
    :goto_2
    return-void
.end method

.method public z(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "keyCode"
        }
    .end annotation

    iget-object v0, p0, Lbd/V;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lbd/V$f;

    invoke-direct {v0, p0, p1, p2}, Lbd/V$f;-><init>(Lbd/V;II)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
