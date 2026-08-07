.class public abstract LB1/i;
.super LB1/B;
.source "SourceFile"

# interfaces
.implements LB1/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

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

    if-eq p1, p3, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p0}, LB1/j;->O1()V

    goto :goto_0

    :cond_1
    sget-object p1, LB1/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, LB1/Z;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, LB1/b;

    invoke-interface {p0, p1}, LB1/j;->W1(LB1/b;)V

    :goto_0
    return p3
.end method
