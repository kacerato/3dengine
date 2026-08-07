.class public final LE1/X0;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LX0/F;
.end annotation

.annotation build LZ0/c$a;
    creator = "DeviceOrientationRequestCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LE1/X0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Z
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_SHOULD_USE_MAG"
        id = 0x1
    .end annotation
.end field

.field public c:J
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_MINIMUM_SAMPLING_PERIOD_MS"
        id = 0x2
    .end annotation
.end field

.field public d:F
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_SMALLEST_ANGLE_CHANGE_RADIANS"
        id = 0x3
    .end annotation
.end field

.field public e:J
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_EXPIRE_AT_MS"
        id = 0x4
    .end annotation
.end field

.field public f:I
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_NUM_UPDATES"
        id = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/Y0;

    invoke-direct {v0}, LE1/Y0;-><init>()V

    sput-object v0, LE1/X0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const-wide v5, 0x7fffffffffffffffL

    const v7, 0x7fffffff

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    const/4 v4, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, LE1/X0;-><init>(ZJFJI)V

    return-void
.end method

.method public constructor <init>(ZJFJI)V
    .locals 0
    .param p1    # Z
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # J
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p4    # F
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p5    # J
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p7    # I
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    .line 2
    invoke-direct {p0}, LZ0/a;-><init>()V

    iput-boolean p1, p0, LE1/X0;->b:Z

    iput-wide p2, p0, LE1/X0;->c:J

    iput p4, p0, LE1/X0;->d:F

    iput-wide p5, p0, LE1/X0;->e:J

    iput p7, p0, LE1/X0;->f:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LE1/X0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LE1/X0;

    iget-boolean v1, p0, LE1/X0;->b:Z

    iget-boolean v3, p1, LE1/X0;->b:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, LE1/X0;->c:J

    iget-wide v5, p1, LE1/X0;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, LE1/X0;->d:F

    iget v3, p1, LE1/X0;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v3, p0, LE1/X0;->e:J

    iget-wide v5, p1, LE1/X0;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, LE1/X0;->f:I

    iget p1, p1, LE1/X0;->f:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-boolean v0, p0, LE1/X0;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-wide v1, p0, LE1/X0;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, LE1/X0;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-wide v3, p0, LE1/X0;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, LE1/X0;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceOrientationRequest[mShouldUseMag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LE1/X0;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMinimumSamplingPeriodMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LE1/X0;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSmallestAngleChangeRadians="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LE1/X0;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LE1/X0;->e:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-string v5, " expireIn="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, LE1/X0;->f:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LE1/X0;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget-boolean v1, p0, LE1/X0;->b:Z

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x2

    iget-wide v1, p0, LE1/X0;->c:J

    invoke-static {p1, v0, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x3

    iget v1, p0, LE1/X0;->d:F

    invoke-static {p1, v0, v1}, LZ0/b;->w(Landroid/os/Parcel;IF)V

    const/4 v0, 0x4

    iget-wide v1, p0, LE1/X0;->e:J

    invoke-static {p1, v0, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x5

    iget v1, p0, LE1/X0;->f:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
