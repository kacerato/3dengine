.class public Lwg/a0;
.super Lwg/a;
.source "SourceFile"

# interfaces
.implements Lwg/Z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwg/a<",
        "TT;>;",
        "Lwg/Z<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(LQf/j;Z)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lwg/a;-><init>(LQf/j;ZZ)V

    return-void
.end method

.method public static synthetic C1(Lwg/a0;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/a0<",
            "TT;>;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lwg/R0;->h0(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public P()LHg/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHg/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lwg/R0;->D0()LHg/g;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.DeferredCoroutine>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public T(LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lwg/a0;->C1(Lwg/a0;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lwg/R0;->x0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
