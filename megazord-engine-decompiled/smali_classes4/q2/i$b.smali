.class public Lq2/i$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2/i;->n(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq2/i;


# direct methods
.method public constructor <init>(Lq2/i;)V
    .locals 0

    iput-object p1, p0, Lq2/i$b;->a:Lq2/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lq2/i$b;->a:Lq2/i;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lq2/i;->b(Lq2/i;ZZ)Z

    iget-object p1, p0, Lq2/i$b;->a:Lq2/i;

    invoke-static {p1}, Lq2/i;->c(Lq2/i;)V

    return-void
.end method
