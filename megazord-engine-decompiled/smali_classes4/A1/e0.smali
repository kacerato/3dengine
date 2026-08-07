.class public final LA1/e0;
.super LA1/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.fido.fido2.internal.regular.IFido2AppService"

    invoke-direct {p0, p1, v0}, LA1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final L1(LA1/P;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LA1/a;->e()Landroid/os/Parcel;

    move-result-object v0

    sget v1, LA1/N;->b:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, LA1/a;->g(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final f1(LA1/d0;Lr1/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LA1/a;->e()Landroid/os/Parcel;

    move-result-object v0

    sget v1, LA1/N;->b:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v0, p2}, LA1/N;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, LA1/a;->g(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final i(LA1/d0;Lcom/google/android/gms/fido/fido2/api/common/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, LA1/a;->e()Landroid/os/Parcel;

    move-result-object v0

    sget v1, LA1/N;->b:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v0, p2}, LA1/N;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, LA1/a;->g(ILandroid/os/Parcel;)V

    return-void
.end method
