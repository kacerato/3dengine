.class public Lc1/b;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "ModuleAvailabilityResponseCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/b$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc1/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z
    .annotation build LZ0/c$c;
        getter = "areModulesAvailable"
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LZ0/c$c;
        getter = "getAvailabilityStatus"
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc1/j;

    invoke-direct {v0}, Lc1/j;-><init>()V

    sput-object v0, Lc1/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1    # Z
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput-boolean p1, p0, Lc1/b;->b:Z

    iput p2, p0, Lc1/b;->c:I

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lc1/b;->b:Z

    return v0
.end method

.method public b0()I
    .locals 1
    .annotation build Lc1/b$a;
    .end annotation

    iget v0, p0, Lc1/b;->c:I

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

    invoke-virtual {p0}, Lc1/b;->B()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lc1/b;->b0()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
