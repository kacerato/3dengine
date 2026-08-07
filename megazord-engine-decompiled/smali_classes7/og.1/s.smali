.class public interface abstract Log/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Log/f;


# annotations
.annotation build LFf/l0;
    version = "1.1"
.end annotation


# virtual methods
.method public abstract d()Z
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getUpperBounds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Log/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getVariance()Log/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
