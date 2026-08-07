.class public final LCg/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,63:1\n107#2:64\n*S KotlinDebug\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n50#1:64\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFlowCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,63:1\n107#2:64\n*S KotlinDebug\n*F\n+ 1 FlowCoroutine.kt\nkotlinx/coroutines/flow/internal/FlowCoroutineKt\n*L\n50#1:64\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Leg/p;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # Leg/p;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/p<",
            "-",
            "Lwg/S;",
            "-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, LCg/m;

    invoke-interface {p1}, LQf/f;->getContext()LQf/j;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LCg/m;-><init>(LQf/j;LQf/f;)V

    invoke-static {v0, v0, p0}, LFg/b;->e(LEg/O;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_0
    return-object p0
.end method

.method public static final b(Leg/q;)LBg/i;
    .locals 1
    .param p0    # Leg/q;
        .annotation build LFf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/q<",
            "-",
            "Lwg/S;",
            "-",
            "LBg/j<",
            "-TR;>;-",
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

    new-instance v0, LCg/n$a;

    invoke-direct {v0, p0}, LCg/n$a;-><init>(Leg/q;)V

    return-object v0
.end method
