.class public final LB1/q0;
.super LB1/u0;
.source "SourceFile"


# instance fields
.field public final synthetic t:Lcom/google/android/gms/location/LocationRequest;

.field public final synthetic u:LE1/q;

.field public final synthetic v:Landroid/os/Looper;


# direct methods
.method public constructor <init>(LB1/w0;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/location/LocationRequest;LE1/q;Landroid/os/Looper;)V
    .locals 0

    iput-object p3, p0, LB1/q0;->t:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, LB1/q0;->u:LE1/q;

    iput-object p5, p0, LB1/q0;->v:Landroid/os/Looper;

    invoke-direct {p0, p2}, LB1/u0;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, LB1/A;

    new-instance v0, LB1/v0;

    invoke-direct {v0, p0}, LB1/v0;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    const/4 v1, 0x0

    iget-object v2, p0, LB1/q0;->t:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v1, v2}, LB1/C;->b(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)LB1/C;

    move-result-object v1

    iget-object v2, p0, LB1/q0;->u:LE1/q;

    iget-object v3, p0, LB1/q0;->v:Landroid/os/Looper;

    invoke-static {v3}, LB1/L;->a(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object v3

    const-class v4, LE1/q;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/g;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/f;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, LB1/A;->x0(LB1/C;Lcom/google/android/gms/common/api/internal/f;LB1/j;)V

    return-void
.end method
