.class public final Lcom/google/android/gms/auth/api/identity/c$b;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "GoogleIdTokenRequestOptionsCreator"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/c$b$a;
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
            "Lcom/google/android/gms/auth/api/identity/c$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z
    .annotation build LZ0/c$c;
        getter = "isSupported"
        id = 0x1
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getServerClientId"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getNonce"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Z
    .annotation build LZ0/c$c;
        getter = "filterByAuthorizedAccounts"
        id = 0x4
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getLinkedServiceId"
        id = 0x5
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation build LZ0/c$c;
        getter = "getIdTokenDepositionScopes"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Z
    .annotation build LZ0/c$c;
        getter = "requestVerifiedPhoneNumber"
        id = 0x7
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation build LZ0/c$c;
        getter = "getClaims"
        id = 0x8
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/identity/C;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/C;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/c$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZLjava/util/List;)V
    .locals 2
    .param p1    # Z
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
    .param p4    # Z
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Z
        .annotation build LZ0/c$e;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x8
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string v1, "filterByAuthorizedAccounts and requestVerifiedPhoneNumber must not both be true; the Verified Phone Number feature only works in sign-ups."

    invoke-static {v0, v1}, LX0/A;->b(ZLjava/lang/Object;)V

    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/c$b;->b:Z

    if-eqz p1, :cond_2

    const-string p1, "serverClientId must be provided if Google ID tokens are requested"

    invoke-static {p2, p1}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/c$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/c$b;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/identity/c$b;->e:Z

    sget-object p1, Lcom/google/android/gms/auth/api/identity/c;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 p1, 0x0

    if-eqz p6, :cond_4

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/c$b;->g:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/identity/c$b;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/auth/api/identity/c$b;->h:Z

    iput-object p8, p0, Lcom/google/android/gms/auth/api/identity/c$b;->i:Ljava/util/List;

    return-void
.end method

.method public static B()Lcom/google/android/gms/auth/api/identity/c$b$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/identity/c$b$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/c$b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public A0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->b:Z

    return v0
.end method

.method public F0()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->h:Z

    return v0
.end method

.method public b0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->e:Z

    return v0
.end method

.method public c0()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->i:Ljava/util/List;

    return-object v0
.end method

.method public e0()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->g:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/c$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/c$b;

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->b:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/c$b;->b:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/c$b;->c:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/c$b;->d:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->e:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/c$b;->e:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/c$b;->f:Ljava/lang/String;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->g:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/c$b;->g:Ljava/util/List;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->h:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/api/identity/c$b;->h:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->i:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/c$b;->i:Ljava/util/List;

    invoke-static {v0, p1}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/c$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/c$b;->d:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/auth/api/identity/c$b;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/identity/c$b;->g:Ljava/util/List;

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/auth/api/identity/c$b;->i:Ljava/util/List;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public k0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public s0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/c$b;->c:Ljava/lang/String;

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

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c$b;->A0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c$b;->s0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c$b;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c$b;->b0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c$b;->k0()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c$b;->e0()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->a0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c$b;->F0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/c$b;->c0()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, LZ0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
