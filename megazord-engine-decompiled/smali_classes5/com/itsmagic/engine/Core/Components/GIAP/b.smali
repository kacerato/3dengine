.class public Lcom/itsmagic/engine/Core/Components/GIAP/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Core/Components/GIAP/b$a;,
        Lcom/itsmagic/engine/Core/Components/GIAP/b$b;
    }
.end annotation


# instance fields
.field public a:Lcom/android/billingclient/api/ProductDetails;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:F

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skuDetails"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->d:F

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->h:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->i:Z

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->a:Lcom/android/billingclient/api/ProductDetails;

    if-eqz p1, :cond_3

    const-string v1, "(?> \\(.+?\\))$"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v1, 0x412e848000000000L    # 1000000.0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v1

    double-to-float v0, v3

    iput v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->d:F

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "subs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->i:Z

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    new-instance v4, Lcom/itsmagic/engine/Core/Components/GIAP/b$a;

    invoke-direct {v4}, Lcom/itsmagic/engine/Core/Components/GIAP/b$a;-><init>()V

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/itsmagic/engine/Core/Components/GIAP/b$a;->a(Lcom/itsmagic/engine/Core/Components/GIAP/b$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    new-instance v6, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;

    invoke-direct {v6}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;-><init>()V

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/GIAP/b$a;->b(Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->a(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->b(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v1

    double-to-float v7, v7

    invoke-static {v6, v7}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->c(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;F)F

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->d(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result v7

    invoke-static {v6, v7}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->e(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;I)I

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result v5

    invoke-static {v6, v5}, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->f(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;I)I

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/c;->a(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/GIAP/d;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/d;->b()I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->g:I

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->g:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->d:F

    return v0
.end method

.method public f()Lcom/android/billingclient/api/ProductDetails;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->a:Lcom/android/billingclient/api/ProductDetails;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/b$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->h:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b;->i:Z

    return v0
.end method
