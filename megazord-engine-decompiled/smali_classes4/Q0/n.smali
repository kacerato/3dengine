.class public final LQ0/n;
.super LQ0/e;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ0/o;


# direct methods
.method public constructor <init>(LQ0/o;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LQ0/n;->e:LQ0/o;

    invoke-direct {p0}, LQ0/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final p1(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LQ0/n;->e:LQ0/o;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method
