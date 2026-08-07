.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->w(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "billingResult",
            "purchaseToken"
        }
    .end annotation

    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->k(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->r()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "consumed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->c()I

    move-result p1

    const/4 v1, 0x5

    if-ge p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consume error, trying again "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->p(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->j(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V

    goto :goto_0

    :cond_1
    const-string p1, "consume error, but max tries reached"

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "Null purchase consume response"

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->p(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
