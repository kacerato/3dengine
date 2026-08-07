.class public final synthetic Lqh/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lqh/j;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lqh/j;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh/g;->a:Lqh/j;

    iput p2, p0, Lqh/g;->b:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lqh/g;->a:Lqh/j;

    iget v1, p0, Lqh/g;->b:F

    invoke-static {v0, v1, p1}, Lqh/j;->d(Lqh/j;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
