.class public final LX0/a1;
.super Ly1/a;
.source "SourceFile"

# interfaces
.implements LX0/s;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.ICancelToken"

    invoke-direct {p0, p1, v0}, Ly1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0}, Ly1/a;->f1()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ly1/a;->i(ILandroid/os/Parcel;)V

    return-void
.end method
