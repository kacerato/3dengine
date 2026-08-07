.class public final LE1/F0;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LX0/F;
.end annotation

.annotation build LZ0/c$a;
    creator = "UserPreferredSleepWindowCreator"
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
            "LE1/F0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LZ0/c$c;
        getter = "getStartHour"
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LZ0/c$c;
        getter = "getStartMinute"
        id = 0x2
    .end annotation
.end field

.field public final d:I
    .annotation build LZ0/c$c;
        getter = "getEndHour"
        id = 0x3
    .end annotation
.end field

.field public final e:I
    .annotation build LZ0/c$c;
        getter = "getEndMinute"
        id = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/G0;

    invoke-direct {v0}, LE1/G0;-><init>()V

    sput-object v0, LE1/F0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
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
    .param p3    # I
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # I
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    const/16 v0, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Start hour must be in range [0, 23]."

    invoke-static {v3, v4}, LX0/A;->y(ZLjava/lang/Object;)V

    const/16 v3, 0x3b

    if-ltz p2, :cond_1

    if-gt p2, v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const-string v5, "Start minute must be in range [0, 59]."

    invoke-static {v4, v5}, LX0/A;->y(ZLjava/lang/Object;)V

    if-ltz p3, :cond_2

    if-gt p3, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const-string v4, "End hour must be in range [0, 23]."

    invoke-static {v0, v4}, LX0/A;->y(ZLjava/lang/Object;)V

    if-ltz p4, :cond_3

    if-gt p4, v3, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    const-string v3, "End minute must be in range [0, 59]."

    invoke-static {v0, v3}, LX0/A;->y(ZLjava/lang/Object;)V

    add-int v0, p1, p2

    add-int/2addr v0, p3

    add-int/2addr v0, p4

    if-lez v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    const-string v0, "Parameters can\'t be all 0."

    invoke-static {v1, v0}, LX0/A;->y(ZLjava/lang/Object;)V

    iput p1, p0, LE1/F0;->b:I

    iput p2, p0, LE1/F0;->c:I

    iput p3, p0, LE1/F0;->d:I

    iput p4, p0, LE1/F0;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LE1/F0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LE1/F0;

    iget v1, p0, LE1/F0;->b:I

    iget v3, p1, LE1/F0;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, LE1/F0;->c:I

    iget v3, p1, LE1/F0;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, LE1/F0;->d:I

    iget v3, p1, LE1/F0;->d:I

    if-ne v1, v3, :cond_2

    iget v1, p0, LE1/F0;->e:I

    iget p1, p1, LE1/F0;->e:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, LE1/F0;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, LE1/F0;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, LE1/F0;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, LE1/F0;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, LE1/F0;->b:I

    iget v1, p0, LE1/F0;->c:I

    iget v2, p0, LE1/F0;->d:I

    iget v3, p0, LE1/F0;->e:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x75

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "UserPreferredSleepWindow [startHour="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startMinute="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", endHour="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", endMinute="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, LE1/F0;->b:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v1, p0, LE1/F0;->c:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget v1, p0, LE1/F0;->d:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget v1, p0, LE1/F0;->e:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
