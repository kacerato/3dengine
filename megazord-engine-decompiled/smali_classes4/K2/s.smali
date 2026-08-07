.class public final LK2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic c:LK2/t;


# direct methods
.method public synthetic constructor <init>(LK2/t;LK2/r;)V
    .locals 0

    iput-object p1, p0, LK2/s;->c:LK2/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, LK2/s;->c:LK2/t;

    invoke-static {v0}, LK2/t;->f(LK2/t;)LK2/i;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, v1, p1}, LK2/i;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, LK2/s;->c:LK2/t;

    new-instance v0, LK2/p;

    invoke-direct {v0, p0, p2}, LK2/p;-><init>(LK2/s;Landroid/os/IBinder;)V

    invoke-virtual {p1}, LK2/t;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, LK2/s;->c:LK2/t;

    invoke-static {v0}, LK2/t;->f(LK2/t;)LK2/i;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, v1, p1}, LK2/i;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, LK2/s;->c:LK2/t;

    new-instance v0, LK2/q;

    invoke-direct {v0, p0}, LK2/q;-><init>(LK2/s;)V

    invoke-virtual {p1}, LK2/t;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
