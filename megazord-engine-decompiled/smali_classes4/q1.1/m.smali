.class public final Lq1/m;
.super LA1/O;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Lq1/a;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lq1/m;->e:LQ1/l;

    invoke-direct {p0}, LA1/O;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lq1/m;->e:LQ1/l;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lq1/m;->e:LQ1/l;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, LQ1/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method
