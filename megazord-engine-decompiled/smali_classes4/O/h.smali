.class public final LO/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LB/j<",
        "LA/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LE/e;


# direct methods
.method public constructor <init>(LE/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO/h;->a:LE/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILB/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, LA/a;

    invoke-virtual {p0, p1, p2, p3, p4}, LO/h;->c(LA/a;IILB/h;)Lcom/bumptech/glide/load/engine/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;LB/h;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, LA/a;

    invoke-virtual {p0, p1, p2}, LO/h;->d(LA/a;LB/h;)Z

    move-result p1

    return p1
.end method

.method public c(LA/a;IILB/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 0
    .param p1    # LA/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA/a;",
            "II",
            "LB/h;",
            ")",
            "Lcom/bumptech/glide/load/engine/t<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, LA/a;->h()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, LO/h;->a:LE/e;

    invoke-static {p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/g;->c(Landroid/graphics/Bitmap;LE/e;)Lcom/bumptech/glide/load/resource/bitmap/g;

    move-result-object p1

    return-object p1
.end method

.method public d(LA/a;LB/h;)Z
    .locals 0
    .param p1    # LA/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
