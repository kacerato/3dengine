.class public final Lcom/google/android/gms/internal/play_billing/i0;
.super Lcom/google/android/gms/internal/play_billing/h0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/s0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/r0;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/r0;->zzb:Lcom/google/android/gms/internal/play_billing/l0;

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/l0;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/r0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/r0;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/r0;->zzb:Lcom/google/android/gms/internal/play_billing/l0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/l0;->g()V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/play_billing/Z1;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/s0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final f(Lcom/google/android/gms/internal/play_billing/f1;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/play_billing/r0;

    return p1
.end method
