.class public final Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerApi33Ext5Impl;
.super Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;
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
    version = 0x5
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/privacysandbox/ads/adservices/topics/p;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getSystemService\u2026opicsManager::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/topics/q;->a(Ljava/lang/Object;)Landroid/adservices/topics/TopicsManager;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerImplCommon;-><init>(Landroid/adservices/topics/TopicsManager;)V

    return-void
.end method


# virtual methods
.method public convertRequest$ads_adservices_release(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;)Landroid/adservices/topics/GetTopicsRequest;
    .locals 1
    .param p1    # Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequestHelper;->INSTANCE:Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequestHelper;

    invoke-virtual {v0, p1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequestHelper;->convertRequestWithRecordObservation$ads_adservices_release(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;)Landroid/adservices/topics/GetTopicsRequest;

    move-result-object p1

    return-object p1
.end method
