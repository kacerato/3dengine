.class public final Landroidx/core/os/TraceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final trace(Ljava/lang/String;Leg/a;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        message = "Use androidx.tracing.Trace instead"
        replaceWith = .subannotation LFf/g0;
            expression = "trace(sectionName)"
            imports = {
                "androidx.tracing.trace"
            }
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Leg/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "sectionName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    const/4 p0, 0x1

    :try_start_0
    invoke-interface {p1}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    invoke-static {p0}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    invoke-static {p0}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method
