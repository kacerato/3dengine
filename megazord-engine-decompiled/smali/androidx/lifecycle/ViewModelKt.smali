.class public final Landroidx/lifecycle/ViewModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JOB_KEY:Ljava/lang/String; = "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final getViewModelScope(Landroidx/lifecycle/ViewModel;)Lwg/S;
    .locals 4
    .param p0    # Landroidx/lifecycle/ViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModel;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwg/S;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Landroidx/lifecycle/CloseableCoroutineScope;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v2, v3}, Lwg/k1;->c(Lwg/K0;ILjava/lang/Object;)Lwg/B;

    move-result-object v2

    invoke-static {}, Lwg/j0;->e()Lwg/V0;

    move-result-object v3

    invoke-virtual {v3}, Lwg/V0;->v()Lwg/V0;

    move-result-object v3

    invoke-interface {v2, v3}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/CloseableCoroutineScope;-><init>(LQf/j;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/ViewModel;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setTagIfAbsent(\n        \u2026Main.immediate)\n        )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lwg/S;

    return-object p0
.end method
