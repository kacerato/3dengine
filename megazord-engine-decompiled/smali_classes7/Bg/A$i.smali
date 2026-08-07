.class public final LBg/A$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/A;->i(LBg/i;Ljava/lang/Object;Leg/q;)LBg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LBg/i<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,113:1\n106#2,7:114\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,113:1\n106#2,7:114\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:LBg/i;

.field public final synthetic d:Leg/q;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LBg/i;Leg/q;)V
    .locals 0

    iput-object p1, p0, LBg/A$i;->b:Ljava/lang/Object;

    iput-object p2, p0, LBg/A$i;->c:LBg/i;

    iput-object p3, p0, LBg/A$i;->d:Leg/q;

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
            "-TR;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LBg/A$i$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/A$i$a;

    iget v1, v0, LBg/A$i$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/A$i$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/A$i$a;

    invoke-direct {v0, p0, p2}, LBg/A$i$a;-><init>(LBg/A$i;LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/A$i$a;->b:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/A$i$a;->c:I

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
    iget-object p1, v0, LBg/A$i$a;->g:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/m0$h;

    iget-object v2, v0, LBg/A$i$a;->f:Ljava/lang/Object;

    check-cast v2, LBg/j;

    iget-object v4, v0, LBg/A$i$a;->e:Ljava/lang/Object;

    check-cast v4, LBg/A$i;

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/m0$h;

    invoke-direct {p2}, Lkotlin/jvm/internal/m0$h;-><init>()V

    iget-object v2, p0, LBg/A$i;->b:Ljava/lang/Object;

    iput-object v2, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    iput-object p0, v0, LBg/A$i$a;->e:Ljava/lang/Object;

    iput-object p1, v0, LBg/A$i$a;->f:Ljava/lang/Object;

    iput-object p2, v0, LBg/A$i$a;->g:Ljava/lang/Object;

    iput v4, v0, LBg/A$i$a;->c:I

    invoke-interface {p1, v2, v0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    :goto_1
    iget-object p2, v4, LBg/A$i;->c:LBg/i;

    new-instance v5, LBg/A$j;

    iget-object v4, v4, LBg/A$i;->d:Leg/q;

    invoke-direct {v5, p1, v4, v2}, LBg/A$j;-><init>(Lkotlin/jvm/internal/m0$h;Leg/q;LBg/j;)V

    const/4 p1, 0x0

    iput-object p1, v0, LBg/A$i$a;->e:Ljava/lang/Object;

    iput-object p1, v0, LBg/A$i$a;->f:Ljava/lang/Object;

    iput-object p1, v0, LBg/A$i$a;->g:Ljava/lang/Object;

    iput v3, v0, LBg/A$i$a;->c:I

    invoke-interface {p2, v5, v0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
