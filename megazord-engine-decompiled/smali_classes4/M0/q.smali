.class public abstract LM0/q;
.super LU0/r;
.source "SourceFile"


# instance fields
.field public d:LQ1/l;


# direct methods
.method public synthetic constructor <init>(ILM0/p;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, LU0/r;-><init>([LS0/e;ZI)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/android/gms/common/api/a$b;LQ1/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/auth/q;

    iput-object p2, p0, LM0/q;->d:LQ1/l;

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/v;

    invoke-virtual {p0, p1}, LM0/q;->f(Lcom/google/android/gms/internal/auth/v;)V

    return-void
.end method

.method public abstract f(Lcom/google/android/gms/internal/auth/v;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
