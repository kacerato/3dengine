.class public Lc1/i;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "ModuleInstallStatusUpdateCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/i$b;,
        Lc1/i$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc1/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LZ0/c$c;
        getter = "getSessionId"
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LZ0/c$c;
        getter = "getInstallState"
        id = 0x2
    .end annotation

    .annotation build Lc1/i$a;
    .end annotation
.end field

.field public final d:Ljava/lang/Long;
    .annotation build LZ0/c$c;
        getter = "getBytesDownloaded"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/Long;
    .annotation build LZ0/c$c;
        getter = "getTotalBytesToDownload"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:I
    .annotation build LZ0/c$c;
        getter = "getErrorCode"
        id = 0x5
    .end annotation
.end field

.field public final g:Lc1/i$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc1/n;

    invoke-direct {v0}, Lc1/n;-><init>()V

    sput-object v0, Lc1/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Long;Ljava/lang/Long;I)V
    .locals 2
    .param p1    # I
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation

        .annotation build Lc1/i$a;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # I
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, Lc1/i;->b:I

    iput p2, p0, Lc1/i;->c:I

    iput-object p3, p0, Lc1/i;->d:Ljava/lang/Long;

    iput-object p4, p0, Lc1/i;->e:Ljava/lang/Long;

    iput p5, p0, Lc1/i;->f:I

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    new-instance p1, Lc1/i$b;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-direct {p1, p2, p3, p4, p5}, Lc1/i$b;-><init>(JJ)V

    :goto_0
    iput-object p1, p0, Lc1/i;->g:Lc1/i$b;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public B()I
    .locals 1

    iget v0, p0, Lc1/i;->f:I

    return v0
.end method

.method public b0()I
    .locals 1
    .annotation build Lc1/i$a;
    .end annotation

    iget v0, p0, Lc1/i;->c:I

    return v0
.end method

.method public c0()Lc1/i$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lc1/i;->g:Lc1/i$b;

    return-object v0
.end method

.method public e0()I
    .locals 1

    iget v0, p0, Lc1/i;->b:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lc1/i;->e0()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lc1/i;->b0()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lc1/i;->d:Ljava/lang/Long;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LZ0/b;->N(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x4

    iget-object v1, p0, Lc1/i;->e:Ljava/lang/Long;

    invoke-static {p1, v0, v1, v2}, LZ0/b;->N(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lc1/i;->B()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
