.class public final Lcom/google/android/gms/measurement/internal/f2;
.super Lcom/google/android/gms/internal/measurement/O;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/i2;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final B0(Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final C1(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->e(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/i;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final E(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final H(Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final H0(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final H1(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x14

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final I0(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x12

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final L(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final M(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final N(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final S(Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->e(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final V(Lcom/google/android/gms/measurement/internal/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final V0(Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/l2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/Q;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x1f

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final d1(Lcom/google/android/gms/measurement/internal/i7;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final g0(Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/J6;Lcom/google/android/gms/measurement/internal/o2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/Q;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final g1(Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget p2, Lcom/google/android/gms/internal/measurement/Q;->b:I

    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xf

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/O;->e(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/i7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final k1(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x15

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->e(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/p;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/Q;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/p;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final l1(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x13

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final p0(Lcom/google/android/gms/measurement/internal/o7;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->e(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final r0(Lcom/google/android/gms/measurement/internal/o7;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->e(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/i7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final r1(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final u1(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->i(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p2, 0x11

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/O;->e(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/i;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final y1(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/o7;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/O;->g()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget p1, Lcom/google/android/gms/internal/measurement/Q;->b:I

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/measurement/Q;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;->e(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/i7;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
