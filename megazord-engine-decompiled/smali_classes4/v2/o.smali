.class public Lv2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/o$c;,
        Lv2/o$b;
    }
.end annotation


# static fields
.field public static final m:Lv2/d;


# instance fields
.field public a:Lv2/e;

.field public b:Lv2/e;

.field public c:Lv2/e;

.field public d:Lv2/e;

.field public e:Lv2/d;

.field public f:Lv2/d;

.field public g:Lv2/d;

.field public h:Lv2/d;

.field public i:Lv2/g;

.field public j:Lv2/g;

.field public k:Lv2/g;

.field public l:Lv2/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv2/m;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lv2/m;-><init>(F)V

    sput-object v0, Lv2/o;->m:Lv2/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->a:Lv2/e;

    .line 17
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->b:Lv2/e;

    .line 18
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->c:Lv2/e;

    .line 19
    invoke-static {}, Lv2/k;->b()Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->d:Lv2/e;

    .line 20
    new-instance v0, Lv2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o;->e:Lv2/d;

    .line 21
    new-instance v0, Lv2/a;

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o;->f:Lv2/d;

    .line 22
    new-instance v0, Lv2/a;

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o;->g:Lv2/d;

    .line 23
    new-instance v0, Lv2/a;

    invoke-direct {v0, v1}, Lv2/a;-><init>(F)V

    iput-object v0, p0, Lv2/o;->h:Lv2/d;

    .line 24
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->i:Lv2/g;

    .line 25
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->j:Lv2/g;

    .line 26
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->k:Lv2/g;

    .line 27
    invoke-static {}, Lv2/k;->c()Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->l:Lv2/g;

    return-void
.end method

.method public constructor <init>(Lv2/o$b;)V
    .locals 1
    .param p1    # Lv2/o$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lv2/o$b;->a(Lv2/o$b;)Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->a:Lv2/e;

    .line 4
    invoke-static {p1}, Lv2/o$b;->e(Lv2/o$b;)Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->b:Lv2/e;

    .line 5
    invoke-static {p1}, Lv2/o$b;->f(Lv2/o$b;)Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->c:Lv2/e;

    .line 6
    invoke-static {p1}, Lv2/o$b;->g(Lv2/o$b;)Lv2/e;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->d:Lv2/e;

    .line 7
    invoke-static {p1}, Lv2/o$b;->h(Lv2/o$b;)Lv2/d;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->e:Lv2/d;

    .line 8
    invoke-static {p1}, Lv2/o$b;->i(Lv2/o$b;)Lv2/d;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->f:Lv2/d;

    .line 9
    invoke-static {p1}, Lv2/o$b;->j(Lv2/o$b;)Lv2/d;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->g:Lv2/d;

    .line 10
    invoke-static {p1}, Lv2/o$b;->k(Lv2/o$b;)Lv2/d;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->h:Lv2/d;

    .line 11
    invoke-static {p1}, Lv2/o$b;->l(Lv2/o$b;)Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->i:Lv2/g;

    .line 12
    invoke-static {p1}, Lv2/o$b;->b(Lv2/o$b;)Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->j:Lv2/g;

    .line 13
    invoke-static {p1}, Lv2/o$b;->c(Lv2/o$b;)Lv2/g;

    move-result-object v0

    iput-object v0, p0, Lv2/o;->k:Lv2/g;

    .line 14
    invoke-static {p1}, Lv2/o$b;->d(Lv2/o$b;)Lv2/g;

    move-result-object p1

    iput-object p1, p0, Lv2/o;->l:Lv2/g;

    return-void
.end method

.method public synthetic constructor <init>(Lv2/o$b;Lv2/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lv2/o;-><init>(Lv2/o$b;)V

    return-void
.end method

.method public static a()Lv2/o$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv2/o$b;

    invoke-direct {v0}, Lv2/o$b;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;II)Lv2/o$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lv2/o;->c(Landroid/content/Context;III)Lv2/o$b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;III)Lv2/o$b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv2/a;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Lv2/a;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lv2/o;->d(Landroid/content/Context;IILv2/d;)Lv2/o$b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;IILv2/d;)Lv2/o$b;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    :cond_0
    sget-object p2, LR1/a$o;->oq:[I

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    sget p1, LR1/a$o;->pq:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget p2, LR1/a$o;->sq:I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v0, LR1/a$o;->tq:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, LR1/a$o;->rq:I

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, LR1/a$o;->qq:I

    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget v2, LR1/a$o;->uq:I

    invoke-static {p0, v2, p3}, Lv2/o;->m(Landroid/content/res/TypedArray;ILv2/d;)Lv2/d;

    move-result-object p3

    sget v2, LR1/a$o;->xq:I

    invoke-static {p0, v2, p3}, Lv2/o;->m(Landroid/content/res/TypedArray;ILv2/d;)Lv2/d;

    move-result-object v2

    sget v3, LR1/a$o;->yq:I

    invoke-static {p0, v3, p3}, Lv2/o;->m(Landroid/content/res/TypedArray;ILv2/d;)Lv2/d;

    move-result-object v3

    sget v4, LR1/a$o;->wq:I

    invoke-static {p0, v4, p3}, Lv2/o;->m(Landroid/content/res/TypedArray;ILv2/d;)Lv2/d;

    move-result-object v4

    sget v5, LR1/a$o;->vq:I

    invoke-static {p0, v5, p3}, Lv2/o;->m(Landroid/content/res/TypedArray;ILv2/d;)Lv2/d;

    move-result-object p3

    new-instance v5, Lv2/o$b;

    invoke-direct {v5}, Lv2/o$b;-><init>()V

    invoke-virtual {v5, p2, v2}, Lv2/o$b;->I(ILv2/d;)Lv2/o$b;

    move-result-object p2

    invoke-virtual {p2, v0, v3}, Lv2/o$b;->N(ILv2/d;)Lv2/o$b;

    move-result-object p2

    invoke-virtual {p2, v1, v4}, Lv2/o$b;->A(ILv2/d;)Lv2/o$b;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lv2/o$b;->v(ILv2/d;)Lv2/o$b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lv2/o$b;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lv2/o;->f(Landroid/content/Context;Landroid/util/AttributeSet;III)Lv2/o$b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroid/util/AttributeSet;III)Lv2/o$b;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv2/a;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Lv2/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lv2/o;->g(Landroid/content/Context;Landroid/util/AttributeSet;IILv2/d;)Lv2/o$b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Landroid/util/AttributeSet;IILv2/d;)Lv2/o$b;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p4    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LR1/a$o;->Zl:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, LR1/a$o;->am:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget v0, LR1/a$o;->bm:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p2, p3, p4}, Lv2/o;->d(Landroid/content/Context;IILv2/d;)Lv2/o$b;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/res/TypedArray;ILv2/d;)Lv2/d;
    .locals 2
    .param p2    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p2, Lv2/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lv2/a;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    new-instance p0, Lv2/m;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lv2/m;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public h()Lv2/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->k:Lv2/g;

    return-object v0
.end method

.method public i()Lv2/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->d:Lv2/e;

    return-object v0
.end method

.method public j()Lv2/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->h:Lv2/d;

    return-object v0
.end method

.method public k()Lv2/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->c:Lv2/e;

    return-object v0
.end method

.method public l()Lv2/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->g:Lv2/d;

    return-object v0
.end method

.method public n()Lv2/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->l:Lv2/g;

    return-object v0
.end method

.method public o()Lv2/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->j:Lv2/g;

    return-object v0
.end method

.method public p()Lv2/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->i:Lv2/g;

    return-object v0
.end method

.method public q()Lv2/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->a:Lv2/e;

    return-object v0
.end method

.method public r()Lv2/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->e:Lv2/d;

    return-object v0
.end method

.method public s()Lv2/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->b:Lv2/e;

    return-object v0
.end method

.method public t()Lv2/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lv2/o;->f:Lv2/d;

    return-object v0
.end method

.method public u(Landroid/graphics/RectF;)Z
    .locals 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lv2/o;->l:Lv2/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lv2/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/o;->j:Lv2/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/o;->i:Lv2/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/o;->k:Lv2/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lv2/o;->e:Lv2/d;

    invoke-interface {v1, p1}, Lv2/d;->a(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v4, p0, Lv2/o;->f:Lv2/d;

    invoke-interface {v4, p1}, Lv2/d;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lv2/o;->h:Lv2/d;

    invoke-interface {v4, p1}, Lv2/d;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lv2/o;->g:Lv2/d;

    invoke-interface {v4, p1}, Lv2/d;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object v1, p0, Lv2/o;->b:Lv2/e;

    instance-of v1, v1, Lv2/n;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lv2/o;->a:Lv2/e;

    instance-of v1, v1, Lv2/n;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lv2/o;->c:Lv2/e;

    instance-of v1, v1, Lv2/n;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lv2/o;->d:Lv2/e;

    instance-of v1, v1, Lv2/n;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public v()Lv2/o$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lv2/o$b;

    invoke-direct {v0, p0}, Lv2/o$b;-><init>(Lv2/o;)V

    return-object v0
.end method

.method public w(F)Lv2/o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lv2/o;->v()Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->o(F)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1}, Lv2/o$b;->m()Lv2/o;

    move-result-object p1

    return-object p1
.end method

.method public x(Lv2/d;)Lv2/o;
    .locals 1
    .param p1    # Lv2/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lv2/o;->v()Lv2/o$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv2/o$b;->p(Lv2/d;)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1}, Lv2/o$b;->m()Lv2/o;

    move-result-object p1

    return-object p1
.end method

.method public y(Lv2/o$c;)Lv2/o;
    .locals 2
    .param p1    # Lv2/o$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Lv2/o;->v()Lv2/o$b;

    move-result-object v0

    invoke-virtual {p0}, Lv2/o;->r()Lv2/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lv2/o$c;->a(Lv2/d;)Lv2/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv2/o$b;->L(Lv2/d;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {p0}, Lv2/o;->t()Lv2/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lv2/o$c;->a(Lv2/d;)Lv2/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv2/o$b;->Q(Lv2/d;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {p0}, Lv2/o;->j()Lv2/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lv2/o$c;->a(Lv2/d;)Lv2/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv2/o$b;->y(Lv2/d;)Lv2/o$b;

    move-result-object v0

    invoke-virtual {p0}, Lv2/o;->l()Lv2/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lv2/o$c;->a(Lv2/d;)Lv2/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv2/o$b;->D(Lv2/d;)Lv2/o$b;

    move-result-object p1

    invoke-virtual {p1}, Lv2/o$b;->m()Lv2/o;

    move-result-object p1

    return-object p1
.end method
