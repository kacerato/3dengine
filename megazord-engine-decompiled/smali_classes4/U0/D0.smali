.class public final LU0/D0;
.super LU0/r;
.source "SourceFile"


# instance fields
.field public final synthetic d:LU0/r$a;


# direct methods
.method public constructor <init>(LU0/r$a;[LS0/e;ZI)V
    .locals 0

    iput-object p1, p0, LU0/D0;->d:LU0/r$a;

    invoke-direct {p0, p2, p3, p4}, LU0/r;-><init>([LS0/e;ZI)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/a$b;LQ1/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, LU0/D0;->d:LU0/r$a;

    invoke-static {v0}, LU0/r$a;->g(LU0/r$a;)LU0/n;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LU0/n;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
