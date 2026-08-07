.class public final LB1/a0;
.super LB1/c0;
.source "SourceFile"


# instance fields
.field public final synthetic t:J

.field public final synthetic u:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(LB1/d0;Lcom/google/android/gms/common/api/l;JLandroid/app/PendingIntent;)V
    .locals 0

    iput-wide p3, p0, LB1/a0;->t:J

    iput-object p5, p0, LB1/a0;->u:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, LB1/c0;-><init>(Lcom/google/android/gms/common/api/l;)V

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

    iget-wide v0, p0, LB1/a0;->t:J

    iget-object v2, p0, LB1/a0;->u:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, v2}, LB1/A;->I0(JLandroid/app/PendingIntent;)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method
