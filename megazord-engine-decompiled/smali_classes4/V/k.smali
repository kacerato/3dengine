.class public LV/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LV/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:LV/k$a;


# direct methods
.method public constructor <init>(LV/k$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV/k;->a:LV/k$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;LV/f$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "LV/f$a;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, LV/f$a;->f()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p2, p0, LV/k;->a:LV/k$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0}, LV/k$a;->a(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
