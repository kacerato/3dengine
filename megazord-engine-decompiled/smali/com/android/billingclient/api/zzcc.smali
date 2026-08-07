.class interface abstract Lcom/android/billingclient/api/zzcc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/play_billing/m;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v1, Lcom/google/android/gms/internal/play_billing/r2;->zzb:Lcom/google/android/gms/internal/play_billing/r2;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/r2;->zzc:Lcom/google/android/gms/internal/play_billing/r2;

    const-string v4, "com.android.vending.billing.ALTERNATIVE_BILLING"

    sget-object v5, Lcom/google/android/gms/internal/play_billing/r2;->zzd:Lcom/google/android/gms/internal/play_billing/r2;

    const-string v0, "com.android.vending.billing.PURCHASES_UPDATED"

    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/m;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/m;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/zzcc;->zza:Lcom/google/android/gms/internal/play_billing/m;

    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/play_billing/d2;)V
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/play_billing/d2;I)V
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/play_billing/h2;)V
.end method

.method public abstract zzd(Lcom/google/android/gms/internal/play_billing/h2;I)V
.end method

.method public abstract zze(Lcom/google/android/gms/internal/play_billing/P2;)V
.end method
