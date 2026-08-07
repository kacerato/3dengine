.class public final La1/d;
.super La1/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(La1/f;Lcom/google/android/gms/common/api/l;)V
    .locals 0

    invoke-direct {p0, p2}, La1/g;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, La1/i;

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, La1/m;

    new-instance v0, La1/e;

    invoke-direct {v0, p0}, La1/e;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p1, v0}, La1/m;->L1(La1/l;)V

    return-void
.end method
