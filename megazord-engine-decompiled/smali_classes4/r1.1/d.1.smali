.class public Lr1/d;
.super Lr1/f;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "AuthenticatorAssertionResponseCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lr1/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:[B
    .annotation build LZ0/c$c;
        getter = "getKeyHandle"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:[B
    .annotation build LZ0/c$c;
        getter = "getClientDataJSON"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:[B
    .annotation build LZ0/c$c;
        getter = "getAuthenticatorData"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:[B
    .annotation build LZ0/c$c;
        getter = "getSignature"
        id = 0x5
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:[B
    .annotation build LZ0/c$c;
        getter = "getUserHandle"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/f0;

    invoke-direct {v0}, Lr1/f0;-><init>()V

    sput-object v0, Lr1/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[B[B[B[B)V
    .locals 0
    .param p1    # [B
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build LZ0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, Lr1/f;-><init>()V

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lr1/d;->b:[B

    invoke-static {p2}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lr1/d;->c:[B

    invoke-static {p3}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lr1/d;->d:[B

    invoke-static {p4}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lr1/d;->e:[B

    iput-object p5, p0, Lr1/d;->f:[B

    return-void
.end method

.method public static c0([B)Lr1/d;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lr1/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, LZ0/d;->a([BLandroid/os/Parcelable$Creator;)LZ0/c;

    move-result-object p0

    check-cast p0, Lr1/d;

    return-object p0
.end method


# virtual methods
.method public B()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lr1/d;->c:[B

    return-object v0
.end method

.method public b0()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LZ0/d;->n(LZ0/c;)[B

    move-result-object v0

    return-object v0
.end method

.method public e0()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lr1/d;->d:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lr1/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lr1/d;

    iget-object v0, p0, Lr1/d;->b:[B

    iget-object v2, p1, Lr1/d;->b:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr1/d;->c:[B

    iget-object v2, p1, Lr1/d;->c:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr1/d;->d:[B

    iget-object v2, p1, Lr1/d;->d:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr1/d;->e:[B

    iget-object v2, p1, Lr1/d;->e:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr1/d;->f:[B

    iget-object p1, p1, Lr1/d;->f:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lr1/d;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lr1/d;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lr1/d;->d:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lr1/d;->e:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lr1/d;->f:[B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public k0()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lr1/d;->b:[B

    return-object v0
.end method

.method public n0()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lr1/d;->e:[B

    return-object v0
.end method

.method public s0()[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lr1/d;->f:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LA1/l;->a(Ljava/lang/Object;)LA1/k;

    move-result-object v0

    invoke-static {}, LA1/H;->c()LA1/H;

    move-result-object v1

    iget-object v2, p0, Lr1/d;->b:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, LA1/H;->d([BII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyHandle"

    invoke-virtual {v0, v2, v1}, LA1/k;->b(Ljava/lang/String;Ljava/lang/Object;)LA1/k;

    invoke-static {}, LA1/H;->c()LA1/H;

    move-result-object v1

    iget-object v2, p0, Lr1/d;->c:[B

    array-length v3, v2

    invoke-virtual {v1, v2, v4, v3}, LA1/H;->d([BII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientDataJSON"

    invoke-virtual {v0, v2, v1}, LA1/k;->b(Ljava/lang/String;Ljava/lang/Object;)LA1/k;

    invoke-static {}, LA1/H;->c()LA1/H;

    move-result-object v1

    iget-object v2, p0, Lr1/d;->d:[B

    array-length v3, v2

    invoke-virtual {v1, v2, v4, v3}, LA1/H;->d([BII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "authenticatorData"

    invoke-virtual {v0, v2, v1}, LA1/k;->b(Ljava/lang/String;Ljava/lang/Object;)LA1/k;

    invoke-static {}, LA1/H;->c()LA1/H;

    move-result-object v1

    iget-object v2, p0, Lr1/d;->e:[B

    array-length v3, v2

    invoke-virtual {v1, v2, v4, v3}, LA1/H;->d([BII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, LA1/k;->b(Ljava/lang/String;Ljava/lang/Object;)LA1/k;

    iget-object v1, p0, Lr1/d;->f:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    invoke-static {}, LA1/H;->c()LA1/H;

    move-result-object v3

    invoke-virtual {v3, v1, v4, v2}, LA1/H;->d([BII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userHandle"

    invoke-virtual {v0, v2, v1}, LA1/k;->b(Ljava/lang/String;Ljava/lang/Object;)LA1/k;

    :cond_0
    invoke-virtual {v0}, LA1/k;->toString()Ljava/lang/String;

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

    invoke-virtual {p0}, Lr1/d;->k0()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LZ0/b;->m(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lr1/d;->B()[B

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->m(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lr1/d;->e0()[B

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->m(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lr1/d;->n0()[B

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->m(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x6

    invoke-virtual {p0}, Lr1/d;->s0()[B

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->m(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
