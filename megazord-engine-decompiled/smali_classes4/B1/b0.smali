.class public final LB1/b0;
.super LB1/c0;
.source "SourceFile"


# instance fields
.field public final synthetic t:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(LB1/d0;Lcom/google/android/gms/common/api/l;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, LB1/b0;->t:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, LB1/c0;-><init>(Lcom/google/android/gms/common/api/l;)V

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

    check-cast p1, LB1/A;

    iget-object v0, p0, LB1/b0;->t:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, LB1/A;->L0(Landroid/app/PendingIntent;)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method
