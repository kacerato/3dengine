.class public Lr1/z;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "UvmEntryCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/z$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr1/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LZ0/c$c;
        getter = "getUserVerificationMethod"
        id = 0x1
    .end annotation
.end field

.field public final c:S
    .annotation build LZ0/c$c;
        getter = "getKeyProtectionType"
        id = 0x2
    .end annotation
.end field

.field public final d:S
    .annotation build LZ0/c$c;
        getter = "getMatcherProtectionType"
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/X;

    invoke-direct {v0}, Lr1/X;-><init>()V

    sput-object v0, Lr1/z;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ISS)V
    .locals 0
    .param p1    # I
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # S
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # S
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, Lr1/z;->b:I

    iput-short p2, p0, Lr1/z;->c:S

    iput-short p3, p0, Lr1/z;->d:S

    return-void
.end method


# virtual methods
.method public B()S
    .locals 1

    iget-short v0, p0, Lr1/z;->c:S

    return v0
.end method

.method public b0()S
    .locals 1

    iget-short v0, p0, Lr1/z;->d:S

    return v0
.end method

.method public c0()I
    .locals 1

    iget v0, p0, Lr1/z;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lr1/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lr1/z;

    iget v0, p0, Lr1/z;->b:I

    iget v2, p1, Lr1/z;->b:I

    if-ne v0, v2, :cond_1

    iget-short v0, p0, Lr1/z;->c:S

    iget-short v2, p1, Lr1/z;->c:S

    if-ne v0, v2, :cond_1

    iget-short v0, p0, Lr1/z;->d:S

    iget-short p1, p1, Lr1/z;->d:S

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lr1/z;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-short v1, p0, Lr1/z;->c:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iget-short v2, p0, Lr1/z;->d:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

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

    invoke-virtual {p0}, Lr1/z;->c0()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lr1/z;->B()S

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->U(Landroid/os/Parcel;IS)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lr1/z;->b0()S

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->U(Landroid/os/Parcel;IS)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
