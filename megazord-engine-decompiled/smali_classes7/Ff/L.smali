.class public LFf/L;
.super LFf/K;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LFf/K;-><init>()V

    return-void
.end method

.method public static final d(LFf/I;Ljava/lang/Object;Log/n;)Ljava/lang/Object;
    .locals 0
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LFf/I<",
            "+TT;>;",
            "Ljava/lang/Object;",
            "Log/n<",
            "*>;)TT;"
        }
    .end annotation

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LFf/I;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/Object;)LFf/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LFf/I<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LFf/E;

    invoke-direct {v0, p0}, LFf/E;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
