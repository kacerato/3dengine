.class public LO/e;
.super LM/b;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LM/b<",
        "LO/c;",
        ">;",
        "Lcom/bumptech/glide/load/engine/p;"
    }
.end annotation


# direct methods
.method public constructor <init>(LO/c;)V
    .locals 0

    invoke-direct {p0, p1}, LM/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "LO/c;",
            ">;"
        }
    .end annotation

    const-class v0, LO/c;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, LM/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, LO/c;

    invoke-virtual {v0}, LO/c;->j()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, LM/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, LO/c;

    invoke-virtual {v0}, LO/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, LM/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, LO/c;

    invoke-virtual {v0}, LO/c;->stop()V

    iget-object v0, p0, LM/b;->b:Landroid/graphics/drawable/Drawable;

    check-cast v0, LO/c;

    invoke-virtual {v0}, LO/c;->m()V

    return-void
.end method
