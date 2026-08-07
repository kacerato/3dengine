.class public final LUf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a()LUf/a;
    .locals 3
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "2.0"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>()",
            "LUf/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lkotlin/NotImplementedError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/x;)V

    throw v0
.end method

.method public static final b(Leg/a;)LUf/a;
    .locals 1
    .param p0    # Leg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/f0;
    .end annotation

    .annotation build LFf/l0;
        version = "1.8"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Leg/a<",
            "[TE;>;)",
            "LUf/a<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "entriesProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LUf/d;

    invoke-interface {p0}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    invoke-direct {v0, p0}, LUf/d;-><init>([Ljava/lang/Enum;)V

    return-object v0
.end method

.method public static final c([Ljava/lang/Enum;)LUf/a;
    .locals 1
    .param p0    # [Ljava/lang/Enum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/f0;
    .end annotation

    .annotation build LFf/l0;
        version = "1.8"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>([TE;)",
            "LUf/a<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "entries"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LUf/d;

    invoke-direct {v0, p0}, LUf/d;-><init>([Ljava/lang/Enum;)V

    return-object v0
.end method
