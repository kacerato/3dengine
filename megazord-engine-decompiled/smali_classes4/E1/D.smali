.class public LE1/D;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "SleepSegmentEventCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LE1/D;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2


# instance fields
.field public final b:J
    .annotation build LZ0/c$c;
        getter = "getStartTimeMillis"
        id = 0x1
    .end annotation
.end field

.field public final c:J
    .annotation build LZ0/c$c;
        getter = "getEndTimeMillis"
        id = 0x2
    .end annotation
.end field

.field public final d:I
    .annotation build LZ0/c$c;
        getter = "getStatus"
        id = 0x3
    .end annotation
.end field

.field public final e:I
    .annotation build LZ0/c$c;
        getter = "getMissingDataDurationMinutes"
        id = 0x4
    .end annotation
.end field

.field public final f:I
    .annotation build LZ0/c$c;
        getter = "getNinetiethPctConfidence"
        id = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/D0;

    invoke-direct {v0}, LE1/D0;-><init>()V

    sput-object v0, LE1/D;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJIII)V
    .locals 2
    .param p1    # J
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p3    # J
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p5    # I
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p6    # I
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p7    # I
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation
    .end param
    .annotation build LX0/F;
    .end annotation

    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "endTimeMillis must be greater than or equal to startTimeMillis"

    invoke-static {v0, v1}, LX0/A;->b(ZLjava/lang/Object;)V

    iput-wide p1, p0, LE1/D;->b:J

    iput-wide p3, p0, LE1/D;->c:J

    iput p5, p0, LE1/D;->d:I

    iput p6, p0, LE1/D;->e:I

    iput p7, p0, LE1/D;->f:I

    return-void
.end method

.method public static b(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "LE1/D;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, LE1/D;->k0(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.location.internal.EXTRA_SLEEP_SEGMENT_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, LE1/D;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v3, v4}, LZ0/d;->a([BLandroid/os/Parcelable$Creator;)LZ0/c;

    move-result-object v3

    check-cast v3, LE1/D;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Landroid/content/Intent;)Z
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "com.google.android.location.internal.EXTRA_SLEEP_SEGMENT_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public B()J
    .locals 2

    iget-wide v0, p0, LE1/D;->c:J

    return-wide v0
.end method

.method public b0()J
    .locals 4

    iget-wide v0, p0, LE1/D;->c:J

    iget-wide v2, p0, LE1/D;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public c0()J
    .locals 2

    iget-wide v0, p0, LE1/D;->b:J

    return-wide v0
.end method

.method public e0()I
    .locals 1

    iget v0, p0, LE1/D;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, LE1/D;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LE1/D;

    iget-wide v2, p0, LE1/D;->b:J

    invoke-virtual {p1}, LE1/D;->c0()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, LE1/D;->c:J

    invoke-virtual {p1}, LE1/D;->B()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget v0, p0, LE1/D;->d:I

    invoke-virtual {p1}, LE1/D;->e0()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, LE1/D;->e:I

    iget v2, p1, LE1/D;->e:I

    if-ne v0, v2, :cond_0

    iget v0, p0, LE1/D;->f:I

    iget p1, p1, LE1/D;->f:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, LE1/D;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, LE1/D;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, LE1/D;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, LE1/D;->b:J

    iget-wide v2, p0, LE1/D;->c:J

    iget v4, p0, LE1/D;->d:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x54

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "startMillis="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", endMillis="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, LE1/D;->c0()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x2

    invoke-virtual {p0}, LE1/D;->B()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->K(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, LE1/D;->e0()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget v1, p0, LE1/D;->e:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    iget v1, p0, LE1/D;->f:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
