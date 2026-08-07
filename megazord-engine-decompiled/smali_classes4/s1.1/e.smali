.class public final Ls1/e;
.super LA1/g0;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Ls1/a;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Ls1/e;->e:LQ1/l;

    invoke-direct {p0}, LA1/g0;-><init>()V

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

    new-instance v0, LA1/f0;

    invoke-direct {v0, p2}, LA1/f0;-><init>(Landroid/app/PendingIntent;)V

    iget-object p2, p0, Ls1/e;->e:LQ1/l;

    invoke-static {p1, v0, p2}, LU0/s;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)V

    return-void
.end method
