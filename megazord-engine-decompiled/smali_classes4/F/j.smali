.class public interface abstract LF/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LF/j$a;
    }
.end annotation


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract b()V
.end method

.method public abstract c(F)V
.end method

.method public abstract d(LF/j$a;)V
    .param p1    # LF/j$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract e()J
.end method

.method public abstract f(LB/e;)Lcom/bumptech/glide/load/engine/t;
    .param p1    # LB/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract g(LB/e;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;
    .param p1    # LB/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/e;",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;)",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getCurrentSize()J
.end method
