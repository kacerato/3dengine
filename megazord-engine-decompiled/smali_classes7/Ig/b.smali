.class public final LIg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/stream/Stream;)LBg/i;
    .locals 1
    .param p0    # Ljava/util/stream/Stream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LIg/a;

    invoke-direct {v0, p0}, LIg/a;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method
