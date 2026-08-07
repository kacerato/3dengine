.class public final Lwg/z;
.super Lwg/R0;
.source "SourceFile"

# interfaces
.implements Lwg/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwg/R0;",
        "Lwg/y<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lwg/K0;)V
    .locals 1
    .param p1    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lwg/R0;-><init>(Z)V

    invoke-virtual {p0, p1}, Lwg/R0;->M0(Lwg/K0;)V

    return-void
.end method


# virtual methods
.method public F0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

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

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.CompletableDeferredImpl>"

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

    invoke-virtual {p0, p1}, Lwg/R0;->h0(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    return-object p1
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    new-instance v0, Lwg/D;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lwg/D;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/x;)V

    invoke-virtual {p0, v0}, Lwg/R0;->V0(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

.method public w(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lwg/R0;->V0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
