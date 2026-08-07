.class public final synthetic Lqh/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lqh/j;


# direct methods
.method public synthetic constructor <init>(Lqh/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh/h;->a:Lqh/j;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lqh/h;->a:Lqh/j;

    invoke-static {v0, p1}, Lqh/j;->b(Lqh/j;Landroid/animation/ValueAnimator;)V

    return-void
.end method
