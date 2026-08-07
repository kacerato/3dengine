.class public final Landroidx/activity/PipHintTrackerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$trackPipAnimationHintView$positionInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p0}, Landroidx/activity/PipHintTrackerKt;->trackPipAnimationHintView$positionInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final trackPipAnimationHintView(Landroid/app/Activity;Landroid/view/View;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    new-instance v0, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$flow$1;-><init>(Landroid/view/View;LQf/f;)V

    invoke-static {v0}, LBg/k;->s(Leg/p;)LBg/i;

    move-result-object p1

    new-instance v0, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$2;

    invoke-direct {v0, p0}, Landroidx/activity/PipHintTrackerKt$trackPipAnimationHintView$2;-><init>(Landroid/app/Activity;)V

    invoke-interface {p1, v0, p2}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method private static final trackPipAnimationHintView$positionInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0
.end method
