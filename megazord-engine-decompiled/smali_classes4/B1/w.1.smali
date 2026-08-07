.class public final LB1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LB1/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LB1/I<",
            "LB1/n;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public c:Z

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/f$a<",
            "LE1/r;",
            ">;",
            "LB1/v;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/f$a;",
            "LB1/t;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/f$a<",
            "LE1/q;",
            ">;",
            "LB1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;LB1/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LB1/I<",
            "LB1/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LB1/w;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LB1/w;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LB1/w;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LB1/w;->f:Ljava/util/Map;

    iput-object p1, p0, LB1/w;->b:Landroid/content/Context;

    iput-object p2, p0, LB1/w;->a:LB1/I;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    invoke-virtual {v0}, LB1/e0;->a()LB1/n;

    move-result-object v0

    invoke-interface {v0, p1}, LB1/n;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method public final b()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    invoke-virtual {v0}, LB1/e0;->a()LB1/n;

    move-result-object v0

    invoke-interface {v0}, LB1/n;->c()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/location/LocationAvailability;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    invoke-virtual {v0}, LB1/e0;->a()LB1/n;

    move-result-object v0

    iget-object v1, p0, LB1/w;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LB1/n;->E0(Ljava/lang/String;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/f;LB1/j;)V
    .locals 11
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

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/f;->b()Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v7, v1

    goto :goto_1

    :cond_0
    iget-object v2, p0, LB1/w;->d:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, LB1/w;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LB1/v;

    if-nez v3, :cond_1

    new-instance v3, LB1/v;

    invoke-direct {v3, p2}, LB1/v;-><init>(Lcom/google/android/gms/common/api/internal/f;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p2, p0, LB1/w;->d:Ljava/util/Map;

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v3

    :goto_1
    if-nez v7, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, LB1/w;->a:LB1/I;

    check-cast p2, LB1/e0;

    invoke-virtual {p2}, LB1/e0;->a()LB1/n;

    move-result-object p2

    invoke-static {v1, p1}, LB1/C;->b(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)LB1/C;

    move-result-object v6

    new-instance p1, LB1/E;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    move-object v4, p1

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, LB1/E;-><init>(ILB1/C;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {p2, p1}, LB1/n;->n1(LB1/E;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(LB1/C;Lcom/google/android/gms/common/api/internal/f;LB1/j;)V
    .locals 10
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

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/f;->b()Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :goto_0
    move-object v8, p2

    goto :goto_2

    :cond_0
    iget-object v1, p0, LB1/w;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, LB1/w;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB1/s;

    if-nez v2, :cond_1

    new-instance v2, LB1/s;

    invoke-direct {v2, p2}, LB1/s;-><init>(Lcom/google/android/gms/common/api/internal/f;)V

    :cond_1
    move-object p2, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :goto_1
    iget-object v2, p0, LB1/w;->f:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    if-nez v8, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, LB1/w;->a:LB1/I;

    check-cast p2, LB1/e0;

    invoke-virtual {p2}, LB1/e0;->a()LB1/n;

    move-result-object p2

    new-instance v0, LB1/E;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    move-object v3, v0

    move-object v5, p1

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, LB1/E;-><init>(ILB1/C;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {p2, v0}, LB1/n;->n1(LB1/E;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f(LB1/C;Landroid/app/PendingIntent;LB1/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    invoke-virtual {v0}, LB1/e0;->a()LB1/n;

    move-result-object v0

    invoke-static {p1, p2, p3}, LB1/E;->B(LB1/C;Landroid/app/PendingIntent;LB1/j;)LB1/E;

    move-result-object p1

    invoke-interface {v0, p1}, LB1/n;->n1(LB1/E;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;LB1/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    invoke-virtual {v0}, LB1/e0;->a()LB1/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1}, LB1/C;->b(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)LB1/C;

    move-result-object p1

    invoke-static {p1, p2, p3}, LB1/E;->B(LB1/C;Landroid/app/PendingIntent;LB1/j;)LB1/E;

    move-result-object p1

    invoke-interface {v0, p1}, LB1/n;->n1(LB1/E;)V

    return-void
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/f$a;LB1/j;)V
    .locals 2
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

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LB1/w;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LB1/w;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB1/v;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LB1/v;->O1()V

    iget-object v1, p0, LB1/w;->a:LB1/I;

    check-cast v1, LB1/e0;

    invoke-virtual {v1}, LB1/e0;->a()LB1/n;

    move-result-object v1

    invoke-static {p1, p2}, LB1/E;->b(LE1/l0;LB1/j;)LB1/E;

    move-result-object p1

    invoke-interface {v1, p1}, LB1/n;->n1(LB1/E;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final i(Lcom/google/android/gms/common/api/internal/f$a;LB1/j;)V
    .locals 2
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

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LB1/w;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LB1/w;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LB1/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LB1/s;->O1()V

    iget-object v1, p0, LB1/w;->a:LB1/I;

    check-cast v1, LB1/e0;

    invoke-virtual {v1}, LB1/e0;->a()LB1/n;

    move-result-object v1

    invoke-static {p1, p2}, LB1/E;->b0(LE1/i0;LB1/j;)LB1/E;

    move-result-object p1

    invoke-interface {v1, p1}, LB1/n;->n1(LB1/E;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j(Landroid/app/PendingIntent;LB1/j;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    invoke-virtual {v0}, LB1/e0;->a()LB1/n;

    move-result-object v0

    new-instance v8, LB1/E;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v1, v8

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, LB1/E;-><init>(ILB1/C;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v0, v8}, LB1/n;->n1(LB1/E;)V

    return-void
.end method

.method public final k(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    invoke-virtual {v0}, LB1/e0;->a()LB1/n;

    move-result-object v0

    invoke-interface {v0, p1}, LB1/n;->J1(Z)V

    iput-boolean p1, p0, LB1/w;->c:Z

    return-void
.end method

.method public final l(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    invoke-virtual {v0}, LB1/e0;->a()LB1/n;

    move-result-object v0

    invoke-interface {v0, p1}, LB1/n;->W(Landroid/location/Location;)V

    return-void
.end method

.method public final m(LB1/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    iget-object v0, v0, LB1/e0;->a:LB1/f0;

    invoke-static {v0}, LB1/f0;->v0(LB1/f0;)V

    iget-object v0, p0, LB1/w;->a:LB1/I;

    check-cast v0, LB1/e0;

    invoke-virtual {v0}, LB1/e0;->a()LB1/n;

    move-result-object v0

    invoke-interface {v0, p1}, LB1/n;->W0(LB1/j;)V

    return-void
.end method

.method public final n()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/w;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LB1/w;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB1/v;

    if-eqz v2, :cond_0

    iget-object v4, p0, LB1/w;->a:LB1/I;

    check-cast v4, LB1/e0;

    invoke-virtual {v4}, LB1/e0;->a()LB1/n;

    move-result-object v4

    invoke-static {v2, v3}, LB1/E;->b(LE1/l0;LB1/j;)LB1/E;

    move-result-object v2

    invoke-interface {v4, v2}, LB1/n;->n1(LB1/E;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_1
    iget-object v1, p0, LB1/w;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LB1/w;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, LB1/w;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB1/s;

    if-eqz v2, :cond_2

    iget-object v4, p0, LB1/w;->a:LB1/I;

    check-cast v4, LB1/e0;

    invoke-virtual {v4}, LB1/e0;->a()LB1/n;

    move-result-object v4

    invoke-static {v2, v3}, LB1/E;->b0(LE1/i0;LB1/j;)LB1/E;

    move-result-object v2

    invoke-interface {v4, v2}, LB1/n;->n1(LB1/E;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    iget-object v0, p0, LB1/w;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, LB1/w;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, LB1/w;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB1/t;

    if-eqz v2, :cond_4

    iget-object v4, p0, LB1/w;->a:LB1/I;

    check-cast v4, LB1/e0;

    invoke-virtual {v4}, LB1/e0;->a()LB1/n;

    move-result-object v4

    new-instance v5, LB1/i0;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v3, v2, v3}, LB1/i0;-><init>(ILB1/g0;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v4, v5}, LB1/n;->a0(LB1/i0;)V

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, LB1/w;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, LB1/w;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LB1/w;->k(Z)V

    :cond_0
    return-void
.end method
