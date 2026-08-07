.class public Lcom/google/android/gms/fido/fido2/api/common/d;
.super Lr1/v;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "PublicKeyCredentialCreationOptionsCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/fido2/api/common/d$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lr1/s;
    .annotation build LZ0/c$c;
        getter = "getRp"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lr1/t;
    .annotation build LZ0/c$c;
        getter = "getUser"
        id = 0x3
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:[B
    .annotation build LZ0/c$c;
        getter = "getChallenge"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation build LZ0/c$c;
        getter = "getParameters"
        id = 0x5
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Ljava/lang/Double;
    .annotation build LZ0/c$c;
        getter = "getTimeoutSeconds"
        id = 0x6
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation build LZ0/c$c;
        getter = "getExcludeList"
        id = 0x7
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Lcom/google/android/gms/fido/fido2/api/common/c;
    .annotation build LZ0/c$c;
        getter = "getAuthenticatorSelection"
        id = 0x8
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljava/lang/Integer;
    .annotation build LZ0/c$c;
        getter = "getRequestId"
        id = 0x9
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
    .annotation build LZ0/c$c;
        getter = "getTokenBinding"
        id = 0xa
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;
    .annotation build LZ0/c$c;
        getter = "getAttestationConveyancePreferenceAsString"
        id = 0xb
        type = "java.lang.String"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:Lr1/a;
    .annotation build LZ0/c$c;
        getter = "getAuthenticationExtensions"
        id = 0xc
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr1/K;

    invoke-direct {v0}, Lr1/K;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lr1/s;Lr1/t;[BLjava/util/List;Ljava/lang/Double;Ljava/util/List;Lcom/google/android/gms/fido/fido2/api/common/c;Ljava/lang/Integer;Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;Ljava/lang/String;Lr1/a;)V
    .locals 0
    .param p1    # Lr1/s;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lr1/t;
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
    .param p4    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Double;
        .annotation build LZ0/c$e;
            id = 0x6
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x7
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/fido/fido2/api/common/c;
        .annotation build LZ0/c$e;
            id = 0x8
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build LZ0/c$e;
            id = 0x9
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
        .annotation build LZ0/c$e;
            id = 0xa
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0xb
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lr1/a;
        .annotation build LZ0/c$e;
            id = 0xc
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, Lr1/v;-><init>()V

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr1/s;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->b:Lr1/s;

    invoke-static {p2}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr1/t;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->c:Lr1/t;

    invoke-static {p3}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->d:[B

    invoke-static {p4}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->f:Ljava/lang/Double;

    iput-object p6, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->g:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->h:Lcom/google/android/gms/fido/fido2/api/common/c;

    iput-object p8, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->i:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->j:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    if-eqz p10, :cond_0

    :try_start_0
    invoke-static {p10}, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->b(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->k:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;
    :try_end_0
    .catch Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference$UnsupportedAttestationConveyancePreferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->k:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    :goto_0
    iput-object p11, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->l:Lr1/a;

    return-void
.end method

.method public static s0([B)Lcom/google/android/gms/fido/fido2/api/common/d;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, LZ0/d;->a([BLandroid/os/Parcelable$Creator;)LZ0/c;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/d;

    return-object p0
.end method


# virtual methods
.method public A0()Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->k:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    return-object v0
.end method

.method public B()Lr1/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->l:Lr1/a;

    return-object v0
.end method

.method public F0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->k:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G0()Lcom/google/android/gms/fido/fido2/api/common/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->h:Lcom/google/android/gms/fido/fido2/api/common/c;

    return-object v0
.end method

.method public J0()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->g:Ljava/util/List;

    return-object v0
.end method

.method public K0()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/fido2/api/common/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->e:Ljava/util/List;

    return-object v0
.end method

.method public L0()Lr1/s;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->b:Lr1/s;

    return-object v0
.end method

.method public M0()Lr1/t;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->c:Lr1/t;

    return-object v0
.end method

.method public b0()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->d:[B

    return-object v0
.end method

.method public c0()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public e0()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->f:Ljava/lang/Double;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/fido/fido2/api/common/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/d;

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->b:Lr1/s;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->b:Lr1/s;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->c:Lr1/t;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->c:Lr1/t;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->d:[B

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->d:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->f:Ljava/lang/Double;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->f:Ljava/lang/Double;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->e:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->g:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->g:Ljava/util/List;

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->g:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->h:Lcom/google/android/gms/fido/fido2/api/common/c;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->h:Lcom/google/android/gms/fido/fido2/api/common/c;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->i:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->i:Ljava/lang/Integer;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->j:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->j:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->k:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->k:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    invoke-static {v0, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->l:Lr1/a;

    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/d;->l:Lr1/a;

    invoke-static {v0, p1}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->b:Lr1/s;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->c:Lr1/t;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->d:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->e:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->f:Ljava/lang/Double;

    iget-object v5, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->g:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->h:Lcom/google/android/gms/fido/fido2/api/common/c;

    iget-object v7, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->i:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->j:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iget-object v9, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->k:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    iget-object v10, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->l:Lr1/a;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public k0()Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/d;->j:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    return-object v0
.end method

.method public n0()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LZ0/d;->n(LZ0/c;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/d;->L0()Lr1/s;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/d;->M0()Lr1/t;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/d;->b0()[B

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LZ0/b;->m(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/d;->K0()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LZ0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/d;->e0()Ljava/lang/Double;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LZ0/b;->u(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/d;->J0()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LZ0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/d;->G0()Lcom/google/android/gms/fido/fido2/api/common/c;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/d;->c0()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LZ0/b;->I(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/d;->k0()Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/d;->F0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/d;->B()Lr1/a;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
