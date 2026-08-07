.class public final Lq1/l;
.super LA1/c0;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Lq1/a;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lq1/l;->e:LQ1/l;

    invoke-direct {p0}, LA1/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, LA1/U;

    invoke-direct {v0, p2}, LA1/U;-><init>(Landroid/app/PendingIntent;)V

    iget-object p2, p0, Lq1/l;->e:LQ1/l;

    invoke-static {p1, v0, p2}, LU0/s;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)V

    return-void
.end method
