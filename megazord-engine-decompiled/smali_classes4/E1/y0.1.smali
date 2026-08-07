.class public final LE1/y0;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "RemoveGeofencingRequestCreator"
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
            "LE1/y0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/List;
    .annotation build LZ0/c$c;
        getter = "getGeofenceIds"
        id = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/app/PendingIntent;
    .annotation build LZ0/c$c;
        getter = "getPendingIntent"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LZ0/c$c;
        defaultValue = ""
        getter = "getTag"
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/z0;

    invoke-direct {v0}, LE1/z0;-><init>()V

    sput-object v0, LE1/y0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, LB1/V;->k()LB1/V;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, LB1/V;->l(Ljava/util/Collection;)LB1/V;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LE1/y0;->b:Ljava/util/List;

    iput-object p2, p0, LE1/y0;->c:Landroid/app/PendingIntent;

    iput-object p3, p0, LE1/y0;->d:Ljava/lang/String;

    return-void
.end method

.method public static B(Landroid/app/PendingIntent;)LE1/y0;
    .locals 3

    const-string v0, "PendingIntent can not be null."

    invoke-static {p0, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LE1/y0;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, p0, v2}, LE1/y0;-><init>(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/util/List;)LE1/y0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "LE1/y0;"
        }
    .end annotation

    const-string v0, "geofence can\'t be null."

    invoke-static {p0, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Geofences must contains at least one id."

    invoke-static {v0, v1}, LX0/A;->b(ZLjava/lang/Object;)V

    new-instance v0, LE1/y0;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, LE1/y0;-><init>(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, LE1/y0;->b:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LZ0/b;->a0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, LE1/y0;->c:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v2, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    iget-object v1, p0, LE1/y0;->d:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
