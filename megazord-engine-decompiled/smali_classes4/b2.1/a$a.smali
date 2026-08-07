.class public final Lb2/a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb2/a;->c(Lb2/g;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb2/g;


# direct methods
.method public constructor <init>(Lb2/g;)V
    .locals 0

    iput-object p1, p0, Lb2/a$a;->a:Lb2/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lb2/a$a;->a:Lb2/g;

    invoke-interface {p1}, Lb2/g;->b()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lb2/a$a;->a:Lb2/g;

    invoke-interface {p1}, Lb2/g;->a()V

    return-void
.end method
