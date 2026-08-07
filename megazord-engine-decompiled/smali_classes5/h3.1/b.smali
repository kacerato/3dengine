.class public Lh3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/a;


# static fields
.field public static volatile c:Lh3/a;


# instance fields
.field public final a:LH1/a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LH1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lh3/b;->a:LH1/a;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lh3/b;->b:Ljava/util/Map;

    return-void
.end method

.method public static h()Lh3/a;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lf3/g;->p()Lf3/g;

    move-result-object v0

    invoke-static {v0}, Lh3/b;->i(Lf3/g;)Lh3/a;

    move-result-object v0

    return-object v0
.end method

.method public static i(Lf3/g;)Lh3/a;
    .locals 1
    .param p0    # Lf3/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lh3/a;

    invoke-virtual {p0, v0}, Lf3/g;->l(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh3/a;

    return-object p0
.end method

.method public static j(Lf3/g;Landroid/content/Context;Lx3/d;)Lh3/a;
    .locals 5
    .param p0    # Lf3/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lx3/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE",
            "android.permission.WAKE_LOCK"
        }
    .end annotation

    invoke-static {p0}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lh3/b;->c:Lh3/a;

    if-nez v0, :cond_2

    const-class v0, Lh3/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lh3/b;->c:Lh3/a;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {p0}, Lf3/g;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lf3/c;

    sget-object v3, Lh3/e;->b:Lh3/e;

    sget-object v4, Lh3/d;->a:Lh3/d;

    invoke-interface {p2, v2, v3, v4}, Lx3/d;->d(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lx3/b;)V

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p0}, Lf3/g;->A()Z

    move-result p0

    invoke-virtual {v1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Lh3/b;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/measurement/I1;->v(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/I1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/I1;->w()LH1/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lh3/b;-><init>(LH1/a;)V

    sput-object p0, Lh3/b;->c:Lh3/a;

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lh3/b;->c:Lh3/a;

    return-object p0
.end method

.method public static synthetic k(Lx3/a;)V
    .locals 2

    invoke-virtual {p0}, Lx3/a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf3/c;

    iget-boolean p0, p0, Lf3/c;->a:Z

    const-class v0, Lh3/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lh3/b;->c:Lh3/a;

    invoke-static {v1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh3/b;

    iget-object v1, v1, Lh3/b;->a:LH1/a;

    invoke-virtual {v1, p0}, LH1/a;->B(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lh3/a$b;)Lh3/a$a;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lh3/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p2}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Li3/c;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lh3/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lh3/b;->a:LH1/a;

    const-string v2, "fiam"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Li3/e;

    invoke-direct {v2, v0, p2}, Li3/e;-><init>(LH1/a;Lh3/a$b;)V

    goto :goto_0

    :cond_1
    const-string v2, "clx"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Li3/g;

    invoke-direct {v2, v0, p2}, Li3/g;-><init>(LH1/a;Lh3/a$b;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    iget-object p2, p0, Lh3/b;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lh3/b$a;

    invoke-direct {p2, p0, p1}, Lh3/b$a;-><init>(Lh3/b;Ljava/lang/String;)V

    return-object p2

    :cond_3
    :goto_1
    return-object v1
.end method

.method public b(Lh3/a$c;)V
    .locals 5
    .param p1    # Lh3/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    sget v0, Li3/c;->g:I

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lh3/a$c;->a:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p1, Lh3/a$c;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/l5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    :cond_1
    invoke-static {v0}, Li3/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p1, Lh3/a$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Li3/c;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p1, Lh3/a$c;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lh3/a$c;->l:Landroid/os/Bundle;

    invoke-static {v1, v2}, Li3/c;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p1, Lh3/a$c;->k:Ljava/lang/String;

    iget-object v2, p1, Lh3/a$c;->l:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Li3/c;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_2
    iget-object v1, p1, Lh3/a$c;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, p1, Lh3/a$c;->i:Landroid/os/Bundle;

    invoke-static {v1, v2}, Li3/c;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p1, Lh3/a$c;->h:Ljava/lang/String;

    iget-object v2, p1, Lh3/a$c;->i:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Li3/c;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_3
    iget-object v1, p1, Lh3/a$c;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lh3/a$c;->g:Landroid/os/Bundle;

    invoke-static {v1, v2}, Li3/c;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p1, Lh3/a$c;->f:Ljava/lang/String;

    iget-object v2, p1, Lh3/a$c;->g:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Li3/c;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_4
    iget-object v0, p0, Lh3/b;->a:LH1/a;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p1, Lh3/a$c;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v3, "origin"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v2, p1, Lh3/a$c;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p1, Lh3/a$c;->c:Ljava/lang/Object;

    if-eqz v2, :cond_7

    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/V3;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_7
    iget-object v2, p1, Lh3/a$c;->d:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v3, "trigger_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-wide v2, p1, Lh3/a$c;->e:J

    const-string v4, "trigger_timeout"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, p1, Lh3/a$c;->f:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v3, "timed_out_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v2, p1, Lh3/a$c;->g:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    const-string v3, "timed_out_event_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    iget-object v2, p1, Lh3/a$c;->h:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v3, "triggered_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v2, p1, Lh3/a$c;->i:Landroid/os/Bundle;

    if-eqz v2, :cond_c

    const-string v3, "triggered_event_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_c
    iget-wide v2, p1, Lh3/a$c;->j:J

    const-string v4, "time_to_live"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, p1, Lh3/a$c;->k:Ljava/lang/String;

    if-eqz v2, :cond_d

    const-string v3, "expired_event_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v2, p1, Lh3/a$c;->l:Landroid/os/Bundle;

    if-eqz v2, :cond_e

    const-string v3, "expired_event_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_e
    iget-wide v2, p1, Lh3/a$c;->m:J

    const-string v4, "creation_timestamp"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v2, p1, Lh3/a$c;->n:Z

    const-string v3, "active"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-wide v2, p1, Lh3/a$c;->o:J

    const-string p1, "triggered_timestamp"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, LH1/a;->t(Landroid/os/Bundle;)V

    :cond_f
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {p1}, Li3/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2, p3}, Li3/c;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, p2, p3}, Li3/c;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "clx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_ae"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_r"

    const-wide/16 v1, 0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lh3/b;->a:LH1/a;

    invoke-virtual {v0, p1, p2, p3}, LH1/a;->o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            max = 0x18L
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Li3/c;->b(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh3/b;->a:LH1/a;

    invoke-virtual {v0, p1, p2, p3}, LH1/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    invoke-static {p1}, Li3/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Li3/c;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh3/b;->a:LH1/a;

    invoke-virtual {v0, p1, p2, p3}, LH1/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Z)Ljava/util/Map;
    .locals 2
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh3/b;->a:LH1/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, LH1/a;->n(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lh3/b;->a:LH1/a;

    invoke-virtual {v0, p1}, LH1/a;->m(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            max = 0x17L
            min = 0x1L
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lh3/a$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lh3/b;->a:LH1/a;

    invoke-virtual {v1, p1, p2}, LH1/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    sget v1, Li3/c;->g:I

    invoke-static {p2}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh3/a$c;

    invoke-direct {v1}, Lh3/a$c;-><init>()V

    const-string v2, "origin"

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lh3/a$c;->a:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {p2, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lh3/a$c;->b:Ljava/lang/String;

    const-string v2, "value"

    const-class v5, Ljava/lang/Object;

    invoke-static {p2, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lh3/a$c;->c:Ljava/lang/Object;

    const-string v2, "trigger_event_name"

    invoke-static {p2, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lh3/a$c;->d:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "trigger_timeout"

    const-class v6, Ljava/lang/Long;

    invoke-static {p2, v5, v6, v2}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v1, Lh3/a$c;->e:J

    const-string v5, "timed_out_event_name"

    invoke-static {p2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lh3/a$c;->f:Ljava/lang/String;

    const-string v5, "timed_out_event_params"

    const-class v7, Landroid/os/Bundle;

    invoke-static {p2, v5, v7, v4}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    iput-object v5, v1, Lh3/a$c;->g:Landroid/os/Bundle;

    const-string v5, "triggered_event_name"

    invoke-static {p2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lh3/a$c;->h:Ljava/lang/String;

    const-string v5, "triggered_event_params"

    invoke-static {p2, v5, v7, v4}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    iput-object v5, v1, Lh3/a$c;->i:Landroid/os/Bundle;

    const-string v5, "time_to_live"

    invoke-static {p2, v5, v6, v2}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lh3/a$c;->j:J

    const-string v5, "expired_event_name"

    invoke-static {p2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lh3/a$c;->k:Ljava/lang/String;

    const-string v3, "expired_event_params"

    invoke-static {p2, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    iput-object v3, v1, Lh3/a$c;->l:Landroid/os/Bundle;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "active"

    const-class v5, Ljava/lang/Boolean;

    invoke-static {p2, v4, v5, v3}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v1, Lh3/a$c;->n:Z

    const-string v3, "creation_timestamp"

    invoke-static {p2, v3, v6, v2}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Lh3/a$c;->m:J

    const-string v3, "triggered_timestamp"

    invoke-static {p2, v3, v6, v2}, Lcom/google/android/gms/measurement/internal/V3;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lh3/a$c;->o:J

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method public final synthetic l(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lh3/b;->m(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh3/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
