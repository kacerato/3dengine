.class public final LBg/B$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/B;->g([LBg/i;Leg/p;)LBg/i;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n238#2,2:114\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,113:1\n238#2,2:114\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:[LBg/i;

.field public final synthetic c:Leg/p;


# direct methods
.method public constructor <init>([LBg/i;Leg/p;)V
    .locals 0

    iput-object p1, p0, LBg/B$e;->b:[LBg/i;

    iput-object p2, p0, LBg/B$e;->c:Leg/p;

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

    iget-object v0, p0, LBg/B$e;->b:[LBg/i;

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v1, LBg/B$h;

    iget-object v2, p0, LBg/B$e;->b:[LBg/i;

    invoke-direct {v1, v2}, LBg/B$h;-><init>([LBg/i;)V

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v2, LBg/B$i;

    iget-object v3, p0, LBg/B$e;->c:Leg/p;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LBg/B$i;-><init>(Leg/p;LQf/f;)V

    invoke-static {p1, v0, v1, v2, p2}, LCg/k;->a(LBg/j;[LBg/i;Leg/a;Leg/q;LQf/f;)Ljava/lang/Object;

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
    .locals 5
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

    new-instance v0, LBg/B$e$a;

    invoke-direct {v0, p0, p2}, LBg/B$e$a;-><init>(LBg/B$e;LQf/f;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    iget-object v0, p0, LBg/B$e;->b:[LBg/i;

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v1, LBg/B$h;

    iget-object v2, p0, LBg/B$e;->b:[LBg/i;

    invoke-direct {v1, v2}, LBg/B$h;-><init>([LBg/i;)V

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    new-instance v2, LBg/B$i;

    iget-object v3, p0, LBg/B$e;->c:Leg/p;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LBg/B$i;-><init>(Leg/p;LQf/f;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-static {p1, v0, v1, v2, p2}, LCg/k;->a(LBg/j;[LBg/i;Leg/a;Leg/q;LQf/f;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
