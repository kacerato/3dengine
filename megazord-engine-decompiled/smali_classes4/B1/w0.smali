.class public final LB1/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE1/i;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, LB1/r0;

    invoke-direct {v0, p0, p1, p2, p3}, LB1/r0;-><init>(LB1/w0;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/common/api/l;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, LB1/t0;

    invoke-direct {v0, p0, p1, p2}, LB1/t0;-><init>(LB1/w0;Lcom/google/android/gms/common/api/l;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/common/api/l;LE1/q;)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "LE1/q;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, LB1/k0;

    invoke-direct {v0, p0, p1, p2}, LB1/k0;-><init>(LB1/w0;Lcom/google/android/gms/common/api/l;LE1/q;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/google/android/gms/common/api/l;Z)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Z)",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, LB1/l0;

    invoke-direct {v0, p0, p1, p2}, LB1/l0;-><init>(LB1/w0;Lcom/google/android/gms/common/api/l;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/google/android/gms/common/api/l;Landroid/location/Location;)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Landroid/location/Location;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, LB1/m0;

    invoke-direct {v0, p0, p1, p2}, LB1/m0;-><init>(LB1/w0;Lcom/google/android/gms/common/api/l;Landroid/location/Location;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, LB1/n0;

    invoke-direct {v0, p0, p1}, LB1/n0;-><init>(LB1/w0;Lcom/google/android/gms/common/api/l;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/location/LocationRequest;LE1/r;)Lcom/google/android/gms/common/api/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "LE1/r;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Calling thread must be a prepared Looper thread."

    invoke-static {v0, v1}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LB1/o0;

    invoke-direct {v0, p0, p1, p2, p3}, LB1/o0;-><init>(LB1/w0;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/location/LocationRequest;LE1/r;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lcom/google/android/gms/common/api/l;)Landroid/location/Location;
    .locals 4

    invoke-static {p1}, LE1/s;->g(Lcom/google/android/gms/common/api/l;)LB1/A;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/l;->q()Landroid/content/Context;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    const-class v1, Landroid/content/Context;

    const-string v2, "getAttributionTag"

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, v3

    :goto_0
    :try_start_1
    invoke-virtual {v0, p1}, LB1/A;->R0(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    return-object v3
.end method

.method public final i(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/location/LocationRequest;LE1/r;Landroid/os/Looper;)Lcom/google/android/gms/common/api/p;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "LE1/r;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v6, LB1/p0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LB1/p0;-><init>(LB1/w0;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/location/LocationRequest;LE1/r;Landroid/os/Looper;)V

    invoke-virtual {p1, v6}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/location/LocationRequest;LE1/q;Landroid/os/Looper;)Lcom/google/android/gms/common/api/p;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "LE1/q;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v6, LB1/q0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LB1/q0;-><init>(LB1/w0;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/location/LocationRequest;LE1/q;Landroid/os/Looper;)V

    invoke-virtual {p1, v6}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final k(Lcom/google/android/gms/common/api/l;LE1/r;)Lcom/google/android/gms/common/api/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            "LE1/r;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, LB1/s0;

    invoke-direct {v0, p0, p1, p2}, LB1/s0;-><init>(LB1/w0;Lcom/google/android/gms/common/api/l;LE1/r;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/location/LocationAvailability;
    .locals 0

    invoke-static {p1}, LE1/s;->g(Lcom/google/android/gms/common/api/l;)LB1/A;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, LB1/A;->w0()Lcom/google/android/gms/location/LocationAvailability;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
