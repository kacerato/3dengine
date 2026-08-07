.class public final LB1/A;
.super LB1/f0;
.source "SourceFile"


# instance fields
.field public final T:LB1/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;Ljava/lang/String;LX0/i;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, LB1/f0;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;Ljava/lang/String;LX0/i;)V

    new-instance p2, LB1/w;

    iget-object p3, p0, LB1/f0;->S:LB1/I;

    invoke-direct {p2, p1, p3}, LB1/w;-><init>(Landroid/content/Context;LB1/I;)V

    iput-object p2, p0, LB1/A;->T:LB1/w;

    return-void
.end method


# virtual methods
.method public final A0(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;LB1/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v0, p1, p2, p3}, LB1/w;->g(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;LB1/j;)V

    return-void
.end method

.method public final B0(Lcom/google/android/gms/common/api/internal/f$a;LB1/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f$a<",
            "LE1/r;",
            ">;",
            "LB1/j;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v0, p1, p2}, LB1/w;->h(Lcom/google/android/gms/common/api/internal/f$a;LB1/j;)V

    return-void
.end method

.method public final C0(Landroid/app/PendingIntent;LB1/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v0, p1, p2}, LB1/w;->j(Landroid/app/PendingIntent;LB1/j;)V

    return-void
.end method

.method public final D0(Lcom/google/android/gms/common/api/internal/f$a;LB1/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/f$a<",
            "LE1/q;",
            ">;",
            "LB1/j;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v0, p1, p2}, LB1/w;->i(Lcom/google/android/gms/common/api/internal/f$a;LB1/j;)V

    return-void
.end method

.method public final E0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v0, p1}, LB1/w;->k(Z)V

    return-void
.end method

.method public final F0(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v0, p1}, LB1/w;->l(Landroid/location/Location;)V

    return-void
.end method

.method public final G0(LB1/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v0, p1}, LB1/w;->m(LB1/j;)V

    return-void
.end method

.method public final H0(LE1/t;Lcom/google/android/gms/common/api/internal/b$b;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LE1/t;",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "LE1/v;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->y()V

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    const-string v2, "locationSettingsRequest can\'t be null nor empty."

    invoke-static {v1, v2}, LX0/A;->b(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    move p3, v0

    :cond_1
    const-string v0, "listener can\'t be null."

    invoke-static {p3, v0}, LX0/A;->b(ZLjava/lang/Object;)V

    new-instance p3, LB1/z;

    invoke-direct {p3, p2}, LB1/z;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p0}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, LB1/n;

    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, LB1/n;->I1(LE1/t;LB1/p;Ljava/lang/String;)V

    return-void
.end method

.method public final I0(JLandroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->y()V

    invoke-static {p3}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "detectionIntervalMillis must be >= 0"

    invoke-static {v0, v2}, LX0/A;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LB1/n;

    invoke-interface {v0, p1, p2, v1, p3}, LB1/n;->c1(JZLandroid/app/PendingIntent;)V

    return-void
.end method

.method public final J0(LE1/f;Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LE1/f;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->y()V

    const-string v0, "activityTransitionRequest must be specified."

    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p3, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/j;

    invoke-direct {v0, p3}, Lcom/google/android/gms/common/api/internal/j;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p0}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, LB1/n;

    invoke-interface {p3, p1, p2, v0}, LB1/n;->Z(LE1/f;Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/e;)V

    return-void
.end method

.method public final K0(Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->y()V

    const-string v0, "ResultHolder not provided."

    invoke-static {p2, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/j;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/api/internal/j;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p0}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, LB1/n;

    invoke-interface {p2, p1, v0}, LB1/n;->r(Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/e;)V

    return-void
.end method

.method public final L0(Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->y()V

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LB1/n;

    invoke-interface {v0, p1}, LB1/n;->M0(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final M0(Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->y()V

    const-string v0, "PendingIntent must be specified."

    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p2, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/j;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/api/internal/j;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p0}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, LB1/n;

    invoke-interface {p2, p1, v0}, LB1/n;->D(Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/e;)V

    return-void
.end method

.method public final N0(LE1/p;Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LE1/p;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->y()V

    const-string v0, "geofencingRequest can\'t be null."

    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p3, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LB1/x;

    invoke-direct {v0, p3}, LB1/x;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p0}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, LB1/n;

    invoke-interface {p3, p1, p2, v0}, LB1/n;->N0(LE1/p;Landroid/app/PendingIntent;LB1/l;)V

    return-void
.end method

.method public final O0(LE1/y0;Lcom/google/android/gms/common/api/internal/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LE1/y0;",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->y()V

    const-string v0, "removeGeofencingRequest can\'t be null."

    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p2, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LB1/y;

    invoke-direct {v0, p2}, LB1/y;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p0}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, LB1/n;

    invoke-interface {p2, p1, v0}, LB1/n;->a1(LE1/y0;LB1/l;)V

    return-void
.end method

.method public final P0(Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/b$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->y()V

    const-string v0, "PendingIntent must be specified."

    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ResultHolder not provided."

    invoke-static {p2, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LB1/y;

    invoke-direct {v0, p2}, LB1/y;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p0}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, LB1/n;

    invoke-virtual {p0}, LX0/f;->G()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v0, v1}, LB1/n;->R(Landroid/app/PendingIntent;LB1/l;Ljava/lang/String;)V

    return-void
.end method

.method public final Q0(Ljava/util/List;Lcom/google/android/gms/common/api/internal/b$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->y()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "geofenceRequestIds can\'t be null nor empty."

    invoke-static {v1, v2}, LX0/A;->b(ZLjava/lang/Object;)V

    const-string v1, "ResultHolder not provided."

    invoke-static {p2, v1}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-instance v0, LB1/y;

    invoke-direct {v0, p2}, LB1/y;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p0}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, LB1/n;

    invoke-virtual {p0}, LX0/f;->G()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v0, v1}, LB1/n;->K([Ljava/lang/String;LB1/l;Ljava/lang/String;)V

    return-void
.end method

.method public final R0(Ljava/lang/String;)Landroid/location/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LX0/f;->u()[LS0/e;

    move-result-object v0

    sget-object v1, LE1/Z0;->c:LS0/e;

    invoke-static {v0, v1}, Lk1/b;->d([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v0, p1}, LB1/w;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, LB1/A;->T:LB1/w;

    invoke-virtual {p1}, LB1/w;->b()Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public final b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, LB1/A;->T:LB1/w;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, LX0/f;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v1}, LB1/w;->n()V

    iget-object v1, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v1}, LB1/w;->o()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, LX0/f;->p()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final w0()Lcom/google/android/gms/location/LocationAvailability;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v0}, LB1/w;->c()Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v0

    return-object v0
.end method

.method public final x0(LB1/C;Lcom/google/android/gms/common/api/internal/f;LB1/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB1/C;",
            "Lcom/google/android/gms/common/api/internal/f<",
            "LE1/q;",
            ">;",
            "LB1/j;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/A;->T:LB1/w;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v1, p1, p2, p3}, LB1/w;->e(LB1/C;Lcom/google/android/gms/common/api/internal/f;LB1/j;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final y0(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/f;LB1/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/common/api/internal/f<",
            "LE1/r;",
            ">;",
            "LB1/j;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/A;->T:LB1/w;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v1, p1, p2, p3}, LB1/w;->d(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/f;LB1/j;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final z0(LB1/C;Landroid/app/PendingIntent;LB1/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/A;->T:LB1/w;

    invoke-virtual {v0, p1, p2, p3}, LB1/w;->f(LB1/C;Landroid/app/PendingIntent;LB1/j;)V

    return-void
.end method
