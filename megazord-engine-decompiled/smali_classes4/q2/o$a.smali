.class public Lq2/o$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2/o;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq2/o;


# direct methods
.method public constructor <init>(Lq2/o;)V
    .locals 0

    iput-object p1, p0, Lq2/o$a;->a:Lq2/o;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lq2/o$a;->a:Lq2/o;

    invoke-static {p1}, Lq2/o;->m(Lq2/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lq2/o$a;->a:Lq2/o;

    invoke-static {p1}, Lq2/o;->o(Lq2/o;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lq2/o$a;->a:Lq2/o;

    iget-object v0, p1, Lq2/o;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iget-object p1, p1, Lq2/k;->a:Lq2/l;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lq2/o$a;->a:Lq2/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lq2/o;->n(Lq2/o;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lq2/o$a;->a:Lq2/o;

    invoke-static {p1}, Lq2/o;->i(Lq2/o;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lq2/o$a;->a:Lq2/o;

    invoke-static {v2}, Lq2/o;->k(Lq2/o;)Lq2/c;

    move-result-object v2

    iget-object v2, v2, Lq2/c;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    invoke-static {p1, v0}, Lq2/o;->j(Lq2/o;I)I

    iget-object p1, p0, Lq2/o$a;->a:Lq2/o;

    invoke-static {p1, v1}, Lq2/o;->l(Lq2/o;Z)Z

    return-void
.end method
