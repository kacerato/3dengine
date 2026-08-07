.class public final LFf/H;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ldg/j;
    name = "LateinitKt"
.end annotation


# direct methods
.method public static final a(Log/o;)Z
    .locals 1
    .param p0    # Log/o;
        .annotation build LWf/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Log/o<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlin/NotImplementedError;

    const-string v0, "Implementation is intrinsic"

    invoke-direct {p0, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Log/o;)V
    .locals 0
    .annotation build LFf/l0;
        version = "1.2"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    return-void
.end method
