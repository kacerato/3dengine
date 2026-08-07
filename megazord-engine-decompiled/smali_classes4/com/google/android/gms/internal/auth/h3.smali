.class public final Lcom/google/android/gms/internal/auth/h3;
.super LX0/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LX0/i;LU0/d;LU0/k;)V
    .locals 7

    const/16 v3, 0xe0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, LX0/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILX0/i;LU0/d;LU0/k;)V

    return-void
.end method


# virtual methods
.method public final C()[LS0/e;
    .locals 3

    sget-object v0, LJ0/k;->l:LS0/e;

    sget-object v1, LJ0/k;->k:LS0/e;

    sget-object v2, LJ0/k;->a:LS0/e;

    filled-new-array {v0, v1, v2}, [LS0/e;

    move-result-object v0

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.auth.account.data.IGoogleAuthService"

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.auth.account.authapi.START"

    return-object v0
.end method

.method public final R()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleAuthSvcClientImpl"

    const-string v2, "GoogleAuthServiceClientImpl disconnected with reason: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, LX0/f;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final t()I
    .locals 1

    const v0, 0x1110e58

    return v0
.end method

.method public final synthetic z(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.auth.account.data.IGoogleAuthService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/auth/o3;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/auth/o3;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/auth/o3;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/auth/o3;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
