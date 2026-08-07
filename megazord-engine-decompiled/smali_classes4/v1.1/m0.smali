.class public final Lv1/m0;
.super Lcom/google/android/gms/common/api/internal/e$a;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Lv1/e;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lv1/m0;->e:LQ1/l;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final O0(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lv1/m0;->e:LQ1/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lv1/m0;->e:LQ1/l;

    invoke-static {p1}, LX0/c;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v0, p1}, LQ1/l;->b(Ljava/lang/Exception;)V

    return-void
.end method
