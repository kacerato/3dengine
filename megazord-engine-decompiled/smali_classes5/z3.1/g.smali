.class public Lz3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/j;
.implements Lz3/k;


# instance fields
.field public final a:LA3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA3/b<",
            "Lz3/l;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:LA3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA3/b<",
            "LN3/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lz3/h;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(LA3/b;Ljava/util/Set;Ljava/util/concurrent/Executor;LA3/b;Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA3/b<",
            "Lz3/l;",
            ">;",
            "Ljava/util/Set<",
            "Lz3/h;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "LA3/b<",
            "LN3/i;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lz3/g;->a:LA3/b;

    .line 4
    iput-object p2, p0, Lz3/g;->d:Ljava/util/Set;

    .line 5
    iput-object p3, p0, Lz3/g;->e:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p4, p0, Lz3/g;->c:LA3/b;

    .line 7
    iput-object p5, p0, Lz3/g;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;LA3/b;Ljava/util/concurrent/Executor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lz3/h;",
            ">;",
            "LA3/b<",
            "LN3/i;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v1, Lz3/c;

    invoke-direct {v1, p1, p2}, Lz3/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lz3/g;-><init>(LA3/b;Ljava/util/Set;Ljava/util/concurrent/Executor;LA3/b;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Lz3/g;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lz3/g;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;Ljava/lang/String;)Lz3/l;
    .locals 0

    invoke-static {p0, p1}, Lz3/g;->j(Landroid/content/Context;Ljava/lang/String;)Lz3/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lo3/F;Lo3/h;)Lz3/g;
    .locals 0

    invoke-static {p0, p1}, Lz3/g;->h(Lo3/F;Lo3/h;)Lz3/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lz3/g;)Ljava/lang/Void;
    .locals 0

    invoke-virtual {p0}, Lz3/g;->k()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static g()Lo3/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo3/g<",
            "Lz3/g;",
            ">;"
        }
    .end annotation

    const-class v0, Ln3/a;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lo3/F;->a(Ljava/lang/Class;Ljava/lang/Class;)Lo3/F;

    move-result-object v0

    const-class v1, Lz3/j;

    const-class v2, Lz3/k;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lz3/g;

    invoke-static {v2, v1}, Lo3/g;->g(Ljava/lang/Class;[Ljava/lang/Class;)Lo3/g$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo3/v;->l(Ljava/lang/Class;)Lo3/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v1

    const-class v2, Lf3/g;

    invoke-static {v2}, Lo3/v;->l(Ljava/lang/Class;)Lo3/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v1

    const-class v2, Lz3/h;

    invoke-static {v2}, Lo3/v;->p(Ljava/lang/Class;)Lo3/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v1

    const-class v2, LN3/i;

    invoke-static {v2}, Lo3/v;->n(Ljava/lang/Class;)Lo3/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v1

    invoke-static {v0}, Lo3/v;->m(Lo3/F;)Lo3/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v1

    new-instance v2, Lz3/e;

    invoke-direct {v2, v0}, Lz3/e;-><init>(Lo3/F;)V

    invoke-virtual {v1, v2}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/g$b;->d()Lo3/g;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lo3/F;Lo3/h;)Lz3/g;
    .locals 7

    new-instance v6, Lz3/g;

    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lo3/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lf3/g;

    invoke-interface {p1, v0}, Lo3/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf3/g;

    invoke-virtual {v0}, Lf3/g;->t()Ljava/lang/String;

    move-result-object v2

    const-class v0, Lz3/h;

    invoke-interface {p1, v0}, Lo3/h;->h(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    const-class v0, LN3/i;

    invoke-interface {p1, v0}, Lo3/h;->j(Ljava/lang/Class;)LA3/b;

    move-result-object v4

    invoke-interface {p1, p0}, Lo3/h;->f(Lo3/F;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/util/concurrent/Executor;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lz3/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;LA3/b;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method public static synthetic j(Landroid/content/Context;Ljava/lang/String;)Lz3/l;
    .locals 1

    new-instance v0, Lz3/l;

    invoke-direct {v0, p0, p1}, Lz3/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()LQ1/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz3/g;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, LQ1/n;->g(Ljava/lang/Object;)LQ1/k;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz3/g;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lz3/d;

    invoke-direct {v1, p0}, Lz3/d;-><init>(Lz3/g;)V

    invoke-static {v0, v1}, LQ1/n;->d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)LQ1/k;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Lz3/k$a;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lz3/g;->a:LA3/b;

    invoke-interface {p1}, LA3/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz3/l;

    invoke-virtual {p1, v0, v1}, Lz3/l;->k(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lz3/l;->i()V

    sget-object p1, Lz3/k$a;->GLOBAL:Lz3/k$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object p1, Lz3/k$a;->NONE:Lz3/k$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final synthetic i()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz3/g;->a:LA3/b;

    invoke-interface {v0}, LA3/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz3/l;

    invoke-virtual {v0}, Lz3/l;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lz3/l;->b()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz3/m;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "agent"

    invoke-virtual {v3}, Lz3/m;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "dates"

    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lz3/m;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "heartbeats"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    const-string v2, "2"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Landroid/util/Base64OutputStream;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    :try_start_7
    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0

    :goto_4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public final synthetic k()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz3/g;->a:LA3/b;

    invoke-interface {v0}, LA3/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz3/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lz3/g;->c:LA3/b;

    invoke-interface {v3}, LA3/b;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN3/i;

    invoke-interface {v3}, LN3/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lz3/l;->m(JLjava/lang/String;)V

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()LQ1/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz3/g;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    invoke-static {v1}, LQ1/n;->g(Ljava/lang/Object;)LQ1/k;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz3/g;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, LQ1/n;->g(Ljava/lang/Object;)LQ1/k;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lz3/g;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lz3/f;

    invoke-direct {v1, p0}, Lz3/f;-><init>(Lz3/g;)V

    invoke-static {v0, v1}, LQ1/n;->d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)LQ1/k;

    move-result-object v0

    return-object v0
.end method
