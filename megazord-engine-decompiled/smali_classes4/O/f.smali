.class public LO/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LB/l<",
        "LO/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:LB/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LB/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LB/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/l<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB/l;

    iput-object p1, p0, LO/f;->c:LB/l;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LO/f;

    if-eqz v0, :cond_0

    check-cast p1, LO/f;

    iget-object v0, p0, LO/f;->c:LB/l;

    iget-object p1, p1, LO/f;->c:LB/l;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LO/f;->c:LB/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/t;II)Lcom/bumptech/glide/load/engine/t;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/t<",
            "LO/c;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/t<",
            "LO/c;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/t;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO/c;

    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/b;->g()LE/e;

    move-result-object v1

    invoke-virtual {v0}, LO/c;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {v3, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/g;-><init>(Landroid/graphics/Bitmap;LE/e;)V

    iget-object v1, p0, LO/f;->c:LB/l;

    invoke-interface {v1, p1, v3, p3, p4}, LB/l;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/t;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/t;->recycle()V

    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, p0, LO/f;->c:LB/l;

    invoke-virtual {v0, p3, p1}, LO/c;->o(LB/l;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LO/f;->c:LB/l;

    invoke-interface {v0, p1}, LB/e;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
