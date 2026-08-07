.class public final LE1/w0;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LX0/F;
.end annotation

.annotation build LZ0/c$a;
    creator = "NetworkLocationStatusCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LE1/w0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationAvailability.STATUS_UNKNOWN"
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "LocationAvailability.STATUS_UNKNOWN"
        id = 0x2
    .end annotation
.end field

.field public final d:J
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "NetworkLocationStatus.STATUS_INVALID_TIMESTAMP"
        id = 0x3
    .end annotation
.end field

.field public final e:J
    .annotation build LZ0/c$c;
        defaultValueUnchecked = "NetworkLocationStatus.STATUS_INVALID_TIMESTAMP"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/x0;

    invoke-direct {v0}, LE1/x0;-><init>()V

    sput-object v0, LE1/w0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJJ)V
    .locals 0
    .param p1    # I
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # J
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p5    # J
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, LE1/w0;->b:I

    iput p2, p0, LE1/w0;->c:I

    iput-wide p3, p0, LE1/w0;->d:J

    iput-wide p5, p0, LE1/w0;->e:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, LE1/w0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LE1/w0;

    iget v0, p0, LE1/w0;->b:I

    iget v2, p1, LE1/w0;->b:I

    if-ne v0, v2, :cond_0

    iget v0, p0, LE1/w0;->c:I

    iget v2, p1, LE1/w0;->c:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, LE1/w0;->d:J

    iget-wide v4, p1, LE1/w0;->d:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, LE1/w0;->e:J

    iget-wide v4, p1, LE1/w0;->e:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, LE1/w0;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, LE1/w0;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, LE1/w0;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, LE1/w0;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkLocationStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Wifi status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LE1/w0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Cell status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LE1/w0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " elapsed time NS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LE1/w0;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " system time ms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LE1/w0;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, LE1/w0;->b:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v1, p0, LE1/w0;->c:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget-wide v1, p0, LE1/w0;->d:J

    invoke-static {p1, v0, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x4

    iget-wide v1, p0, LE1/w0;->e:J

    invoke-static {p1, v0, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
