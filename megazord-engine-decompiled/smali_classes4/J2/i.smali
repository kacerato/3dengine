.class public final LJ2/i;
.super LK2/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:LQ1/l;

.field public final synthetic d:LJ2/l;


# direct methods
.method public constructor <init>(LJ2/l;LQ1/l;LQ1/l;)V
    .locals 0

    iput-object p1, p0, LJ2/i;->d:LJ2/l;

    iput-object p3, p0, LJ2/i;->c:LQ1/l;

    invoke-direct {p0, p2}, LK2/j;-><init>(LQ1/l;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, LJ2/i;->d:LJ2/l;

    iget-object v0, v0, LJ2/l;->a:LK2/t;

    invoke-virtual {v0}, LK2/t;->e()Landroid/os/IInterface;

    move-result-object v0

    iget-object v1, p0, LJ2/i;->d:LJ2/l;

    invoke-static {v1}, LJ2/l;->c(LJ2/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LJ2/m;->a()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, LJ2/k;

    iget-object v4, p0, LJ2/i;->d:LJ2/l;

    iget-object v5, p0, LJ2/i;->c:LQ1/l;

    invoke-static {v4}, LJ2/l;->c(LJ2/l;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, LJ2/k;-><init>(LJ2/l;LQ1/l;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, LK2/f;->P(Ljava/lang/String;Landroid/os/Bundle;LK2/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, LJ2/l;->b()LK2/i;

    move-result-object v1

    iget-object v2, p0, LJ2/i;->d:LJ2/l;

    invoke-static {v2}, LJ2/l;->c(LJ2/l;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "error requesting in-app review for %s"

    invoke-virtual {v1, v0, v3, v2}, LK2/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, LJ2/i;->c:LQ1/l;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, LQ1/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method
