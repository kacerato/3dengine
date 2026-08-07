.class public abstract LE1/k0;
.super LB1/B;
.source "SourceFile"

# interfaces
.implements LE1/l0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationListener"

    invoke-direct {p0, v0}, LB1/B;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static g(Landroid/os/IBinder;)LE1/l0;
    .locals 2

    const-string v0, "com.google.android.gms.location.ILocationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LE1/l0;

    if-eqz v1, :cond_0

    check-cast v0, LE1/l0;

    return-object v0

    :cond_0
    new-instance v0, LE1/j0;

    invoke-direct {v0, p0}, LE1/j0;-><init>(Landroid/os/IBinder;)V

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

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    sget-object p1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, LB1/Z;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-interface {p0, p1}, LE1/l0;->o(Landroid/location/Location;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
