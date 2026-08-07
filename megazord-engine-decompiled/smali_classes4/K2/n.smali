.class public final LK2/n;
.super LK2/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:LK2/t;


# direct methods
.method public constructor <init>(LK2/t;)V
    .locals 0

    iput-object p1, p0, LK2/n;->c:LK2/t;

    invoke-direct {p0}, LK2/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, LK2/n;->c:LK2/t;

    invoke-static {v0}, LK2/t;->d(LK2/t;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, LK2/t;->f(LK2/t;)LK2/i;

    move-result-object v0

    const-string v1, "Unbind from service."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, LK2/i;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, LK2/n;->c:LK2/t;

    invoke-static {v0}, LK2/t;->a(LK2/t;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, LK2/t;->b(LK2/t;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, LK2/n;->c:LK2/t;

    invoke-static {v0, v2}, LK2/t;->j(LK2/t;Z)V

    iget-object v0, p0, LK2/n;->c:LK2/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LK2/t;->k(LK2/t;Landroid/os/IInterface;)V

    iget-object v0, p0, LK2/n;->c:LK2/t;

    invoke-static {v0, v1}, LK2/t;->i(LK2/t;Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, LK2/n;->c:LK2/t;

    invoke-static {v0}, LK2/t;->l(LK2/t;)V

    return-void
.end method
