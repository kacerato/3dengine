.class public final LB1/i0;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "DeviceOrientationRequestUpdateDataCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LB1/i0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "DeviceOrientationRequestUpdateData.OPERATION_ADD"
        id = 0x1
    .end annotation
.end field

.field public final c:LB1/g0;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        id = 0x2
    .end annotation
.end field

.field public final d:LE1/e0;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        getter = "getDeviceOrientationListenerBinder"
        id = 0x3
        type = "android.os.IBinder"
    .end annotation
.end field

.field public final e:LB1/j;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        getter = "getFusedLocationProviderCallbackBinder"
        id = 0x4
        type = "android.os.IBinder"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB1/j0;

    invoke-direct {v0}, LB1/j0;-><init>()V

    sput-object v0, LB1/i0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILB1/g0;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0
    .param p1    # I
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # LB1/g0;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Landroid/os/IBinder;
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Landroid/os/IBinder;
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, LB1/i0;->b:I

    iput-object p2, p0, LB1/i0;->c:LB1/g0;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, LE1/d0;->g(Landroid/os/IBinder;)LE1/e0;

    move-result-object p2

    :goto_0
    iput-object p2, p0, LB1/i0;->d:LE1/e0;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p4, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, LB1/j;

    if-eqz p2, :cond_2

    check-cast p1, LB1/j;

    goto :goto_1

    :cond_2
    new-instance p1, LB1/h;

    invoke-direct {p1, p4}, LB1/h;-><init>(Landroid/os/IBinder;)V

    :goto_1
    iput-object p1, p0, LB1/i0;->e:LB1/j;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, LB1/i0;->b:I

    invoke-static {p1, v1, v2}, LZ0/b;->F(Landroid/os/Parcel;II)V

    iget-object v1, p0, LB1/i0;->c:LB1/g0;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, LB1/i0;->d:LE1/e0;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v2, 0x3

    invoke-static {p1, v2, p2, v3}, LZ0/b;->B(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object p2, p0, LB1/i0;->e:LB1/j;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    const/4 p2, 0x4

    invoke-static {p1, p2, v1, v3}, LZ0/b;->B(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
