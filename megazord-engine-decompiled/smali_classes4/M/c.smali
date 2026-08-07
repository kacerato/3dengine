.class public final LM/c;
.super Lcom/bumptech/glide/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/l<",
        "LM/c;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/l;-><init>()V

    return-void
.end method

.method public static l(LV/g;)LM/c;
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
            "LM/c;"
        }
    .end annotation

    new-instance v0, LM/c;

    invoke-direct {v0}, LM/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/l;->f(LV/g;)Lcom/bumptech/glide/l;

    move-result-object p0

    check-cast p0, LM/c;

    return-object p0
.end method

.method public static m()LM/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LM/c;

    invoke-direct {v0}, LM/c;-><init>()V

    invoke-virtual {v0}, LM/c;->h()LM/c;

    move-result-object v0

    return-object v0
.end method

.method public static n(I)LM/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LM/c;

    invoke-direct {v0}, LM/c;-><init>()V

    invoke-virtual {v0, p0}, LM/c;->i(I)LM/c;

    move-result-object p0

    return-object p0
.end method

.method public static o(LV/c$a;)LM/c;
    .locals 1
    .param p0    # LV/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LM/c;

    invoke-direct {v0}, LM/c;-><init>()V

    invoke-virtual {v0, p0}, LM/c;->j(LV/c$a;)LM/c;

    move-result-object p0

    return-object p0
.end method

.method public static p(LV/c;)LM/c;
    .locals 1
    .param p0    # LV/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LM/c;

    invoke-direct {v0}, LM/c;-><init>()V

    invoke-virtual {v0, p0}, LM/c;->k(LV/c;)LM/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public h()LM/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LV/c$a;

    invoke-direct {v0}, LV/c$a;-><init>()V

    invoke-virtual {p0, v0}, LM/c;->j(LV/c$a;)LM/c;

    move-result-object v0

    return-object v0
.end method

.method public i(I)LM/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LV/c$a;

    invoke-direct {v0, p1}, LV/c$a;-><init>(I)V

    invoke-virtual {p0, v0}, LM/c;->j(LV/c$a;)LM/c;

    move-result-object p1

    return-object p1
.end method

.method public j(LV/c$a;)LM/c;
    .locals 0
    .param p1    # LV/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, LV/c$a;->a()LV/c;

    move-result-object p1

    invoke-virtual {p0, p1}, LM/c;->k(LV/c;)LM/c;

    move-result-object p1

    return-object p1
.end method

.method public k(LV/c;)LM/c;
    .locals 0
    .param p1    # LV/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/l;->f(LV/g;)Lcom/bumptech/glide/l;

    move-result-object p1

    check-cast p1, LM/c;

    return-object p1
.end method
