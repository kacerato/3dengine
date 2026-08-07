.class public Lg4/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/f;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw7/a$a<",
        "Ljava/lang/String;",
        "Lg4/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lg4/f;


# direct methods
.method public constructor <init>(Lg4/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lg4/f$c;->a:Lg4/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lw7/b;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "element",
            "position"
        }
    .end annotation

    check-cast p1, Lg4/i;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lg4/f$c;->c(Lg4/i;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lw7/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lg4/f$c;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/i;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg4/i;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "element",
            "position"
        }
    .end annotation

    iget-object p3, p1, Lg4/i;->b:Landroid/widget/ImageView;

    invoke-static {p2}, Lg4/f;->w1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lg4/f$c;->a:Lg4/f;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lod/c;

    invoke-direct {v2}, Lod/c;-><init>()V

    invoke-static {p3, v0, v1, v2}, Lod/e;->K(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;Lcom/bumptech/glide/load/resource/bitmap/h;)V

    iget-object p3, p1, Lg4/i;->b:Landroid/widget/ImageView;

    new-instance v0, Lg4/f$c$a;

    invoke-direct {v0, p0, p1, p2}, Lg4/f$c$a;-><init>(Lg4/f$c;Lg4/i;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p1, Lg4/i;->c:Landroid/widget/ImageView;

    const v0, 0x7f0701d6

    invoke-static {p3, v0}, Lod/e;->U(Landroid/widget/ImageView;I)V

    iget-object p3, p0, Lg4/f$c;->a:Lg4/f;

    invoke-static {p3}, Lg4/f;->q1(Lg4/f;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lg4/i;->c:Landroid/widget/ImageView;

    iget-object p3, p0, Lg4/f$c;->a:Lg4/f;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f05003e

    invoke-static {p2, p3, v0}, Lod/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    iget-object p2, p0, Lg4/f$c;->a:Lg4/f;

    invoke-static {p2}, Lg4/f;->o1(Lg4/f;)[Landroid/widget/ImageView;

    move-result-object p2

    const/4 p3, 0x0

    iget-object p1, p1, Lg4/i;->c:Landroid/widget/ImageView;

    aput-object p1, p2, p3

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg4/i;->c:Landroid/widget/ImageView;

    iget-object p2, p0, Lg4/f$c;->a:Lg4/f;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v0

    invoke-direct {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-static {p1, p2, p3}, Lod/e;->y(Landroid/widget/ImageView;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :goto_0
    return-void
.end method

.method public d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/i;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    const v0, 0x7f0c00c0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lg4/i;

    invoke-direct {p2, p1}, Lg4/i;-><init>(Landroid/view/View;)V

    return-object p2
.end method
