.class public abstract LB1/o;
.super LB1/B;
.source "SourceFile"

# interfaces
.implements LB1/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.ISettingsCallbacks"

    invoke-direct {p0, v0}, LB1/B;-><init>(Ljava/lang/String;)V

    return-void
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

    sget-object p1, LE1/v;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, LB1/Z;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, LE1/v;

    invoke-interface {p0, p1}, LB1/p;->d0(LE1/v;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
