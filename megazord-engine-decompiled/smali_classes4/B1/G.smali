.class public final LB1/G;
.super LZ0/a;
.source "SourceFile"

# interfaces
.implements LE1/k;


# annotations
.annotation build LZ0/c$a;
    creator = "ParcelableGeofenceCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x3e8
    }
.end annotation

.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LB1/G;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getRequestId"
        id = 0x1
    .end annotation
.end field

.field public final c:J
    .annotation build LZ0/c$c;
        getter = "getExpirationTime"
        id = 0x2
    .end annotation
.end field

.field public final d:S
    .annotation build LZ0/c$c;
        getter = "getType"
        id = 0x3
    .end annotation
.end field

.field public final e:D
    .annotation build LZ0/c$c;
        getter = "getLatitude"
        id = 0x4
    .end annotation
.end field

.field public final f:D
    .annotation build LZ0/c$c;
        getter = "getLongitude"
        id = 0x5
    .end annotation
.end field

.field public final g:F
    .annotation build LZ0/c$c;
        getter = "getRadius"
        id = 0x6
    .end annotation
.end field

.field public final h:I
    .annotation build LZ0/c$c;
        getter = "getTransitionTypes"
        id = 0x7
    .end annotation
.end field

.field public final i:I
    .annotation build LZ0/c$c;
        defaultValue = "0"
        getter = "getNotificationResponsiveness"
        id = 0x8
    .end annotation
.end field

.field public final j:I
    .annotation build LZ0/c$c;
        defaultValue = "-1"
        getter = "getLoiteringDelay"
        id = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB1/H;

    invoke-direct {v0}, LB1/H;-><init>()V

    sput-object v0, LB1/G;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ISDDFJII)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build LZ0/c$e;
            id = 0x7
        .end annotation
    .end param
    .param p3    # S
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # D
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p6    # D
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p8    # F
        .annotation build LZ0/c$e;
            id = 0x6
        .end annotation
    .end param
    .param p9    # J
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p11    # I
        .annotation build LZ0/c$e;
            id = 0x8
        .end annotation
    .end param
    .param p12    # I
        .annotation build LZ0/c$e;
            id = 0x9
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p8, v0

    if-lez v0, :cond_4

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p4, v0

    if-gtz v0, :cond_3

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p6, v0

    if-gtz v0, :cond_2

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p6, v0

    if-ltz v0, :cond_2

    and-int/lit8 v0, p2, 0x7

    if-eqz v0, :cond_1

    iput-short p3, p0, LB1/G;->d:S

    iput-object p1, p0, LB1/G;->b:Ljava/lang/String;

    iput-wide p4, p0, LB1/G;->e:D

    iput-wide p6, p0, LB1/G;->f:D

    iput p8, p0, LB1/G;->g:F

    iput-wide p9, p0, LB1/G;->c:J

    iput v0, p0, LB1/G;->h:I

    iput p11, p0, LB1/G;->i:I

    iput p12, p0, LB1/G;->j:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const/16 p4, 0x2e

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "No supported transition specified: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x2b

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "invalid longitude: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x2a

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "invalid latitude: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x1f

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "invalid radius: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const-string p4, "requestId is null or too long: "

    if-eqz p3, :cond_6

    invoke-virtual {p4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LB1/G;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, LB1/G;

    iget v1, p0, LB1/G;->g:F

    iget v3, p1, LB1/G;->g:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v3, p0, LB1/G;->e:D

    iget-wide v5, p1, LB1/G;->e:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, LB1/G;->f:D

    iget-wide v5, p1, LB1/G;->f:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-short v1, p0, LB1/G;->d:S

    iget-short p1, p1, LB1/G;->d:S

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, LB1/G;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, LB1/G;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long v5, v0, v4

    xor-long/2addr v0, v5

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long v1, v2, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LB1/G;->g:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, LB1/G;->d:S

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LB1/G;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB1/G;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-short v1, p0, LB1/G;->d:S

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "UNKNOWN"

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    const-string v1, "CIRCLE"

    goto :goto_0

    :cond_1
    const-string v1, "INVALID"

    goto :goto_0

    :goto_1
    iget-object v1, p0, LB1/G;->b:Ljava/lang/String;

    const-string v3, "\\p{C}"

    const-string v4, "?"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, p0, LB1/G;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, LB1/G;->e:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, p0, LB1/G;->f:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget v1, p0, LB1/G;->g:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v1, p0, LB1/G;->i:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, p0, LB1/G;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-wide v10, p0, LB1/G;->c:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array/range {v2 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, LB1/G;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget-wide v1, p0, LB1/G;->c:J

    invoke-static {p1, v0, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x3

    iget-short v1, p0, LB1/G;->d:S

    invoke-static {p1, v0, v1}, LZ0/b;->U(Landroid/os/Parcel;IS)V

    const/4 v0, 0x4

    iget-wide v1, p0, LB1/G;->e:D

    invoke-static {p1, v0, v1, v2}, LZ0/b;->r(Landroid/os/Parcel;ID)V

    const/4 v0, 0x5

    iget-wide v1, p0, LB1/G;->f:D

    invoke-static {p1, v0, v1, v2}, LZ0/b;->r(Landroid/os/Parcel;ID)V

    const/4 v0, 0x6

    iget v1, p0, LB1/G;->g:F

    invoke-static {p1, v0, v1}, LZ0/b;->w(Landroid/os/Parcel;IF)V

    const/4 v0, 0x7

    iget v1, p0, LB1/G;->h:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    iget v1, p0, LB1/G;->i:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/16 v0, 0x9

    iget v1, p0, LB1/G;->j:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
