.class public Lb2/f;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lb2/g;


# instance fields
.field public final b:Lb2/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lb2/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lb2/d;

    invoke-direct {p1, p0}, Lb2/d;-><init>(Lb2/d$a;)V

    iput-object p1, p0, Lb2/f;->b:Lb2/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb2/f;->b:Lb2/d;

    invoke-virtual {v0}, Lb2/d;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lb2/f;->b:Lb2/d;

    invoke-virtual {v0}, Lb2/d;->b()V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public d()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lb2/f;->b:Lb2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb2/d;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb2/f;->b:Lb2/d;

    invoke-virtual {v0}, Lb2/d;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    iget-object v0, p0, Lb2/f;->b:Lb2/d;

    invoke-virtual {v0}, Lb2/d;->h()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lb2/g$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb2/f;->b:Lb2/d;

    invoke-virtual {v0}, Lb2/d;->j()Lb2/g$e;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Lb2/f;->b:Lb2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb2/d;->l()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lb2/f;->b:Lb2/d;

    invoke-virtual {v0, p1}, Lb2/d;->m(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lb2/f;->b:Lb2/d;

    invoke-virtual {v0, p1}, Lb2/d;->n(I)V

    return-void
.end method

.method public setRevealInfo(Lb2/g$e;)V
    .locals 1
    .param p1    # Lb2/g$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lb2/f;->b:Lb2/d;

    invoke-virtual {v0, p1}, Lb2/d;->o(Lb2/g$e;)V

    return-void
.end method
