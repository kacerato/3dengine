.class public final Lwg/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leg/a;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Leg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/a<",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lwg/f1$a;

    invoke-direct {v0, p0}, Lwg/f1$a;-><init>(Leg/a;)V

    return-object v0
.end method
