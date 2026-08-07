.class public final Llg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Llg/f;)Ljava/util/Random;
    .locals 1
    .param p0    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Llg/a;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Llg/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Llg/a;->r()Ljava/util/Random;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Llg/c;

    invoke-direct {v0, p0}, Llg/c;-><init>(Llg/f;)V

    :cond_2
    return-object v0
.end method

.method public static final b(Ljava/util/Random;)Llg/f;
    .locals 1
    .param p0    # Ljava/util/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Llg/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Llg/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Llg/c;->a()Llg/f;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Llg/d;

    invoke-direct {v0, p0}, Llg/d;-><init>(Ljava/util/Random;)V

    :cond_2
    return-object v0
.end method

.method public static final c()Llg/f;
    .locals 1
    .annotation build LWf/f;
    .end annotation

    sget-object v0, LWf/n;->a:LWf/m;

    invoke-virtual {v0}, LWf/m;->b()Llg/f;

    move-result-object v0

    return-object v0
.end method

.method public static final d(II)D
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x1b

    shl-long/2addr v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    long-to-double p0, v0

    const-wide/high16 v0, 0x4340000000000000L    # 9.007199254740992E15

    div-double/2addr p0, v0

    return-wide p0
.end method
