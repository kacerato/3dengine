.class public final Lcom/google/android/gms/internal/play_billing/K1;
.super Lcom/google/android/gms/internal/play_billing/I1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/I1;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/J1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/J1;->a()I

    move-result p1

    return p1
.end method

.method public final synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/J1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/J1;->b()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/play_billing/v0;

    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/v0;->zzc:Lcom/google/android/gms/internal/play_billing/J1;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J1;->c()Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J1;->f()Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/play_billing/v0;->zzc:Lcom/google/android/gms/internal/play_billing/J1;

    :cond_0
    return-object v0
.end method

.method public final synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/v0;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/v0;->zzc:Lcom/google/android/gms/internal/play_billing/J1;

    return-object p1
.end method

.method public final bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J1;->c()Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/J1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/J1;->c()Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/J1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/play_billing/J1;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/J1;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/J1;->e(Lcom/google/android/gms/internal/play_billing/J1;Lcom/google/android/gms/internal/play_billing/J1;)Lcom/google/android/gms/internal/play_billing/J1;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/play_billing/J1;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/J1;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/J1;->d(Lcom/google/android/gms/internal/play_billing/J1;)Lcom/google/android/gms/internal/play_billing/J1;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final bridge synthetic f(Ljava/lang/Object;IJ)V
    .locals 0

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/play_billing/J1;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/J1;->j(ILjava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/v0;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/v0;->zzc:Lcom/google/android/gms/internal/play_billing/J1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/J1;->h()V

    return-void
.end method

.method public final synthetic h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/v0;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/J1;

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/v0;->zzc:Lcom/google/android/gms/internal/play_billing/J1;

    return-void
.end method

.method public final synthetic i(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/Z1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/play_billing/J1;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/J1;->k(Lcom/google/android/gms/internal/play_billing/Z1;)V

    return-void
.end method

.method public final synthetic j(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/Z1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/play_billing/J1;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/J1;->l(Lcom/google/android/gms/internal/play_billing/Z1;)V

    return-void
.end method
