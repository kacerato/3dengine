.class public LO5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX7/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;LX7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "imageView",
            "subIconImageView",
            "eElement"
        }
    .end annotation

    iget-object p3, p4, LX7/i;->a:Ljava/lang/String;

    const-string v0, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v0, p3}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    instance-of p3, p4, LO5/e$t;

    if-eqz p3, :cond_0

    check-cast p4, LO5/e$t;

    invoke-static {p1}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    iget-object p3, p4, LO5/e$t;->m:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/k;->G(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object p3, LB/b;->PREFER_RGB_565:LB/b;

    invoke-virtual {p1, p3}, LT/a;->A(LB/b;)LT/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    sget-object p3, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {p1, p3}, LT/a;->l(Lcom/bumptech/glide/load/engine/i;)LT/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, v0}, LT/a;->K0(Z)LT/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    const p3, 0x7f07026e

    invoke-virtual {p1, p3}, LT/a;->u(I)LT/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/j;->m1(Landroid/widget/ImageView;)LU/r;

    return-void

    :cond_0
    iget-object p3, p4, LX7/i;->a:Ljava/lang/String;

    invoke-static {p2, p3, p1, v0}, Lbd/l;->j(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method
