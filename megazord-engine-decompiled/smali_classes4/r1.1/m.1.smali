.class public Lr1/m;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "FidoCredentialDetailsCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr1/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getUserName"
        id = 0x1
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getUserDisplayName"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:[B
    .annotation build LZ0/c$c;
        getter = "getUserId"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:[B
    .annotation build LZ0/c$c;
        getter = "getCredentialId"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Z
    .annotation build LZ0/c$c;
        getter = "getIsDiscoverable"
        id = 0x5
    .end annotation
.end field

.field public final g:Z
    .annotation build LZ0/c$c;
        getter = "getIsPaymentCredential"
        id = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/s0;

    invoke-direct {v0}, Lr1/s0;-><init>()V

    sput-object v0, Lr1/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[BZZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Z
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Z
        .annotation build LZ0/c$e;
            id = 0x6
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput-object p1, p0, Lr1/m;->b:Ljava/lang/String;

    iput-object p2, p0, Lr1/m;->c:Ljava/lang/String;

    iput-object p3, p0, Lr1/m;->d:[B

    iput-object p4, p0, Lr1/m;->e:[B

    iput-boolean p5, p0, Lr1/m;->f:Z

    iput-boolean p6, p0, Lr1/m;->g:Z

    return-void
.end method

.method public static b([B)Lr1/m;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lr1/m;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, LZ0/d;->a([BLandroid/os/Parcelable$Creator;)LZ0/c;

    move-result-object p0

    check-cast p0, Lr1/m;

    return-object p0
.end method


# virtual methods
.method public B()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lr1/m;->e:[B

    return-object v0
.end method

.method public b0()Z
    .locals 1

    iget-boolean v0, p0, Lr1/m;->f:Z

    return v0
.end method

.method public c0()Z
    .locals 1

    iget-boolean v0, p0, Lr1/m;->g:Z

    return v0
.end method

.method public e0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lr1/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lr1/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lr1/m;

    iget-object v0, p0, Lr1/m;->b:Ljava/lang/String;

    iget-object v2, p1, Lr1/m;->b:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr1/m;->c:Ljava/lang/String;

    iget-object v2, p1, Lr1/m;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr1/m;->d:[B

    iget-object v2, p1, Lr1/m;->d:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr1/m;->e:[B

    iget-object v2, p1, Lr1/m;->e:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr1/m;->f:Z

    iget-boolean v2, p1, Lr1/m;->f:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lr1/m;->g:Z

    iget-boolean p1, p1, Lr1/m;->g:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lr1/m;->b:Ljava/lang/String;

    iget-object v1, p0, Lr1/m;->c:Ljava/lang/String;

    iget-object v2, p0, Lr1/m;->d:[B

    iget-object v3, p0, Lr1/m;->e:[B

    iget-boolean v4, p0, Lr1/m;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Lr1/m;->g:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public k0()[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lr1/m;->d:[B

    return-object v0
.end method

.method public n0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lr1/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public s0()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LZ0/d;->n(LZ0/c;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lr1/m;->n0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lr1/m;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lr1/m;->k0()[B

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->m(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lr1/m;->B()[B

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->m(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lr1/m;->b0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x6

    invoke-virtual {p0}, Lr1/m;->c0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
