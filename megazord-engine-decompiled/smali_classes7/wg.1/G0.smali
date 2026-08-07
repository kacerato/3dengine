.class public final Lwg/G0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# direct methods
.method public static final synthetic a(LQf/j;Leg/a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lwg/G0;->d(LQf/j;Leg/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(LQf/j;Leg/a;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/j;",
            "Leg/a<",
            "+TT;>;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lwg/G0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lwg/G0$a;-><init>(Leg/a;LQf/f;)V

    invoke-static {p0, v0, p2}, Lwg/i;->h(LQf/j;Leg/p;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(LQf/j;Leg/a;LQf/f;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p0, LQf/l;->b:LQf/l;

    :cond_0
    invoke-static {p0, p1, p2}, Lwg/G0;->b(LQf/j;Leg/a;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final d(LQf/j;Leg/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/j;",
            "Leg/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lwg/s1;

    invoke-static {p0}, Lwg/N0;->B(LQf/j;)Lwg/K0;

    move-result-object p0

    invoke-direct {v0, p0}, Lwg/s1;-><init>(Lwg/K0;)V

    invoke-virtual {v0}, Lwg/s1;->j()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lwg/s1;->c()V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lwg/s1;->c()V

    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Blocking call was interrupted due to parent cancellation"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
