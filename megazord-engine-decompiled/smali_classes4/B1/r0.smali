.class public final LB1/r0;
.super LB1/u0;
.source "SourceFile"


# instance fields
.field public final synthetic t:Lcom/google/android/gms/location/LocationRequest;

.field public final synthetic u:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(LB1/w0;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, LB1/r0;->t:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, LB1/r0;->u:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, LB1/u0;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, LB1/A;

    new-instance v0, LB1/v0;

    invoke-direct {v0, p0}, LB1/v0;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    iget-object v1, p0, LB1/r0;->t:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, LB1/r0;->u:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v2, v0}, LB1/A;->A0(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;LB1/j;)V

    return-void
.end method
