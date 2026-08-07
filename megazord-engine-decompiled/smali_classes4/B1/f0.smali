.class public LB1/f0;
.super LX0/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LX0/n<",
        "LB1/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final R:Ljava/lang/String;

.field public final S:LB1/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LB1/I<",
            "LB1/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;Ljava/lang/String;LX0/i;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, LX0/n;-><init>(Landroid/content/Context;Landroid/os/Looper;ILX0/i;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)V

    new-instance p1, LB1/e0;

    invoke-direct {p1, p0}, LB1/e0;-><init>(LB1/f0;)V

    iput-object p1, p0, LB1/f0;->S:LB1/I;

    iput-object p5, p0, LB1/f0;->R:Ljava/lang/String;

    return-void
.end method

.method public static synthetic v0(LB1/f0;)V
    .locals 0

    invoke-virtual {p0}, LX0/f;->y()V

    return-void
.end method


# virtual methods
.method public final C()[LS0/e;
    .locals 1

    sget-object v0, LE1/Z0;->f:[LS0/e;

    return-object v0
.end method

.method public final I()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, LB1/f0;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method public final t()I
    .locals 1

    const v0, 0xb2c988

    return v0
.end method

.method public final bridge synthetic z(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LB1/n;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, LB1/n;

    goto :goto_0

    :cond_1
    new-instance v0, LB1/m;

    invoke-direct {v0, p1}, LB1/m;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
