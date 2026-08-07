.class public Ls2/d$b;
.super Ls2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Ls2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/text/TextPaint;

.field public final synthetic b:Ls2/f;

.field public final synthetic c:Ls2/d;


# direct methods
.method public constructor <init>(Ls2/d;Landroid/text/TextPaint;Ls2/f;)V
    .locals 0

    iput-object p1, p0, Ls2/d$b;->c:Ls2/d;

    iput-object p2, p0, Ls2/d$b;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Ls2/d$b;->b:Ls2/f;

    invoke-direct {p0}, Ls2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Ls2/d$b;->b:Ls2/f;

    invoke-virtual {v0, p1}, Ls2/f;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ls2/d$b;->c:Ls2/d;

    iget-object v1, p0, Ls2/d$b;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Ls2/d;->p(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Ls2/d$b;->b:Ls2/f;

    invoke-virtual {v0, p1, p2}, Ls2/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
