.class public final synthetic LBg/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,415:1\n1#2:416\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,415:1\n1#2:416\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(LBg/i;J)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;J)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/A0;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LBg/r$a;

    invoke-direct {v0, p1, p2}, LBg/r$a;-><init>(J)V

    invoke-static {p0, v0}, LBg/r;->e(LBg/i;Leg/l;)LBg/i;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Debounce timeout should not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(LBg/i;Leg/l;)LBg/i;
    .locals 0
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/Y;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/l<",
            "-TT;",
            "Ljava/lang/Long;",
            ">;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/A0;
    .end annotation

    invoke-static {p0, p1}, LBg/r;->e(LBg/i;Leg/l;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final c(LBg/i;J)LBg/i;
    .locals 0
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;J)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/A0;
    .end annotation

    invoke-static {p1, p2}, Lwg/c0;->e(J)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, LBg/k;->a0(LBg/i;J)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final d(LBg/i;Leg/l;)LBg/i;
    .locals 1
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/Y;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/l<",
            "-TT;",
            "Lkotlin/time/h;",
            ">;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "debounceDuration"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/A0;
    .end annotation

    new-instance v0, LBg/r$b;

    invoke-direct {v0, p1}, LBg/r$b;-><init>(Leg/l;)V

    invoke-static {p0, v0}, LBg/r;->e(LBg/i;Leg/l;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final e(LBg/i;Leg/l;)LBg/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/l<",
            "-TT;",
            "Ljava/lang/Long;",
            ">;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LBg/r$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, LBg/r$c;-><init>(Leg/l;LBg/i;LQf/f;)V

    invoke-static {v0}, LCg/n;->b(Leg/q;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lwg/S;JJ)Lyg/D;
    .locals 10
    .param p0    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/S;",
            "JJ)",
            "Lyg/D<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-string v3, " ms"

    if-ltz v2, :cond_1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    new-instance v0, LBg/r$d;

    const/4 v9, 0x0

    move-object v4, v0

    move-wide v5, p3

    move-wide v7, p1

    invoke-direct/range {v4 .. v9}, LBg/r$d;-><init>(JJLQf/f;)V

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move-object v7, v0

    invoke-static/range {v4 .. v9}, Lyg/z;->f(Lwg/S;LQf/j;ILeg/p;ILjava/lang/Object;)Lyg/D;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Expected non-negative initial delay, but has "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected non-negative delay, but has "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic g(Lwg/S;JJILjava/lang/Object;)Lyg/D;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    move-wide p3, p1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, LBg/k;->y0(Lwg/S;JJ)Lyg/D;

    move-result-object p0

    return-object p0
.end method

.method public static final h(LBg/i;J)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;J)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/A0;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, LBg/r$e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, LBg/r$e;-><init>(JLBg/i;LQf/f;)V

    invoke-static {v0}, LCg/n;->b(Leg/q;)LBg/i;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sample period should be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final i(LBg/i;J)LBg/i;
    .locals 0
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;J)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/A0;
    .end annotation

    invoke-static {p1, p2}, Lwg/c0;->e(J)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, LBg/k;->B1(LBg/i;J)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final j(LBg/i;J)LBg/i;
    .locals 0
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;J)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/A0;
    .end annotation

    invoke-static {p0, p1, p2}, LBg/r;->k(LBg/i;J)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final k(LBg/i;J)LBg/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;J)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LBg/r$f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, LBg/r$f;-><init>(JLBg/i;LQf/f;)V

    invoke-static {v0}, LCg/n;->b(Leg/q;)LBg/i;

    move-result-object p0

    return-object p0
.end method
