.class public final LBg/r$e$a;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$1"
    f = "Delay.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/r$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,415:1\n514#2,6:416\n530#2,4:422\n534#2:427\n1#3:426\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1\n*L\n287#1:416,6\n288#1:422,4\n288#1:427\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,415:1\n514#2,6:416\n530#2,4:422\n534#2:427\n1#3:426\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1\n*L\n287#1:416,6\n288#1:422,4\n288#1:427\n*E\n"
    }
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:Lyg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/D<",
            "LFf/P0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$h;Lyg/D;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$h<",
            "Ljava/lang/Object;",
            ">;",
            "Lyg/D<",
            "LFf/P0;",
            ">;",
            "LQf/f<",
            "-",
            "LBg/r$e$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/r$e$a;->d:Lkotlin/jvm/internal/m0$h;

    iput-object p2, p0, LBg/r$e$a;->e:Lyg/D;

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

    new-instance v0, LBg/r$e$a;

    iget-object v1, p0, LBg/r$e$a;->d:Lkotlin/jvm/internal/m0$h;

    iget-object v2, p0, LBg/r$e$a;->e:Lyg/D;

    invoke-direct {v0, v1, v2, p2}, LBg/r$e$a;-><init>(Lkotlin/jvm/internal/m0$h;Lyg/D;LQf/f;)V

    iput-object p1, v0, LBg/r$e$a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyg/p;

    invoke-virtual {p1}, Lyg/p;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, LBg/r$e$a;->w(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    iget v0, p0, LBg/r$e$a;->b:I

    if-nez v0, :cond_3

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LBg/r$e$a;->c:Ljava/lang/Object;

    check-cast p1, Lyg/p;

    invoke-virtual {p1}, Lyg/p;->o()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LBg/r$e$a;->d:Lkotlin/jvm/internal/m0$h;

    instance-of v1, p1, Lyg/p$c;

    if-nez v1, :cond_0

    iput-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, LBg/r$e$a;->e:Lyg/D;

    if-eqz v1, :cond_2

    invoke-static {p1}, Lyg/p;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlinx/coroutines/flow/internal/ChildCancelledException;

    invoke-direct {p1}, Lkotlinx/coroutines/flow/internal/ChildCancelledException;-><init>()V

    invoke-interface {v2, p1}, Lyg/D;->a(Ljava/util/concurrent/CancellationException;)V

    sget-object p1, LCg/s;->c:LEg/T;

    iput-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    throw p1

    :cond_2
    :goto_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    invoke-virtual {p0, p1, p2}, LBg/r$e$a;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, LBg/r$e$a;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, LBg/r$e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
