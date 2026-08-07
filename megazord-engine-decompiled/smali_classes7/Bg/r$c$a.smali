.class public final LBg/r$c$a;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/l;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1"
    f = "Delay.kt"
    i = {}
    l = {
        0xe8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/r$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/l<",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,415:1\n18#2:416\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n*L\n232#1:416\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,415:1\n18#2:416\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n*L\n232#1:416\n*E\n"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBg/j;Lkotlin/jvm/internal/m0$h;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "-TT;>;",
            "Lkotlin/jvm/internal/m0$h<",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "LBg/r$c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/r$c$a;->c:LBg/j;

    iput-object p2, p0, LBg/r$c$a;->d:Lkotlin/jvm/internal/m0$h;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(LQf/f;)LQf/f;
    .locals 3
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "*>;)",
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LBg/r$c$a;

    iget-object v1, p0, LBg/r$c$a;->c:LBg/j;

    iget-object v2, p0, LBg/r$c$a;->d:Lkotlin/jvm/internal/m0$h;

    invoke-direct {v0, v1, v2, p1}, LBg/r$c$a;-><init>(LBg/j;Lkotlin/jvm/internal/m0$h;LQf/f;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQf/f;

    invoke-virtual {p0, p1}, LBg/r$c$a;->w(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, LBg/r$c$a;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LBg/r$c$a;->c:LBg/j;

    sget-object v1, LCg/s;->a:LEg/T;

    iget-object v4, p0, LBg/r$c$a;->d:Lkotlin/jvm/internal/m0$h;

    iget-object v4, v4, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    if-ne v4, v1, :cond_2

    move-object v4, v2

    :cond_2
    iput v3, p0, LBg/r$c$a;->b:I

    invoke-interface {p1, v4, p0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object p1, p0, LBg/r$c$a;->d:Lkotlin/jvm/internal/m0$h;

    iput-object v2, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final w(LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, LBg/r$c$a;->create(LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, LBg/r$c$a;

    sget-object v0, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, v0}, LBg/r$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
