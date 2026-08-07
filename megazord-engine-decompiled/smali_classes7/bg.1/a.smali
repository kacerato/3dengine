.class public final Lbg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ldg/j;
    name = "AutoCloseableKt"
.end annotation


# direct methods
.method public static final a(Leg/a;)Ljava/lang/AutoCloseable;
    .locals 1
    .annotation build LFf/l0;
        version = "2.0"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/a<",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/AutoCloseable;"
        }
    .end annotation

    const-string v0, "closeAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lbg/a$a;

    invoke-direct {v0, p0}, Lbg/a$a;-><init>(Leg/a;)V

    return-object v0
.end method

.method public static synthetic b()V
    .locals 0
    .annotation build LFf/l0;
        version = "2.0"
    .end annotation

    return-void
.end method

.method public static final c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Ljava/lang/AutoCloseable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build LFf/f0;
    .end annotation

    .annotation build LFf/l0;
        version = "1.2"
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, LFf/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final d(Ljava/lang/AutoCloseable;Leg/l;)Ljava/lang/Object;
    .locals 2
    .annotation runtime LFf/D;
    .end annotation

    .annotation build LFf/l0;
        version = "1.2"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/AutoCloseable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Leg/l<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, p0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lbg/a;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {p0, p1}, Lbg/a;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/jvm/internal/J;->c(I)V

    throw v1
.end method
