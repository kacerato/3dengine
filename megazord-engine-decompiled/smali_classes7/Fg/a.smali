.class public final LFg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n1#1,68:1\n49#1,6:69\n49#1,6:75\n49#1,6:81\n*S KotlinDebug\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n17#1:69,6\n29#1:75,6\n38#1:81,6\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCancellable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n1#1,68:1\n49#1,6:69\n49#1,6:75\n49#1,6:81\n*S KotlinDebug\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n17#1:69,6\n29#1:75,6\n38#1:81,6\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(LQf/f;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    sget-object v0, LFf/i0;->c:LFf/i0$a;

    invoke-static {p1}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final b(LQf/f;Leg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "*>;",
            "Leg/a<",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Leg/a;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, p1}, LFg/a;->a(LQf/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final c(LQf/f;LQf/f;)V
    .locals 3
    .param p0    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object p0

    sget-object v0, LFf/i0;->c:LFf/i0$a;

    sget-object v0, LFf/P0;->a:LFf/P0;

    invoke-static {v0}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, LEg/m;->e(LQf/f;Ljava/lang/Object;Leg/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, LFg/a;->a(LQf/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final d(Leg/l;LQf/f;)V
    .locals 3
    .param p0    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation build Lwg/F0;
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, LSf/c;->b(Leg/l;LQf/f;)LQf/f;

    move-result-object p0

    invoke-static {p0}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object p0

    sget-object v0, LFf/i0;->c:LFf/i0$a;

    sget-object v0, LFf/P0;->a:LFf/P0;

    invoke-static {v0}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, LEg/m;->e(LQf/f;Ljava/lang/Object;Leg/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, LFg/a;->a(LQf/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final e(Leg/p;Ljava/lang/Object;LQf/f;Leg/l;)V
    .locals 0
    .param p0    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/p<",
            "-TR;-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "LQf/f<",
            "-TT;>;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, LSf/c;->c(Leg/p;Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p0

    invoke-static {p0}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object p0

    sget-object p1, LFf/i0;->c:LFf/i0$a;

    sget-object p1, LFf/P0;->a:LFf/P0;

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, LEg/m;->d(LQf/f;Ljava/lang/Object;Leg/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, p0}, LFg/a;->a(LQf/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic f(Leg/p;Ljava/lang/Object;LQf/f;Leg/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, LFg/a;->e(Leg/p;Ljava/lang/Object;LQf/f;Leg/l;)V

    return-void
.end method
