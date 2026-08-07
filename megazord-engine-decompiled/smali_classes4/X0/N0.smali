.class public final LX0/N0;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "ConnectionInfoCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LX0/N0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Landroid/os/Bundle;
    .annotation build LZ0/c$c;
        id = 0x1
    .end annotation
.end field

.field public c:[LS0/e;
    .annotation build LZ0/c$c;
        id = 0x2
    .end annotation
.end field

.field public d:I
    .annotation build LZ0/c$c;
        defaultValue = "0"
        id = 0x3
    .end annotation
.end field

.field public e:LX0/j;
    .annotation build LZ0/c$c;
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LX0/O0;

    invoke-direct {v0}, LX0/O0;-><init>()V

    sput-object v0, LX0/N0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LZ0/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[LS0/e;ILX0/j;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # [LS0/e;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # LX0/j;
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    .line 2
    invoke-direct {p0}, LZ0/a;-><init>()V

    iput-object p1, p0, LX0/N0;->b:Landroid/os/Bundle;

    iput-object p2, p0, LX0/N0;->c:[LS0/e;

    iput p3, p0, LX0/N0;->d:I

    iput-object p4, p0, LX0/N0;->e:LX0/j;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, LX0/N0;->b:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, LZ0/b;->k(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, LX0/N0;->c:[LS0/e;

    invoke-static {p1, v1, v2, p2, v3}, LZ0/b;->c0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget v2, p0, LX0/N0;->d:I

    invoke-static {p1, v1, v2}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, LX0/N0;->e:LX0/j;

    invoke-static {p1, v1, v2, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
