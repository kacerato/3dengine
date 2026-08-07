.class public final LBg/W;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,428:1\n1#2:429\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,428:1\n1#2:429\n*E\n"
    }
.end annotation


# static fields
.field public static final a:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LEg/T;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LBg/W;->a:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "PENDING"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LBg/W;->b:LEg/T;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)LBg/E;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LBg/E<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LBg/V;

    if-nez p0, :cond_0

    sget-object p0, LCg/s;->a:LEg/T;

    :cond_0
    invoke-direct {v0, p0}, LBg/V;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final synthetic b()LEg/T;
    .locals 1

    sget-object v0, LBg/W;->a:LEg/T;

    return-object v0
.end method

.method public static final synthetic c()LEg/T;
    .locals 1

    sget-object v0, LBg/W;->b:LEg/T;

    return-object v0
.end method

.method public static final d(LBg/U;LQf/j;ILyg/i;)LBg/i;
    .locals 1
    .param p0    # LBg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/U<",
            "+TT;>;",
            "LQf/j;",
            "I",
            "Lyg/i;",
            ")",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_0
    sget-object v0, Lyg/i;->DROP_OLDEST:Lyg/i;

    if-ne p3, v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p0, p1, p2, p3}, LBg/K;->e(LBg/I;LQf/j;ILyg/i;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final e(LBg/E;Leg/l;)Ljava/lang/Object;
    .locals 2
    .param p0    # LBg/E;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/E<",
            "TT;>;",
            "Leg/l<",
            "-TT;+TT;>;)TT;"
        }
    .end annotation

    :cond_0
    invoke-interface {p0}, LBg/E;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, LBg/E;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public static final f(LBg/E;Leg/l;)V
    .locals 2
    .param p0    # LBg/E;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/E<",
            "TT;>;",
            "Leg/l<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    :cond_0
    invoke-interface {p0}, LBg/E;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, LBg/E;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static final g(LBg/E;Leg/l;)Ljava/lang/Object;
    .locals 2
    .param p0    # LBg/E;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/E<",
            "TT;>;",
            "Leg/l<",
            "-TT;+TT;>;)TT;"
        }
    .end annotation

    :cond_0
    invoke-interface {p0}, LBg/E;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, LBg/E;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1
.end method
