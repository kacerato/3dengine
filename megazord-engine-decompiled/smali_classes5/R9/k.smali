.class public LR9/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LR9/k$g;,
        LR9/k$h;,
        LR9/k$f;,
        LR9/k$e;,
        LR9/k$c;,
        LR9/k$d;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final m:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:LMb/p;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:LR9/k$g;

.field public final i:LR9/k$h;

.field public final j:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

.field public final k:Landroid/graphics/Bitmap$Config;

.field public final l:LR9/k$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR9/k$a;

    invoke-direct {v0}, LR9/k$a;-><init>()V

    sput-object v0, LR9/k;->m:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IILR9/k$g;LR9/k$h;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "paintListener",
            "paintMode",
            "filter"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, LR9/k;->f:Z

    .line 7
    new-instance v0, LR9/k$b;

    invoke-direct {v0, p0}, LR9/k$b;-><init>(LR9/k;)V

    iput-object v0, p0, LR9/k;->l:LR9/k$f;

    .line 8
    iput p1, p0, LR9/k;->b:I

    .line 9
    iput p2, p0, LR9/k;->c:I

    .line 10
    iput-object p3, p0, LR9/k;->h:LR9/k$g;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, LR9/k;->f:Z

    .line 12
    iput-object p4, p0, LR9/k;->i:LR9/k$h;

    .line 13
    iput-object p5, p0, LR9/k;->j:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    .line 14
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 15
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p2, p3, :cond_0

    .line 16
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 17
    :cond_0
    iput-object p1, p0, LR9/k;->k:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(ILR9/k$g;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "paintListener"
        }
    .end annotation

    .line 1
    sget-object v4, LR9/k$h;->Normal:LR9/k$h;

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, LR9/k;-><init>(IILR9/k$g;LR9/k$h;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V

    return-void
.end method

.method public constructor <init>(ILR9/k$g;LR9/k$h;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolution",
            "paintListener",
            "paintMode"
        }
    .end annotation

    .line 2
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LR9/k;-><init>(IILR9/k$g;LR9/k$h;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V

    return-void
.end method

.method public constructor <init>(ILR9/k$g;LR9/k$h;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolution",
            "paintListener",
            "paintMode",
            "filter"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 4
    invoke-direct/range {v0 .. v5}, LR9/k;-><init>(IILR9/k$g;LR9/k$h;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V

    return-void
.end method

.method public constructor <init>(ILR9/k$g;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolution",
            "paintListener",
            "filter"
        }
    .end annotation

    .line 3
    sget-object v4, LR9/k$h;->Normal:LR9/k$h;

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LR9/k;-><init>(IILR9/k$g;LR9/k$h;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V

    return-void
.end method

.method public static synthetic a(LR9/k;)LR9/k$g;
    .locals 0

    iget-object p0, p0, LR9/k;->h:LR9/k$g;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LR9/k;->f:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, LR9/k;->a:LMb/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LMb/p;->destroyImmediate()V

    const/4 v0, 0x0

    iput-object v0, p0, LR9/k;->a:LMb/p;

    :cond_0
    return-void
.end method

.method public final d(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, LR9/k;->c:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    return p2
.end method

.method public final e(IIIIILR9/k$f;)F
    .locals 3
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
            "resolution",
            "x",
            "y",
            "tableX",
            "tableY",
            "listener"
        }
    .end annotation

    invoke-interface {p6, p4, p5}, LR9/k$f;->a(II)F

    move-result v0

    iget v1, p0, LR9/k;->d:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    const/high16 p2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    invoke-interface {p6, v1, p5}, LR9/k$f;->a(II)F

    move-result p5

    add-float/2addr v0, p5

    const/high16 p5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p5, p2

    :goto_0
    iget v2, p0, LR9/k;->e:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_1

    if-ge v2, p1, :cond_1

    invoke-interface {p6, p4, v2}, LR9/k$f;->a(II)F

    move-result p3

    add-float/2addr v0, p3

    add-float/2addr p5, p2

    :cond_1
    if-ltz v1, :cond_2

    if-ge v1, p1, :cond_2

    if-ltz v2, :cond_2

    if-ge v2, p1, :cond_2

    invoke-interface {p6, v1, v2}, LR9/k$f;->a(II)F

    move-result p1

    add-float/2addr v0, p1

    add-float/2addr p5, p2

    :cond_2
    div-float/2addr v0, p5

    return v0
.end method

.method public final f(IIIIILR9/k$f;)F
    .locals 3
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
            "resolution",
            "x",
            "y",
            "tableX",
            "tableY",
            "listener"
        }
    .end annotation

    invoke-interface {p6, p4, p5}, LR9/k$f;->a(II)F

    move-result v0

    iget v1, p0, LR9/k;->d:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    const/high16 p2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    invoke-interface {p6, v1, p5}, LR9/k$f;->a(II)F

    move-result p5

    add-float/2addr v0, p5

    const/high16 p5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p5, p2

    :goto_0
    iget v2, p0, LR9/k;->e:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_1

    if-ge v2, p1, :cond_1

    invoke-interface {p6, p4, v2}, LR9/k$f;->a(II)F

    move-result p3

    add-float/2addr v0, p3

    add-float/2addr p5, p2

    :cond_1
    if-ltz v1, :cond_2

    if-ge v1, p1, :cond_2

    if-ltz v2, :cond_2

    if-ge v2, p1, :cond_2

    invoke-interface {p6, v1, v2}, LR9/k$f;->a(II)F

    move-result p1

    add-float/2addr v0, p1

    add-float/2addr p5, p2

    :cond_2
    div-float/2addr v0, p5

    return v0
.end method

.method public final g(IIIILR9/k$f;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolution",
            "x",
            "tableX",
            "tableY",
            "listener"
        }
    .end annotation

    invoke-interface {p5, p3, p4}, LR9/k$f;->a(II)F

    move-result p3

    iget v0, p0, LR9/k;->d:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    invoke-interface {p5, v0, p4}, LR9/k$f;->a(II)F

    move-result p1

    add-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    :cond_0
    return p3
.end method

.method public final h(IIIILR9/k$f;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolution",
            "y",
            "tableX",
            "tableY",
            "listener"
        }
    .end annotation

    invoke-interface {p5, p3, p4}, LR9/k$f;->a(II)F

    move-result p4

    iget v0, p0, LR9/k;->e:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    invoke-interface {p5, p3, v0}, LR9/k$f;->a(II)F

    move-result p1

    add-float/2addr p4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p4, p1

    :cond_0
    return p4
.end method

.method public i()I
    .locals 1

    iget v0, p0, LR9/k;->c:I

    return v0
.end method

.method public final j(IIIILR9/k$f;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolution",
            "x",
            "tableX",
            "tableY",
            "listener"
        }
    .end annotation

    invoke-interface {p5, p3, p4}, LR9/k$f;->a(II)F

    move-result p3

    iget v0, p0, LR9/k;->d:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    invoke-interface {p5, v0, p4}, LR9/k$f;->a(II)F

    move-result p1

    add-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    :cond_0
    return p3
.end method

.method public final k(IIIILR9/k$f;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolution",
            "y",
            "tableX",
            "tableY",
            "listener"
        }
    .end annotation

    invoke-interface {p5, p3, p4}, LR9/k$f;->a(II)F

    move-result p4

    iget v0, p0, LR9/k;->e:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    invoke-interface {p5, p3, v0}, LR9/k$f;->a(II)F

    move-result p1

    add-float/2addr p4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p4, p1

    :cond_0
    return p4
.end method

.method public l(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LR9/k;->a:LMb/p;

    invoke-virtual {v0, p1, p2}, LMb/p;->B(II)F

    move-result p1

    return p1
.end method

.method public m()LMb/p;
    .locals 1

    iget-object v0, p0, LR9/k;->a:LMb/p;

    return-object v0
.end method

.method public final n(IIIIILR9/k$f;)F
    .locals 3
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
            "resolution",
            "x",
            "y",
            "tableX",
            "tableY",
            "listener"
        }
    .end annotation

    invoke-interface {p6, p4, p5}, LR9/k$f;->a(II)F

    move-result v0

    iget v1, p0, LR9/k;->d:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    const/high16 p2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    invoke-interface {p6, v1, p5}, LR9/k$f;->a(II)F

    move-result p5

    add-float/2addr v0, p5

    const/high16 p5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p5, p2

    :goto_0
    iget v2, p0, LR9/k;->e:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    if-ge v2, p1, :cond_1

    invoke-interface {p6, p4, v2}, LR9/k$f;->a(II)F

    move-result p3

    add-float/2addr v0, p3

    add-float/2addr p5, p2

    :cond_1
    if-ltz v1, :cond_2

    if-ge v1, p1, :cond_2

    if-ltz v2, :cond_2

    if-ge v2, p1, :cond_2

    invoke-interface {p6, v1, v2}, LR9/k$f;->a(II)F

    move-result p1

    add-float/2addr v0, p1

    add-float/2addr p5, p2

    :cond_2
    div-float/2addr v0, p5

    return v0
.end method

.method public final o(IIIIILR9/k$f;)F
    .locals 3
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
            "resolution",
            "x",
            "y",
            "tableX",
            "tableY",
            "listener"
        }
    .end annotation

    invoke-interface {p6, p4, p5}, LR9/k$f;->a(II)F

    move-result v0

    iget v1, p0, LR9/k;->d:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    const/high16 p2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    invoke-interface {p6, v1, p5}, LR9/k$f;->a(II)F

    move-result p5

    add-float/2addr v0, p5

    const/high16 p5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p5, p2

    :goto_0
    iget v2, p0, LR9/k;->e:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    if-ge v2, p1, :cond_1

    invoke-interface {p6, p4, v2}, LR9/k$f;->a(II)F

    move-result p3

    add-float/2addr v0, p3

    add-float/2addr p5, p2

    :cond_1
    if-ltz v1, :cond_2

    if-ge v1, p1, :cond_2

    if-ltz v2, :cond_2

    if-ge v2, p1, :cond_2

    invoke-interface {p6, v1, v2}, LR9/k$f;->a(II)F

    move-result p1

    add-float/2addr v0, p1

    add-float/2addr p5, p2

    :cond_2
    div-float/2addr v0, p5

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, LR9/k;->b:I

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, LR9/k;->a:LMb/p;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LR9/k;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LR9/k;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()V
    .locals 11

    iget-object v0, p0, LR9/k;->h:LR9/k$g;

    invoke-interface {v0}, LR9/k$g;->a()I

    move-result v0

    iget-object v1, p0, LR9/k;->h:LR9/k$g;

    invoke-interface {v1}, LR9/k$g;->b()V

    iget-object v1, p0, LR9/k;->i:LR9/k$h;

    sget-object v2, LR9/k$h;->BillinearBorders:LR9/k$h;

    if-ne v1, v2, :cond_5

    const/4 v8, 0x1

    move v7, v8

    :goto_0
    iget v1, p0, LR9/k;->c:I

    sub-int/2addr v1, v8

    if-ge v7, v1, :cond_0

    iget v4, p0, LR9/k;->d:I

    iget v1, p0, LR9/k;->e:I

    add-int v5, v1, v7

    iget-object v6, p0, LR9/k;->l:LR9/k$f;

    const/4 v9, 0x0

    move-object v1, p0

    move v2, v0

    move v3, v9

    invoke-virtual/range {v1 .. v6}, LR9/k;->g(IIIILR9/k$f;)F

    move-result v1

    invoke-static {v1}, Lbd/A;->b(F)F

    move-result v1

    invoke-static {v1}, Lgd/b;->I(F)F

    move-result v1

    iget-object v2, p0, LR9/k;->a:LMb/p;

    invoke-virtual {v2, v9, v7, v1}, LMb/p;->p0(IIF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, LR9/k;->b:I

    add-int/lit8 v7, v1, -0x1

    move v9, v8

    :goto_1
    iget v1, p0, LR9/k;->c:I

    sub-int/2addr v1, v8

    if-ge v9, v1, :cond_1

    iget v1, p0, LR9/k;->d:I

    add-int v4, v1, v7

    iget v1, p0, LR9/k;->e:I

    add-int v5, v1, v9

    iget-object v6, p0, LR9/k;->l:LR9/k$f;

    move-object v1, p0

    move v2, v0

    move v3, v7

    invoke-virtual/range {v1 .. v6}, LR9/k;->j(IIIILR9/k$f;)F

    move-result v1

    invoke-static {v1}, Lbd/A;->b(F)F

    move-result v1

    invoke-static {v1}, Lgd/b;->I(F)F

    move-result v1

    iget-object v2, p0, LR9/k;->a:LMb/p;

    invoke-virtual {v2, v7, v9, v1}, LMb/p;->p0(IIF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_2
    iget v1, p0, LR9/k;->b:I

    sub-int/2addr v1, v8

    if-ge v7, v1, :cond_2

    iget v1, p0, LR9/k;->d:I

    add-int v4, v1, v7

    iget v5, p0, LR9/k;->e:I

    iget-object v6, p0, LR9/k;->l:LR9/k$f;

    const/4 v9, 0x0

    move-object v1, p0

    move v2, v0

    move v3, v9

    invoke-virtual/range {v1 .. v6}, LR9/k;->h(IIIILR9/k$f;)F

    move-result v1

    invoke-static {v1}, Lbd/A;->b(F)F

    move-result v1

    invoke-static {v1}, Lgd/b;->I(F)F

    move-result v1

    iget-object v2, p0, LR9/k;->a:LMb/p;

    invoke-virtual {v2, v7, v9, v1}, LMb/p;->p0(IIF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_3
    iget v1, p0, LR9/k;->b:I

    sub-int/2addr v1, v8

    if-ge v7, v1, :cond_3

    iget v1, p0, LR9/k;->c:I

    add-int/lit8 v9, v1, -0x1

    iget v1, p0, LR9/k;->d:I

    add-int v4, v1, v7

    iget v1, p0, LR9/k;->e:I

    add-int v5, v1, v9

    iget-object v6, p0, LR9/k;->l:LR9/k$f;

    move-object v1, p0

    move v2, v0

    move v3, v9

    invoke-virtual/range {v1 .. v6}, LR9/k;->k(IIIILR9/k$f;)F

    move-result v1

    invoke-static {v1}, Lbd/A;->b(F)F

    move-result v1

    invoke-static {v1}, Lgd/b;->I(F)F

    move-result v1

    iget-object v2, p0, LR9/k;->a:LMb/p;

    invoke-virtual {v2, v7, v9, v1}, LMb/p;->p0(IIF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    iget v5, p0, LR9/k;->d:I

    iget v6, p0, LR9/k;->e:I

    iget-object v7, p0, LR9/k;->l:LR9/k$f;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, v0

    move v3, v9

    move v4, v10

    invoke-virtual/range {v1 .. v7}, LR9/k;->n(IIIIILR9/k$f;)F

    move-result v1

    invoke-static {v1}, Lbd/A;->b(F)F

    move-result v1

    invoke-static {v1}, Lgd/b;->I(F)F

    move-result v1

    iget-object v2, p0, LR9/k;->a:LMb/p;

    invoke-virtual {v2, v9, v10, v1}, LMb/p;->p0(IIF)V

    iget v1, p0, LR9/k;->b:I

    add-int/lit8 v9, v1, -0x1

    iget v1, p0, LR9/k;->d:I

    add-int v5, v1, v9

    iget v6, p0, LR9/k;->e:I

    iget-object v7, p0, LR9/k;->l:LR9/k$f;

    move-object v1, p0

    move v2, v0

    move v3, v9

    invoke-virtual/range {v1 .. v7}, LR9/k;->o(IIIIILR9/k$f;)F

    move-result v1

    invoke-static {v1}, Lbd/A;->b(F)F

    move-result v1

    invoke-static {v1}, Lgd/b;->I(F)F

    move-result v1

    iget-object v2, p0, LR9/k;->a:LMb/p;

    invoke-virtual {v2, v9, v10, v1}, LMb/p;->p0(IIF)V

    iget v1, p0, LR9/k;->c:I

    add-int/lit8 v9, v1, -0x1

    iget v5, p0, LR9/k;->d:I

    iget v1, p0, LR9/k;->e:I

    add-int v6, v1, v9

    iget-object v7, p0, LR9/k;->l:LR9/k$f;

    move-object v1, p0

    move v2, v0

    move v3, v10

    move v4, v9

    invoke-virtual/range {v1 .. v7}, LR9/k;->e(IIIIILR9/k$f;)F

    move-result v1

    invoke-static {v1}, Lbd/A;->b(F)F

    move-result v1

    invoke-static {v1}, Lgd/b;->I(F)F

    move-result v1

    :try_start_0
    iget-object v2, p0, LR9/k;->a:LMb/p;

    invoke-virtual {v2, v10, v9, v1}, LMb/p;->p0(IIF)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INFO ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, LR9/k;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, LR9/k;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vs "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    iget v1, p0, LR9/k;->b:I

    add-int/lit8 v9, v1, -0x1

    iget v1, p0, LR9/k;->c:I

    add-int/lit8 v10, v1, -0x1

    iget v1, p0, LR9/k;->d:I

    add-int v5, v1, v9

    iget v1, p0, LR9/k;->e:I

    add-int v6, v1, v10

    iget-object v7, p0, LR9/k;->l:LR9/k$f;

    move-object v1, p0

    move v2, v0

    move v3, v9

    move v4, v10

    invoke-virtual/range {v1 .. v7}, LR9/k;->f(IIIIILR9/k$f;)F

    move-result v0

    invoke-static {v0}, Lbd/A;->b(F)F

    move-result v0

    invoke-static {v0}, Lgd/b;->I(F)F

    move-result v0

    iget-object v1, p0, LR9/k;->a:LMb/p;

    invoke-virtual {v1, v9, v10, v0}, LMb/p;->p0(IIF)V

    move v0, v8

    :goto_5
    iget v1, p0, LR9/k;->b:I

    sub-int/2addr v1, v8

    if-ge v0, v1, :cond_7

    move v1, v8

    :goto_6
    iget v2, p0, LR9/k;->c:I

    sub-int/2addr v2, v8

    if-ge v1, v2, :cond_4

    iget v2, p0, LR9/k;->d:I

    add-int/2addr v2, v0

    iget v3, p0, LR9/k;->e:I

    add-int/2addr v3, v1

    iget-object v4, p0, LR9/k;->l:LR9/k$f;

    invoke-interface {v4, v2, v3}, LR9/k$f;->a(II)F

    move-result v2

    invoke-static {v2}, Lbd/A;->b(F)F

    move-result v2

    invoke-static {v2}, Lgd/b;->I(F)F

    move-result v2

    iget-object v3, p0, LR9/k;->a:LMb/p;

    invoke-virtual {v3, v0, v1, v2}, LMb/p;->p0(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    sget-object v0, LR9/k$h;->Normal:LR9/k$h;

    if-ne v1, v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget v2, p0, LR9/k;->b:I

    if-ge v1, v2, :cond_7

    move v2, v0

    :goto_8
    iget v3, p0, LR9/k;->c:I

    if-ge v2, v3, :cond_6

    iget v3, p0, LR9/k;->d:I

    add-int/2addr v3, v1

    iget v4, p0, LR9/k;->e:I

    add-int/2addr v4, v2

    iget-object v5, p0, LR9/k;->l:LR9/k$f;

    invoke-interface {v5, v3, v4}, LR9/k$f;->a(II)F

    move-result v3

    invoke-static {v3}, Lbd/A;->b(F)F

    move-result v3

    invoke-static {v3}, Lgd/b;->I(F)F

    move-result v3

    iget-object v4, p0, LR9/k;->a:LMb/p;

    invoke-virtual {v4, v1, v2, v3}, LMb/p;->p0(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method public s(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolution",
            "tableStartX",
            "tableStartY"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p2, p3}, LR9/k;->t(IIII)V

    return-void
.end method

.method public t(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "tableStartX",
            "tableStartY"
        }
    .end annotation

    iput p1, p0, LR9/k;->b:I

    iput p2, p0, LR9/k;->c:I

    iget v0, p0, LR9/k;->d:I

    const/4 v1, 0x1

    if-ne v0, p3, :cond_0

    iget v0, p0, LR9/k;->e:I

    if-eq v0, p4, :cond_1

    :cond_0
    iput-boolean v1, p0, LR9/k;->f:Z

    iput p3, p0, LR9/k;->d:I

    iput p4, p0, LR9/k;->e:I

    :cond_1
    iget-object p3, p0, LR9/k;->a:LMb/p;

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p3}, LMb/p;->getWidth()I

    move-result p3

    if-ne p3, p1, :cond_3

    iget-object p3, p0, LR9/k;->a:LMb/p;

    invoke-virtual {p3}, LMb/p;->getHeight()I

    move-result p3

    if-eq p3, p2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, LR9/k;->f:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p3, p0, LR9/k;->a:LMb/p;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, LMb/p;->destroyImmediate()V

    :cond_4
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iput-object v0, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iget-object v0, p0, LR9/k;->j:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iput-boolean p4, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iput-boolean v1, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->R32F:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->k0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    new-instance v0, LMb/n;

    invoke-direct {v0, p1, p2, p3}, LMb/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object v0, p0, LR9/k;->a:LMb/p;

    :goto_1
    invoke-virtual {p0}, LR9/k;->r()V

    iput-boolean p4, p0, LR9/k;->f:Z

    iput-boolean v1, p0, LR9/k;->g:Z

    :cond_5
    return-void
.end method

.method public u()V
    .locals 1

    iget-boolean v0, p0, LR9/k;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LR9/k;->a:LMb/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LMb/p;->apply()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LR9/k;->g:Z

    :cond_0
    return-void
.end method
