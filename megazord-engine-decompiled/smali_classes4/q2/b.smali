.class public abstract Lq2/b;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/b$e;,
        Lq2/b$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lq2/c;",
        ">",
        "Landroid/widget/ProgressBar;"
    }
.end annotation


# static fields
.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x0

.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field public static final v:I

.field public static final w:F = 0.2f

.field public static final x:I = 0xff

.field public static final y:I = 0x3e8


# instance fields
.field public b:Lq2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public e:Z

.field public final f:I

.field public final g:I

.field public h:J

.field public i:Lq2/a;

.field public j:Z

.field public k:I

.field public final l:Ljava/lang/Runnable;

.field public final m:Ljava/lang/Runnable;

.field public final n:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field public final o:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, LR1/a$n;->nc:I

    sput v0, Lq2/b;->v:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    sget v0, Lq2/b;->v:I

    invoke-static {p1, p2, p3, v0}, LC2/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lq2/b;->h:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq2/b;->j:Z

    const/4 v0, 0x4

    iput v0, p0, Lq2/b;->k:I

    new-instance v0, Lq2/b$a;

    invoke-direct {v0, p0}, Lq2/b$a;-><init>(Lq2/b;)V

    iput-object v0, p0, Lq2/b;->l:Ljava/lang/Runnable;

    new-instance v0, Lq2/b$b;

    invoke-direct {v0, p0}, Lq2/b$b;-><init>(Lq2/b;)V

    iput-object v0, p0, Lq2/b;->m:Ljava/lang/Runnable;

    new-instance v0, Lq2/b$c;

    invoke-direct {v0, p0}, Lq2/b$c;-><init>(Lq2/b;)V

    iput-object v0, p0, Lq2/b;->n:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    new-instance v0, Lq2/b$d;

    invoke-direct {v0, p0}, Lq2/b$d;-><init>(Lq2/b;)V

    iput-object v0, p0, Lq2/b;->o:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lq2/b;->i(Landroid/content/Context;Landroid/util/AttributeSet;)Lq2/c;

    move-result-object v0

    iput-object v0, p0, Lq2/b;->b:Lq2/c;

    sget-object v3, LR1/a$o;->j4:[I

    new-array v6, p1, [I

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/s;->j(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, LR1/a$o;->p4:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lq2/b;->f:I

    sget p2, LR1/a$o;->n4:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 p3, 0x3e8

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lq2/b;->g:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lq2/a;

    invoke-direct {p1}, Lq2/a;-><init>()V

    iput-object p1, p0, Lq2/b;->i:Lq2/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq2/b;->e:Z

    return-void
.end method

.method public static synthetic a(Lq2/b;)V
    .locals 0

    invoke-virtual {p0}, Lq2/b;->l()V

    return-void
.end method

.method public static synthetic b(Lq2/b;)V
    .locals 0

    invoke-virtual {p0}, Lq2/b;->k()V

    return-void
.end method

.method public static synthetic c(Lq2/b;J)J
    .locals 0

    iput-wide p1, p0, Lq2/b;->h:J

    return-wide p1
.end method

.method public static synthetic d(Lq2/b;)I
    .locals 0

    iget p0, p0, Lq2/b;->c:I

    return p0
.end method

.method public static synthetic e(Lq2/b;)Z
    .locals 0

    iget-boolean p0, p0, Lq2/b;->d:Z

    return p0
.end method

.method public static synthetic f(Lq2/b;)Z
    .locals 0

    iget-boolean p0, p0, Lq2/b;->j:Z

    return p0
.end method

.method public static synthetic g(Lq2/b;)I
    .locals 0

    iget p0, p0, Lq2/b;->k:I

    return p0
.end method

.method private getCurrentDrawingDelegate()Lq2/j;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq2/j<",
            "TS;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    invoke-virtual {v0}, Lq2/l;->x()Lq2/j;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    invoke-virtual {v0}, Lq2/h;->z()Lq2/j;

    move-result-object v1

    :goto_1
    return-object v1
.end method


# virtual methods
.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHideAnimationBehavior()I
    .locals 1

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iget v0, v0, Lq2/c;->f:I

    return v0
.end method

.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    return-object v0
.end method

.method public getIndeterminateDrawable()Lq2/l;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq2/l<",
            "TS;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lq2/l;

    return-object v0
.end method

.method public getIndicatorColor()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iget-object v0, v0, Lq2/c;->c:[I

    return-object v0
.end method

.method public bridge synthetic getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    return-object v0
.end method

.method public getProgressDrawable()Lq2/h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq2/h<",
            "TS;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lq2/h;

    return-object v0
.end method

.method public getShowAnimationBehavior()I
    .locals 1

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iget v0, v0, Lq2/c;->e:I

    return v0
.end method

.method public getTrackColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iget v0, v0, Lq2/c;->d:I

    return v0
.end method

.method public getTrackCornerRadius()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iget v0, v0, Lq2/c;->b:I

    return v0
.end method

.method public getTrackThickness()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iget v0, v0, Lq2/c;->a:I

    return v0
.end method

.method public h(Z)V
    .locals 3

    iget-boolean v0, p0, Lq2/b;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lq2/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lq2/i;

    invoke-virtual {p0}, Lq2/b;->s()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lq2/i;->s(ZZZ)Z

    return-void
.end method

.method public abstract i(Landroid/content/Context;Landroid/util/AttributeSet;)Lq2/c;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TS;"
        }
    .end annotation
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lq2/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq2/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq2/b;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lq2/b;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lq2/b;->h:J

    sub-long/2addr v0, v2

    iget v2, p0, Lq2/b;->g:I

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1

    iget-object v0, p0, Lq2/b;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    iget-object v3, p0, Lq2/b;->m:Ljava/lang/Runnable;

    int-to-long v4, v2

    sub-long/2addr v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final k()V
    .locals 3

    invoke-virtual {p0}, Lq2/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lq2/i;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lq2/i;->s(ZZZ)Z

    invoke-virtual {p0}, Lq2/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    iget v0, p0, Lq2/b;->g:I

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lq2/b;->h:J

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public m()Z
    .locals 3

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    return v2

    :cond_2
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_3

    return v1

    :cond_3
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    invoke-virtual {v0}, Lq2/l;->w()Lq2/k;

    move-result-object v0

    iget-object v1, p0, Lq2/b;->n:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lq2/k;->d(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    :cond_0
    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    iget-object v1, p0, Lq2/b;->o:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lq2/h;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    :cond_1
    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    iget-object v1, p0, Lq2/b;->o:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lq2/l;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    invoke-virtual {p0}, Lq2/b;->o()V

    invoke-virtual {p0}, Lq2/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq2/b;->l()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lq2/b;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lq2/b;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lq2/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lq2/i;

    invoke-virtual {v0}, Lq2/i;->i()Z

    invoke-virtual {p0}, Lq2/b;->r()V

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_3
    invoke-virtual {p0}, Lq2/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    invoke-direct {p0}, Lq2/b;->getCurrentDrawingDelegate()Lq2/j;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lq2/j;->e()I

    move-result p2

    invoke-virtual {p1}, Lq2/j;->d()I

    move-result p1

    if-gez p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    :goto_0
    if-gez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    :goto_1
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lq2/b;->h(Z)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lq2/b;->h(Z)V

    return-void
.end method

.method public p(IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    if-eqz v0, :cond_3

    iput p1, p0, Lq2/b;->c:I

    iput-boolean p2, p0, Lq2/b;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq2/b;->j:Z

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lq2/b;->i:Lq2/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lq2/a;->a(Landroid/content/ContentResolver;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object p1

    invoke-virtual {p1}, Lq2/l;->w()Lq2/k;

    move-result-object p1

    invoke-virtual {p1}, Lq2/k;->f()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lq2/b;->n:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object p1

    invoke-virtual {p1}, Lq2/h;->jumpToCurrentState()V

    :cond_3
    :goto_1
    return-void
.end method

.method public q()V
    .locals 3

    iget v0, p0, Lq2/b;->f:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lq2/b;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lq2/b;->l:Ljava/lang/Runnable;

    iget v1, p0, Lq2/b;->f:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq2/b;->l:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    iget-object v1, p0, Lq2/b;->o:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lq2/l;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    invoke-virtual {v0}, Lq2/l;->w()Lq2/k;

    move-result-object v0

    invoke-virtual {v0}, Lq2/k;->h()V

    :cond_0
    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    iget-object v1, p0, Lq2/b;->o:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lq2/h;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    :cond_1
    return-void
.end method

.method public s()Z
    .locals 1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq2/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAnimatorDurationScaleProvider(Lq2/a;)V
    .locals 1
    .param p1    # Lq2/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lq2/b;->i:Lq2/a;

    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq2/b;->getProgressDrawable()Lq2/h;

    move-result-object v0

    iput-object p1, v0, Lq2/i;->d:Lq2/a;

    :cond_0
    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object v0

    iput-object p1, v0, Lq2/i;->d:Lq2/a;

    :cond_1
    return-void
.end method

.method public setHideAnimationBehavior(I)V
    .locals 1

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iput p1, v0, Lq2/c;->f:I

    invoke-virtual {p0}, Lq2/b;->invalidate()V

    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lq2/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lq2/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lq2/i;->i()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {p0}, Lq2/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lq2/i;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lq2/b;->s()Z

    move-result v1

    invoke-virtual {p1, v1, v0, v0}, Lq2/i;->s(ZZZ)Z

    :cond_2
    instance-of v1, p1, Lq2/l;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lq2/b;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p1, Lq2/l;

    invoke-virtual {p1}, Lq2/l;->w()Lq2/k;

    move-result-object p1

    invoke-virtual {p1}, Lq2/k;->g()V

    :cond_3
    iput-boolean v0, p0, Lq2/b;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    instance-of v0, p1, Lq2/l;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lq2/i;

    invoke-virtual {v0}, Lq2/i;->i()Z

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as indeterminate drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setIndicatorColor([I)V
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, LR1/a$c;->N2:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Le2/a;->b(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    :cond_0
    invoke-virtual {p0}, Lq2/b;->getIndicatorColor()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iput-object p1, v0, Lq2/c;->c:[I

    invoke-virtual {p0}, Lq2/b;->getIndeterminateDrawable()Lq2/l;

    move-result-object p1

    invoke-virtual {p1}, Lq2/l;->w()Lq2/k;

    move-result-object p1

    invoke-virtual {p1}, Lq2/k;->c()V

    invoke-virtual {p0}, Lq2/b;->invalidate()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lq2/b;->p(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    instance-of v0, p1, Lq2/h;

    if-eqz v0, :cond_1

    check-cast p1, Lq2/h;

    invoke-virtual {p1}, Lq2/h;->i()Z

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lq2/h;->E(F)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as progress drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowAnimationBehavior(I)V
    .locals 1

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iput p1, v0, Lq2/c;->e:I

    invoke-virtual {p0}, Lq2/b;->invalidate()V

    return-void
.end method

.method public setTrackColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iget v1, v0, Lq2/c;->d:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lq2/c;->d:I

    invoke-virtual {p0}, Lq2/b;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackCornerRadius(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iget v1, v0, Lq2/c;->b:I

    if-eq v1, p1, :cond_0

    iget v1, v0, Lq2/c;->a:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lq2/c;->b:I

    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iget-object v0, p0, Lq2/b;->b:Lq2/c;

    iget v1, v0, Lq2/c;->a:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lq2/c;->a:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVisibilityAfterHide(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The component\'s visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lq2/b;->k:I

    return-void
.end method
