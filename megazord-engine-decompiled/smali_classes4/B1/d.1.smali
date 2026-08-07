.class public final LB1/d;
.super LB1/f;
.source "SourceFile"


# instance fields
.field public final synthetic t:LE1/p;

.field public final synthetic u:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(LB1/g;Lcom/google/android/gms/common/api/l;LE1/p;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, LB1/d;->t:LE1/p;

    iput-object p4, p0, LB1/d;->u:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, LB1/f;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, LB1/A;

    iget-object v0, p0, LB1/d;->t:LE1/p;

    iget-object v1, p0, LB1/d;->u:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, p0}, LB1/A;->N0(LE1/p;Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/b$b;)V

    return-void
.end method
