.class public final LB1/k0;
.super LB1/u0;
.source "SourceFile"


# instance fields
.field public final synthetic t:LE1/q;


# direct methods
.method public constructor <init>(LB1/w0;Lcom/google/android/gms/common/api/l;LE1/q;)V
    .locals 0

    iput-object p3, p0, LB1/k0;->t:LE1/q;

    invoke-direct {p0, p2}, LB1/u0;-><init>(Lcom/google/android/gms/common/api/l;)V

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

    iget-object v0, p0, LB1/k0;->t:LE1/q;

    const-class v1, LE1/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/g;->c(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v0

    new-instance v1, LB1/v0;

    invoke-direct {v1, p0}, LB1/v0;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p1, v0, v1}, LB1/A;->D0(Lcom/google/android/gms/common/api/internal/f$a;LB1/j;)V

    return-void
.end method
