.class public abstract La1/k;
.super Lx1/b;
.source "SourceFile"

# interfaces
.implements La1/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.ICommonCallbacks"

    invoke-direct {p0, v0}, Lx1/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final L1(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p2}, Lx1/c;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, La1/l;->Y0(I)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
