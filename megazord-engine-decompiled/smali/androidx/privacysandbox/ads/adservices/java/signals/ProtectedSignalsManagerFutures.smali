.class public abstract Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$Companion;,
        Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$JavaImpl;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures;->Companion:Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final from(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ldg/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures;->Companion:Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures$Companion;->from(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/java/signals/ProtectedSignalsManagerFutures;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract updateSignalsAsync(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Lcom/google/common/util/concurrent/Z;
    .param p1    # Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_PROTECTED_SIGNALS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
