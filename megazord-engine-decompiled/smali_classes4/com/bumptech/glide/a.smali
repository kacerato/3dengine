.class public final Lcom/bumptech/glide/a;
.super Lcom/bumptech/glide/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/l<",
        "Lcom/bumptech/glide/a<",
        "TTranscodeType;>;TTranscodeType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/l;-><init>()V

    return-void
.end method

.method public static h(I)Lcom/bumptech/glide/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/bumptech/glide/a<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/a;

    invoke-direct {v0}, Lcom/bumptech/glide/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/l;->e(I)Lcom/bumptech/glide/l;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/a;

    return-object p0
.end method

.method public static i(LV/g;)Lcom/bumptech/glide/a;
    .locals 1
    .param p0    # LV/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "LV/g<",
            "-TTranscodeType;>;)",
            "Lcom/bumptech/glide/a<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/a;

    invoke-direct {v0}, Lcom/bumptech/glide/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/l;->f(LV/g;)Lcom/bumptech/glide/l;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/a;

    return-object p0
.end method

.method public static j(LV/j$a;)Lcom/bumptech/glide/a;
    .locals 1
    .param p0    # LV/j$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "LV/j$a;",
            ")",
            "Lcom/bumptech/glide/a<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/a;

    invoke-direct {v0}, Lcom/bumptech/glide/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/l;->g(LV/j$a;)Lcom/bumptech/glide/l;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/a;

    return-object p0
.end method

.method public static k()Lcom/bumptech/glide/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/a<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/a;

    invoke-direct {v0}, Lcom/bumptech/glide/a;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->b()Lcom/bumptech/glide/l;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;

    return-object v0
.end method
