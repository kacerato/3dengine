.class public final LJg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LEg/T;

    const-string v1, "NO_OWNER"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LJg/c;->a:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "ALREADY_LOCKED_BY_OWNER"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LJg/c;->b:LEg/T;

    return-void
.end method

.method public static final a(Z)LJg/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LJg/b;

    invoke-direct {v0, p0}, LJg/b;-><init>(Z)V

    return-object v0
.end method

.method public static synthetic b(ZILjava/lang/Object;)LJg/a;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, LJg/c;->a(Z)LJg/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()LEg/T;
    .locals 1

    sget-object v0, LJg/c;->a:LEg/T;

    return-object v0
.end method

.method public static final synthetic d()LEg/T;
    .locals 1

    sget-object v0, LJg/c;->b:LEg/T;

    return-object v0
.end method

.method public static final e(LJg/a;Ljava/lang/Object;Leg/a;LQf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # LJg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Leg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LJg/a;",
            "Ljava/lang/Object;",
            "Leg/a<",
            "+TT;>;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p3, LJg/c$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LJg/c$a;

    iget v1, v0, LJg/c$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LJg/c$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, LJg/c$a;

    invoke-direct {v0, p3}, LJg/c$a;-><init>(LQf/f;)V

    :goto_0
    iget-object p3, v0, LJg/c$a;->e:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LJg/c$a;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LJg/c$a;->d:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Leg/a;

    iget-object p1, v0, LJg/c$a;->c:Ljava/lang/Object;

    iget-object p0, v0, LJg/c$a;->b:Ljava/lang/Object;

    check-cast p0, LJg/a;

    invoke-static {p3}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LFf/j0;->n(Ljava/lang/Object;)V

    iput-object p0, v0, LJg/c$a;->b:Ljava/lang/Object;

    iput-object p1, v0, LJg/c$a;->c:Ljava/lang/Object;

    iput-object p2, v0, LJg/c$a;->d:Ljava/lang/Object;

    iput v3, v0, LJg/c$a;->f:I

    invoke-interface {p0, p1, v0}, LJg/a;->i(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {p2}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0, p1}, LJg/a;->e(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0, p1}, LJg/a;->e(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    throw p2
.end method

.method public static final f(LJg/a;Ljava/lang/Object;Leg/a;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LJg/a;",
            "Ljava/lang/Object;",
            "Leg/a<",
            "+TT;>;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p0, p1, p3}, LJg/a;->i(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    const/4 p3, 0x1

    invoke-static {p3}, Lkotlin/jvm/internal/J;->e(I)V

    :try_start_0
    invoke-interface {p2}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p3}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0, p1}, LJg/a;->e(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p3}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0, p1}, LJg/a;->e(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/jvm/internal/J;->c(I)V

    throw p2
.end method

.method public static synthetic g(LJg/a;Ljava/lang/Object;Leg/a;LQf/f;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p5, 0x1

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 p4, 0x0

    invoke-static {p4}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p0, p1, p3}, LJg/a;->i(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    invoke-static {p5}, Lkotlin/jvm/internal/J;->e(I)V

    :try_start_0
    invoke-interface {p2}, Leg/a;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p5}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0, p1}, LJg/a;->e(Ljava/lang/Object;)V

    invoke-static {p5}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p5}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0, p1}, LJg/a;->e(Ljava/lang/Object;)V

    invoke-static {p5}, Lkotlin/jvm/internal/J;->c(I)V

    throw p2
.end method
