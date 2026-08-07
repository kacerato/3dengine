.class public final LJg/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v4, 0xc

    const/4 v5, 0x0

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, LEg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, LJg/f;->a:I

    new-instance v0, LEg/T;

    const-string v1, "PERMIT"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LJg/f;->b:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LJg/f;->c:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LJg/f;->d:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LJg/f;->e:LEg/T;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, LEg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, LJg/f;->f:I

    return-void
.end method

.method public static final a(II)LJg/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LJg/e;

    invoke-direct {v0, p0, p1}, LJg/e;-><init>(II)V

    return-object v0
.end method

.method public static synthetic b(IIILjava/lang/Object;)LJg/d;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, LJg/f;->a(II)LJg/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(JLJg/g;)LJg/g;
    .locals 0

    invoke-static {p0, p1, p2}, LJg/f;->j(JLJg/g;)LJg/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()LEg/T;
    .locals 1

    sget-object v0, LJg/f;->d:LEg/T;

    return-object v0
.end method

.method public static final synthetic e()LEg/T;
    .locals 1

    sget-object v0, LJg/f;->e:LEg/T;

    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    sget v0, LJg/f;->a:I

    return v0
.end method

.method public static final synthetic g()LEg/T;
    .locals 1

    sget-object v0, LJg/f;->b:LEg/T;

    return-object v0
.end method

.method public static final synthetic h()I
    .locals 1

    sget v0, LJg/f;->f:I

    return v0
.end method

.method public static final synthetic i()LEg/T;
    .locals 1

    sget-object v0, LJg/f;->c:LEg/T;

    return-object v0
.end method

.method public static final j(JLJg/g;)LJg/g;
    .locals 2

    new-instance v0, LJg/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LJg/g;-><init>(JLJg/g;I)V

    return-object v0
.end method

.method public static final k(LJg/d;Leg/a;LQf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # LJg/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LJg/d;",
            "Leg/a<",
            "+TT;>;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LJg/f$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LJg/f$a;

    iget v1, v0, LJg/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LJg/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LJg/f$a;

    invoke-direct {v0, p2}, LJg/f$a;-><init>(LQf/f;)V

    :goto_0
    iget-object p2, v0, LJg/f$a;->d:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LJg/f$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LJg/f$a;->c:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Leg/a;

    iget-object p0, v0, LJg/f$a;->b:Ljava/lang/Object;

    check-cast p0, LJg/d;

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    iput-object p0, v0, LJg/f$a;->b:Ljava/lang/Object;

    iput-object p1, v0, LJg/f$a;->c:Ljava/lang/Object;

    iput v3, v0, LJg/f$a;->e:I

    invoke-interface {p0, v0}, LJg/d;->h(LQf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {p1}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0}, LJg/d;->release()V

    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0}, LJg/d;->release()V

    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method

.method public static final l(LJg/d;Leg/a;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LJg/d;",
            "Leg/a<",
            "+TT;>;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p0, p2}, LJg/d;->h(LQf/f;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p2}, Lkotlin/jvm/internal/J;->e(I)V

    :try_start_0
    invoke-interface {p1}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0}, LJg/d;->release()V

    invoke-static {p2}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0}, LJg/d;->release()V

    invoke-static {p2}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method
