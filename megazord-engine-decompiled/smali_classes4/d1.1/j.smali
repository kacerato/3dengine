.class public abstract Ld1/j;
.super Lx1/b;
.source "SourceFile"

# interfaces
.implements Ld1/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.moduleinstall.internal.IModuleInstallStatusListener"

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

    sget-object p1, Lc1/i;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lx1/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc1/i;

    invoke-static {p2}, Lx1/c;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Ld1/k;->E1(Lc1/i;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
