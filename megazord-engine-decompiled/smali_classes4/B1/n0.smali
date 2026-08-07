.class public final LB1/n0;
.super LB1/u0;
.source "SourceFile"


# direct methods
.method public constructor <init>(LB1/w0;Lcom/google/android/gms/common/api/l;)V
    .locals 0

    invoke-direct {p0, p2}, LB1/u0;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic w(Lcom/google/android/gms/common/api/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, LB1/A;

    new-instance v0, LB1/v0;

    invoke-direct {v0, p0}, LB1/v0;-><init>(Lcom/google/android/gms/common/api/internal/b$b;)V

    invoke-virtual {p1, v0}, LB1/A;->G0(LB1/j;)V

    return-void
.end method
