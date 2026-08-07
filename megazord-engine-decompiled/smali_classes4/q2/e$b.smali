.class public Lq2/e$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq2/e;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq2/e;


# direct methods
.method public constructor <init>(Lq2/e;)V
    .locals 0

    iput-object p1, p0, Lq2/e$b;->a:Lq2/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lq2/e$b;->a:Lq2/e;

    invoke-virtual {p1}, Lq2/e;->a()V

    iget-object p1, p0, Lq2/e$b;->a:Lq2/e;

    iget-object v0, p1, Lq2/e;->k:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lq2/k;->a:Lq2/l;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
