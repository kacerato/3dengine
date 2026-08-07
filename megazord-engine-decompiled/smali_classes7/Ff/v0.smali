.class public final LFf/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ldg/j;
    name = "TuplesKt"
.end annotation


# direct methods
.method public static final a(Ljava/lang/Object;Ljava/lang/Object;)LFf/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "LFf/Z<",
            "TA;TB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LFf/Z;

    invoke-direct {v0, p0, p1}, LFf/Z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final b(LFf/Z;)Ljava/util/List;
    .locals 1
    .param p0    # LFf/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LFf/Z<",
            "+TT;+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LFf/Z;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, LFf/Z;->f()Ljava/lang/Object;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LHf/H;->Q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final c(LFf/u0;)Ljava/util/List;
    .locals 2
    .param p0    # LFf/u0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LFf/u0<",
            "+TT;+TT;+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LFf/u0;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, LFf/u0;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, LFf/u0;->h()Ljava/lang/Object;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LHf/H;->Q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
