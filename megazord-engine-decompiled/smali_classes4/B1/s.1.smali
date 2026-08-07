.class public final LB1/s;
.super LE1/g0;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/common/api/internal/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/f<",
            "LE1/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f<",
            "LE1/q;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LE1/g0;-><init>()V

    iput-object p1, p0, LB1/s;->e:Lcom/google/android/gms/common/api/internal/f;

    return-void
.end method


# virtual methods
.method public final A0(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, LB1/s;->e:Lcom/google/android/gms/common/api/internal/f;

    new-instance v1, LB1/q;

    invoke-direct {v1, p0, p1}, LB1/q;-><init>(LB1/s;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/f;->d(Lcom/google/android/gms/common/api/internal/f$b;)V

    return-void
.end method

.method public final declared-synchronized O1()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LB1/s;->e:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final z(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, LB1/s;->e:Lcom/google/android/gms/common/api/internal/f;

    new-instance v1, LB1/r;

    invoke-direct {v1, p0, p1}, LB1/r;-><init>(LB1/s;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/f;->d(Lcom/google/android/gms/common/api/internal/f$b;)V

    return-void
.end method
