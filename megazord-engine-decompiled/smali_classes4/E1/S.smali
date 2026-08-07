.class public final LE1/S;
.super LB1/i;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(LE1/j;LQ1/l;)V
    .locals 0

    iput-object p2, p0, LE1/S;->e:LQ1/l;

    invoke-direct {p0}, LB1/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final O1()V
    .locals 0

    return-void
.end method

.method public final W1(LB1/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, LB1/b;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, LE1/S;->e:LQ1/l;

    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    const-string v3, "Got null status from location service"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, LQ1/l;->d(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->c0()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, LE1/S;->e:LQ1/l;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, LE1/S;->e:LQ1/l;

    invoke-static {p1}, LX0/c;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v0, p1}, LQ1/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method
