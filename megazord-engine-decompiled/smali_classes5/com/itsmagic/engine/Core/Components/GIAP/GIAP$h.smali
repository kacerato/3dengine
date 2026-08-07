.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->t(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

.field public final synthetic b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$purchase",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$h;->a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$h;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "billingResult"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$h;->a:Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->p(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$h;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;

    invoke-interface {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$h;->b:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;

    invoke-interface {p1}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$r;->a()V

    :goto_0
    return-void
.end method
