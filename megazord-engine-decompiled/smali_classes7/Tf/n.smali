.class public final LTf/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leg/l;)V
    .locals 1
    .param p0    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LTf/m;

    invoke-direct {v0}, LTf/m;-><init>()V

    invoke-static {p0, v0}, LQf/h;->h(Leg/l;LQf/f;)V

    invoke-virtual {v0}, LTf/m;->a()V

    return-void
.end method
