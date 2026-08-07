.class public final LHf/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ldg/j;
    name = "MapAccessorsKt"
.end annotation


# direct methods
.method public static final a(Ljava/util/Map;Ljava/lang/Object;Log/n;)Ljava/lang/Object;
    .locals 0
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "V1::TV;>(",
            "Ljava/util/Map<",
            "-",
            "Ljava/lang/String;",
            "+TV;>;",
            "Ljava/lang/Object;",
            "Log/n<",
            "*>;)TV1;"
        }
    .end annotation

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Log/c;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LHf/m0;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/util/Map;Ljava/lang/Object;Log/n;)Ljava/lang/Object;
    .locals 0
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "V1::TV;>(",
            "Ljava/util/Map<",
            "-",
            "Ljava/lang/String;",
            "+TV;>;",
            "Ljava/lang/Object;",
            "Log/n<",
            "*>;)TV1;"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "getVar"
    .end annotation

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Log/c;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LHf/m0;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/util/Map;Ljava/lang/Object;Log/n;Ljava/lang/Object;)V
    .locals 0
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-",
            "Ljava/lang/String;",
            "-TV;>;",
            "Ljava/lang/Object;",
            "Log/n<",
            "*>;TV;)V"
        }
    .end annotation

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Log/c;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
