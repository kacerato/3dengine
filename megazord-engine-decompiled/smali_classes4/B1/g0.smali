.class public final LB1/g0;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "DeviceOrientationRequestInternalCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LB1/g0;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LX0/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:LE1/X0;


# instance fields
.field public final b:LE1/X0;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "DeviceOrientationRequestInternal.DEFAULT_DEVICE_ORIENTATION_REQUEST"
        id = 0x1
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "DeviceOrientationRequestInternal.DEFAULT_CLIENTS"
        id = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LX0/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, LB1/g0;->e:Ljava/util/List;

    new-instance v0, LE1/X0;

    invoke-direct {v0}, LE1/X0;-><init>()V

    sput-object v0, LB1/g0;->f:LE1/X0;

    new-instance v0, LB1/h0;

    invoke-direct {v0}, LB1/h0;-><init>()V

    sput-object v0, LB1/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(LE1/X0;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1    # LE1/X0;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x2
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
            "LE1/X0;",
            "Ljava/util/List<",
            "LX0/h;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput-object p1, p0, LB1/g0;->b:LE1/X0;

    iput-object p2, p0, LB1/g0;->c:Ljava/util/List;

    iput-object p3, p0, LB1/g0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LB1/g0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LB1/g0;

    iget-object v0, p0, LB1/g0;->b:LE1/X0;

    iget-object v2, p1, LB1/g0;->b:LE1/X0;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LB1/g0;->c:Ljava/util/List;

    iget-object v2, p1, LB1/g0;->c:Ljava/util/List;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LB1/g0;->d:Ljava/lang/String;

    iget-object p1, p1, LB1/g0;->d:Ljava/lang/String;

    invoke-static {v0, p1}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LB1/g0;->b:LE1/X0;

    invoke-virtual {v0}, LE1/X0;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, LB1/g0;->b:LE1/X0;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LB1/g0;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LB1/g0;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x4d

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "DeviceOrientationRequestInternal{deviceOrientationRequest="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", clients="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tag=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, LB1/g0;->b:LE1/X0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x2

    iget-object v1, p0, LB1/g0;->c:Ljava/util/List;

    invoke-static {p1, p2, v1, v3}, LZ0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 p2, 0x3

    iget-object v1, p0, LB1/g0;->d:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
