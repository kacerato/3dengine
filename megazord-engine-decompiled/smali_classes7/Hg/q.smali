.class public final LHg/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 2
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LHg/c<",
            "-TR;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, LHg/t;

    invoke-interface {p1}, LQf/f;->getContext()LQf/j;

    move-result-object v1

    invoke-direct {v0, v1}, LHg/t;-><init>(LQf/j;)V

    invoke-interface {p0, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, LHg/t;->X(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LHg/c<",
            "-TR;>;",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, LHg/t;

    const/4 p0, 0x3

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    const/4 p0, 0x0

    throw p0
.end method
