.class public final Lq2/h;
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


# static fields
.field public static final x:I = 0x2710

.field public static final y:F = 50.0f

.field public static final z:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lq2/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public s:Lq2/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq2/j<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final t:Landroidx/dynamicanimation/animation/SpringForce;

.field public final u:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public v:F

.field public w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq2/h$a;

    const-string v1, "indicatorLevel"

    invoke-direct {v0, v1}, Lq2/h$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq2/h;->z:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lq2/c;Lq2/j;)V
    .locals 1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lq2/c;",
            "Lq2/j<",
            "TS;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lq2/i;-><init>(Landroid/content/Context;Lq2/c;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq2/h;->w:Z

    invoke-virtual {p0, p3}, Lq2/h;->C(Lq2/j;)V

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    iput-object p1, p0, Lq2/h;->t:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 p3, 0x42480000    # 50.0f

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Lq2/h;->z:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p3, p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p3, p0, Lq2/h;->u:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p2}, Lq2/i;->m(F)V

    return-void
.end method

.method public static synthetic u(Lq2/h;)F
    .locals 0

    invoke-virtual {p0}, Lq2/h;->A()F

    move-result p0

    return p0
.end method

.method public static synthetic v(Lq2/h;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lq2/h;->D(F)V

    return-void
.end method

.method public static x(Landroid/content/Context;Lq2/g;)Lq2/h;
    .locals 2
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
            "Lq2/h<",
            "Lq2/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lq2/h;

    new-instance v1, Lq2/d;

    invoke-direct {v1, p1}, Lq2/d;-><init>(Lq2/g;)V

    invoke-direct {v0, p0, p1, v1}, Lq2/h;-><init>(Landroid/content/Context;Lq2/c;Lq2/j;)V

    return-object v0
.end method

.method public static y(Landroid/content/Context;Lq2/q;)Lq2/h;
    .locals 2
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
            "Lq2/h<",
            "Lq2/q;",
            ">;"
        }
    .end annotation

    new-instance v0, Lq2/h;

    new-instance v1, Lq2/m;

    invoke-direct {v1, p1}, Lq2/m;-><init>(Lq2/q;)V

    invoke-direct {v0, p0, p1, v1}, Lq2/h;-><init>(Landroid/content/Context;Lq2/c;Lq2/j;)V

    return-object v0
.end method


# virtual methods
.method public final A()F
    .locals 1

    iget v0, p0, Lq2/h;->v:F

    return v0
.end method

.method public B(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 1
    .param p1    # Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lq2/h;->u:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method

.method public C(Lq2/j;)V
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

    iput-object p1, p0, Lq2/h;->s:Lq2/j;

    invoke-virtual {p1, p0}, Lq2/j;->f(Lq2/i;)V

    return-void
.end method

.method public final D(F)V
    .locals 0

    iput p1, p0, Lq2/h;->v:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public E(F)V
    .locals 1

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method public bridge synthetic clearAnimationCallbacks()V
    .locals 0

    invoke-super {p0}, Lq2/i;->clearAnimationCallbacks()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
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

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lq2/h;->s:Lq2/j;

    invoke-virtual {p0}, Lq2/i;->g()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lq2/j;->g(Landroid/graphics/Canvas;F)V

    iget-object v0, p0, Lq2/h;->s:Lq2/j;

    iget-object v1, p0, Lq2/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lq2/j;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lq2/i;->c:Lq2/c;

    iget-object v0, v0, Lq2/c;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Lq2/h;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Le2/a;->a(II)I

    move-result v7

    iget-object v2, p0, Lq2/h;->s:Lq2/j;

    iget-object v4, p0, Lq2/i;->n:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lq2/h;->A()F

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lq2/j;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
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

    iget-object v0, p0, Lq2/h;->s:Lq2/j;

    invoke-virtual {v0}, Lq2/j;->d()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lq2/h;->s:Lq2/j;

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

.method public jumpToCurrentState()V
    .locals 2

    iget-object v0, p0, Lq2/h;->u:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lq2/h;->D(F)V

    return-void
.end method

.method public bridge synthetic k()Z
    .locals 1

    invoke-super {p0}, Lq2/i;->k()Z

    move-result v0

    return v0
.end method

.method public onLevelChange(I)Z
    .locals 3

    iget-boolean v0, p0, Lq2/h;->w:Z

    const v1, 0x461c4000    # 10000.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq2/h;->u:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Lq2/h;->D(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq2/h;->u:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Lq2/h;->A()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, Lq2/h;->u:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :goto_0
    const/4 p1, 0x1

    return p1
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
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lq2/i;->t(ZZZ)Z

    move-result p1

    iget-object p2, p0, Lq2/i;->d:Lq2/a;

    iget-object p3, p0, Lq2/i;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2, p3}, Lq2/a;->a(Landroid/content/ContentResolver;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lq2/h;->w:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    iput-boolean p3, p0, Lq2/h;->w:Z

    iget-object p3, p0, Lq2/h;->t:Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr v0, p2

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    :goto_0
    return p1
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

.method public w(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 1
    .param p1    # Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lq2/h;->u:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public z()Lq2/j;
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

    iget-object v0, p0, Lq2/h;->s:Lq2/j;

    return-object v0
.end method
