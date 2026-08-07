.class public final LHg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LHg/c;JLeg/l;)V
    .locals 1
    .param p0    # LHg/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LHg/c<",
            "-TR;>;J",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    new-instance v0, LHg/a;

    invoke-direct {v0, p1, p2}, LHg/a;-><init>(J)V

    invoke-virtual {v0}, LHg/a;->b()LHg/e;

    move-result-object p1

    invoke-interface {p0, p1, p3}, LHg/c;->j(LHg/e;Leg/l;)V

    return-void
.end method

.method public static final b(LHg/c;JLeg/l;)V
    .locals 0
    .param p0    # LHg/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LHg/c<",
            "-TR;>;J",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    invoke-static {p1, p2}, Lwg/c0;->e(J)J

    move-result-wide p1

    invoke-static {p0, p1, p2, p3}, LHg/b;->a(LHg/c;JLeg/l;)V

    return-void
.end method
