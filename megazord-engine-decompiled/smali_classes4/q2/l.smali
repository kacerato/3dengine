.class public final Lq2/l;
.super Lq2/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lq2/c;",
        ">",
        "Lq2/i;"
    }
.end annotation


# instance fields
.field public s:Lq2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq2/j<",
            "TS;>;"
        }
    .end annotation
.end field

.field public t:Lq2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq2/k<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq2/c;Lq2/j;Lq2/k;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lq2/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lq2/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lq2/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lq2/c;",
            "Lq2/j<",
            "TS;>;",
            "Lq2/k<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lq2/i;-><init>(Landroid/content/Context;Lq2/c;)V

    invoke-virtual {p0, p3}, Lq2/l;->z(Lq2/j;)V

    invoke-virtual {p0, p4}, Lq2/l;->y(Lq2/k;)V

    return-void
.end method

.method public static u(Landroid/content/Context;Lq2/g;)Lq2/l;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lq2/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lq2/g;",
            ")",
            "Lq2/l<",
            "Lq2/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lq2/l;

    new-instance v1, Lq2/d;

    invoke-direct {v1, p1}, Lq2/d;-><init>(Lq2/g;)V

    new-instance v2, Lq2/e;

    invoke-direct {v2, p1}, Lq2/e;-><init>(Lq2/g;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lq2/l;-><init>(Landroid/content/Context;Lq2/c;Lq2/j;Lq2/k;)V

    return-object v0
.end method

.method public static v(Landroid/content/Context;Lq2/q;)Lq2/l;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lq2/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lq2/q;",
            ")",
            "Lq2/l<",
            "Lq2/q;",
            ">;"
        }
    .end annotation

    new-instance v0, Lq2/l;

    new-instance v1, Lq2/m;

    invoke-direct {v1, p1}, Lq2/m;-><init>(Lq2/q;)V

    iget v2, p1, Lq2/q;->g:I

    if-nez v2, :cond_0

    new-instance v2, Lq2/n;

    invoke-direct {v2, p1}, Lq2/n;-><init>(Lq2/q;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lq2/o;

    invoke-direct {v2, p0, p1}, Lq2/o;-><init>(Landroid/content/Context;Lq2/q;)V

    :goto_0
    invoke-direct {v0, p0, p1, v1, v2}, Lq2/l;-><init>(Landroid/content/Context;Lq2/c;Lq2/j;Lq2/k;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clearAnimationCallbacks()V
    .locals 0

    invoke-super {p0}, Lq2/i;->clearAnimationCallbacks()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lq2/l;->s:Lq2/j;

    invoke-virtual {p0}, Lq2/i;->g()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lq2/j;->g(Landroid/graphics/Canvas;F)V

    iget-object v0, p0, Lq2/l;->s:Lq2/j;

    iget-object v1, p0, Lq2/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lq2/j;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lq2/l;->t:Lq2/k;

    iget-object v2, v1, Lq2/k;->c:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lq2/l;->s:Lq2/j;

    iget-object v6, p0, Lq2/i;->n:Landroid/graphics/Paint;

    iget-object v1, v1, Lq2/k;->b:[F

    mul-int/lit8 v3, v0, 0x2

    aget v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget v8, v1, v3

    aget v9, v2, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lq2/j;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    invoke-super {p0}, Lq2/i;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lq2/l;->s:Lq2/j;

    invoke-virtual {v0}, Lq2/j;->d()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lq2/l;->s:Lq2/j;

    invoke-virtual {v0}, Lq2/j;->e()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    invoke-super {p0}, Lq2/i;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Z
    .locals 1

    invoke-super {p0}, Lq2/i;->i()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRunning()Z
    .locals 1

    invoke-super {p0}, Lq2/i;->isRunning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j()Z
    .locals 1

    invoke-super {p0}, Lq2/i;->j()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k()Z
    .locals 1

    invoke-super {p0}, Lq2/i;->k()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lq2/i;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    return-void
.end method

.method public bridge synthetic s(ZZZ)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lq2/i;->s(ZZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Lq2/i;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lq2/i;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lq2/i;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic start()V
    .locals 0

    invoke-super {p0}, Lq2/i;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    invoke-super {p0}, Lq2/i;->stop()V

    return-void
.end method

.method public t(ZZZ)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lq2/i;->t(ZZZ)Z

    move-result p2

    invoke-virtual {p0}, Lq2/l;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lq2/l;->t:Lq2/k;

    invoke-virtual {v0}, Lq2/k;->a()V

    :cond_0
    iget-object v0, p0, Lq2/i;->d:Lq2/a;

    iget-object v1, p0, Lq2/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq2/a;->a(Landroid/content/ContentResolver;)F

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lq2/l;->t:Lq2/k;

    invoke-virtual {p1}, Lq2/k;->g()V

    :cond_2
    :goto_0
    return p2
.end method

.method public bridge synthetic unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 0
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lq2/i;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result p1

    return p1
.end method

.method public w()Lq2/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq2/k<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lq2/l;->t:Lq2/k;

    return-object v0
.end method

.method public x()Lq2/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq2/j<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lq2/l;->s:Lq2/j;

    return-object v0
.end method

.method public y(Lq2/k;)V
    .locals 0
    .param p1    # Lq2/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq2/k<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq2/l;->t:Lq2/k;

    invoke-virtual {p1, p0}, Lq2/k;->e(Lq2/l;)V

    return-void
.end method

.method public z(Lq2/j;)V
    .locals 0
    .param p1    # Lq2/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq2/j<",
            "TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lq2/l;->s:Lq2/j;

    invoke-virtual {p1, p0}, Lq2/j;->f(Lq2/i;)V

    return-void
.end method
