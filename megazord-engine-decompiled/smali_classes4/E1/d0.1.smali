.class public LE1/d0;
.super LB1/B;
.source "SourceFile"

# interfaces
.implements LE1/e0;


# direct methods
.method public static g(Landroid/os/IBinder;)LE1/e0;
    .locals 2

    const-string v0, "com.google.android.gms.location.IDeviceOrientationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LE1/e0;

    if-eqz v1, :cond_0

    check-cast v0, LE1/e0;

    return-object v0

    :cond_0
    new-instance v0, LE1/c0;

    invoke-direct {v0, p0}, LE1/c0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final e(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
