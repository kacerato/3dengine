.class public final Lv1/h;
.super Lv1/g0;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Lv1/k;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lv1/h;->e:LQ1/l;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lv1/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public final x1(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/identity/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lv1/h;->e:LQ1/l;

    invoke-static {p1, p2, v0}, LU0/s;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)V

    return-void
.end method
