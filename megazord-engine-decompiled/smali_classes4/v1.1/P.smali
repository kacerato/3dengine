.class public final Lv1/P;
.super LX0/n;
.source "SourceFile"


# instance fields
.field public final R:LL0/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LX0/i;LL0/h;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, LX0/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILX0/i;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)V

    new-instance p1, LL0/g;

    if-nez p4, :cond_0

    sget-object p4, LL0/h;->e:LL0/h;

    :cond_0
    invoke-direct {p1, p4}, LL0/g;-><init>(LL0/h;)V

    invoke-static {}, Lv1/x;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, LL0/g;->a(Ljava/lang/String;)LL0/g;

    new-instance p2, LL0/h;

    invoke-direct {p2, p1}, LL0/h;-><init>(LL0/g;)V

    iput-object p2, p0, Lv1/P;->R:LL0/h;

    return-void
.end method


# virtual methods
.method public final I()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lv1/P;->R:LL0/h;

    invoke-virtual {v0}, LL0/h;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method public final t()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method public final synthetic z(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lv1/Q;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lv1/Q;

    goto :goto_0

    :cond_1
    new-instance v0, Lv1/Q;

    invoke-direct {v0, p1}, Lv1/Q;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
