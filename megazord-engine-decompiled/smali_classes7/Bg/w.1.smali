.class public final synthetic LBg/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n53#2:219\n55#2:223\n53#2:224\n55#2:228\n50#3:220\n55#3:222\n50#3:225\n55#3:227\n107#4:221\n107#4:226\n107#4:229\n1#5:230\n*S KotlinDebug\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n47#1:219\n47#1:223\n74#1:224\n74#1:228\n47#1:220\n47#1:222\n74#1:225\n74#1:227\n47#1:221\n74#1:226\n82#1:229\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n53#2:219\n55#2:223\n53#2:224\n55#2:228\n50#3:220\n55#3:222\n50#3:225\n55#3:227\n107#4:221\n107#4:226\n107#4:229\n1#5:230\n*S KotlinDebug\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n47#1:219\n47#1:223\n74#1:224\n74#1:228\n47#1:220\n47#1:222\n74#1:225\n74#1:227\n47#1:221\n74#1:226\n82#1:229\n*E\n"
    }
.end annotation


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const v1, 0x7fffffff

    const-string v2, "kotlinx.coroutines.flow.defaultConcurrency"

    const/16 v3, 0x10

    invoke-static {v2, v3, v0, v1}, LEg/W;->b(Ljava/lang/String;III)I

    move-result v0

    sput v0, LBg/w;->a:I

    return-void
.end method

.method public static final a(LBg/i;Leg/p;)LBg/i;
    .locals 1
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/p<",
            "-TT;-",
            "LQf/f<",
            "-",
            "LBg/i<",
            "+TR;>;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    new-instance v0, LBg/w$a;

    invoke-direct {v0, p0, p1}, LBg/w$a;-><init>(LBg/i;Leg/p;)V

    invoke-static {v0}, LBg/k;->G0(LBg/i;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final b(LBg/i;Leg/p;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/p;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/p<",
            "-TT;-",
            "LQf/f<",
            "-",
            "LBg/i<",
            "+TR;>;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    new-instance v0, LBg/w$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LBg/w$b;-><init>(Leg/p;LQf/f;)V

    invoke-static {p0, v0}, LBg/k;->d2(LBg/i;Leg/q;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final c(LBg/i;ILeg/p;)LBg/i;
    .locals 1
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;I",
            "Leg/p<",
            "-TT;-",
            "LQf/f<",
            "-",
            "LBg/i<",
            "+TR;>;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    new-instance v0, LBg/w$c;

    invoke-direct {v0, p0, p2}, LBg/w$c;-><init>(LBg/i;Leg/p;)V

    invoke-static {v0, p1}, LBg/k;->H0(LBg/i;I)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(LBg/i;ILeg/p;ILjava/lang/Object;)LBg/i;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget p1, LBg/w;->a:I

    :cond_0
    invoke-static {p0, p1, p2}, LBg/k;->D0(LBg/i;ILeg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final e(LBg/i;)LBg/i;
    .locals 1
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
            "+",
            "LBg/i<",
            "+TT;>;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    new-instance v0, LBg/w$d;

    invoke-direct {v0, p0}, LBg/w$d;-><init>(LBg/i;)V

    return-object v0
.end method

.method public static final f(LBg/i;I)LBg/i;
    .locals 9
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
            "+",
            "LBg/i<",
            "+TT;>;>;I)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    if-lez p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, LBg/k;->G0(LBg/i;)LBg/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v8, LCg/f;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, LCg/f;-><init>(LBg/i;ILQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V

    move-object p0, v8

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected positive concurrency level, but had "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic g(LBg/i;IILjava/lang/Object;)LBg/i;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget p1, LBg/w;->a:I

    :cond_0
    invoke-static {p0, p1}, LBg/k;->H0(LBg/i;I)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final h()I
    .locals 1

    sget v0, LBg/w;->a:I

    return v0
.end method

.method public static synthetic i()V
    .locals 0
    .annotation build Lwg/A0;
    .end annotation

    return-void
.end method

.method public static synthetic j()V
    .locals 0
    .annotation build Lwg/A0;
    .end annotation

    return-void
.end method

.method public static final k(LBg/i;Leg/p;)LBg/i;
    .locals 2
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/p;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/p<",
            "-TT;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    new-instance v0, LBg/w$f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LBg/w$f;-><init>(Leg/p;LQf/f;)V

    invoke-static {p0, v0}, LBg/k;->d2(LBg/i;Leg/q;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Ljava/lang/Iterable;)LBg/i;
    .locals 8
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "LBg/i<",
            "+TT;>;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, LCg/j;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, LCg/j;-><init>(Ljava/lang/Iterable;LQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V

    return-object v7
.end method

.method public static final varargs m([LBg/i;)LBg/i;
    .locals 0
    .param p0    # [LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "LBg/i<",
            "+TT;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, LHf/A;->K5([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, LBg/k;->a1(Ljava/lang/Iterable;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final n(LBg/i;Leg/q;)LBg/i;
    .locals 9
    .param p0    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/q;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/i<",
            "+TT;>;",
            "Leg/q<",
            "-",
            "LBg/j<",
            "-TR;>;-TT;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    new-instance v8, LCg/i;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, LCg/i;-><init>(Leg/q;LBg/i;LQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V

    return-object v8
.end method
