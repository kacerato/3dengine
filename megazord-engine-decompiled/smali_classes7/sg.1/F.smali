.class public Lsg/F;
.super Lsg/E;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsg/E;-><init>()V

    return-void
.end method

.method public static final A(Ljava/lang/String;Ljava/util/Set;)Lsg/v;
    .locals 1
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lsg/x;",
            ">;)",
            "Lsg/v;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lsg/v;

    invoke-direct {v0, p0, p1}, Lsg/v;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method

.method public static final B(Ljava/lang/String;Lsg/x;)Lsg/v;
    .locals 1
    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lsg/v;

    invoke-direct {v0, p0, p1}, Lsg/v;-><init>(Ljava/lang/String;Lsg/x;)V

    return-object v0
.end method

.method public static final z(Ljava/lang/String;)Lsg/v;
    .locals 1
    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lsg/v;

    invoke-direct {v0, p0}, Lsg/v;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
