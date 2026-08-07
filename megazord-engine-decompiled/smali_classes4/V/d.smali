.class public LV/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LV/f<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LV/d;->a:I

    iput-boolean p2, p0, LV/d;->b:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;LV/f$a;)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, LV/d;->b(Landroid/graphics/drawable/Drawable;LV/f$a;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;LV/f$a;)Z
    .locals 2

    invoke-interface {p2}, LV/f$a;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    filled-new-array {v0, p1}, [Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, LV/d;->b:Z

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget p1, p0, LV/d;->a:I

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    invoke-interface {p2, v1}, LV/f$a;->d(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    return p1
.end method
