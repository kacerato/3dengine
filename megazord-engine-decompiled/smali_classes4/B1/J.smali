.class public final LB1/J;
.super LE1/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LE1/q0<",
        "LE1/v;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic t:LE1/t;


# direct methods
.method public constructor <init>(LB1/K;Lcom/google/android/gms/common/api/l;LE1/t;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, LB1/J;->t:LE1/t;

    invoke-direct {p0, p2}, LE1/q0;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;
    .locals 2

    new-instance v0, LE1/v;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LE1/v;-><init>(Lcom/google/android/gms/common/api/Status;LE1/w;)V

    return-object v0
.end method

.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, LB1/A;

    iget-object v0, p0, LB1/J;->t:LE1/t;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, LB1/A;->H0(LE1/t;Lcom/google/android/gms/common/api/internal/b$b;Ljava/lang/String;)V

    return-void
.end method
