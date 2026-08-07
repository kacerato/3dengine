.class public interface abstract Lge/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract b()Lcom/skydoves/powerspinner/PowerSpinnerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract c(Lge/g;)V
    .param p1    # Lge/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lge/g<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract d(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation
.end method

.method public abstract e(I)V
.end method

.method public abstract f()Lge/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lge/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getIndex()I
.end method

.method public abstract getItemCount()I
.end method
