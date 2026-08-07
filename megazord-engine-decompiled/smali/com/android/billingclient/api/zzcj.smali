.class final Lcom/android/billingclient/api/zzcj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Z

.field private zzb:Ll0/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lp0/w;->f(Landroid/content/Context;)V

    invoke-static {}, Lp0/w;->c()Lp0/w;

    move-result-object p1

    sget-object v0, Ln0/a;->j:Ln0/a;

    invoke-virtual {p1, v0}, Lp0/w;->h(Lp0/g;)Ll0/i;

    move-result-object p1

    const-string v0, "PLAY_BILLING_LIBRARY"

    const-class v1, Lcom/google/android/gms/internal/play_billing/I2;

    const-string v2, "proto"

    invoke-static {v2}, Ll0/c;->b(Ljava/lang/String;)Ll0/c;

    move-result-object v2

    new-instance v3, Lcom/android/billingclient/api/zzci;

    invoke-direct {v3}, Lcom/android/billingclient/api/zzci;-><init>()V

    invoke-interface {p1, v0, v1, v2, v3}, Ll0/i;->a(Ljava/lang/String;Ljava/lang/Class;Ll0/c;Ll0/g;)Ll0/h;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/zzcj;->zzb:Ll0/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzcj;->zza:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/I2;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/billingclient/api/zzcj;->zza:Z

    const-string v1, "BillingLogger"

    if-eqz v0, :cond_0

    const-string p1, "Skipping logging since initialization failed."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/B;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzcj;->zzb:Ll0/h;

    invoke-static {p1}, Ll0/d;->e(Ljava/lang/Object;)Ll0/d;

    move-result-object p1

    invoke-interface {v0, p1}, Ll0/h;->b(Ll0/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "logging failed."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/B;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
