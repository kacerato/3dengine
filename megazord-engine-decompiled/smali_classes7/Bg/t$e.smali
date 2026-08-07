.class public final LBg/t$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/t;->f(LBg/i;Leg/p;)LBg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LBg/i<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n77#2:114\n78#2,7:116\n329#3:115\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n77#1:115\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n77#2:114\n78#2,7:116\n329#3:115\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n77#1:115\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Leg/p;

.field public final synthetic c:LBg/i;


# direct methods
.method public constructor <init>(Leg/p;LBg/i;)V
    .locals 0

    iput-object p1, p0, LBg/t$e;->b:Leg/p;

    iput-object p2, p0, LBg/t$e;->c:LBg/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 6
    .param p1    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LBg/t$e$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/t$e$a;

    iget v1, v0, LBg/t$e$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/t$e$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/t$e$a;

    invoke-direct {v0, p0, p2}, LBg/t$e$a;-><init>(LBg/t$e;LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/t$e$a;->b:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/t$e$a;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, LBg/t$e$a;->g:Ljava/lang/Object;

    check-cast p1, LCg/t;

    iget-object v2, v0, LBg/t$e$a;->f:Ljava/lang/Object;

    check-cast v2, LBg/j;

    iget-object v4, v0, LBg/t$e$a;->e:Ljava/lang/Object;

    check-cast v4, LBg/t$e;

    :try_start_0
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_3
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, LCg/t;

    invoke-interface {v0}, LQf/f;->getContext()LQf/j;

    move-result-object v2

    invoke-direct {p2, p1, v2}, LCg/t;-><init>(LBg/j;LQf/j;)V

    :try_start_1
    iget-object v2, p0, LBg/t$e;->b:Leg/p;

    iput-object p0, v0, LBg/t$e$a;->e:Ljava/lang/Object;

    iput-object p1, v0, LBg/t$e$a;->f:Ljava/lang/Object;

    iput-object p2, v0, LBg/t$e$a;->g:Ljava/lang/Object;

    iput v4, v0, LBg/t$e$a;->c:I

    const/4 v4, 0x6

    invoke-static {v4}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {v2, p2, v0}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x7

    invoke-static {v4}, Lkotlin/jvm/internal/J;->e(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    :goto_1
    invoke-virtual {p1}, LCg/t;->releaseIntercepted()V

    iget-object p1, v4, LBg/t$e;->c:LBg/i;

    const/4 p2, 0x0

    iput-object p2, v0, LBg/t$e$a;->e:Ljava/lang/Object;

    iput-object p2, v0, LBg/t$e$a;->f:Ljava/lang/Object;

    iput-object p2, v0, LBg/t$e$a;->g:Ljava/lang/Object;

    iput v3, v0, LBg/t$e$a;->c:I

    invoke-interface {p1, v2, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_3
    invoke-virtual {p1}, LCg/t;->releaseIntercepted()V

    throw p2
.end method
