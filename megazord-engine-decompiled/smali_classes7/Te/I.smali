.class public interface abstract LTe/I;
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
.method public abstract a()V
.end method

.method public abstract e(LVe/c;)V
    .param p1    # LVe/c;
        .annotation build LUe/f;
        .end annotation
    .end param
.end method

.method public abstract g(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build LUe/f;
        .end annotation
    .end param
.end method
