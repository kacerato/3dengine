.class public Ls2/d$a;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/d;->h(Landroid/content/Context;Ls2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls2/f;

.field public final synthetic b:Ls2/d;


# direct methods
.method public constructor <init>(Ls2/d;Ls2/f;)V
    .locals 0

    iput-object p1, p0, Ls2/d$a;->b:Ls2/d;

    iput-object p2, p0, Ls2/d$a;->a:Ls2/f;

    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 2

    iget-object v0, p0, Ls2/d$a;->b:Ls2/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ls2/d;->c(Ls2/d;Z)Z

    iget-object v0, p0, Ls2/d$a;->a:Ls2/f;

    invoke-virtual {v0, p1}, Ls2/f;->a(I)V

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ls2/d$a;->b:Ls2/d;

    iget v1, v0, Ls2/d;->e:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Ls2/d;->b(Ls2/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Ls2/d$a;->b:Ls2/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ls2/d;->c(Ls2/d;Z)Z

    iget-object p1, p0, Ls2/d$a;->a:Ls2/f;

    iget-object v0, p0, Ls2/d$a;->b:Ls2/d;

    invoke-static {v0}, Ls2/d;->a(Ls2/d;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ls2/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
