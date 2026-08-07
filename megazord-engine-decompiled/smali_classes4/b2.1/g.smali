.class public interface abstract Lb2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb2/g$d;,
        Lb2/g$b;,
        Lb2/g$c;,
        Lb2/g$e;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCircularRevealScrimColor()I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end method

.method public abstract getRevealInfo()Lb2/g$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract isOpaque()Z
.end method

.method public abstract setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCircularRevealScrimColor(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setRevealInfo(Lb2/g$e;)V
    .param p1    # Lb2/g$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
