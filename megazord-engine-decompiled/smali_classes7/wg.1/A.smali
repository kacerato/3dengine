.class public final Lwg/A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompletableDeferred.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletableDeferred.kt\nkotlinx/coroutines/CompletableDeferredKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n1#2:95\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCompletableDeferred.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletableDeferred.kt\nkotlinx/coroutines/CompletableDeferredKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n1#2:95\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/Object;)Lwg/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lwg/y<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lwg/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwg/z;-><init>(Lwg/K0;)V

    invoke-virtual {v0, p0}, Lwg/z;->w(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final b(Lwg/K0;)Lwg/y;
    .locals 1
    .param p0    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/K0;",
            ")",
            "Lwg/y<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lwg/z;

    invoke-direct {v0, p0}, Lwg/z;-><init>(Lwg/K0;)V

    return-object v0
.end method

.method public static synthetic c(Lwg/K0;ILjava/lang/Object;)Lwg/y;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lwg/A;->b(Lwg/K0;)Lwg/y;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lwg/y;Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Lwg/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/y<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, LFf/i0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lwg/y;->w(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lwg/y;->b(Ljava/lang/Throwable;)Z

    move-result p0

    :goto_0
    return p0
.end method
