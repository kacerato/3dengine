.class public final LBg/A$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/A;->l(LBg/i;)LBg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBg/j;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$1$1\n+ 2 FlowExceptions.common.kt\nkotlinx/coroutines/flow/internal/FlowExceptions_commonKt\n*L\n1#1,136:1\n32#2,4:137\n*S KotlinDebug\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$1$1\n*L\n71#1:137,4\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$1$1\n+ 2 FlowExceptions.common.kt\nkotlinx/coroutines/flow/internal/FlowExceptions_commonKt\n*L\n1#1,136:1\n32#2,4:137\n*S KotlinDebug\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt$withIndex$1$1\n*L\n71#1:137,4\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "LHf/d0<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lkotlin/jvm/internal/m0$f;


# direct methods
.method public constructor <init>(LBg/j;Lkotlin/jvm/internal/m0$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "-",
            "LHf/d0<",
            "+TT;>;>;",
            "Lkotlin/jvm/internal/m0$f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LBg/A$n;->b:LBg/j;

    iput-object p2, p0, LBg/A$n;->c:Lkotlin/jvm/internal/m0$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 7
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LBg/A$n$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/A$n$a;

    iget v1, v0, LBg/A$n$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/A$n$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/A$n$a;

    invoke-direct {v0, p0, p2}, LBg/A$n$a;-><init>(LBg/A$n;LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/A$n$a;->b:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/A$n$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, LBg/A$n;->b:LBg/j;

    new-instance v2, LHf/d0;

    iget-object v4, p0, LBg/A$n;->c:Lkotlin/jvm/internal/m0$f;

    iget v5, v4, Lkotlin/jvm/internal/m0$f;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lkotlin/jvm/internal/m0$f;->b:I

    if-ltz v5, :cond_4

    invoke-direct {v2, v5, p1}, LHf/d0;-><init>(ILjava/lang/Object;)V

    iput v3, v0, LBg/A$n$a;->d:I

    invoke-interface {p2, v2, v0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Index overflow has happened"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
