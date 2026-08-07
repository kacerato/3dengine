.class public Ly0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/String; = "Uploader"

.field public static final k:Ljava/lang/String; = "GDT_CLIENT_METRICS"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lq0/e;

.field public final c:Lz0/d;

.field public final d:Ly0/y;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:LA0/a;

.field public final g:LB0/a;

.field public final h:LB0/a;

.field public final i:Lz0/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq0/e;Lz0/d;Ly0/y;Ljava/util/concurrent/Executor;LA0/a;LB0/a;LB0/a;Lz0/c;)V
    .locals 0
    .param p7    # LB0/a;
        .annotation build LB0/h;
        .end annotation
    .end param
    .param p8    # LB0/a;
        .annotation build LB0/b;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/s;->a:Landroid/content/Context;

    iput-object p2, p0, Ly0/s;->b:Lq0/e;

    iput-object p3, p0, Ly0/s;->c:Lz0/d;

    iput-object p4, p0, Ly0/s;->d:Ly0/y;

    iput-object p5, p0, Ly0/s;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Ly0/s;->f:LA0/a;

    iput-object p7, p0, Ly0/s;->g:LB0/a;

    iput-object p8, p0, Ly0/s;->h:LB0/a;

    iput-object p9, p0, Ly0/s;->i:Lz0/c;

    return-void
.end method

.method public static synthetic a(Ly0/s;Lp0/r;)Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p0, p1}, Ly0/s;->m(Lp0/r;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ly0/s;Ljava/lang/Iterable;Lp0/r;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ly0/s;->n(Ljava/lang/Iterable;Lp0/r;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ly0/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ly0/s;->p()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ly0/s;Lp0/r;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Ly0/s;->l(Lp0/r;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ly0/s;Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ly0/s;->o(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ly0/s;Lp0/r;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ly0/s;->s(Lp0/r;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ly0/s;Lp0/r;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ly0/s;->r(Lp0/r;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ly0/s;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ly0/s;->q(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ly0/s;Lp0/r;ILjava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ly0/s;->t(Lp0/r;ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public j(Lq0/n;)Lp0/j;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Ly0/s;->f:LA0/a;

    iget-object v1, p0, Ly0/s;->i:Lz0/c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ly0/l;

    invoke-direct {v2, v1}, Ly0/l;-><init>(Lz0/c;)V

    invoke-interface {v0, v2}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu0/a;

    invoke-static {}, Lp0/j;->a()Lp0/j$a;

    move-result-object v1

    iget-object v2, p0, Ly0/s;->g:LB0/a;

    invoke-interface {v2}, LB0/a;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lp0/j$a;->i(J)Lp0/j$a;

    move-result-object v1

    iget-object v2, p0, Ly0/s;->h:LB0/a;

    invoke-interface {v2}, LB0/a;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lp0/j$a;->k(J)Lp0/j$a;

    move-result-object v1

    const-string v2, "GDT_CLIENT_METRICS"

    invoke-virtual {v1, v2}, Lp0/j$a;->j(Ljava/lang/String;)Lp0/j$a;

    move-result-object v1

    new-instance v2, Lp0/i;

    const-string v3, "proto"

    invoke-static {v3}, Ll0/c;->b(Ljava/lang/String;)Ll0/c;

    move-result-object v3

    invoke-virtual {v0}, Lu0/a;->i()[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lp0/i;-><init>(Ll0/c;[B)V

    invoke-virtual {v1, v2}, Lp0/j$a;->h(Lp0/i;)Lp0/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lp0/j$a;->d()Lp0/j;

    move-result-object v0

    invoke-interface {p1, v0}, Lq0/n;->b(Lp0/j;)Lp0/j;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Ly0/s;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final synthetic l(Lp0/r;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Ly0/s;->c:Lz0/d;

    invoke-interface {v0, p1}, Lz0/d;->r0(Lp0/r;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic m(Lp0/r;)Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Ly0/s;->c:Lz0/d;

    invoke-interface {v0, p1}, Lz0/d;->w0(Lp0/r;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic n(Ljava/lang/Iterable;Lp0/r;J)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly0/s;->c:Lz0/d;

    invoke-interface {v0, p1}, Lz0/d;->M(Ljava/lang/Iterable;)V

    iget-object p1, p0, Ly0/s;->c:Lz0/d;

    iget-object v0, p0, Ly0/s;->g:LB0/a;

    invoke-interface {v0}, LB0/a;->getTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, p2, v0, v1}, Lz0/d;->I(Lp0/r;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic o(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly0/s;->c:Lz0/d;

    invoke-interface {v0, p1}, Lz0/d;->m(Ljava/lang/Iterable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic p()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly0/s;->i:Lz0/c;

    invoke-interface {v0}, Lz0/c;->c()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic q(Ljava/util/Map;)Ljava/lang/Object;
    .locals 5

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ly0/s;->i:Lz0/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lu0/c$b;->INVALID_PAYLOD:Lu0/c$b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lz0/c;->d(JLu0/c$b;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic r(Lp0/r;J)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ly0/s;->c:Lz0/d;

    iget-object v1, p0, Ly0/s;->g:LB0/a;

    invoke-interface {v1}, LB0/a;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-interface {v0, p1, v1, v2}, Lz0/d;->I(Lp0/r;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic s(Lp0/r;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly0/s;->d:Ly0/y;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p1, p2}, Ly0/y;->a(Lp0/r;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic t(Lp0/r;ILjava/lang/Runnable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ly0/s;->f:LA0/a;

    iget-object v1, p0, Ly0/s;->c:Lz0/d;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ly0/h;

    invoke-direct {v2, v1}, Ly0/h;-><init>(Lz0/d;)V

    invoke-interface {v0, v2}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    invoke-virtual {p0}, Ly0/s;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ly0/s;->f:LA0/a;

    new-instance v1, Ly0/j;

    invoke-direct {v1, p0, p1, p2}, Ly0/j;-><init>(Ly0/s;Lp0/r;I)V

    invoke-interface {v0, v1}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Ly0/s;->u(Lp0/r;I)Lq0/h;
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object v0, p0, Ly0/s;->d:Ly0/y;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p1, p2}, Ly0/y;->a(Lp0/r;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    throw p1
.end method

.method public u(Lp0/r;I)Lq0/h;
    .locals 11
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Ly0/s;->b:Lq0/e;

    invoke-virtual {p1}, Lp0/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lq0/e;->get(Ljava/lang/String;)Lq0/n;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lq0/h;->e(J)Lq0/h;

    move-result-object v3

    :cond_0
    :goto_0
    move-wide v8, v1

    :cond_1
    :goto_1
    iget-object v1, p0, Ly0/s;->f:LA0/a;

    new-instance v2, Ly0/m;

    invoke-direct {v2, p0, p1}, Ly0/m;-><init>(Ly0/s;Lp0/r;)V

    invoke-interface {v1, v2}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Ly0/s;->f:LA0/a;

    new-instance v2, Ly0/n;

    invoke-direct {v2, p0, p1}, Ly0/n;-><init>(Ly0/s;Lp0/r;)V

    invoke-interface {v1, v2}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v3

    :cond_2
    if-nez v0, :cond_3

    const-string v1, "Uploader"

    const-string v2, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v1, v2, p1}, Lv0/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lq0/h;->a()Lq0/h;

    move-result-object v1

    :goto_2
    move-object v3, v1

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz0/k;

    invoke-virtual {v3}, Lz0/k;->b()Lp0/j;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lp0/r;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Ly0/s;->j(Lq0/n;)Lp0/j;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lq0/g;->a()Lq0/g$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lq0/g$a;->b(Ljava/lang/Iterable;)Lq0/g$a;

    move-result-object v1

    invoke-virtual {p1}, Lp0/r;->c()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lq0/g$a;->c([B)Lq0/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lq0/g$a;->a()Lq0/g;

    move-result-object v1

    invoke-interface {v0, v1}, Lq0/n;->a(Lq0/g;)Lq0/h;

    move-result-object v1

    goto :goto_2

    :goto_4
    invoke-virtual {v3}, Lq0/h;->c()Lq0/h$a;

    move-result-object v1

    sget-object v2, Lq0/h$a;->TRANSIENT_ERROR:Lq0/h$a;

    const/4 v10, 0x1

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Ly0/s;->f:LA0/a;

    new-instance v1, Ly0/o;

    move-object v4, v1

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Ly0/o;-><init>(Ly0/s;Ljava/lang/Iterable;Lp0/r;J)V

    invoke-interface {v0, v1}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    iget-object v0, p0, Ly0/s;->d:Ly0/y;

    add-int/2addr p2, v10

    invoke-interface {v0, p1, p2, v10}, Ly0/y;->b(Lp0/r;IZ)V

    return-object v3

    :cond_6
    iget-object v1, p0, Ly0/s;->f:LA0/a;

    new-instance v2, Ly0/p;

    invoke-direct {v2, p0, v6}, Ly0/p;-><init>(Ly0/s;Ljava/lang/Iterable;)V

    invoke-interface {v1, v2}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    invoke-virtual {v3}, Lq0/h;->c()Lq0/h$a;

    move-result-object v1

    sget-object v2, Lq0/h$a;->OK:Lq0/h$a;

    if-ne v1, v2, :cond_7

    invoke-virtual {v3}, Lq0/h;->b()J

    move-result-wide v1

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {p1}, Lp0/r;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ly0/s;->f:LA0/a;

    new-instance v5, Ly0/q;

    invoke-direct {v5, p0}, Ly0/q;-><init>(Ly0/s;)V

    invoke-interface {v4, v5}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Lq0/h;->c()Lq0/h$a;

    move-result-object v1

    sget-object v2, Lq0/h$a;->INVALID_PAYLOAD:Lq0/h$a;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz0/k;

    invoke-virtual {v4}, Lz0/k;->b()Lp0/j;

    move-result-object v4

    invoke-virtual {v4}, Lp0/j;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    iget-object v2, p0, Ly0/s;->f:LA0/a;

    new-instance v4, Ly0/r;

    invoke-direct {v4, p0, v1}, Ly0/r;-><init>(Ly0/s;Ljava/util/Map;)V

    invoke-interface {v2, v4}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    iget-object p2, p0, Ly0/s;->f:LA0/a;

    new-instance v0, Ly0/i;

    invoke-direct {v0, p0, p1, v8, v9}, Ly0/i;-><init>(Ly0/s;Lp0/r;J)V

    invoke-interface {p2, v0}, LA0/a;->a(LA0/a$a;)Ljava/lang/Object;

    return-object v3
.end method

.method public v(Lp0/r;ILjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Ly0/s;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Ly0/k;

    invoke-direct {v1, p0, p1, p2, p3}, Ly0/k;-><init>(Ly0/s;Lp0/r;ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
