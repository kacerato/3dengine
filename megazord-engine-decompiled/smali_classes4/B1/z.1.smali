.class public final LB1/z;
.super LB1/o;
.source "SourceFile"


# instance fields
.field public e:Lcom/google/android/gms/common/api/internal/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "LE1/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/b$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "LE1/v;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LB1/o;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "listener can\'t be null."

    invoke-static {v0, v1}, LX0/A;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, LB1/z;->e:Lcom/google/android/gms/common/api/internal/b$b;

    return-void
.end method


# virtual methods
.method public final d0(LE1/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LB1/z;->e:Lcom/google/android/gms/common/api/internal/b$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/b$b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, LB1/z;->e:Lcom/google/android/gms/common/api/internal/b$b;

    return-void
.end method
