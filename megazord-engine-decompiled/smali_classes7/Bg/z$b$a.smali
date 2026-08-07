.class public final LBg/z$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/z$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharingDeferred$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "LBg/E<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lwg/S;

.field public final synthetic d:Lwg/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/y<",
            "LBg/U<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$h;Lwg/S;Lwg/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$h<",
            "LBg/E<",
            "TT;>;>;",
            "Lwg/S;",
            "Lwg/y<",
            "LBg/U<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/z$b$a;->b:Lkotlin/jvm/internal/m0$h;

    iput-object p2, p0, LBg/z$b$a;->c:Lwg/S;

    iput-object p3, p0, LBg/z$b$a;->d:Lwg/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 3
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

    iget-object p2, p0, LBg/z$b$a;->b:Lkotlin/jvm/internal/m0$h;

    iget-object p2, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast p2, LBg/E;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, LBg/E;->setValue(Ljava/lang/Object;)V

    sget-object p2, LFf/P0;->a:LFf/P0;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    iget-object p2, p0, LBg/z$b$a;->c:Lwg/S;

    iget-object v0, p0, LBg/z$b$a;->b:Lkotlin/jvm/internal/m0$h;

    iget-object v1, p0, LBg/z$b$a;->d:Lwg/y;

    invoke-static {p1}, LBg/W;->a(Ljava/lang/Object;)LBg/E;

    move-result-object p1

    new-instance v2, LBg/G;

    invoke-interface {p2}, Lwg/S;->getCoroutineContext()LQf/j;

    move-result-object p2

    invoke-static {p2}, Lwg/N0;->B(LQf/j;)Lwg/K0;

    move-result-object p2

    invoke-direct {v2, p1, p2}, LBg/G;-><init>(LBg/U;Lwg/K0;)V

    invoke-interface {v1, v2}, Lwg/y;->w(Ljava/lang/Object;)Z

    iput-object p1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    :cond_1
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
