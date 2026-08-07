.class public final LB1/y;
.super LB1/k;
.source "SourceFile"


# instance fields
.field public e:Lcom/google/android/gms/common/api/internal/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LB1/k;-><init>()V

    iput-object p1, p0, LB1/y;->e:Lcom/google/android/gms/common/api/internal/b$b;

    return-void
.end method


# virtual methods
.method public final K1(I[Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "LocationClientImpl"

    const-string v0, "Unexpected call to onAddGeofencesResult"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final g(I)V
    .locals 2

    iget-object v0, p0, LB1/y;->e:Lcom/google/android/gms/common/api/internal/b$b;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "LocationClientImpl"

    const-string v1, "onRemoveGeofencesResult called multiple times"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    invoke-static {p1}, LE1/y;->a(I)I

    move-result p1

    invoke-static {p1}, LE1/y;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, LB1/y;->e:Lcom/google/android/gms/common/api/internal/b$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/b$b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, LB1/y;->e:Lcom/google/android/gms/common/api/internal/b$b;

    return-void
.end method

.method public final j0(ILandroid/app/PendingIntent;)V
    .locals 0

    invoke-virtual {p0, p1}, LB1/y;->g(I)V

    return-void
.end method

.method public final s(I[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, LB1/y;->g(I)V

    return-void
.end method
