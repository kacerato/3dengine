.class public final Lcom/google/android/gms/internal/play_billing/I;
.super Lcom/google/android/gms/internal/play_billing/K;
.source "SourceFile"


# instance fields
.field public b:I

.field public final c:I

.field public final synthetic d:Lcom/google/android/gms/internal/play_billing/T;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/T;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/I;->d:Lcom/google/android/gms/internal/play_billing/T;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/K;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/I;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/T;->l()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/I;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/I;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/I;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/I;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/I;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/I;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/I;->d:Lcom/google/android/gms/internal/play_billing/T;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/T;->k(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
