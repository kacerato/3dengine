.class public final Lwg/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,162:1\n314#2,11:163\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n*L\n30#1:163,11\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,162:1\n314#2,11:163\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n*L\n30#1:163,11\n*E\n"
    }
.end annotation


# direct methods
.method public static a(Lwg/b0;JLQf/f;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lwg/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/b0;",
            "J",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0

    :cond_0
    new-instance v0, Lwg/q;

    invoke-static {p3}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lwg/q;-><init>(LQf/f;I)V

    invoke-virtual {v0}, Lwg/q;->K()V

    invoke-interface {p0, p1, p2, v0}, Lwg/b0;->g(JLwg/p;)V

    invoke-virtual {v0}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p3}, LTf/h;->c(LQf/f;)V

    :cond_1
    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static b(Lwg/b0;JLjava/lang/Runnable;LQf/j;)Lwg/m0;
    .locals 0
    .param p0    # Lwg/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lwg/Y;->a()Lwg/b0;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lwg/b0;->q(JLjava/lang/Runnable;LQf/j;)Lwg/m0;

    move-result-object p0

    return-object p0
.end method
