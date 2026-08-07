.class public final Lcom/google/android/gms/internal/auth/P;
.super Lcom/google/android/gms/internal/auth/F;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/Q;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/P;->e:LQ1/l;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/F;-><init>()V

    return-void
.end method


# virtual methods
.method public final v0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xbbe

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/P;->e:LQ1/l;

    invoke-static {v0, p1, v1}, LU0/s;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)V

    return-void
.end method
