.class public final LQ0/k;
.super LQ0/p;
.source "SourceFile"


# instance fields
.field public final synthetic t:Landroid/content/Context;

.field public final synthetic u:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/l;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0

    iput-object p2, p0, LQ0/k;->t:Landroid/content/Context;

    iput-object p3, p0, LQ0/k;->u:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p0, p1}, LQ0/p;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final synthetic k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;
    .locals 2

    new-instance v0, LP0/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, LP0/d;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, LQ0/i;

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LQ0/w;

    iget-object v0, p0, LQ0/k;->t:Landroid/content/Context;

    new-instance v1, LQ0/j;

    iget-object v2, p0, LQ0/k;->u:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, p0, v0, v2}, LQ0/j;-><init>(LQ0/k;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {p1, v1, v2}, LQ0/w;->i(LQ0/v;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
