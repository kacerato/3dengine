.class public final LU0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$f;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build LT0/a;
.end annotation


# static fields
.field public static final n:Ljava/lang/String; = "j"


# instance fields
.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Landroid/content/Context;

.field public final g:LU0/d;

.field public final h:Landroid/os/Handler;

.field public final i:LU0/k;

.field public j:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Z

.field public l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/ComponentName;LU0/d;LU0/k;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LU0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # LU0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 1
    invoke-direct/range {v0 .. v7}, LU0/j;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;LU0/d;LU0/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;LU0/d;LU0/k;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # LU0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # LU0/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-direct/range {v0 .. v7}, LU0/j;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;LU0/d;LU0/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;LU0/d;LU0/k;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LU0/j;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, LU0/j;->l:Ljava/lang/String;

    iput-object p1, p0, LU0/j;->f:Landroid/content/Context;

    new-instance p1, Lx1/u;

    invoke-direct {p1, p2}, Lx1/u;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LU0/j;->h:Landroid/os/Handler;

    iput-object p6, p0, LU0/j;->g:LU0/d;

    iput-object p7, p0, LU0/j;->i:LU0/k;

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    move-object p5, v0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    :goto_0
    iput-object p3, p0, LU0/j;->c:Ljava/lang/String;

    iput-object p4, p0, LU0/j;->d:Ljava/lang/String;

    iput-object p5, p0, LU0/j;->e:Landroid/content/ComponentName;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Must specify either package or component, but not both"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public final A()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, LU0/j;->h:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should only run on the NonGmsServiceBrokerClient\'s handler thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LU0/j;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, LU0/j;->j:Landroid/os/IBinder;

    iget-object v0, p0, LU0/j;->g:LU0/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LU0/d;->i(I)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, LU0/j;->A()V

    iput-object p1, p0, LU0/j;->l:Ljava/lang/String;

    invoke-virtual {p0}, LU0/j;->p()V

    return-void
.end method

.method public final g(LX0/f$e;)V
    .locals 0
    .param p1    # LX0/f$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final h()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, LU0/j;->A()V

    iget-boolean v0, p0, LU0/j;->k:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LU0/j;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, LU0/j;->e:Landroid/content/ComponentName;

    invoke-static {v0}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LU0/j;->e:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, LU0/j;->A()V

    iget-object v0, p0, LU0/j;->j:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()[LS0/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [LS0/e;

    return-object v0
.end method

.method public final k(LX0/f$c;)V
    .locals 3
    .param p1    # LX0/f$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, LU0/j;->A()V

    iget-object p1, p0, LU0/j;->j:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, LU0/j;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "connect() called when already connected"

    invoke-virtual {p0, p1}, LU0/j;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, LU0/j;->e:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, LU0/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, LU0/j;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, LU0/j;->f:Landroid/content/Context;

    invoke-static {}, LX0/o;->d()I

    move-result v2

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, LU0/j;->k:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_2

    iput-object p1, p0, LU0/j;->j:Landroid/os/IBinder;

    iget-object p1, p0, LU0/j;->i:LU0/k;

    new-instance v0, LS0/c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LS0/c;-><init>(I)V

    invoke-interface {p1, v0}, LU0/k;->e(LS0/c;)V

    :cond_2
    iget-object p1, p0, LU0/j;->j:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, LU0/j;->k:Z

    iput-object p1, p0, LU0/j;->j:Landroid/os/IBinder;

    throw v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, LU0/q0;

    invoke-direct {p1, p0, p2}, LU0/q0;-><init>(LU0/j;Landroid/os/IBinder;)V

    iget-object p2, p0, LU0/j;->h:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, LU0/p0;

    invoke-direct {p1, p0}, LU0/p0;-><init>(LU0/j;)V

    iget-object v0, p0, LU0/j;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, LU0/j;->A()V

    iget-object v0, p0, LU0/j;->j:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, LU0/j;->f:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LU0/j;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, LU0/j;->j:Landroid/os/IBinder;

    return-void
.end method

.method public final q(LX0/r;Ljava/util/Set;)V
    .locals 0
    .param p1    # LX0/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX0/r;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final t()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final u()[LS0/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [LS0/e;

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LU0/j;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Landroid/content/Intent;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public x()Landroid/os/IBinder;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, LU0/j;->A()V

    iget-object v0, p0, LU0/j;->j:Landroid/os/IBinder;

    return-object v0
.end method

.method public final synthetic y(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LU0/j;->k:Z

    iput-object p1, p0, LU0/j;->j:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, LU0/j;->g:LU0/d;

    invoke-interface {v0, p1}, LU0/d;->g(Landroid/os/Bundle;)V

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LU0/j;->m:Ljava/lang/String;

    return-void
.end method
