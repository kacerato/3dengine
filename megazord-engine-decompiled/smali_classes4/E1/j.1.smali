.class public LE1/j;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/k<",
        "Lcom/google/android/gms/common/api/a$d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String; = "mockLocation"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final l:Ljava/lang/String; = "verticalAccuracy"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .line 1
    sget-object v0, LE1/s;->a:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->u0:Lcom/google/android/gms/common/api/a$d$d;

    new-instance v2, LU0/b;

    invoke-direct {v2}, LU0/b;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;LU0/p;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .line 2
    sget-object v0, LE1/s;->a:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->u0:Lcom/google/android/gms/common/api/a$d$d;

    new-instance v2, LU0/b;

    invoke-direct {v2}, LU0/b;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;LU0/p;)V

    return-void
.end method


# virtual methods
.method public g0()LQ1/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    sget-object v1, LE1/b1;->a:LU0/n;

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object v0

    const/16 v1, 0x976

    invoke-virtual {v0, v1}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object v0

    invoke-virtual {v0}, LU0/r$a;->a()LU0/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/k;->S(LU0/r;)LQ1/k;

    move-result-object v0

    return-object v0
.end method

.method public h0(ILQ1/a;)LQ1/k;
    .locals 3
    .param p2    # LQ1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LQ1/a;",
            ")",
            "LQ1/k<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->B()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/LocationRequest;->P0(I)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->M0(J)Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->L0(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->J0(J)Lcom/google/android/gms/location/LocationRequest;

    const/4 p1, 0x0

    invoke-static {p1, v0}, LB1/C;->b(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)LB1/C;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LB1/C;->c0(Z)LB1/C;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v0, v1}, LB1/C;->B(J)LB1/C;

    new-instance v0, LE1/H;

    invoke-direct {v0, p0, p2, p1}, LE1/H;-><init>(LE1/j;LQ1/a;LB1/C;)V

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object p1

    invoke-virtual {p1, v0}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object p1

    sget-object v0, LE1/Z0;->d:LS0/e;

    filled-new-array {v0}, [LS0/e;

    move-result-object v0

    invoke-virtual {p1, v0}, LU0/r$a;->e([LS0/e;)LU0/r$a;

    move-result-object p1

    const/16 v0, 0x96f

    invoke-virtual {p1, v0}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LU0/r$a;->a()LU0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->M(LU0/r;)LQ1/k;

    move-result-object p1

    if-eqz p2, :cond_0

    new-instance v0, LQ1/l;

    invoke-direct {v0, p2}, LQ1/l;-><init>(LQ1/a;)V

    new-instance p2, LE1/I;

    invoke-direct {p2, v0}, LE1/I;-><init>(LQ1/l;)V

    invoke-virtual {p1, p2}, LQ1/k;->o(LQ1/c;)LQ1/k;

    invoke-virtual {v0}, LQ1/l;->a()LQ1/k;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public i0()LQ1/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    new-instance v1, LE1/a1;

    invoke-direct {v1, p0}, LE1/a1;-><init>(LE1/j;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object v0

    const/16 v1, 0x96e

    invoke-virtual {v0, v1}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object v0

    invoke-virtual {v0}, LU0/r$a;->a()LU0/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/k;->M(LU0/r;)LQ1/k;

    move-result-object v0

    return-object v0
.end method

.method public j0()LQ1/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "Lcom/google/android/gms/location/LocationAvailability;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    sget-object v1, LE1/J;->a:LU0/n;

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object v0

    const/16 v1, 0x970

    invoke-virtual {v0, v1}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object v0

    invoke-virtual {v0}, LU0/r$a;->a()LU0/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/k;->M(LU0/r;)LQ1/k;

    move-result-object v0

    return-object v0
.end method

.method public k0(LE1/q;)LQ1/k;
    .locals 1
    .param p1    # LE1/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LE1/q;",
            ")",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-class v0, LE1/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/g;->c(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->Q(Lcom/google/android/gms/common/api/internal/f$a;)LQ1/k;

    move-result-object p1

    invoke-static {p1}, LU0/s;->c(LQ1/k;)LQ1/k;

    move-result-object p1

    return-object p1
.end method

.method public l0(Landroid/app/PendingIntent;)LQ1/k;
    .locals 2
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    new-instance v1, LE1/M;

    invoke-direct {v1, p1}, LE1/M;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object p1

    const/16 v0, 0x972

    invoke-virtual {p1, v0}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LU0/r$a;->a()LU0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->S(LU0/r;)LQ1/k;

    move-result-object p1

    return-object p1
.end method

.method public m0(Lcom/google/android/gms/location/LocationRequest;LE1/q;Landroid/os/Looper;)LQ1/k;
    .locals 7
    .param p1    # Lcom/google/android/gms/location/LocationRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LE1/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "LE1/q;",
            "Landroid/os/Looper;",
            ")",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, LB1/C;->b(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)LB1/C;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x984

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, LE1/j;->u0(LB1/C;LE1/q;Landroid/os/Looper;LE1/U;I)LQ1/k;

    move-result-object p1

    return-object p1
.end method

.method public n0(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)LQ1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/location/LocationRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, LB1/C;->b(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)LB1/C;

    move-result-object p1

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    new-instance v1, LE1/L;

    invoke-direct {v1, p0, p1, p2}, LE1/L;-><init>(LE1/j;LB1/C;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object p1

    const/16 p2, 0x971

    invoke-virtual {p1, p2}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LU0/r$a;->a()LU0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->S(LU0/r;)LQ1/k;

    move-result-object p1

    return-object p1
.end method

.method public o0(Landroid/location/Location;)LQ1/k;
    .locals 2
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    new-instance v1, LE1/O;

    invoke-direct {v1, p1}, LE1/O;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object p1

    const/16 v0, 0x975

    invoke-virtual {p1, v0}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LU0/r$a;->a()LU0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->S(LU0/r;)LQ1/k;

    move-result-object p1

    return-object p1
.end method

.method public p0(Z)LQ1/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    new-instance v1, LE1/N;

    invoke-direct {v1, p1}, LE1/N;-><init>(Z)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object p1

    const/16 v0, 0x974

    invoke-virtual {p1, v0}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LU0/r$a;->a()LU0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->S(LU0/r;)LQ1/k;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic q0(LB1/C;Landroid/app/PendingIntent;LB1/A;LQ1/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, LE1/V;

    invoke-direct {v0, p4}, LE1/V;-><init>(LQ1/l;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/k;->X()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, LB1/C;->b0(Ljava/lang/String;)LB1/C;

    invoke-virtual {p3, p1, p2, v0}, LB1/A;->z0(LB1/C;Landroid/app/PendingIntent;LB1/j;)V

    return-void
.end method

.method public final synthetic r0(LE1/W;LE1/q;LE1/U;LB1/C;Lcom/google/android/gms/common/api/internal/f;LB1/A;LQ1/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, LE1/T;

    new-instance v1, LE1/c1;

    invoke-direct {v1, p0, p1, p2, p3}, LE1/c1;-><init>(LE1/j;LE1/W;LE1/q;LE1/U;)V

    invoke-direct {v0, p7, v1}, LE1/T;-><init>(LQ1/l;LE1/U;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/k;->X()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, LB1/C;->b0(Ljava/lang/String;)LB1/C;

    invoke-virtual {p6, p4, p5, v0}, LB1/A;->x0(LB1/C;Lcom/google/android/gms/common/api/internal/f;LB1/j;)V

    return-void
.end method

.method public final synthetic s0(LQ1/a;LB1/C;LB1/A;LQ1/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, LE1/P;

    invoke-direct {v2, p0, p4}, LE1/P;-><init>(LE1/j;LQ1/l;)V

    if-eqz p1, :cond_0

    new-instance p3, LE1/d1;

    invoke-direct {p3, p0, v2}, LE1/d1;-><init>(LE1/j;LE1/q;)V

    invoke-virtual {p1, p3}, LQ1/a;->b(LQ1/h;)LQ1/a;

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, LE1/e1;

    invoke-direct {v4, p4}, LE1/e1;-><init>(LQ1/l;)V

    const/16 v5, 0x985

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, LE1/j;->u0(LB1/C;LE1/q;Landroid/os/Looper;LE1/U;I)LQ1/k;

    move-result-object p1

    new-instance p2, LE1/G;

    invoke-direct {p2, p4}, LE1/G;-><init>(LQ1/l;)V

    invoke-virtual {p1, p2}, LQ1/k;->o(LQ1/c;)LQ1/k;

    return-void
.end method

.method public final synthetic t0(LB1/A;LQ1/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/k;->X()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LB1/A;->R0(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final u0(LB1/C;LE1/q;Landroid/os/Looper;LE1/U;I)LQ1/k;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB1/C;",
            "LE1/q;",
            "Landroid/os/Looper;",
            "LE1/U;",
            "I)",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, LB1/L;->a(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object p3

    const-class v0, LE1/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/android/gms/common/api/internal/g;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/f;

    move-result-object p3

    new-instance v0, LE1/Q;

    invoke-direct {v0, p0, p3}, LE1/Q;-><init>(LE1/j;Lcom/google/android/gms/common/api/internal/f;)V

    new-instance v8, LE1/K;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, LE1/K;-><init>(LE1/j;LE1/W;LE1/q;LE1/U;LB1/C;Lcom/google/android/gms/common/api/internal/f;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/i;->a()Lcom/google/android/gms/common/api/internal/i$a;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/common/api/internal/i$a;->c(LU0/n;)Lcom/google/android/gms/common/api/internal/i$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/i$a;->g(LU0/n;)Lcom/google/android/gms/common/api/internal/i$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/common/api/internal/i$a;->h(Lcom/google/android/gms/common/api/internal/f;)Lcom/google/android/gms/common/api/internal/i$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/common/api/internal/i$a;->f(I)Lcom/google/android/gms/common/api/internal/i$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/i$a;->a()Lcom/google/android/gms/common/api/internal/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->P(Lcom/google/android/gms/common/api/internal/i;)LQ1/k;

    move-result-object p1

    return-object p1
.end method
