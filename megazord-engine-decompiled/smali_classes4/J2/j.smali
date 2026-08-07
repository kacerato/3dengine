.class public LJ2/j;
.super LK2/g;
.source "SourceFile"


# instance fields
.field public final e:LK2/i;

.field public final f:LQ1/l;

.field public final synthetic g:LJ2/l;


# direct methods
.method public constructor <init>(LJ2/l;LK2/i;LQ1/l;)V
    .locals 0

    iput-object p1, p0, LJ2/j;->g:LJ2/l;

    invoke-direct {p0}, LK2/g;-><init>()V

    iput-object p2, p0, LJ2/j;->e:LK2/i;

    iput-object p3, p0, LJ2/j;->f:LQ1/l;

    return-void
.end method


# virtual methods
.method public j(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, LJ2/j;->g:LJ2/l;

    iget-object p1, p1, LJ2/l;->a:LK2/t;

    if-eqz p1, :cond_0

    iget-object v0, p0, LJ2/j;->f:LQ1/l;

    invoke-virtual {p1, v0}, LK2/t;->r(LQ1/l;)V

    :cond_0
    iget-object p1, p0, LJ2/j;->e:LK2/i;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetLaunchReviewFlowInfo"

    invoke-virtual {p1, v1, v0}, LK2/i;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
