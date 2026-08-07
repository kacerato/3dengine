.class public LJe/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJe/c$a;
    }
.end annotation


# static fields
.field public static final A:I = 0x4b

.field public static final B:[F

.field public static final C:I = 0x19

.field public static final x:I = 0x19

.field public static final y:I = 0x19

.field public static final z:F = 0.87f


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Landroid/graphics/Typeface;

.field public final o:Landroid/graphics/Typeface;

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:Landroid/graphics/Typeface;

.field public final u:[F

.field public final v:I

.field public final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, LJe/c;->B:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3f95c28f    # 1.17f
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
        0x3f2b851f    # 0.67f
    .end array-data
.end method

.method public constructor <init>(LJe/c$a;)V
    .locals 1
    .param p1    # LJe/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LJe/c$a;->a(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->a:I

    invoke-static {p1}, LJe/c$a;->b(LJe/c$a;)Z

    move-result v0

    iput-boolean v0, p0, LJe/c;->b:Z

    invoke-static {p1}, LJe/c$a;->m(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->c:I

    invoke-static {p1}, LJe/c$a;->q(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->d:I

    invoke-static {p1}, LJe/c$a;->r(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->e:I

    invoke-static {p1}, LJe/c$a;->s(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->f:I

    invoke-static {p1}, LJe/c$a;->t(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->g:I

    invoke-static {p1}, LJe/c$a;->u(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->h:I

    invoke-static {p1}, LJe/c$a;->v(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->i:I

    invoke-static {p1}, LJe/c$a;->w(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->j:I

    invoke-static {p1}, LJe/c$a;->c(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->k:I

    invoke-static {p1}, LJe/c$a;->d(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->l:I

    invoke-static {p1}, LJe/c$a;->e(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->m:I

    invoke-static {p1}, LJe/c$a;->f(LJe/c$a;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, LJe/c;->n:Landroid/graphics/Typeface;

    invoke-static {p1}, LJe/c$a;->g(LJe/c$a;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, LJe/c;->o:Landroid/graphics/Typeface;

    invoke-static {p1}, LJe/c$a;->h(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->p:I

    invoke-static {p1}, LJe/c$a;->i(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->q:I

    invoke-static {p1}, LJe/c$a;->j(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->r:I

    invoke-static {p1}, LJe/c$a;->k(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->s:I

    invoke-static {p1}, LJe/c$a;->l(LJe/c$a;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, LJe/c;->t:Landroid/graphics/Typeface;

    invoke-static {p1}, LJe/c$a;->n(LJe/c$a;)[F

    move-result-object v0

    iput-object v0, p0, LJe/c;->u:[F

    invoke-static {p1}, LJe/c$a;->o(LJe/c$a;)I

    move-result v0

    iput v0, p0, LJe/c;->v:I

    invoke-static {p1}, LJe/c$a;->p(LJe/c$a;)I

    move-result p1

    iput p1, p0, LJe/c;->w:I

    return-void
.end method

.method public static j(LJe/c;)LJe/c$a;
    .locals 1
    .param p0    # LJe/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LJe/c$a;

    invoke-direct {v0, p0}, LJe/c$a;-><init>(LJe/c;)V

    return-object v0
.end method

.method public static k(Landroid/content/Context;)LJe/c$a;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LSe/b;->b(Landroid/content/Context;)LSe/b;

    move-result-object p0

    new-instance v0, LJe/c$a;

    invoke-direct {v0}, LJe/c$a;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, LSe/b;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, LJe/c$a;->F(I)LJe/c$a;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, LSe/b;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, LJe/c$a;->x(I)LJe/c$a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, LSe/b;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, LJe/c$a;->z(I)LJe/c$a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, LSe/b;->c(I)I

    move-result v3

    invoke-virtual {v0, v3}, LJe/c$a;->B(I)LJe/c$a;

    move-result-object v0

    invoke-virtual {p0, v2}, LSe/b;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, LJe/c$a;->N(I)LJe/c$a;

    move-result-object v0

    invoke-virtual {p0, v1}, LSe/b;->c(I)I

    move-result p0

    invoke-virtual {v0, p0}, LJe/c$a;->U(I)LJe/c$a;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;)LJe/c;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LJe/c;->k(Landroid/content/Context;)LJe/c$a;

    move-result-object p0

    invoke-virtual {p0}, LJe/c$a;->A()LJe/c;

    move-result-object p0

    return-object p0
.end method

.method public static m()LJe/c$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LJe/c$a;

    invoke-direct {v0}, LJe/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)V
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LJe/c;->e:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, LSe/a;->a(II)I

    move-result v0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public b(Landroid/graphics/Paint;)V
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LJe/c;->j:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LJe/c;->i:I

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object v0, p0, LJe/c;->o:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, LJe/c;->n:Landroid/graphics/Typeface;

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, LJe/c;->q:I

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    iget v0, p0, LJe/c;->p:I

    :goto_2
    if-lez v0, :cond_7

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_4

    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, LJe/c;->q:I

    if-lez v0, :cond_5

    goto :goto_3

    :cond_5
    iget v0, p0, LJe/c;->p:I

    :goto_3
    if-lez v0, :cond_6

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f5eb852    # 0.87f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_7
    :goto_4
    return-void
.end method

.method public c(Landroid/graphics/Paint;)V
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LJe/c;->i:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v0, p0, LJe/c;->n:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, LJe/c;->p:I

    if-lez v0, :cond_3

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, LJe/c;->p:I

    if-lez v0, :cond_2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const v1, 0x3f5eb852    # 0.87f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d(Landroid/graphics/Paint;)V
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LJe/c;->s:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x4b

    invoke-static {v0, v1}, LSe/a;->a(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, LJe/c;->r:I

    if-ltz v0, :cond_1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    return-void
.end method

.method public e(Landroid/graphics/Paint;I)V
    .locals 3
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x6L
        .end annotation
    .end param

    iget-object v0, p0, LJe/c;->t:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    iget-object v0, p0, LJe/c;->u:[F

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, LJe/c;->B:[F

    :goto_1
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt v2, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    sub-int/2addr p2, v1

    aget p2, v0, p2

    mul-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Supplied heading level: %d is invalid, where configured heading sizes are: `%s`"

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, LJe/c;->b:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget v0, p0, LJe/c;->a:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/text/TextPaint;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/text/TextPaint;

    iget v0, v0, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, LJe/c;->b:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget v0, p0, LJe/c;->a:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public h(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LJe/c;->f:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, LJe/c;->g:I

    if-eqz v0, :cond_1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    return-void
.end method

.method public i(Landroid/graphics/Paint;)V
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LJe/c;->v:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, LSe/a;->a(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, LJe/c;->w:I

    if-ltz v0, :cond_1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, LJe/c;->c:I

    return v0
.end method

.method public o()I
    .locals 2

    iget v0, p0, LJe/c;->d:I

    if-nez v0, :cond_0

    iget v0, p0, LJe/c;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method public p(I)I
    .locals 1

    iget v0, p0, LJe/c;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, LJe/c;->h:I

    if-eqz v0, :cond_1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method public q(Landroid/graphics/Paint;)I
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LJe/c;->k:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    const/16 v0, 0x19

    invoke-static {p1, v0}, LSe/a;->a(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public r(Landroid/graphics/Paint;)I
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LJe/c;->l:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, LJe/c;->k:I

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    const/16 v0, 0x19

    invoke-static {p1, v0}, LSe/a;->a(II)I

    move-result v0

    :goto_1
    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, LJe/c;->m:I

    return v0
.end method
