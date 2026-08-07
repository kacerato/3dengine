.class public final Lw1/k;
.super Lw1/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    invoke-direct {p0, p1, v0}, Lw1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final L1(Lcom/google/android/gms/common/api/internal/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lw1/a;->e()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lw1/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lw1/a;->g(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final M1(Lcom/google/android/gms/common/api/internal/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lw1/a;->e()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lw1/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lw1/a;->g(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final f1(Ljava/lang/String;Lw1/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lw1/a;->e()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lw1/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lw1/a;->g(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final i(Lw1/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lw1/a;->e()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lw1/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lw1/a;->g(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final j2(Lw1/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lw1/a;->e()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lw1/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lw1/a;->g(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final k2(Ljava/lang/String;Lw1/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lw1/a;->e()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lw1/f;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lw1/a;->g(ILandroid/os/Parcel;)V

    return-void
.end method
