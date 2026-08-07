.class final Lcom/android/billingclient/api/zzch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/zzcc;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/play_billing/x2;

.field private final zzc:Lcom/android/billingclient/api/zzcj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/x2;)V
    .locals 1

    new-instance v0, Lcom/android/billingclient/api/zzcj;

    invoke-direct {v0, p1}, Lcom/android/billingclient/api/zzcj;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/zzch;->zzc:Lcom/android/billingclient/api/zzcj;

    iput-object p2, p0, Lcom/android/billingclient/api/zzch;->zzb:Lcom/google/android/gms/internal/play_billing/x2;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/d2;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/play_billing/d2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/I2;->A()Lcom/google/android/gms/internal/play_billing/H2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzch;->zzb:Lcom/google/android/gms/internal/play_billing/x2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/H2;->l(Lcom/google/android/gms/internal/play_billing/x2;)Lcom/google/android/gms/internal/play_billing/H2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/H2;->j(Lcom/google/android/gms/internal/play_billing/d2;)Lcom/google/android/gms/internal/play_billing/H2;

    iget-object p1, p0, Lcom/android/billingclient/api/zzch;->zzc:Lcom/android/billingclient/api/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/q0;->e()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/I2;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/zzcj;->zza(Lcom/google/android/gms/internal/play_billing/I2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/B;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/play_billing/d2;I)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/play_billing/d2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzch;->zzb:Lcom/google/android/gms/internal/play_billing/x2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->f()Lcom/google/android/gms/internal/play_billing/q0;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/w2;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/w2;->j(I)Lcom/google/android/gms/internal/play_billing/w2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/q0;->e()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/x2;

    iput-object p2, p0, Lcom/android/billingclient/api/zzch;->zzb:Lcom/google/android/gms/internal/play_billing/x2;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzch;->zza(Lcom/google/android/gms/internal/play_billing/d2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BillingLogger"

    const-string v0, "Unable to log."

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/play_billing/h2;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/play_billing/h2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/I2;->A()Lcom/google/android/gms/internal/play_billing/H2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzch;->zzb:Lcom/google/android/gms/internal/play_billing/x2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/H2;->l(Lcom/google/android/gms/internal/play_billing/x2;)Lcom/google/android/gms/internal/play_billing/H2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/H2;->k(Lcom/google/android/gms/internal/play_billing/h2;)Lcom/google/android/gms/internal/play_billing/H2;

    iget-object p1, p0, Lcom/android/billingclient/api/zzch;->zzc:Lcom/android/billingclient/api/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/q0;->e()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/I2;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/zzcj;->zza(Lcom/google/android/gms/internal/play_billing/I2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/B;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/play_billing/h2;I)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/play_billing/h2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzch;->zzb:Lcom/google/android/gms/internal/play_billing/x2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/v0;->f()Lcom/google/android/gms/internal/play_billing/q0;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/w2;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/w2;->j(I)Lcom/google/android/gms/internal/play_billing/w2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/q0;->e()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/x2;

    iput-object p2, p0, Lcom/android/billingclient/api/zzch;->zzb:Lcom/google/android/gms/internal/play_billing/x2;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzch;->zzc(Lcom/google/android/gms/internal/play_billing/h2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BillingLogger"

    const-string v0, "Unable to log."

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/B;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/play_billing/P2;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/play_billing/P2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/I2;->A()Lcom/google/android/gms/internal/play_billing/H2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzch;->zzb:Lcom/google/android/gms/internal/play_billing/x2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/H2;->l(Lcom/google/android/gms/internal/play_billing/x2;)Lcom/google/android/gms/internal/play_billing/H2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/H2;->m(Lcom/google/android/gms/internal/play_billing/P2;)Lcom/google/android/gms/internal/play_billing/H2;

    iget-object p1, p0, Lcom/android/billingclient/api/zzch;->zzc:Lcom/android/billingclient/api/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/q0;->e()Lcom/google/android/gms/internal/play_billing/v0;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/I2;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/zzcj;->zza(Lcom/google/android/gms/internal/play_billing/I2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/B;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
