.class public final LBg/w$b;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/q;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapLatest$1"
    f = "Merge.kt"
    i = {}
    l = {
        0xc1,
        0xc1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/w;->b(LBg/i;Leg/p;)LBg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/q<",
        "LBg/j<",
        "-TR;>;TT;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1\n*L\n1#1,218:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1\n*L\n1#1,218:1\n*E\n"
    }
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "TT;",
            "LQf/f<",
            "-",
            "LBg/i<",
            "+TR;>;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/p;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-TT;-",
            "LQf/f<",
            "-",
            "LBg/i<",
            "+TR;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "LBg/w$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/w$b;->e:Leg/p;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LBg/j;

    check-cast p3, LQf/f;

    invoke-virtual {p0, p1, p2, p3}, LBg/w$b;->w(LBg/j;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

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

    iget v1, p0, LBg/w$b;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, LBg/w$b;->c:Ljava/lang/Object;

    check-cast v1, LBg/j;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LBg/w$b;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, LBg/j;

    iget-object p1, p0, LBg/w$b;->d:Ljava/lang/Object;

    iget-object v4, p0, LBg/w$b;->e:Leg/p;

    iput-object v1, p0, LBg/w$b;->c:Ljava/lang/Object;

    iput v3, p0, LBg/w$b;->b:I

    invoke-interface {v4, p1, p0}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, LBg/i;

    const/4 v3, 0x0

    iput-object v3, p0, LBg/w$b;->c:Ljava/lang/Object;

    iput v2, p0, LBg/w$b;->b:I

    invoke-static {v1, p1, p0}, LBg/k;->l0(LBg/j;LBg/i;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final w(LBg/j;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p1    # LBg/j;
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
            "LBg/j<",
            "-TR;>;TT;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, LBg/w$b;

    iget-object v1, p0, LBg/w$b;->e:Leg/p;

    invoke-direct {v0, v1, p3}, LBg/w$b;-><init>(Leg/p;LQf/f;)V

    iput-object p1, v0, LBg/w$b;->c:Ljava/lang/Object;

    iput-object p2, v0, LBg/w$b;->d:Ljava/lang/Object;

    sget-object p1, LFf/P0;->a:LFf/P0;

    invoke-virtual {v0, p1}, LBg/w$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p1, p0, LBg/w$b;->c:Ljava/lang/Object;

    check-cast p1, LBg/j;

    iget-object v0, p0, LBg/w$b;->d:Ljava/lang/Object;

    iget-object v1, p0, LBg/w$b;->e:Leg/p;

    invoke-interface {v1, v0, p0}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBg/i;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-static {p1, v0, p0}, LBg/k;->l0(LBg/j;LBg/i;LQf/f;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
