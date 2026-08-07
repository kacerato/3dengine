.class public final LB1/e;
.super LB1/f;
.source "SourceFile"


# instance fields
.field public final synthetic t:LE1/y0;


# direct methods
.method public constructor <init>(LB1/g;Lcom/google/android/gms/common/api/l;LE1/y0;)V
    .locals 0

    iput-object p3, p0, LB1/e;->t:LE1/y0;

    invoke-direct {p0, p2}, LB1/f;-><init>(Lcom/google/android/gms/common/api/l;)V

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

    iget-object v0, p0, LB1/e;->t:LE1/y0;

    invoke-virtual {p1, v0, p0}, LB1/A;->O0(LE1/y0;Lcom/google/android/gms/common/api/internal/b$b;)V

    return-void
.end method
