.class public abstract LK/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/j;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LB/j<",
        "Landroid/graphics/ImageDecoder$Source;",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "ImageDecoder"


# instance fields
.field public final a:Lcom/bumptech/glide/load/resource/bitmap/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/w;->a()Lcom/bumptech/glide/load/resource/bitmap/w;

    move-result-object v0

    iput-object v0, p0, LK/i;->a:Lcom/bumptech/glide/load/resource/bitmap/w;

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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LK/a;->a(Ljava/lang/Object;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, LK/i;->c(Landroid/graphics/ImageDecoder$Source;IILB/h;)Lcom/bumptech/glide/load/engine/t;

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

    invoke-static {p1}, LK/a;->a(Ljava/lang/Object;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LK/i;->e(Landroid/graphics/ImageDecoder$Source;LB/h;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/graphics/ImageDecoder$Source;IILB/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 9
    .param p1    # Landroid/graphics/ImageDecoder$Source;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LB/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "LB/h;",
            ")",
            "Lcom/bumptech/glide/load/engine/t<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/q;->g:LB/g;

    invoke-virtual {p4, v0}, LB/h;->a(LB/g;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LB/b;

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/p;->h:LB/g;

    invoke-virtual {p4, v0}, LB/h;->a(LB/g;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/bumptech/glide/load/resource/bitmap/p;

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/q;->k:LB/g;

    invoke-virtual {p4, v0}, LB/h;->a(LB/g;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4, v0}, LB/h;->a(LB/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/q;->h:LB/g;

    invoke-virtual {p4, v0}, LB/h;->a(LB/g;)Ljava/lang/Object;

    move-result-object p4

    move-object v8, p4

    check-cast v8, LB/i;

    new-instance p4, LK/i$a;

    move-object v1, p4

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, LK/i$a;-><init>(LK/i;IIZLB/b;Lcom/bumptech/glide/load/resource/bitmap/p;LB/i;)V

    invoke-virtual {p0, p1, p2, p3, p4}, LK/i;->d(Landroid/graphics/ImageDecoder$Source;IILandroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Lcom/bumptech/glide/load/engine/t;

    move-result-object p1

    return-object p1
.end method

.method public abstract d(Landroid/graphics/ImageDecoder$Source;IILandroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Lcom/bumptech/glide/load/engine/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;",
            ")",
            "Lcom/bumptech/glide/load/engine/t<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final e(Landroid/graphics/ImageDecoder$Source;LB/h;)Z
    .locals 0
    .param p1    # Landroid/graphics/ImageDecoder$Source;
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
