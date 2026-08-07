.class public Lc1/g;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "ModuleInstallResponseCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc1/g;",
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

.field public final c:Z
    .annotation build LZ0/c$c;
        defaultValue = "false"
        getter = "getShouldUnregisterListener"
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc1/m;

    invoke-direct {v0}, Lc1/m;-><init>()V

    sput-object v0, Lc1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation build LT0/a;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lc1/g;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
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
    .annotation build LZ0/c$b;
    .end annotation

    .line 2
    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, Lc1/g;->b:I

    iput-boolean p2, p0, Lc1/g;->c:Z

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget v0, p0, Lc1/g;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b0()I
    .locals 1

    iget v0, p0, Lc1/g;->b:I

    return v0
.end method

.method public final c0()Z
    .locals 1

    iget-boolean v0, p0, Lc1/g;->c:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lc1/g;->b0()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-boolean v1, p0, Lc1/g;->c:Z

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
