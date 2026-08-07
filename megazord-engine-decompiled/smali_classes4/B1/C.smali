.class public final LB1/C;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "LocationRequestInternalCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x3e8,
        0x2,
        0x3,
        0x4
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LB1/C;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LX0/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/location/LocationRequest;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        id = 0x1
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequestInternal.DEFAULT_CLIENTS"
        id = 0x5
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
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Z
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequestInternal.DEFAULT_HIDE_FROM_APP_OPS"
        id = 0x7
    .end annotation
.end field

.field public final f:Z
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequestInternal.DEFAULT_FORCE_COARSE_LOCATION"
        id = 0x8
    .end annotation
.end field

.field public final g:Z
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequestInternal.DEFAULT_EXEMPT_FROM_THROTTLE"
        id = 0x9
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        id = 0xa
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Z
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "false"
        id = 0xb
    .end annotation
.end field

.field public j:Z
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "false"
        id = 0xc
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "null"
        id = 0xd
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:J
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationRequestInternal.DEFAULT_MAX_LOCATION_AGE_MILLIS"
        id = 0xe
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, LB1/C;->m:Ljava/util/List;

    new-instance v0, LB1/D;

    invoke-direct {v0}, LB1/D;-><init>()V

    sput-object v0, LB1/C;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;ZZLjava/lang/String;J)V
    .locals 0
    .param p1    # Lcom/google/android/gms/location/LocationRequest;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Z
        .annotation build LZ0/c$e;
            id = 0x7
        .end annotation
    .end param
    .param p5    # Z
        .annotation build LZ0/c$e;
            id = 0x8
        .end annotation
    .end param
    .param p6    # Z
        .annotation build LZ0/c$e;
            id = 0x9
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0xa
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Z
        .annotation build LZ0/c$e;
            id = 0xb
        .end annotation
    .end param
    .param p9    # Z
        .annotation build LZ0/c$e;
            id = 0xc
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0xd
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # J
        .annotation build LZ0/c$e;
            id = 0xe
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Ljava/util/List<",
            "LX0/h;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput-object p1, p0, LB1/C;->b:Lcom/google/android/gms/location/LocationRequest;

    iput-object p2, p0, LB1/C;->c:Ljava/util/List;

    iput-object p3, p0, LB1/C;->d:Ljava/lang/String;

    iput-boolean p4, p0, LB1/C;->e:Z

    iput-boolean p5, p0, LB1/C;->f:Z

    iput-boolean p6, p0, LB1/C;->g:Z

    iput-object p7, p0, LB1/C;->h:Ljava/lang/String;

    iput-boolean p8, p0, LB1/C;->i:Z

    iput-boolean p9, p0, LB1/C;->j:Z

    iput-object p10, p0, LB1/C;->k:Ljava/lang/String;

    iput-wide p11, p0, LB1/C;->l:J

    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)LB1/C;
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p0, LB1/C;

    sget-object v2, LB1/C;->m:Ljava/util/List;

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, LB1/C;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;ZZLjava/lang/String;J)V

    return-object p0
.end method


# virtual methods
.method public final B(J)LB1/C;
    .locals 5

    iget-object p1, p0, LB1/C;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->k0()J

    move-result-wide p1

    iget-object v0, p0, LB1/C;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->e0()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const-wide/16 p1, 0x2710

    iput-wide p1, p0, LB1/C;->l:J

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, LB1/C;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p2}, Lcom/google/android/gms/location/LocationRequest;->e0()J

    move-result-wide v0

    iget-object p2, p0, LB1/C;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p2}, Lcom/google/android/gms/location/LocationRequest;->k0()J

    move-result-wide v2

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "could not set max age when location batching is requested, interval="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "maxWaitTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b0(Ljava/lang/String;)LB1/C;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LB1/C;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final c0(Z)LB1/C;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, LB1/C;->j:Z

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, LB1/C;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LB1/C;

    iget-object v0, p0, LB1/C;->b:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p1, LB1/C;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB1/C;->c:Ljava/util/List;

    iget-object v2, p1, LB1/C;->c:Ljava/util/List;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB1/C;->d:Ljava/lang/String;

    iget-object v2, p1, LB1/C;->d:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LB1/C;->e:Z

    iget-boolean v2, p1, LB1/C;->e:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, LB1/C;->f:Z

    iget-boolean v2, p1, LB1/C;->f:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, LB1/C;->g:Z

    iget-boolean v2, p1, LB1/C;->g:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LB1/C;->h:Ljava/lang/String;

    iget-object v2, p1, LB1/C;->h:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LB1/C;->i:Z

    iget-boolean v2, p1, LB1/C;->i:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, LB1/C;->j:Z

    iget-boolean v2, p1, LB1/C;->j:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LB1/C;->k:Ljava/lang/String;

    iget-object p1, p1, LB1/C;->k:Ljava/lang/String;

    invoke-static {v0, p1}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LB1/C;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LB1/C;->b:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LB1/C;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LB1/C;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, LB1/C;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " moduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LB1/C;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, LB1/C;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " contextAttributionTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LB1/C;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " hideAppOps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LB1/C;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LB1/C;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " forceCoarseLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LB1/C;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LB1/C;->g:Z

    if-eqz v1, :cond_3

    const-string v1, " exemptFromBackgroundThrottle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, LB1/C;->i:Z

    if-eqz v1, :cond_4

    const-string v1, " locationSettingsIgnored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, LB1/C;->j:Z

    if-eqz v1, :cond_5

    const-string v1, " inaccurateLocationsDelayed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, LB1/C;->b:Lcom/google/android/gms/location/LocationRequest;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    iget-object v1, p0, LB1/C;->c:Ljava/util/List;

    invoke-static {p1, p2, v1, v3}, LZ0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 p2, 0x6

    iget-object v1, p0, LB1/C;->d:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x7

    iget-boolean v1, p0, LB1/C;->e:Z

    invoke-static {p1, p2, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x8

    iget-boolean v1, p0, LB1/C;->f:Z

    invoke-static {p1, p2, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x9

    iget-boolean v1, p0, LB1/C;->g:Z

    invoke-static {p1, p2, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xa

    iget-object v1, p0, LB1/C;->h:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xb

    iget-boolean v1, p0, LB1/C;->i:Z

    invoke-static {p1, p2, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xc

    iget-boolean v1, p0, LB1/C;->j:Z

    invoke-static {p1, p2, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xd

    iget-object v1, p0, LB1/C;->k:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xe

    iget-wide v1, p0, LB1/C;->l:J

    invoke-static {p1, p2, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
