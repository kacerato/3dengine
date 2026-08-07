.class public LR9/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LR9/o$l;,
        LR9/o$m;,
        LR9/o$k;,
        LR9/o$j;,
        LR9/o$h;,
        LR9/o$i;
    }
.end annotation


# static fields
.field public static final o:Ljava/lang/ThreadLocal;
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

.field public final h:LR9/o$l;

.field public final i:LR9/o$m;

.field public final j:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

.field public final k:LR9/o$k;

.field public final l:LR9/o$k;

.field public final m:LR9/o$k;

.field public final n:LR9/o$k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR9/o$b;

    invoke-direct {v0}, LR9/o$b;-><init>()V

    sput-object v0, LR9/o;->o:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IILR9/o$l;LR9/o$m;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V
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
    iput-boolean v0, p0, LR9/o;->f:Z

    .line 7
    new-instance v0, LR9/o$c;

    invoke-direct {v0, p0}, LR9/o$c;-><init>(LR9/o;)V

    iput-object v0, p0, LR9/o;->k:LR9/o$k;

    .line 8
    new-instance v0, LR9/o$d;

    invoke-direct {v0, p0}, LR9/o$d;-><init>(LR9/o;)V

    iput-object v0, p0, LR9/o;->l:LR9/o$k;

    .line 9
    new-instance v0, LR9/o$e;

    invoke-direct {v0, p0}, LR9/o$e;-><init>(LR9/o;)V

    iput-object v0, p0, LR9/o;->m:LR9/o$k;

    .line 10
    new-instance v0, LR9/o$f;

    invoke-direct {v0, p0}, LR9/o$f;-><init>(LR9/o;)V

    iput-object v0, p0, LR9/o;->n:LR9/o$k;

    .line 11
    iput p1, p0, LR9/o;->b:I

    .line 12
    iput p2, p0, LR9/o;->c:I

    .line 13
    iput-object p3, p0, LR9/o;->h:LR9/o$l;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, LR9/o;->f:Z

    .line 15
    iput-object p4, p0, LR9/o;->i:LR9/o$m;

    .line 16
    iput-object p5, p0, LR9/o;->j:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    return-void
.end method

.method public constructor <init>(ILR9/o$l;)V
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
    sget-object v4, LR9/o$m;->BillinearBorders:LR9/o$m;

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, LR9/o;-><init>(IILR9/o$l;LR9/o$m;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V

    return-void
.end method

.method public constructor <init>(ILR9/o$l;LR9/o$m;)V
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

    invoke-direct/range {v0 .. v5}, LR9/o;-><init>(IILR9/o$l;LR9/o$m;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V

    return-void
.end method

.method public constructor <init>(ILR9/o$l;LR9/o$m;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V
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
    invoke-direct/range {v0 .. v5}, LR9/o;-><init>(IILR9/o$l;LR9/o$m;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V

    return-void
.end method

.method public constructor <init>(ILR9/o$l;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V
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
    sget-object v4, LR9/o$m;->BillinearBorders:LR9/o$m;

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LR9/o;-><init>(IILR9/o$l;LR9/o$m;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V

    return-void
.end method

.method public static synthetic a(LR9/o;)LR9/o$l;
    .locals 0

    iget-object p0, p0, LR9/o;->h:LR9/o$l;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LR9/o;->f:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, LR9/o;->a:LMb/p;

    if-eqz v0, :cond_0

    new-instance v1, LR9/o$g;

    invoke-direct {v1, p0, v0}, LR9/o$g;-><init>(LR9/o;LMb/p;)V

    invoke-static {v1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, LR9/o;->a:LMb/p;

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

    iget v0, p0, LR9/o;->c:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    return p2
.end method

.method public final e(IIIIILR9/o$k;)F
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

    invoke-interface {p6, p4, p5}, LR9/o$k;->a(II)F

    move-result v0

    iget v1, p0, LR9/o;->d:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    const/high16 p2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    invoke-interface {p6, v1, p5}, LR9/o$k;->a(II)F

    move-result p5

    add-float/2addr v0, p5

    const/high16 p5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p5, p2

    :goto_0
    iget v2, p0, LR9/o;->e:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_1

    if-ge v2, p1, :cond_1

    invoke-interface {p6, p4, v2}, LR9/o$k;->a(II)F

    move-result p3

    add-float/2addr v0, p3

    add-float/2addr p5, p2

    :cond_1
    if-ltz v1, :cond_2

    if-ge v1, p1, :cond_2

    if-ltz v2, :cond_2

    if-ge v2, p1, :cond_2

    invoke-interface {p6, v1, v2}, LR9/o$k;->a(II)F

    move-result p1

    add-float/2addr v0, p1

    add-float/2addr p5, p2

    :cond_2
    div-float/2addr v0, p5

    return v0
.end method

.method public final f(IIIIILR9/o$k;)F
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

    invoke-interface {p6, p4, p5}, LR9/o$k;->a(II)F

    move-result v0

    iget v1, p0, LR9/o;->d:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    const/high16 p2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    invoke-interface {p6, v1, p5}, LR9/o$k;->a(II)F

    move-result p5

    add-float/2addr v0, p5

    const/high16 p5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p5, p2

    :goto_0
    iget v2, p0, LR9/o;->e:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_1

    if-ge v2, p1, :cond_1

    invoke-interface {p6, p4, v2}, LR9/o$k;->a(II)F

    move-result p3

    add-float/2addr v0, p3

    add-float/2addr p5, p2

    :cond_1
    if-ltz v1, :cond_2

    if-ge v1, p1, :cond_2

    if-ltz v2, :cond_2

    if-ge v2, p1, :cond_2

    invoke-interface {p6, v1, v2}, LR9/o$k;->a(II)F

    move-result p1

    add-float/2addr v0, p1

    add-float/2addr p5, p2

    :cond_2
    div-float/2addr v0, p5

    return v0
.end method

.method public final g(IIIILR9/o$k;)F
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

    invoke-interface {p5, p3, p4}, LR9/o$k;->a(II)F

    move-result p3

    iget v0, p0, LR9/o;->d:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    invoke-interface {p5, v0, p4}, LR9/o$k;->a(II)F

    move-result p1

    add-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    :cond_0
    return p3
.end method

.method public final h(IIIILR9/o$k;)F
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

    invoke-interface {p5, p3, p4}, LR9/o$k;->a(II)F

    move-result p4

    iget v0, p0, LR9/o;->e:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    invoke-interface {p5, p3, v0}, LR9/o$k;->a(II)F

    move-result p1

    add-float/2addr p4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p4, p1

    :cond_0
    return p4
.end method

.method public i()I
    .locals 1

    iget v0, p0, LR9/o;->c:I

    return v0
.end method

.method public final j(IIIILR9/o$k;)F
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

    invoke-interface {p5, p3, p4}, LR9/o$k;->a(II)F

    move-result p3

    iget v0, p0, LR9/o;->d:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    invoke-interface {p5, v0, p4}, LR9/o$k;->a(II)F

    move-result p1

    add-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    :cond_0
    return p3
.end method

.method public final k(IIIILR9/o$k;)F
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

    invoke-interface {p5, p3, p4}, LR9/o$k;->a(II)F

    move-result p4

    iget v0, p0, LR9/o;->e:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    invoke-interface {p5, p3, v0}, LR9/o$k;->a(II)F

    move-result p1

    add-float/2addr p4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p4, p1

    :cond_0
    return p4
.end method

.method public l()LMb/p;
    .locals 1

    iget-object v0, p0, LR9/o;->a:LMb/p;

    return-object v0
.end method

.method public final m(IIIIILR9/o$k;)F
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

    invoke-interface {p6, p4, p5}, LR9/o$k;->a(II)F

    move-result v0

    iget v1, p0, LR9/o;->d:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    const/high16 p2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    invoke-interface {p6, v1, p5}, LR9/o$k;->a(II)F

    move-result p5

    add-float/2addr v0, p5

    const/high16 p5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p5, p2

    :goto_0
    iget v2, p0, LR9/o;->e:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    if-ge v2, p1, :cond_1

    invoke-interface {p6, p4, v2}, LR9/o$k;->a(II)F

    move-result p3

    add-float/2addr v0, p3

    add-float/2addr p5, p2

    :cond_1
    if-ltz v1, :cond_2

    if-ge v1, p1, :cond_2

    if-ltz v2, :cond_2

    if-ge v2, p1, :cond_2

    invoke-interface {p6, v1, v2}, LR9/o$k;->a(II)F

    move-result p1

    add-float/2addr v0, p1

    add-float/2addr p5, p2

    :cond_2
    div-float/2addr v0, p5

    return v0
.end method

.method public final n(IIIIILR9/o$k;)F
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

    invoke-interface {p6, p4, p5}, LR9/o$k;->a(II)F

    move-result v0

    iget v1, p0, LR9/o;->d:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    const/high16 p2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    invoke-interface {p6, v1, p5}, LR9/o$k;->a(II)F

    move-result p5

    add-float/2addr v0, p5

    const/high16 p5, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p5, p2

    :goto_0
    iget v2, p0, LR9/o;->e:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    if-ge v2, p1, :cond_1

    invoke-interface {p6, p4, v2}, LR9/o$k;->a(II)F

    move-result p3

    add-float/2addr v0, p3

    add-float/2addr p5, p2

    :cond_1
    if-ltz v1, :cond_2

    if-ge v1, p1, :cond_2

    if-ltz v2, :cond_2

    if-ge v2, p1, :cond_2

    invoke-interface {p6, v1, v2}, LR9/o$k;->a(II)F

    move-result p1

    add-float/2addr v0, p1

    add-float/2addr p5, p2

    :cond_2
    div-float/2addr v0, p5

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, LR9/o;->b:I

    return v0
.end method

.method public final p()V
    .locals 17

    move-object/from16 v8, p0

    iget-object v0, v8, LR9/o;->h:LR9/o$l;

    invoke-interface {v0}, LR9/o$l;->a()I

    move-result v9

    iget-object v0, v8, LR9/o;->h:LR9/o$l;

    invoke-interface {v0}, LR9/o$l;->b()V

    sget-object v0, LR9/o;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v0, v8, LR9/o;->i:LR9/o$m;

    sget-object v1, LR9/o$m;->BillinearBorders:LR9/o$m;

    if-ne v0, v1, :cond_5

    const/4 v11, 0x1

    move v0, v11

    :goto_0
    iget v1, v8, LR9/o;->c:I

    sub-int/2addr v1, v11

    if-ge v0, v1, :cond_0

    iget v7, v8, LR9/o;->d:I

    iget v1, v8, LR9/o;->e:I

    add-int v12, v1, v0

    iget-object v6, v8, LR9/o;->k:LR9/o$k;

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move v2, v9

    move v3, v13

    move v4, v7

    move v5, v12

    invoke-virtual/range {v1 .. v6}, LR9/o;->g(IIIILR9/o$k;)F

    move-result v14

    iget-object v6, v8, LR9/o;->l:LR9/o$k;

    invoke-virtual/range {v1 .. v6}, LR9/o;->g(IIIILR9/o$k;)F

    move-result v15

    iget-object v6, v8, LR9/o;->m:LR9/o$k;

    invoke-virtual/range {v1 .. v6}, LR9/o;->g(IIIILR9/o$k;)F

    move-result v6

    iget-object v5, v8, LR9/o;->n:LR9/o$k;

    move-object v7, v5

    move v5, v12

    move v12, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, LR9/o;->g(IIIILR9/o$k;)F

    move-result v1

    invoke-virtual {v10, v1, v14, v15, v12}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    iget-object v1, v8, LR9/o;->a:LMb/p;

    invoke-virtual {v1, v13, v0, v10}, LMb/p;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, v8, LR9/o;->b:I

    sub-int/2addr v0, v11

    move v7, v11

    :goto_1
    iget v1, v8, LR9/o;->c:I

    sub-int/2addr v1, v11

    if-ge v7, v1, :cond_1

    iget v1, v8, LR9/o;->d:I

    add-int v12, v1, v0

    iget v1, v8, LR9/o;->e:I

    add-int v13, v1, v7

    iget-object v6, v8, LR9/o;->k:LR9/o$k;

    move-object/from16 v1, p0

    move v2, v9

    move v3, v0

    move v4, v12

    move v5, v13

    invoke-virtual/range {v1 .. v6}, LR9/o;->j(IIIILR9/o$k;)F

    move-result v14

    iget-object v6, v8, LR9/o;->l:LR9/o$k;

    invoke-virtual/range {v1 .. v6}, LR9/o;->j(IIIILR9/o$k;)F

    move-result v15

    iget-object v6, v8, LR9/o;->m:LR9/o$k;

    invoke-virtual/range {v1 .. v6}, LR9/o;->j(IIIILR9/o$k;)F

    move-result v6

    iget-object v5, v8, LR9/o;->n:LR9/o$k;

    move-object v12, v5

    move v5, v13

    move v13, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, LR9/o;->j(IIIILR9/o$k;)F

    move-result v1

    invoke-virtual {v10, v1, v14, v15, v13}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    iget-object v1, v8, LR9/o;->a:LMb/p;

    invoke-virtual {v1, v0, v7, v10}, LMb/p;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_2
    iget v1, v8, LR9/o;->b:I

    sub-int/2addr v1, v11

    if-ge v0, v1, :cond_2

    iget v1, v8, LR9/o;->d:I

    add-int v7, v1, v0

    iget v12, v8, LR9/o;->e:I

    iget-object v6, v8, LR9/o;->k:LR9/o$k;

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move v2, v9

    move v3, v13

    move v4, v7

    move v5, v12

    invoke-virtual/range {v1 .. v6}, LR9/o;->h(IIIILR9/o$k;)F

    move-result v14

    iget-object v6, v8, LR9/o;->l:LR9/o$k;

    invoke-virtual/range {v1 .. v6}, LR9/o;->h(IIIILR9/o$k;)F

    move-result v15

    iget-object v6, v8, LR9/o;->m:LR9/o$k;

    invoke-virtual/range {v1 .. v6}, LR9/o;->h(IIIILR9/o$k;)F

    move-result v6

    iget-object v5, v8, LR9/o;->n:LR9/o$k;

    move-object v7, v5

    move v5, v12

    move v12, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, LR9/o;->h(IIIILR9/o$k;)F

    move-result v1

    invoke-virtual {v10, v1, v14, v15, v12}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    iget-object v1, v8, LR9/o;->a:LMb/p;

    invoke-virtual {v1, v0, v13, v10}, LMb/p;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v11

    :goto_3
    iget v1, v8, LR9/o;->b:I

    sub-int/2addr v1, v11

    if-ge v0, v1, :cond_3

    iget v1, v8, LR9/o;->c:I

    add-int/lit8 v7, v1, -0x1

    iget v1, v8, LR9/o;->d:I

    add-int v12, v1, v0

    iget v1, v8, LR9/o;->e:I

    add-int v13, v1, v7

    iget-object v6, v8, LR9/o;->k:LR9/o$k;

    move-object/from16 v1, p0

    move v2, v9

    move v3, v7

    move v4, v12

    move v5, v13

    invoke-virtual/range {v1 .. v6}, LR9/o;->k(IIIILR9/o$k;)F

    move-result v14

    iget-object v6, v8, LR9/o;->l:LR9/o$k;

    invoke-virtual/range {v1 .. v6}, LR9/o;->k(IIIILR9/o$k;)F

    move-result v15

    iget-object v6, v8, LR9/o;->m:LR9/o$k;

    invoke-virtual/range {v1 .. v6}, LR9/o;->k(IIIILR9/o$k;)F

    move-result v6

    iget-object v5, v8, LR9/o;->n:LR9/o$k;

    move-object v12, v5

    move v5, v13

    move v13, v6

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, LR9/o;->k(IIIILR9/o$k;)F

    move-result v1

    invoke-virtual {v10, v1, v14, v15, v13}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    iget-object v1, v8, LR9/o;->a:LMb/p;

    invoke-virtual {v1, v0, v7, v10}, LMb/p;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget v0, v8, LR9/o;->d:I

    iget v12, v8, LR9/o;->e:I

    iget-object v7, v8, LR9/o;->k:LR9/o$k;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move v2, v9

    move v3, v13

    move v4, v14

    move v5, v0

    move v6, v12

    invoke-virtual/range {v1 .. v7}, LR9/o;->m(IIIIILR9/o$k;)F

    move-result v15

    iget-object v7, v8, LR9/o;->l:LR9/o$k;

    invoke-virtual/range {v1 .. v7}, LR9/o;->m(IIIIILR9/o$k;)F

    move-result v7

    iget-object v6, v8, LR9/o;->m:LR9/o$k;

    move-object/from16 v16, v6

    move v6, v12

    move v11, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, LR9/o;->m(IIIIILR9/o$k;)F

    move-result v7

    iget-object v6, v8, LR9/o;->n:LR9/o$k;

    move-object v0, v6

    move v6, v12

    move v12, v7

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, LR9/o;->m(IIIIILR9/o$k;)F

    move-result v0

    invoke-virtual {v10, v0, v15, v11, v12}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    iget-object v0, v8, LR9/o;->a:LMb/p;

    invoke-virtual {v0, v13, v14, v10}, LMb/p;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget v0, v8, LR9/o;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, v8, LR9/o;->d:I

    add-int v11, v1, v0

    iget v12, v8, LR9/o;->e:I

    iget-object v7, v8, LR9/o;->k:LR9/o$k;

    move-object/from16 v1, p0

    move v3, v0

    move v4, v13

    move v5, v11

    move v6, v12

    invoke-virtual/range {v1 .. v7}, LR9/o;->n(IIIIILR9/o$k;)F

    move-result v14

    iget-object v7, v8, LR9/o;->l:LR9/o$k;

    invoke-virtual/range {v1 .. v7}, LR9/o;->n(IIIIILR9/o$k;)F

    move-result v15

    iget-object v7, v8, LR9/o;->m:LR9/o$k;

    invoke-virtual/range {v1 .. v7}, LR9/o;->n(IIIIILR9/o$k;)F

    move-result v7

    iget-object v6, v8, LR9/o;->n:LR9/o$k;

    move-object v11, v6

    move v6, v12

    move v12, v7

    move-object v7, v11

    invoke-virtual/range {v1 .. v7}, LR9/o;->n(IIIIILR9/o$k;)F

    move-result v1

    invoke-virtual {v10, v1, v14, v15, v12}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    iget-object v1, v8, LR9/o;->a:LMb/p;

    invoke-virtual {v1, v0, v13, v10}, LMb/p;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget v0, v8, LR9/o;->c:I

    const/4 v1, 0x1

    add-int/lit8 v11, v0, -0x1

    iget v0, v8, LR9/o;->d:I

    iget v1, v8, LR9/o;->e:I

    add-int v12, v1, v11

    iget-object v7, v8, LR9/o;->k:LR9/o$k;

    move-object/from16 v1, p0

    move v3, v13

    move v4, v11

    move v5, v0

    move v6, v12

    invoke-virtual/range {v1 .. v7}, LR9/o;->e(IIIIILR9/o$k;)F

    move-result v14

    iget-object v7, v8, LR9/o;->l:LR9/o$k;

    invoke-virtual/range {v1 .. v7}, LR9/o;->e(IIIIILR9/o$k;)F

    move-result v15

    iget-object v7, v8, LR9/o;->m:LR9/o$k;

    invoke-virtual/range {v1 .. v7}, LR9/o;->e(IIIIILR9/o$k;)F

    move-result v7

    iget-object v6, v8, LR9/o;->n:LR9/o$k;

    move-object v0, v6

    move v6, v12

    move v12, v7

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, LR9/o;->e(IIIIILR9/o$k;)F

    move-result v0

    invoke-virtual {v10, v0, v14, v15, v12}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    :try_start_0
    iget-object v0, v8, LR9/o;->a:LMb/p;

    invoke-virtual {v0, v13, v11, v10}, LMb/p;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INFO ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, LR9/o;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, LR9/o;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    iget v0, v8, LR9/o;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, v8, LR9/o;->c:I

    add-int/lit8 v11, v2, -0x1

    iget v1, v8, LR9/o;->d:I

    add-int v12, v1, v0

    iget v1, v8, LR9/o;->e:I

    add-int v13, v1, v11

    iget-object v7, v8, LR9/o;->k:LR9/o$k;

    move-object/from16 v1, p0

    move v2, v9

    move v3, v0

    move v4, v11

    move v5, v12

    move v6, v13

    invoke-virtual/range {v1 .. v7}, LR9/o;->f(IIIIILR9/o$k;)F

    move-result v14

    iget-object v7, v8, LR9/o;->l:LR9/o$k;

    invoke-virtual/range {v1 .. v7}, LR9/o;->f(IIIIILR9/o$k;)F

    move-result v15

    iget-object v7, v8, LR9/o;->m:LR9/o$k;

    invoke-virtual/range {v1 .. v7}, LR9/o;->f(IIIIILR9/o$k;)F

    move-result v7

    iget-object v6, v8, LR9/o;->n:LR9/o$k;

    move-object v9, v6

    move v6, v13

    move v12, v7

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, LR9/o;->f(IIIIILR9/o$k;)F

    move-result v1

    invoke-virtual {v10, v1, v14, v15, v12}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    iget-object v1, v8, LR9/o;->a:LMb/p;

    invoke-virtual {v1, v0, v11, v10}, LMb/p;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const/4 v1, 0x1

    :goto_5
    iget v0, v8, LR9/o;->b:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_7

    move v0, v2

    :goto_6
    iget v3, v8, LR9/o;->c:I

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_4

    iget v3, v8, LR9/o;->d:I

    add-int/2addr v3, v1

    iget v4, v8, LR9/o;->e:I

    add-int/2addr v4, v0

    iget-object v5, v8, LR9/o;->k:LR9/o$k;

    invoke-interface {v5, v3, v4}, LR9/o$k;->a(II)F

    move-result v5

    iget-object v6, v8, LR9/o;->l:LR9/o$k;

    invoke-interface {v6, v3, v4}, LR9/o$k;->a(II)F

    move-result v6

    iget-object v7, v8, LR9/o;->m:LR9/o$k;

    invoke-interface {v7, v3, v4}, LR9/o$k;->a(II)F

    move-result v7

    iget-object v9, v8, LR9/o;->n:LR9/o$k;

    invoke-interface {v9, v3, v4}, LR9/o$k;->a(II)F

    move-result v3

    invoke-virtual {v10, v3, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    iget-object v3, v8, LR9/o;->a:LMb/p;

    invoke-virtual {v3, v1, v0, v10}, LMb/p;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    sget-object v1, LR9/o$m;->Normal:LR9/o$m;

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget v2, v8, LR9/o;->b:I

    if-ge v1, v2, :cond_7

    move v2, v0

    :goto_8
    iget v3, v8, LR9/o;->c:I

    if-ge v2, v3, :cond_6

    iget v3, v8, LR9/o;->d:I

    add-int/2addr v3, v1

    iget v4, v8, LR9/o;->e:I

    add-int/2addr v4, v2

    iget-object v5, v8, LR9/o;->k:LR9/o$k;

    invoke-interface {v5, v3, v4}, LR9/o$k;->a(II)F

    move-result v5

    iget-object v6, v8, LR9/o;->l:LR9/o$k;

    invoke-interface {v6, v3, v4}, LR9/o$k;->a(II)F

    move-result v6

    iget-object v7, v8, LR9/o;->m:LR9/o$k;

    invoke-interface {v7, v3, v4}, LR9/o$k;->a(II)F

    move-result v7

    iget-object v9, v8, LR9/o;->n:LR9/o$k;

    invoke-interface {v9, v3, v4}, LR9/o$k;->a(II)F

    move-result v3

    invoke-virtual {v10, v3, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    iget-object v3, v8, LR9/o;->a:LMb/p;

    invoke-virtual {v3, v1, v2, v10}, LMb/p;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method public q(III)V
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

    invoke-virtual {p0, p1, p1, p2, p3}, LR9/o;->r(IIII)V

    return-void
.end method

.method public r(IIII)V
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

    iput p1, p0, LR9/o;->b:I

    iput p2, p0, LR9/o;->c:I

    iget v0, p0, LR9/o;->d:I

    const/4 v1, 0x1

    if-ne v0, p3, :cond_0

    iget v0, p0, LR9/o;->e:I

    if-eq v0, p4, :cond_1

    :cond_0
    iput-boolean v1, p0, LR9/o;->f:Z

    iput p3, p0, LR9/o;->d:I

    iput p4, p0, LR9/o;->e:I

    :cond_1
    iget-object p3, p0, LR9/o;->a:LMb/p;

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p3}, LMb/p;->getWidth()I

    move-result p3

    if-ne p3, p1, :cond_3

    iget-object p3, p0, LR9/o;->a:LMb/p;

    invoke-virtual {p3}, LMb/p;->getHeight()I

    move-result p3

    if-eq p3, p2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, LR9/o;->f:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p3, p0, LR9/o;->a:LMb/p;

    if-eqz p3, :cond_4

    new-instance v0, LR9/o$a;

    invoke-direct {v0, p0, p3}, LR9/o$a;-><init>(LR9/o;LMb/p;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_4
    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iput-object v0, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iget-object v0, p0, LR9/o;->j:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iput-boolean p4, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iput-boolean v1, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    new-instance v0, LMb/n;

    invoke-direct {v0, p1, p2, p3}, LMb/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object v0, p0, LR9/o;->a:LMb/p;

    :goto_1
    invoke-virtual {p0}, LR9/o;->p()V

    iput-boolean p4, p0, LR9/o;->f:Z

    iput-boolean v1, p0, LR9/o;->g:Z

    :cond_5
    return-void
.end method

.method public s()V
    .locals 1

    iget-boolean v0, p0, LR9/o;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LR9/o;->a:LMb/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LMb/p;->apply()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LR9/o;->g:Z

    :cond_0
    return-void
.end method
