.class public LX0/D;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LT0/a;
.end annotation

.annotation build LZ0/c$a;
    creator = "RootTelemetryConfigurationCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LX0/D;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LZ0/c$c;
        getter = "getVersion"
        id = 0x1
    .end annotation
.end field

.field public final c:Z
    .annotation build LZ0/c$c;
        getter = "getMethodInvocationTelemetryEnabled"
        id = 0x2
    .end annotation
.end field

.field public final d:Z
    .annotation build LZ0/c$c;
        getter = "getMethodTimingTelemetryEnabled"
        id = 0x3
    .end annotation
.end field

.field public final e:I
    .annotation build LZ0/c$c;
        getter = "getBatchPeriodMillis"
        id = 0x4
    .end annotation
.end field

.field public final f:I
    .annotation build LZ0/c$c;
        getter = "getMaxMethodInvocationsInBatch"
        id = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LX0/B0;

    invoke-direct {v0}, LX0/B0;-><init>()V

    sput-object v0, LX0/D;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZII)V
    .locals 0
    .param p1    # I
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Z
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Z
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
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, LX0/D;->b:I

    iput-boolean p2, p0, LX0/D;->c:Z

    iput-boolean p3, p0, LX0/D;->d:Z

    iput p4, p0, LX0/D;->e:I

    iput p5, p0, LX0/D;->f:I

    return-void
.end method


# virtual methods
.method public B()I
    .locals 1
    .annotation build LT0/a;
    .end annotation

    iget v0, p0, LX0/D;->e:I

    return v0
.end method

.method public b0()I
    .locals 1
    .annotation build LT0/a;
    .end annotation

    iget v0, p0, LX0/D;->f:I

    return v0
.end method

.method public c0()Z
    .locals 1
    .annotation build LT0/a;
    .end annotation

    iget-boolean v0, p0, LX0/D;->c:Z

    return v0
.end method

.method public e0()Z
    .locals 1
    .annotation build LT0/a;
    .end annotation

    iget-boolean v0, p0, LX0/D;->d:Z

    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation build LT0/a;
    .end annotation

    iget v0, p0, LX0/D;->b:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, LX0/D;->getVersion()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, LX0/D;->c0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, LX0/D;->e0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    invoke-virtual {p0}, LX0/D;->B()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    invoke-virtual {p0}, LX0/D;->b0()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
