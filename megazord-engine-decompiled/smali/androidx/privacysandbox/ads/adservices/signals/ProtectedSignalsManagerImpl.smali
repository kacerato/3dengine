.class public Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;
.super Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "ClassVerificationFailure"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresExtension;
    extension = 0xf4240
    version = 0xc
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext12OptIn;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProtectedSignalsManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtectedSignalsManagerImpl.kt\nandroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,55:1\n314#2,11:56\n*S KotlinDebug\n*F\n+ 1 ProtectedSignalsManagerImpl.kt\nandroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl\n*L\n40#1:56,11\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nProtectedSignalsManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtectedSignalsManagerImpl.kt\nandroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,55:1\n314#2,11:56\n*S KotlinDebug\n*F\n+ 1 ProtectedSignalsManagerImpl.kt\nandroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl\n*L\n40#1:56,11\n*E\n"
    }
.end annotation


# instance fields
.field private final protectedSignalsManager:Landroid/adservices/signals/ProtectedSignalsManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/adservices/signals/ProtectedSignalsManager;)V
    .locals 1
    .param p1    # Landroid/adservices/signals/ProtectedSignalsManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "protectedSignalsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->protectedSignalsManager:Landroid/adservices/signals/ProtectedSignalsManager;

    return-void
.end method

.method public static final synthetic access$convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProtectedSignalsManager$p(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;)Landroid/adservices/signals/ProtectedSignalsManager;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->protectedSignalsManager:Landroid/adservices/signals/ProtectedSignalsManager;

    return-object p0
.end method

.method private final convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;
    .locals 1

    invoke-static {}, Le/e;->a()V

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;->getUpdateUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Le/d;->a(Landroid/net/Uri;)Landroid/adservices/signals/UpdateSignalsRequest$Builder;

    move-result-object p1

    invoke-static {p1}, Le/c;->a(Landroid/adservices/signals/UpdateSignalsRequest$Builder;)Landroid/adservices/signals/UpdateSignalsRequest;

    move-result-object p1

    const-string v0, "Builder(request.updateUri).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic updateSignals$suspendImpl(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;LQf/f;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_PROTECTED_SIGNALS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;",
            "Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lwg/q;

    invoke-static {p2}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lwg/q;-><init>(LQf/f;I)V

    invoke-virtual {v0}, Lwg/q;->K()V

    invoke-static {p0}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->access$getProtectedSignalsManager$p(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;)Landroid/adservices/signals/ProtectedSignalsManager;

    move-result-object v1

    invoke-static {p0, p1}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->access$convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;

    move-result-object p0

    new-instance p1, Landroidx/privacysandbox/ads/adservices/adid/h;

    invoke-direct {p1}, Landroidx/privacysandbox/ads/adservices/adid/h;-><init>()V

    invoke-static {v0}, Landroidx/core/os/OutcomeReceiverKt;->asOutcomeReceiver(LQf/f;)Landroid/os/OutcomeReceiver;

    move-result-object v2

    invoke-static {v1, p0, p1, v2}, Le/b;->a(Landroid/adservices/signals/ProtectedSignalsManager;Landroid/adservices/signals/UpdateSignalsRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v0}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, LTf/h;->c(LQf/f;)V

    :cond_0
    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method


# virtual methods
.method public updateSignals(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_PROTECTED_SIGNALS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->updateSignals$suspendImpl(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
