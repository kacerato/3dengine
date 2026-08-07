.class public final LFf/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Log/o;Ljava/lang/Object;Log/n;)Ljava/lang/Object;
    .locals 0
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Log/o<",
            "+TV;>;",
            "Ljava/lang/Object;",
            "Log/n<",
            "*>;)TV;"
        }
    .end annotation

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Log/o;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Log/p;Ljava/lang/Object;Log/n;)Ljava/lang/Object;
    .locals 1
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Log/p<",
            "TT;+TV;>;TT;",
            "Log/n<",
            "*>;)TV;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Log/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Log/j;Ljava/lang/Object;Log/n;Ljava/lang/Object;)V
    .locals 0
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Log/j<",
            "TV;>;",
            "Ljava/lang/Object;",
            "Log/n<",
            "*>;TV;)V"
        }
    .end annotation

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p3}, Log/j;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static final d(Log/k;Ljava/lang/Object;Log/n;Ljava/lang/Object;)V
    .locals 1
    .annotation build LFf/l0;
        version = "1.4"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Log/k<",
            "TT;TV;>;TT;",
            "Log/n<",
            "*>;TV;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p3}, Log/k;->s(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
