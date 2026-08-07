.class public Lr1/b;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "AuthenticationExtensionsClientOutputsCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/b$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr1/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lr1/y;
    .annotation build LZ0/c$c;
        getter = "getUvmEntries"
        id = 0x1
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lr1/b0;
    .annotation build LZ0/c$c;
        getter = "getDevicePubKey"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lr1/c;
    .annotation build LZ0/c$c;
        getter = "getCredProps"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Lr1/d0;
    .annotation build LZ0/c$c;
        getter = "getPrf"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/Y;

    invoke-direct {v0}, Lr1/Y;-><init>()V

    sput-object v0, Lr1/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lr1/y;Lr1/b0;Lr1/c;Lr1/d0;)V
    .locals 0
    .param p1    # Lr1/y;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lr1/b0;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lr1/c;
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lr1/d0;
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput-object p1, p0, Lr1/b;->b:Lr1/y;

    iput-object p2, p0, Lr1/b;->c:Lr1/b0;

    iput-object p3, p0, Lr1/b;->d:Lr1/c;

    iput-object p4, p0, Lr1/b;->e:Lr1/d0;

    return-void
.end method

.method public static b([B)Lr1/b;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lr1/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, LZ0/d;->a([BLandroid/os/Parcelable$Creator;)LZ0/c;

    move-result-object p0

    check-cast p0, Lr1/b;

    return-object p0
.end method


# virtual methods
.method public B()Lr1/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lr1/b;->d:Lr1/c;

    return-object v0
.end method

.method public b0()Lr1/y;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lr1/b;->b:Lr1/y;

    return-object v0
.end method

.method public c0()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LZ0/d;->n(LZ0/c;)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lr1/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lr1/b;

    iget-object v0, p0, Lr1/b;->b:Lr1/y;

    iget-object v2, p1, Lr1/b;->b:Lr1/y;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr1/b;->c:Lr1/b0;

    iget-object v2, p1, Lr1/b;->c:Lr1/b0;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr1/b;->d:Lr1/c;

    iget-object v2, p1, Lr1/b;->d:Lr1/c;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr1/b;->e:Lr1/d0;

    iget-object p1, p1, Lr1/b;->e:Lr1/d0;

    invoke-static {v0, p1}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lr1/b;->b:Lr1/y;

    iget-object v1, p0, Lr1/b;->c:Lr1/b0;

    iget-object v2, p0, Lr1/b;->d:Lr1/c;

    iget-object v3, p0, Lr1/b;->e:Lr1/d0;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lr1/b;->b0()Lr1/y;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    iget-object v2, p0, Lr1/b;->c:Lr1/b0;

    invoke-static {p1, v1, v2, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lr1/b;->B()Lr1/c;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lr1/b;->e:Lr1/d0;

    invoke-static {p1, v1, v2, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
