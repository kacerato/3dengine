.class public final LE1/Q;
.super LE1/W;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/f;

.field public final synthetic c:LE1/j;


# direct methods
.method public constructor <init>(LE1/j;Lcom/google/android/gms/common/api/internal/f;)V
    .locals 0

    iput-object p1, p0, LE1/Q;->c:LE1/j;

    iput-object p2, p0, LE1/Q;->b:Lcom/google/android/gms/common/api/internal/f;

    invoke-direct {p0}, LE1/W;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    invoke-virtual {p0}, LE1/W;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LE1/Q;->c:LE1/j;

    new-instance v1, LE1/S;

    invoke-direct {v1, v0, p2}, LE1/S;-><init>(LE1/j;LQ1/l;)V

    :try_start_0
    iget-object v0, p0, LE1/Q;->b:Lcom/google/android/gms/common/api/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/f;->b()Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, v1}, LB1/A;->D0(Lcom/google/android/gms/common/api/internal/f$a;LB1/j;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p2, p1}, LQ1/l;->d(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method
