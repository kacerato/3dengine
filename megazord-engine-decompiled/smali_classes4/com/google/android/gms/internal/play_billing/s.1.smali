.class public final Lcom/google/android/gms/internal/play_billing/s;
.super Lcom/google/android/gms/internal/play_billing/n;
.source "SourceFile"


# instance fields
.field public final transient d:Lcom/google/android/gms/internal/play_billing/m;

.field public final transient e:Lcom/google/android/gms/internal/play_billing/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/m;Lcom/google/android/gms/internal/play_billing/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/n;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/s;->d:Lcom/google/android/gms/internal/play_billing/m;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/s;->e:Lcom/google/android/gms/internal/play_billing/j;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;I)I
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/s;->e:Lcom/google/android/gms/internal/play_billing/j;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/play_billing/g;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/s;->d:Lcom/google/android/gms/internal/play_billing/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Lcom/google/android/gms/internal/play_billing/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/s;->e:Lcom/google/android/gms/internal/play_billing/j;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/play_billing/w;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/s;->e:Lcom/google/android/gms/internal/play_billing/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/j;->n(I)Lcom/google/android/gms/internal/play_billing/x;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/s;->e:Lcom/google/android/gms/internal/play_billing/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/j;->n(I)Lcom/google/android/gms/internal/play_billing/x;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/s;->d:Lcom/google/android/gms/internal/play_billing/m;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
