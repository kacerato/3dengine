.class public Lng/C;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Lng/v;)I
    .locals 3
    .param p0    # Lng/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/v;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lng/v;->c()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final B(Lng/y;)J
    .locals 3
    .param p0    # Lng/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/y;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lng/y;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final C(Lng/v;)LFf/B0;
    .locals 1
    .param p0    # Lng/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/v;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/v;->c()I

    move-result p0

    invoke-static {p0}, LFf/B0;->e(I)LFf/B0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final D(Lng/y;)LFf/F0;
    .locals 2
    .param p0    # Lng/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/y;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/y;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, LFf/F0;->b(J)LFf/F0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final E(Lng/v;)I
    .locals 3
    .param p0    # Lng/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/v;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lng/v;->d()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final F(Lng/y;)J
    .locals 3
    .param p0    # Lng/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/y;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final G(Lng/v;)LFf/B0;
    .locals 1
    .param p0    # Lng/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/v;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/v;->d()I

    move-result p0

    invoke-static {p0}, LFf/B0;->e(I)LFf/B0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final H(Lng/y;)LFf/F0;
    .locals 2
    .param p0    # Lng/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/y;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, LFf/F0;->b(J)LFf/F0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final I(Lng/x;)I
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/f;->b:Llg/f$a;

    invoke-static {p0, v0}, Lng/C;->J(Lng/x;Llg/f;)I

    move-result p0

    return p0
.end method

.method public static final J(Lng/x;Llg/f;)I
    .locals 1
    .param p0    # Lng/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p0}, Llg/h;->h(Llg/f;Lng/x;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final K(Lng/A;)J
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/f;->b:Llg/f$a;

    invoke-static {p0, v0}, Lng/C;->L(Lng/A;Llg/f;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final L(Lng/A;Llg/f;)J
    .locals 1
    .param p0    # Lng/A;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p0}, Llg/h;->l(Llg/f;Lng/A;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final M(Lng/x;)LFf/B0;
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/f;->b:Llg/f$a;

    invoke-static {p0, v0}, Lng/C;->N(Lng/x;Llg/f;)LFf/B0;

    move-result-object p0

    return-object p0
.end method

.method public static final N(Lng/x;Llg/f;)LFf/B0;
    .locals 1
    .param p0    # Lng/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/x;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1, p0}, Llg/h;->h(Llg/f;Lng/x;)I

    move-result p0

    invoke-static {p0}, LFf/B0;->e(I)LFf/B0;

    move-result-object p0

    return-object p0
.end method

.method public static final O(Lng/A;)LFf/F0;
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/f;->b:Llg/f$a;

    invoke-static {p0, v0}, Lng/C;->P(Lng/A;Llg/f;)LFf/F0;

    move-result-object p0

    return-object p0
.end method

.method public static final P(Lng/A;Llg/f;)LFf/F0;
    .locals 1
    .param p0    # Lng/A;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Llg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lng/A;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1, p0}, Llg/h;->l(Llg/f;Lng/A;)J

    move-result-wide p0

    invoke-static {p0, p1}, LFf/F0;->b(J)LFf/F0;

    move-result-object p0

    return-object p0
.end method

.method public static final Q(Lng/v;)Lng/v;
    .locals 3
    .param p0    # Lng/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lng/v;->e:Lng/v$a;

    invoke-virtual {p0}, Lng/v;->d()I

    move-result v1

    invoke-virtual {p0}, Lng/v;->c()I

    move-result v2

    invoke-virtual {p0}, Lng/v;->g()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0, v1, v2, p0}, Lng/v$a;->a(III)Lng/v;

    move-result-object p0

    return-object p0
.end method

.method public static final R(Lng/y;)Lng/y;
    .locals 8
    .param p0    # Lng/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lng/y;->e:Lng/y$a;

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v2

    invoke-virtual {p0}, Lng/y;->c()J

    move-result-wide v4

    invoke-virtual {p0}, Lng/y;->g()J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual/range {v1 .. v7}, Lng/y$a;->a(JJJ)Lng/y;

    move-result-object p0

    return-object p0
.end method

.method public static final S(Lng/v;I)Lng/v;
    .locals 3
    .param p0    # Lng/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lng/t;->a(ZLjava/lang/Number;)V

    sget-object v0, Lng/v;->e:Lng/v$a;

    invoke-virtual {p0}, Lng/v;->c()I

    move-result v1

    invoke-virtual {p0}, Lng/v;->d()I

    move-result v2

    invoke-virtual {p0}, Lng/v;->g()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    :goto_1
    invoke-virtual {v0, v1, v2, p1}, Lng/v$a;->a(III)Lng/v;

    move-result-object p0

    return-object p0
.end method

.method public static final T(Lng/y;J)Lng/y;
    .locals 11
    .param p0    # Lng/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lng/t;->a(ZLjava/lang/Number;)V

    sget-object v4, Lng/y;->e:Lng/y$a;

    invoke-virtual {p0}, Lng/y;->c()J

    move-result-wide v5

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v7

    invoke-virtual {p0}, Lng/y;->g()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-lez p0, :cond_1

    :goto_1
    move-wide v9, p1

    goto :goto_2

    :cond_1
    neg-long p1, p1

    goto :goto_1

    :goto_2
    invoke-virtual/range {v4 .. v10}, Lng/y$a;->a(JJJ)Lng/y;

    move-result-object p0

    return-object p0
.end method

.method public static final U(SS)Lng/x;
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0xffff

    and-int/2addr p1, v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v1

    if-gtz v1, :cond_0

    sget-object p0, Lng/x;->f:Lng/x$a;

    invoke-virtual {p0}, Lng/x$a;->a()Lng/x;

    move-result-object p0

    return-object p0

    :cond_0
    and-int/2addr p0, v0

    invoke-static {p0}, LFf/B0;->n(I)I

    move-result p0

    invoke-static {p1}, LFf/B0;->n(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, LFf/B0;->n(I)I

    move-result p1

    new-instance v0, Lng/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lng/x;-><init>(IILkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public static V(II)Lng/x;
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object p0, Lng/x;->f:Lng/x$a;

    invoke-virtual {p0}, Lng/x$a;->a()Lng/x;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lng/x;

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, LFf/B0;->n(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lng/x;-><init>(IILkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public static final W(BB)Lng/x;
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object p0, Lng/x;->f:Lng/x$a;

    invoke-virtual {p0}, Lng/x$a;->a()Lng/x;

    move-result-object p0

    return-object p0

    :cond_0
    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, LFf/B0;->n(I)I

    move-result p0

    invoke-static {p1}, LFf/B0;->n(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, LFf/B0;->n(I)I

    move-result p1

    new-instance v0, Lng/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lng/x;-><init>(IILkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public static X(JJ)Lng/A;
    .locals 6
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object p0, Lng/A;->f:Lng/A$a;

    invoke-virtual {p0}, Lng/A$a;->a()Lng/A;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, LFf/F0;->i(J)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, LFf/F0;->i(J)J

    move-result-wide v3

    new-instance p2, Lng/A;

    const/4 v5, 0x0

    move-object v0, p2

    move-wide v1, p0

    invoke-direct/range {v0 .. v5}, Lng/A;-><init>(JJLkotlin/jvm/internal/x;)V

    return-object p2
.end method

.method public static final a(SS)S
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    const v0, 0xffff

    and-int v1, p0, v0

    and-int/2addr v0, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final b(II)I
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final c(BB)B
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final d(JJ)J
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static final e(SS)S
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    const v0, 0xffff

    and-int v1, p0, v0

    and-int/2addr v0, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-lez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final f(II)I
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-lez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final g(BB)B
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-lez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static final h(JJ)J
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-lez v0, :cond_0

    move-wide p0, p2

    :cond_0
    return-wide p0
.end method

.method public static final i(JLng/g;)J
    .locals 2
    .param p2    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lng/g<",
            "LFf/F0;",
            ">;)J"
        }
    .end annotation

    const-string v0, "range"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lng/f;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, LFf/F0;->b(J)LFf/F0;

    move-result-object p0

    check-cast p2, Lng/f;

    invoke-static {p0, p2}, Lng/u;->P(Ljava/lang/Comparable;Lng/f;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, LFf/F0;

    invoke-virtual {p0}, LFf/F0;->m0()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-interface {p2}, Lng/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, LFf/F0;

    invoke-virtual {v0}, LFf/F0;->m0()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gez v0, :cond_1

    invoke-interface {p2}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, LFf/F0;

    invoke-virtual {p0}, LFf/F0;->m0()J

    move-result-wide p0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, LFf/F0;

    invoke-virtual {v0}, LFf/F0;->m0()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p2}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, LFf/F0;

    invoke-virtual {p0}, LFf/F0;->m0()J

    move-result-wide p0

    :cond_2
    :goto_0
    return-wide p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot coerce value to an empty range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final j(SSS)S
    .locals 4
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    const v0, 0xffff

    and-int v1, p1, v0

    and-int v2, p2, v0

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v3

    if-gtz v3, :cond_2

    and-int/2addr v0, p0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v1

    if-gez v1, :cond_0

    return p1

    :cond_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->t(II)I

    move-result p1

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, LFf/L0;->e0(S)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LFf/L0;->e0(S)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final k(III)I
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-gez v0, :cond_0

    return p1

    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result p1

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, LFf/B0;->l0(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LFf/B0;->l0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final l(BBB)B
    .locals 3
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    and-int/lit16 v0, p1, 0xff

    and-int/lit16 v1, p2, 0xff

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v2

    if-gtz v2, :cond_2

    and-int/lit16 v2, p0, 0xff

    invoke-static {v2, v0}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-gez v0, :cond_0

    return p1

    :cond_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result p1

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, LFf/x0;->e0(B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LFf/x0;->e0(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final m(JJJ)J
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p2

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, LFf/F0;->g0(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " is less than minimum "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, LFf/F0;->g0(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final n(ILng/g;)I
    .locals 2
    .param p1    # Lng/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lng/g<",
            "LFf/B0;",
            ">;)I"
        }
    .end annotation

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lng/f;

    if-eqz v0, :cond_0

    invoke-static {p0}, LFf/B0;->e(I)LFf/B0;

    move-result-object p0

    check-cast p1, Lng/f;

    invoke-static {p0, p1}, Lng/u;->P(Ljava/lang/Comparable;Lng/f;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, LFf/B0;

    invoke-virtual {p0}, LFf/B0;->q0()I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Lng/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, LFf/B0;

    invoke-virtual {v0}, LFf/B0;->q0()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-gez v0, :cond_1

    invoke-interface {p1}, Lng/g;->getStart()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, LFf/B0;

    invoke-virtual {p0}, LFf/B0;->q0()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, LFf/B0;

    invoke-virtual {v0}, LFf/B0;->q0()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Lng/g;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, LFf/B0;

    invoke-virtual {p0}, LFf/B0;->q0()I

    move-result p0

    :cond_2
    :goto_0
    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final o(Lng/x;B)Z
    .locals 1
    .param p0    # Lng/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, LFf/B0;->n(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lng/x;->j(I)Z

    move-result p0

    return p0
.end method

.method public static final p(Lng/A;LFf/F0;)Z
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LFf/F0;->m0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lng/A;->i(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final q(Lng/A;I)Z
    .locals 4
    .param p0    # Lng/A;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, LFf/F0;->i(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lng/A;->i(J)Z

    move-result p0

    return p0
.end method

.method public static final r(Lng/A;B)Z
    .locals 4
    .param p0    # Lng/A;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, LFf/F0;->i(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lng/A;->i(J)Z

    move-result p0

    return p0
.end method

.method public static final s(Lng/x;S)Z
    .locals 1
    .param p0    # Lng/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, LFf/B0;->n(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lng/x;->j(I)Z

    move-result p0

    return p0
.end method

.method public static final t(Lng/x;LFf/B0;)Z
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LFf/B0;->q0()I

    move-result p1

    invoke-virtual {p0, p1}, Lng/x;->j(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final u(Lng/x;J)Z
    .locals 4
    .param p0    # Lng/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    invoke-static {v0, v1}, LFf/F0;->i(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int p1, p1

    invoke-static {p1}, LFf/B0;->n(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lng/x;->j(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final v(Lng/A;S)Z
    .locals 4
    .param p0    # Lng/A;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-long v0, p1

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, LFf/F0;->i(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lng/A;->i(J)Z

    move-result p0

    return p0
.end method

.method public static final w(SS)Lng/v;
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/v;->e:Lng/v$a;

    const v1, 0xffff

    and-int/2addr p0, v1

    invoke-static {p0}, LFf/B0;->n(I)I

    move-result p0

    and-int/2addr p1, v1

    invoke-static {p1}, LFf/B0;->n(I)I

    move-result p1

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/v$a;->a(III)Lng/v;

    move-result-object p0

    return-object p0
.end method

.method public static final x(II)Lng/v;
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/v;->e:Lng/v$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/v$a;->a(III)Lng/v;

    move-result-object p0

    return-object p0
.end method

.method public static final y(BB)Lng/v;
    .locals 2
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/v;->e:Lng/v$a;

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, LFf/B0;->n(I)I

    move-result p0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, LFf/B0;->n(I)I

    move-result p1

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lng/v$a;->a(III)Lng/v;

    move-result-object p0

    return-object p0
.end method

.method public static final z(JJ)Lng/y;
    .locals 7
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lng/y;->e:Lng/y$a;

    const-wide/16 v5, -0x1

    move-wide v1, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Lng/y$a;->a(JJJ)Lng/y;

    move-result-object p0

    return-object p0
.end method
