.class public LE1/C;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "SleepClassifyEventCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LE1/C;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LZ0/c$c;
        getter = "getTimestampSec"
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LZ0/c$c;
        getter = "getConfidence"
        id = 0x2
    .end annotation
.end field

.field public final d:I
    .annotation build LZ0/c$c;
        getter = "getMotion"
        id = 0x3
    .end annotation
.end field

.field public final e:I
    .annotation build LZ0/c$c;
        getter = "getLight"
        id = 0x4
    .end annotation
.end field

.field public final f:I
    .annotation build LZ0/c$c;
        getter = "getNoise"
        id = 0x5
    .end annotation
.end field

.field public final g:I
    .annotation build LZ0/c$c;
        getter = "getLightDiff"
        id = 0x6
    .end annotation
.end field

.field public final h:I
    .annotation build LZ0/c$c;
        getter = "getNightOrDay"
        id = 0x7
    .end annotation
.end field

.field public final i:Z
    .annotation build LZ0/c$c;
        getter = "getConfidenceOverwrittenByAlarmClockTrigger"
        id = 0x8
    .end annotation
.end field

.field public final j:I
    .annotation build LZ0/c$c;
        getter = "getPresenceConfidence"
        id = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/C0;

    invoke-direct {v0}, LE1/C0;-><init>()V

    sput-object v0, LE1/C;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIIZI)V
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
    .param p5    # I
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p6    # I
        .annotation build LZ0/c$e;
            id = 0x6
        .end annotation
    .end param
    .param p7    # I
        .annotation build LZ0/c$e;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Z
        .annotation build LZ0/c$e;
            id = 0x8
        .end annotation
    .end param
    .param p9    # I
        .annotation build LZ0/c$e;
            id = 0x9
        .end annotation
    .end param
    .annotation build LX0/F;
    .end annotation

    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, LE1/C;->b:I

    iput p2, p0, LE1/C;->c:I

    iput p3, p0, LE1/C;->d:I

    iput p4, p0, LE1/C;->e:I

    iput p5, p0, LE1/C;->f:I

    iput p6, p0, LE1/C;->g:I

    iput p7, p0, LE1/C;->h:I

    iput-boolean p8, p0, LE1/C;->i:Z

    iput p9, p0, LE1/C;->j:I

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
            "LE1/C;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, LE1/C;->k0(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.location.internal.EXTRA_SLEEP_CLASSIFY_RESULT"

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

    sget-object v4, LE1/C;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v3, v4}, LZ0/d;->a([BLandroid/os/Parcelable$Creator;)LZ0/c;

    move-result-object v3

    check-cast v3, LE1/C;

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
    const-string v0, "com.google.android.location.internal.EXTRA_SLEEP_CLASSIFY_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public B()I
    .locals 1

    iget v0, p0, LE1/C;->c:I

    return v0
.end method

.method public b0()I
    .locals 1

    iget v0, p0, LE1/C;->e:I

    return v0
.end method

.method public c0()I
    .locals 1

    iget v0, p0, LE1/C;->d:I

    return v0
.end method

.method public e0()J
    .locals 4

    iget v0, p0, LE1/C;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LE1/C;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LE1/C;

    iget v1, p0, LE1/C;->b:I

    iget v3, p1, LE1/C;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, LE1/C;->c:I

    iget p1, p1, LE1/C;->c:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, LE1/C;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, LE1/C;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, LE1/C;->b:I

    iget v1, p0, LE1/C;->c:I

    iget v2, p0, LE1/C;->d:I

    iget v3, p0, LE1/C;->e:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x41

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Conf:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Motion:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Light:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, LE1/C;->b:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, LE1/C;->B()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    invoke-virtual {p0}, LE1/C;->c0()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    invoke-virtual {p0}, LE1/C;->b0()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    iget v1, p0, LE1/C;->f:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x6

    iget v1, p0, LE1/C;->g:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    iget v1, p0, LE1/C;->h:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    iget-boolean v1, p0, LE1/C;->i:Z

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/16 v0, 0x9

    iget v1, p0, LE1/C;->j:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
