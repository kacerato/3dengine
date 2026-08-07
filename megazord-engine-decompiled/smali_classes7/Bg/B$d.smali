.class public final LBg/B$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/B;->p(LBg/i;LBg/i;Leg/q;)LBg/i;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n33#2,2:114\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n33#2,2:114\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LBg/i;

.field public final synthetic c:LBg/i;

.field public final synthetic d:Leg/q;


# direct methods
.method public constructor <init>(LBg/i;LBg/i;Leg/q;)V
    .locals 0

    iput-object p1, p0, LBg/B$d;->b:LBg/i;

    iput-object p2, p0, LBg/B$d;->c:LBg/i;

    iput-object p3, p0, LBg/B$d;->d:Leg/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 5
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

    iget-object v0, p0, LBg/B$d;->b:LBg/i;

    iget-object v1, p0, LBg/B$d;->c:LBg/i;

    const/4 v2, 0x2

    new-array v2, v2, [LBg/i;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {}, LBg/B;->a()Leg/a;

    move-result-object v0

    new-instance v1, LBg/B$g;

    iget-object v3, p0, LBg/B$d;->d:Leg/q;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, LBg/B$g;-><init>(Leg/q;LQf/f;)V

    invoke-static {p1, v2, v0, v1, p2}, LCg/k;->a(LBg/j;[LBg/i;Leg/a;Leg/q;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
