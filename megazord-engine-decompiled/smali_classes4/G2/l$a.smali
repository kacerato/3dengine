.class public LG2/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG2/l;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG2/l$h;

.field public final synthetic b:LG2/l;


# direct methods
.method public constructor <init>(LG2/l;LG2/l$h;)V
    .locals 0

    iput-object p1, p0, LG2/l$a;->b:LG2/l;

    iput-object p2, p0, LG2/l$a;->a:LG2/l$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, LG2/l$a;->a:LG2/l$h;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, LG2/l$h;->a(LG2/l$h;F)V

    return-void
.end method
