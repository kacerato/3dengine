.class final Lcom/android/billingclient/api/zzbq;
.super Lcom/google/android/gms/internal/play_billing/Z2;
.source "SourceFile"


# instance fields
.field final zza:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

.field final zzb:Lcom/android/billingclient/api/zzcc;

.field final zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/zzcc;ILcom/android/billingclient/api/zzbp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/Z2;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbq;->zza:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbq;->zzb:Lcom/android/billingclient/api/zzcc;

    iput p3, p0, Lcom/android/billingclient/api/zzbq;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x17

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/billingclient/api/zzbq;->zzb:Lcom/android/billingclient/api/zzcc;

    sget-object v1, Lcom/android/billingclient/api/zzce;->zzj:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x5c

    invoke-static {v2, v0, v1}, Lcom/android/billingclient/api/zzcb;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/d2;

    move-result-object v0

    iget v2, p0, Lcom/android/billingclient/api/zzbq;->zzc:I

    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/zzcc;->zzb(Lcom/google/android/gms/internal/play_billing/d2;I)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzbq;->zza:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    invoke-interface {p1, v1}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->onExternalOfferAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_0
    const-string v1, "BillingClient"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/B;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/B;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/billingclient/api/zzce;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExternalOfferAvailableAsync() failed. Response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/B;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/billingclient/api/zzbq;->zzb:Lcom/android/billingclient/api/zzcc;

    invoke-static {v0, v0, p1}, Lcom/android/billingclient/api/zzcb;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/d2;

    move-result-object v0

    iget v2, p0, Lcom/android/billingclient/api/zzbq;->zzc:I

    invoke-interface {v1, v0, v2}, Lcom/android/billingclient/api/zzcc;->zzb(Lcom/google/android/gms/internal/play_billing/d2;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbq;->zza:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    invoke-interface {v0, p1}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->onExternalOfferAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
