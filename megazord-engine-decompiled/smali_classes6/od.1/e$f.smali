.class public Lod/e$f;
.super LU/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lod/e;->j(Ljava/lang/String;Landroid/content/Context;LT/h;Lcom/bumptech/glide/load/engine/i;Lod/e$k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LU/e<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lod/e$k;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lod/e$k;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$context"
        }
    .end annotation

    iput-object p1, p0, Lod/e$f;->e:Lod/e$k;

    iput-object p2, p0, Lod/e$f;->f:Landroid/content/Context;

    invoke-direct {p0}, LU/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;LV/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LV/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "drawable",
            "transition"
        }
    .end annotation

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lod/e$f;->d(Landroid/graphics/drawable/Drawable;LV/f;)V

    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;LV/f;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LV/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "transition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "LV/f<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lod/e$f;->e:Lod/e$k;

    iget-object v0, p0, Lod/e$f;->f:Landroid/content/Context;

    invoke-static {p1, v0}, Lod/e;->h(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p2, p1}, Lod/e$k;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    return-void
.end method
