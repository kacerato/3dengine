.class public final LB1/E;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "LocationRequestUpdateDataCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LB1/E;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequestUpdateData.OPERATION_ADD"
        id = 0x1
    .end annotation
.end field

.field public final c:LB1/C;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:LE1/l0;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        getter = "getLocationListenerBinder"
        id = 0x3
        type = "android.os.IBinder"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Landroid/app/PendingIntent;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:LE1/i0;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        getter = "getLocationCallbackBinder"
        id = 0x5
        type = "android.os.IBinder"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:LB1/j;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        getter = "getFusedLocationProviderCallbackBinder"
        id = 0x6
        type = "android.os.IBinder"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB1/F;

    invoke-direct {v0}, LB1/F;-><init>()V

    sput-object v0, LB1/E;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILB1/C;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0
    .param p1    # I
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # LB1/C;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/IBinder;
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/IBinder;
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/IBinder;
        .annotation build LZ0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, LB1/E;->b:I

    iput-object p2, p0, LB1/E;->c:LB1/C;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, LE1/k0;->g(Landroid/os/IBinder;)LE1/l0;

    move-result-object p2

    :goto_0
    iput-object p2, p0, LB1/E;->d:LE1/l0;

    iput-object p4, p0, LB1/E;->e:Landroid/app/PendingIntent;

    if-nez p5, :cond_1

    move-object p2, p1

    goto :goto_1

    :cond_1
    invoke-static {p5}, LE1/g0;->g(Landroid/os/IBinder;)LE1/i0;

    move-result-object p2

    :goto_1
    iput-object p2, p0, LB1/E;->f:LE1/i0;

    if-nez p6, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, LB1/j;

    if-eqz p2, :cond_3

    check-cast p1, LB1/j;

    goto :goto_2

    :cond_3
    new-instance p1, LB1/h;

    invoke-direct {p1, p6}, LB1/h;-><init>(Landroid/os/IBinder;)V

    :goto_2
    iput-object p1, p0, LB1/E;->g:LB1/j;

    return-void
.end method

.method public static B(LB1/C;Landroid/app/PendingIntent;LB1/j;)LB1/E;
    .locals 8
    .param p2    # LB1/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v7, LB1/E;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, LB1/E;-><init>(ILB1/C;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method

.method public static b(LE1/l0;LB1/j;)LB1/E;
    .locals 8
    .param p1    # LB1/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v7, LB1/E;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v6, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, LB1/E;-><init>(ILB1/C;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method

.method public static b0(LE1/i0;LB1/j;)LB1/E;
    .locals 8
    .param p1    # LB1/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v7, LB1/E;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v6, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, LB1/E;-><init>(ILB1/C;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, LB1/E;->b:I

    invoke-static {p1, v1, v2}, LZ0/b;->F(Landroid/os/Parcel;II)V

    iget-object v1, p0, LB1/E;->c:LB1/C;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, LB1/E;->d:LE1/l0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v4, 0x3

    invoke-static {p1, v4, v1, v3}, LZ0/b;->B(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    iget-object v4, p0, LB1/E;->e:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v4, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, LB1/E;->f:LE1/i0;

    if-nez p2, :cond_1

    move-object p2, v2

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_1
    const/4 v1, 0x5

    invoke-static {p1, v1, p2, v3}, LZ0/b;->B(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object p2, p0, LB1/E;->g:LB1/j;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2
    const/4 p2, 0x6

    invoke-static {p1, p2, v2, v3}, LZ0/b;->B(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
