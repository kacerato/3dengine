.class public Lqh/w;
.super Lqh/v;
.source "SourceFile"


# instance fields
.field public final n1:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o1:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p1:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Ldg/k;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lqh/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Ldg/k;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lqh/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Ldg/k;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lqh/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lqh/w;->n1:Landroid/graphics/Paint;

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lqh/w;->o1:Landroid/graphics/Paint;

    .line 6
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lqh/w;->p1:Landroid/graphics/RectF;

    .line 7
    invoke-direct {p0}, Lqh/w;->B()V

    .line 8
    invoke-direct {p0, p1, p2}, Lqh/w;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lqh/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final B()V
    .locals 2

    iget-object v0, p0, Lqh/w;->n1:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lqh/w;->o1:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lqh/w;->o1:Landroid/graphics/Paint;

    const v1, -0x8a8a8b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private final C(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, LS3/b$s;->sI:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lqh/w;->o1:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final G0()V
    .locals 2

    iget-object v0, p0, Lqh/w;->n1:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lqh/v;->getSpeedometerWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lqh/j;->getCurrentSection()Lrh/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqh/w;->n1:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lqh/j;->getCurrentSection()Lrh/a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lrh/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqh/w;->n1:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public d0()V
    .locals 7

    invoke-virtual {p0}, Lqh/v;->v()Landroid/graphics/Canvas;

    move-result-object v6

    iget-object v0, p0, Lqh/w;->o1:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lqh/v;->getSpeedometerWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lqh/v;->getSpeedometerWidth()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lqh/j;->getPadding()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lqh/w;->p1:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lqh/v;->getSize()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lqh/v;->getSize()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lqh/w;->p1:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lqh/v;->getStartDegree()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lqh/v;->getEndDegree()I

    move-result v0

    invoke-virtual {p0}, Lqh/v;->getStartDegree()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lqh/w;->o1:Landroid/graphics/Paint;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0, v6}, Lqh/v;->s0(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lqh/v;->getTickNumber()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v6}, Lqh/v;->u0(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v6}, Lqh/v;->p0(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public final getSpeedometerBackColor()I
    .locals 1

    iget-object v0, p0, Lqh/w;->o1:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public o0()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lqh/v;->setBackgroundCircleColor(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lqh/v;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lqh/w;->G0()V

    invoke-virtual {p0}, Lqh/v;->getEndDegree()I

    move-result v0

    invoke-virtual {p0}, Lqh/v;->getStartDegree()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lqh/j;->getOffsetSpeed()F

    move-result v1

    mul-float v5, v0, v1

    iget-object v3, p0, Lqh/w;->p1:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lqh/v;->getStartDegree()I

    move-result v0

    int-to-float v4, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lqh/w;->n1:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, Lqh/j;->y(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lqh/v;->q0(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lqh/v;->t0(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lqh/v;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lqh/w;->d0()V

    return-void
.end method

.method public final setSpeedometerBackColor(I)V
    .locals 1

    iget-object v0, p0, Lqh/w;->o1:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lqh/j;->F()V

    return-void
.end method

.method public w()V
    .locals 2

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p0, v0}, Lqh/j;->x(F)F

    move-result v0

    invoke-super {p0, v0}, Lqh/v;->setSpeedometerWidth(F)V

    invoke-virtual {p0}, Lqh/j;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh/a;

    const v1, -0xff432c

    invoke-virtual {v0, v1}, Lrh/a;->l(I)V

    invoke-virtual {p0}, Lqh/j;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh/a;

    const/16 v1, -0x3ef9

    invoke-virtual {v0, v1}, Lrh/a;->l(I)V

    invoke-virtual {p0}, Lqh/j;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrh/a;

    const v1, -0xbbcca

    invoke-virtual {v0, v1}, Lrh/a;->l(I)V

    return-void
.end method
