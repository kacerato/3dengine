.class public final LBg/t$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/t;->h(LBg/i;Leg/q;)LBg/i;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,113:1\n51#2,5:114\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LBg/i;

.field public final synthetic c:Leg/q;


# direct methods
.method public constructor <init>(LBg/i;Leg/q;)V
    .locals 0

    iput-object p1, p0, LBg/t$g;->b:LBg/i;

    iput-object p2, p0, LBg/t$g;->c:Leg/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 3
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

    iget-object v0, p0, LBg/t$g;->b:LBg/i;

    new-instance v1, LBg/t$h;

    iget-object v2, p0, LBg/t$g;->c:Leg/q;

    invoke-direct {v1, v2, p1}, LBg/t$h;-><init>(Leg/q;LBg/j;)V

    invoke-interface {v0, v1, p2}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public d(LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 3
    .param p1    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance v0, LBg/t$g$a;

    invoke-direct {v0, p0, p2}, LBg/t$g$a;-><init>(LBg/t$g;LQf/f;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    iget-object v0, p0, LBg/t$g;->b:LBg/i;

    new-instance v1, LBg/t$h;

    iget-object v2, p0, LBg/t$g;->c:Leg/q;

    invoke-direct {v1, v2, p1}, LBg/t$h;-><init>(Leg/q;LBg/j;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {v0, v1, p2}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
