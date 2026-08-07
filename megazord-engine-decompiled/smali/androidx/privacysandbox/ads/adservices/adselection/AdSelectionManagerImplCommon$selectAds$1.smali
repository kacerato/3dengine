.class final Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;
.super LTf/d;
.source "SourceFile"


# annotations
.annotation runtime LTf/f;
    c = "androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon"
    f = "AdSelectionManagerImplCommon.kt"
    i = {}
    l = {
        0x2c
    }
    m = "selectAds$suspendImpl"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->selectAds$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;LQf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;


# direct methods
.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;",
            "LQf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;->this$0:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;

    invoke-direct {p0, p2}, LTf/d;-><init>(LQf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;->label:I

    iget-object p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon$selectAds$1;->this$0:Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;->selectAds$suspendImpl(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
