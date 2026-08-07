.class public final LBg/r$f;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/q;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1"
    f = "Delay.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x1a8
    }
    m = "invokeSuspend"
    n = {
        "downStream",
        "values"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/r;->k(LBg/i;J)LBg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/q<",
        "Lwg/S;",
        "LBg/j<",
        "-TT;>;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n+ 2 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n+ 3 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,415:1\n31#2:416\n32#2:425\n55#3,8:417\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n*L\n401#1:416\n401#1:425\n401#1:417,8\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n+ 2 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n+ 3 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,415:1\n31#2:416\n32#2:425\n55#3,8:417\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$timeoutInternal$1\n*L\n401#1:416\n401#1:425\n401#1:417,8\n*E\n"
    }
.end annotation


# instance fields
.field public b:J

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:J

.field public final synthetic g:LBg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLBg/i;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LBg/i<",
            "+TT;>;",
            "LQf/f<",
            "-",
            "LBg/r$f;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, LBg/r$f;->f:J

    iput-object p3, p0, LBg/r$f;->g:LBg/i;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lwg/S;

    check-cast p2, LBg/j;

    check-cast p3, LQf/f;

    invoke-virtual {p0, p1, p2, p3}, LBg/r$f;->w(Lwg/S;LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, LBg/r$f;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v4, p0, LBg/r$f;->b:J

    iget-object v1, p0, LBg/r$f;->e:Ljava/lang/Object;

    check-cast v1, Lyg/D;

    iget-object v6, p0, LBg/r$f;->d:Ljava/lang/Object;

    check-cast v6, LBg/j;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LBg/r$f;->d:Ljava/lang/Object;

    check-cast p1, Lwg/S;

    iget-object v1, p0, LBg/r$f;->e:Ljava/lang/Object;

    check-cast v1, LBg/j;

    iget-wide v4, p0, LBg/r$f;->f:J

    sget-object v6, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v6}, Lkotlin/time/h$a;->W()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lkotlin/time/h;->m(JJ)I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, LBg/r$f;->g:LBg/i;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v5, v3, v6, v3}, LBg/k;->q(LBg/i;ILyg/i;ILjava/lang/Object;)LBg/i;

    move-result-object v4

    invoke-static {v4, p1}, LBg/k;->o1(LBg/i;Lwg/S;)Lyg/D;

    move-result-object p1

    iget-wide v4, p0, LBg/r$f;->f:J

    move-object v6, v1

    move-object v1, p1

    :cond_2
    new-instance p1, LHg/l;

    invoke-interface {p0}, LQf/f;->getContext()LQf/j;

    move-result-object v7

    invoke-direct {p1, v7}, LHg/l;-><init>(LQf/j;)V

    invoke-interface {v1}, Lyg/D;->F()LHg/g;

    move-result-object v7

    new-instance v8, LBg/r$f$a;

    invoke-direct {v8, v6, v3}, LBg/r$f$a;-><init>(LBg/j;LQf/f;)V

    invoke-interface {p1, v7, v8}, LHg/c;->m(LHg/g;Leg/p;)V

    new-instance v7, LBg/r$f$b;

    invoke-direct {v7, v4, v5, v3}, LBg/r$f$b;-><init>(JLQf/f;)V

    invoke-static {p1, v4, v5, v7}, LHg/b;->b(LHg/c;JLeg/l;)V

    iput-object v6, p0, LBg/r$f;->d:Ljava/lang/Object;

    iput-object v1, p0, LBg/r$f;->e:Ljava/lang/Object;

    iput-wide v4, p0, LBg/r$f;->b:J

    iput v2, p0, LBg/r$f;->c:I

    invoke-virtual {p1, p0}, LHg/l;->X(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_4
    new-instance p1, Lkotlinx/coroutines/TimeoutCancellationException;

    const-string v0, "Timed out immediately"

    invoke-direct {p1, v0}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Lwg/S;LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/S;",
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

    new-instance v0, LBg/r$f;

    iget-wide v1, p0, LBg/r$f;->f:J

    iget-object v3, p0, LBg/r$f;->g:LBg/i;

    invoke-direct {v0, v1, v2, v3, p3}, LBg/r$f;-><init>(JLBg/i;LQf/f;)V

    iput-object p1, v0, LBg/r$f;->d:Ljava/lang/Object;

    iput-object p2, v0, LBg/r$f;->e:Ljava/lang/Object;

    sget-object p1, LFf/P0;->a:LFf/P0;

    invoke-virtual {v0, p1}, LBg/r$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
