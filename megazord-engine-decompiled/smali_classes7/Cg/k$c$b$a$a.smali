.class public final LCg/k$c$b$a$a;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1"
    f = "Combine.kt"
    i = {}
    l = {
        0x81,
        0x84,
        0x84
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCg/k$c$b$a;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/p<",
        "LFf/P0;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,143:1\n501#2,5:144\n18#3:149\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n*L\n129#1:144,5\n132#1:149\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,143:1\n501#2,5:144\n18#3:149\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n*L\n129#1:144,5\n132#1:149\n*E\n"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lyg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/D<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "TT1;TT2;",
            "LQf/f<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyg/D;LBg/j;Leg/q;Ljava/lang/Object;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/D<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "LBg/j<",
            "-TR;>;",
            "Leg/q<",
            "-TT1;-TT2;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;TT1;",
            "LQf/f<",
            "-",
            "LCg/k$c$b$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LCg/k$c$b$a$a;->d:Lyg/D;

    iput-object p2, p0, LCg/k$c$b$a$a;->e:LBg/j;

    iput-object p3, p0, LCg/k$c$b$a$a;->f:Leg/q;

    iput-object p4, p0, LCg/k$c$b$a$a;->g:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 6
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

    new-instance p1, LCg/k$c$b$a$a;

    iget-object v1, p0, LCg/k$c$b$a$a;->d:Lyg/D;

    iget-object v2, p0, LCg/k$c$b$a$a;->e:LBg/j;

    iget-object v3, p0, LCg/k$c$b$a$a;->f:Leg/q;

    iget-object v4, p0, LCg/k$c$b$a$a;->g:Ljava/lang/Object;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LCg/k$c$b$a$a;-><init>(Lyg/D;LBg/j;Leg/q;Ljava/lang/Object;LQf/f;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LFf/P0;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, LCg/k$c$b$a$a;->w(LFf/P0;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, LCg/k$c$b$a$a;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, LCg/k$c$b$a$a;->b:Ljava/lang/Object;

    check-cast v1, LBg/j;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    check-cast p1, Lyg/p;

    invoke-virtual {p1}, Lyg/p;->o()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LCg/k$c$b$a$a;->d:Lyg/D;

    iput v5, p0, LCg/k$c$b$a$a;->c:I

    invoke-interface {p1, p0}, Lyg/D;->e(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    iget-object v1, p0, LCg/k$c$b$a$a;->e:LBg/j;

    instance-of v5, p1, Lyg/p$c;

    if-eqz v5, :cond_6

    invoke-static {p1}, Lyg/p;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {p1, v1}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(LBg/j;)V

    :cond_5
    throw p1

    :cond_6
    iget-object v5, p0, LCg/k$c$b$a$a;->f:Leg/q;

    iget-object v6, p0, LCg/k$c$b$a$a;->g:Ljava/lang/Object;

    sget-object v7, LCg/s;->a:LEg/T;

    if-ne p1, v7, :cond_7

    move-object p1, v2

    :cond_7
    iput-object v1, p0, LCg/k$c$b$a$a;->b:Ljava/lang/Object;

    iput v4, p0, LCg/k$c$b$a$a;->c:I

    invoke-interface {v5, v6, p1, p0}, Leg/q;->E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_1
    iput-object v2, p0, LCg/k$c$b$a$a;->b:Ljava/lang/Object;

    iput v3, p0, LCg/k$c$b$a$a;->c:I

    invoke-interface {v1, p1, p0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_2
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final w(LFf/P0;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # LFf/P0;
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
            "LFf/P0;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, LCg/k$c$b$a$a;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, LCg/k$c$b$a$a;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, LCg/k$c$b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
