.class public final Lwg/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lwg/K0;)Lwg/B;
    .locals 1
    .param p0    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lwg/j1;

    invoke-direct {v0, p0}, Lwg/j1;-><init>(Lwg/K0;)V

    return-object v0
.end method

.method public static final synthetic b(Lwg/K0;)Lwg/K0;
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    .annotation build Ldg/j;
        name = "SupervisorJob"
    .end annotation

    invoke-static {p0}, Lwg/k1;->a(Lwg/K0;)Lwg/B;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lwg/K0;ILjava/lang/Object;)Lwg/B;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lwg/k1;->a(Lwg/K0;)Lwg/B;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lwg/K0;ILjava/lang/Object;)Lwg/K0;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lwg/k1;->b(Lwg/K0;)Lwg/K0;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Leg/p;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # Leg/p;
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
            "Leg/p<",
            "-",
            "Lwg/S;",
            "-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lwg/i1;

    invoke-interface {p1}, LQf/f;->getContext()LQf/j;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lwg/i1;-><init>(LQf/j;LQf/f;)V

    invoke-static {v0, v0, p0}, LFg/b;->e(LEg/O;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_0
    return-object p0
.end method
