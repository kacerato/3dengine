.class public final LBg/r$c$b;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2"
    f = "Delay.kt"
    i = {
        0x0
    }
    l = {
        0xf2
    }
    m = "invokeSuspend"
    n = {
        "$this$onFailure_u2dWpGqRn0$iv"
    }
    s = {
        "L$0"
    }
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
        "Leg/p<",
        "Lyg/p<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,415:1\n514#2,6:416\n530#2,4:422\n534#2:428\n1#3:426\n18#4:427\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n*L\n238#1:416,6\n239#1:422,4\n239#1:428\n242#1:427\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,415:1\n514#2,6:416\n530#2,4:422\n534#2:428\n1#3:426\n18#4:427\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n*L\n238#1:416,6\n239#1:422,4\n239#1:428\n242#1:427\n*E\n"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$h;LBg/j;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$h<",
            "Ljava/lang/Object;",
            ">;",
            "LBg/j<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LBg/r$c$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/r$c$b;->e:Lkotlin/jvm/internal/m0$h;

    iput-object p2, p0, LBg/r$c$b;->f:LBg/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LQf/f<",
            "*>;)",
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LBg/r$c$b;

    iget-object v1, p0, LBg/r$c$b;->e:Lkotlin/jvm/internal/m0$h;

    iget-object v2, p0, LBg/r$c$b;->f:LBg/j;

    invoke-direct {v0, v1, v2, p2}, LBg/r$c$b;-><init>(Lkotlin/jvm/internal/m0$h;LBg/j;LQf/f;)V

    iput-object p1, v0, LBg/r$c$b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyg/p;

    invoke-virtual {p1}, Lyg/p;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, LBg/r$c$b;->w(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, LBg/r$c$b;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, LBg/r$c$b;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/m0$h;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LBg/r$c$b;->d:Ljava/lang/Object;

    check-cast p1, Lyg/p;

    invoke-virtual {p1}, Lyg/p;->o()Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, LBg/r$c$b;->e:Lkotlin/jvm/internal/m0$h;

    instance-of v3, p1, Lyg/p$c;

    if-nez v3, :cond_2

    iput-object p1, v1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    :cond_2
    iget-object v4, p0, LBg/r$c$b;->f:LBg/j;

    if-eqz v3, :cond_7

    invoke-static {p1}, Lyg/p;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    if-eqz v3, :cond_5

    sget-object v5, LCg/s;->a:LEg/T;

    if-ne v3, v5, :cond_3

    const/4 v3, 0x0

    :cond_3
    iput-object p1, p0, LBg/r$c$b;->d:Ljava/lang/Object;

    iput-object v1, p0, LBg/r$c$b;->b:Ljava/lang/Object;

    iput v2, p0, LBg/r$c$b;->c:I

    invoke-interface {v4, v3, p0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    :goto_0
    move-object v1, v0

    :cond_5
    sget-object p1, LCg/s;->c:LEg/T;

    iput-object p1, v1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    throw v3

    :cond_7
    :goto_1
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final w(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p1}, Lyg/p;->b(Ljava/lang/Object;)Lyg/p;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LBg/r$c$b;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, LBg/r$c$b;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, LBg/r$c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
