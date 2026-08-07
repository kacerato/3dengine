.class public final Lv1/n;
.super Lcom/google/android/gms/common/api/internal/e$a;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Lv1/u;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lv1/n;->e:LQ1/l;

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

    iget-object v0, p0, Lv1/n;->e:LQ1/l;

    invoke-static {p1, v0}, LU0/s;->a(Lcom/google/android/gms/common/api/Status;LQ1/l;)V

    return-void
.end method
