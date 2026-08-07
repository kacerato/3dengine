.class public final LE1/t;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "LocationSettingsRequestCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x3e8
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE1/t$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LE1/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/List;
    .annotation build LZ0/c$c;
        getter = "getLocationRequests"
        id = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z
    .annotation build LZ0/c$c;
        defaultValue = "false"
        getter = "alwaysShow"
        id = 0x2
    .end annotation
.end field

.field public final d:Z
    .annotation build LZ0/c$c;
        getter = "needBle"
        id = 0x3
    .end annotation
.end field

.field public e:LE1/r0;
    .annotation build LZ0/c$c;
        getter = "getConfiguration"
        id = 0x5
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/t0;

    invoke-direct {v0}, LE1/t0;-><init>()V

    sput-object v0, LE1/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZZLE1/r0;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Z
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Z
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # LE1/r0;
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;ZZ",
            "LE1/r0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput-object p1, p0, LE1/t;->b:Ljava/util/List;

    iput-boolean p2, p0, LE1/t;->c:Z

    iput-boolean p3, p0, LE1/t;->d:Z

    iput-object p4, p0, LE1/t;->e:LE1/r0;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, LE1/t;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LZ0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x2

    iget-boolean v2, p0, LE1/t;->c:Z

    invoke-static {p1, v1, v2}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    iget-boolean v2, p0, LE1/t;->d:Z

    invoke-static {p1, v1, v2}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, LE1/t;->e:LE1/r0;

    invoke-static {p1, v1, v2, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
