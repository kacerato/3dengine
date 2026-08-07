.class public abstract Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;->Companion:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "ClassVerificationFailure"
        }
    .end annotation

    .annotation runtime Ldg/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;->Companion:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;->obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getAdId(LQf/f;)Ljava/lang/Object;
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_AD_ID"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adid/AdId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
