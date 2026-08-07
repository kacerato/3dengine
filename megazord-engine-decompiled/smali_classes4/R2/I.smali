.class public interface abstract LR2/I;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime LR2/k;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime LR2/E;
        .end annotation
    .end param
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
.end method
