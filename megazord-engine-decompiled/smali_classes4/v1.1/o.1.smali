.class public final Lv1/o;
.super Lv1/c0;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Lv1/u;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lv1/o;->e:LQ1/l;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lv1/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lv1/o;->e:LQ1/l;

    invoke-static {p1, p2, v0}, LU0/s;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)V

    return-void
.end method
