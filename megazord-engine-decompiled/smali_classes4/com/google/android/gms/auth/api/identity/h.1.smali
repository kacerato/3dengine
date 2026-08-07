.class public Lcom/google/android/gms/auth/api/identity/h;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "GetSignInIntentRequestCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/h$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getServerClientId"
        id = 0x1
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getHostedDomainFilter"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getSessionId"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getNonce"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Z
    .annotation build LZ0/c$c;
        getter = "requestVerifiedPhoneNumber"
        id = 0x5
    .end annotation
.end field

.field public final g:I
    .annotation build LZ0/c$c;
        getter = "getTheme"
        id = 0x6
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation build LZ0/c$c;
        getter = "getClaims"
        id = 0x7
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/identity/B;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/B;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Z
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p6    # I
        .annotation build LZ0/c$e;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x7
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/h;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/h;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/h;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/identity/h;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/auth/api/identity/h;->f:Z

    iput p6, p0, Lcom/google/android/gms/auth/api/identity/h;->g:I

    iput-object p7, p0, Lcom/google/android/gms/auth/api/identity/h;->h:Ljava/util/List;

    return-void
.end method

.method public static B()Lcom/google/android/gms/auth/api/identity/h$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/identity/h$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/h$a;-><init>()V

    return-object v0
.end method

.method public static s0(Lcom/google/android/gms/auth/api/identity/h;)Lcom/google/android/gms/auth/api/identity/h$a;
    .locals 2
    .param p0    # Lcom/google/android/gms/auth/api/identity/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/h;->B()Lcom/google/android/gms/auth/api/identity/h$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/h;->k0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/h$a;->f(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/h$a;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/h;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/h$a;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/h$a;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/h;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/h$a;->b(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/h$a;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/identity/h;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/h$a;->e(Z)Lcom/google/android/gms/auth/api/identity/h$a;

    iget v1, p0, Lcom/google/android/gms/auth/api/identity/h;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/h$a;->h(I)Lcom/google/android/gms/auth/api/identity/h$a;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/h;->b0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/h$a;->c(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/h$a;

    iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/h;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/api/identity/h$a;->g(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/h$a;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public b0()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/auth/api/identity/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/h;->h:Ljava/util/List;

    return-object v0
.end method

.method public c0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/h;

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/h;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/h;->b:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/h;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/h;->e:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/h;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/h;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/h;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/h;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/auth/api/identity/h;->g:I

    iget v2, p1, Lcom/google/android/gms/auth/api/identity/h;->g:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/h;->h:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/h;->h:Ljava/util/List;

    invoke-static {v0, p1}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/h;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/h;->e:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/auth/api/identity/h;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/auth/api/identity/h;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/api/identity/h;->h:Ljava/util/List;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public k0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n0()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/h;->f:Z

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

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/h;->k0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/h;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/h;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/h;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/h;->n0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/auth/api/identity/h;->g:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/h;->b0()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
