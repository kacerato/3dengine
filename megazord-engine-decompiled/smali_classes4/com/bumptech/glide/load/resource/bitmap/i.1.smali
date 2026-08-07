.class public final Lcom/bumptech/glide/load/resource/bitmap/i;
.super Lcom/bumptech/glide/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/l<",
        "Lcom/bumptech/glide/load/resource/bitmap/i;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/l;-><init>()V

    return-void
.end method

.method public static m(LV/g;)Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 1
    .param p0    # LV/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV/g<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/i;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/l;->f(LV/g;)Lcom/bumptech/glide/l;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/i;

    return-object p0
.end method

.method public static n()Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/i;->h()Lcom/bumptech/glide/load/resource/bitmap/i;

    move-result-object v0

    return-object v0
.end method

.method public static o(I)Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/i;->i(I)Lcom/bumptech/glide/load/resource/bitmap/i;

    move-result-object p0

    return-object p0
.end method

.method public static p(LV/c$a;)Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 1
    .param p0    # LV/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/i;->j(LV/c$a;)Lcom/bumptech/glide/load/resource/bitmap/i;

    move-result-object p0

    return-object p0
.end method

.method public static q(LV/c;)Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 1
    .param p0    # LV/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/i;->k(LV/c;)Lcom/bumptech/glide/load/resource/bitmap/i;

    move-result-object p0

    return-object p0
.end method

.method public static r(LV/g;)Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 1
    .param p0    # LV/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/i;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/i;->l(LV/g;)Lcom/bumptech/glide/load/resource/bitmap/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public h()Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LV/c$a;

    invoke-direct {v0}, LV/c$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/i;->j(LV/c$a;)Lcom/bumptech/glide/load/resource/bitmap/i;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LV/c$a;

    invoke-direct {v0, p1}, LV/c$a;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/i;->j(LV/c$a;)Lcom/bumptech/glide/load/resource/bitmap/i;

    move-result-object p1

    return-object p1
.end method

.method public j(LV/c$a;)Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 0
    .param p1    # LV/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, LV/c$a;->a()LV/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/i;->l(LV/g;)Lcom/bumptech/glide/load/resource/bitmap/i;

    move-result-object p1

    return-object p1
.end method

.method public k(LV/c;)Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 0
    .param p1    # LV/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/i;->l(LV/g;)Lcom/bumptech/glide/load/resource/bitmap/i;

    move-result-object p1

    return-object p1
.end method

.method public l(LV/g;)Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 1
    .param p1    # LV/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/i;"
        }
    .end annotation

    new-instance v0, LV/b;

    invoke-direct {v0, p1}, LV/b;-><init>(LV/g;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/l;->f(LV/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/i;

    return-object p1
.end method
