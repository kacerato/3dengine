.class public final LQ0/m;
.super LQ0/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/l;)V
    .locals 0

    invoke-direct {p0, p1}, LQ0/p;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;
    .locals 0

    return-object p1
.end method

.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, LQ0/i;

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LQ0/w;

    new-instance v1, LQ0/l;

    invoke-direct {v1, p0}, LQ0/l;-><init>(LQ0/m;)V

    invoke-virtual {p1}, LQ0/i;->v0()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, LQ0/w;->f1(LQ0/v;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
