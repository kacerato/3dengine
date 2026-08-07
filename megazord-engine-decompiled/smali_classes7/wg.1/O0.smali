.class public final synthetic Lwg/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lwg/p;Ljava/util/concurrent/Future;)V
    .locals 1
    .param p0    # Lwg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/p<",
            "*>;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lwg/l;

    invoke-direct {v0, p1}, Lwg/l;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p0, v0}, Lwg/p;->m(Leg/l;)V

    return-void
.end method

.method public static final b(Lwg/K0;Ljava/util/concurrent/Future;)Lwg/m0;
    .locals 1
    .param p0    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/K0;",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lwg/m0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/F0;
    .end annotation

    new-instance v0, Lwg/m;

    invoke-direct {v0, p1}, Lwg/m;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p0, v0}, Lwg/K0;->Q(Leg/l;)Lwg/m0;

    move-result-object p0

    return-object p0
.end method
