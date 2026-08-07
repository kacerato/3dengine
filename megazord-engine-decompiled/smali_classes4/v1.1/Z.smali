.class public final Lv1/Z;
.super Lv1/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.identity.internal.ICredentialSavingService"

    invoke-direct {p0, p1, v0}, Lv1/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final f1(Lv1/h0;Lcom/google/android/gms/auth/api/identity/k;Lcom/google/android/gms/common/api/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lv1/a;->e()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lv1/O;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lv1/O;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lv1/O;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lv1/a;->g(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final i(Lv1/f0;Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;Lcom/google/android/gms/common/api/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lv1/a;->e()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lv1/O;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lv1/O;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lv1/O;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lv1/a;->g(ILandroid/os/Parcel;)V

    return-void
.end method
