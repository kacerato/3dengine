.class public Lp0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/v;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static volatile e:Lp0/x;


# instance fields
.field public final a:LB0/a;

.field public final b:LB0/a;

.field public final c:Lx0/e;

.field public final d:Ly0/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(LB0/a;LB0/a;Lx0/e;Ly0/s;Ly0/w;)V
    .locals 0
    .param p1    # LB0/a;
        .annotation build LB0/h;
        .end annotation
    .end param
    .param p2    # LB0/a;
        .annotation build LB0/b;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/w;->a:LB0/a;

    iput-object p2, p0, Lp0/w;->b:LB0/a;

    iput-object p3, p0, Lp0/w;->c:Lx0/e;

    iput-object p4, p0, Lp0/w;->d:Ly0/s;

    invoke-virtual {p5}, Ly0/w;->c()V

    return-void
.end method

.method public static c()Lp0/w;
    .locals 2

    sget-object v0, Lp0/w;->e:Lp0/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp0/x;->d()Lp0/w;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Lp0/g;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp0/g;",
            ")",
            "Ljava/util/Set<",
            "Ll0/c;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Lp0/h;

    if-eqz v0, :cond_0

    check-cast p0, Lp0/h;

    invoke-interface {p0}, Lp0/h;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "proto"

    invoke-static {p0}, Ll0/c;->b(Ljava/lang/String;)Ll0/c;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lp0/w;->e:Lp0/x;

    if-nez v0, :cond_1

    const-class v0, Lp0/w;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp0/w;->e:Lp0/x;

    if-nez v1, :cond_0

    invoke-static {}, Lp0/f;->e()Lp0/x$a;

    move-result-object v1

    invoke-interface {v1, p0}, Lp0/x$a;->a(Landroid/content/Context;)Lp0/x$a;

    move-result-object p0

    invoke-interface {p0}, Lp0/x$a;->build()Lp0/x;

    move-result-object p0

    sput-object p0, Lp0/w;->e:Lp0/x;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public static i(Lp0/x;Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp0/x;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lp0/w;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp0/w;->e:Lp0/x;

    sput-object p0, Lp0/w;->e:Lp0/x;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-class p0, Lp0/w;

    monitor-enter p0

    :try_start_2
    sput-object v1, Lp0/w;->e:Lp0/x;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    const-class p1, Lp0/w;

    monitor-enter p1

    :try_start_3
    sput-object v1, Lp0/w;->e:Lp0/x;

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method


# virtual methods
.method public a(Lp0/q;Ll0/j;)V
    .locals 3

    iget-object v0, p0, Lp0/w;->c:Lx0/e;

    invoke-virtual {p1}, Lp0/q;->f()Lp0/r;

    move-result-object v1

    invoke-virtual {p1}, Lp0/q;->c()Ll0/d;

    move-result-object v2

    invoke-virtual {v2}, Ll0/d;->c()Ll0/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp0/r;->f(Ll0/e;)Lp0/r;

    move-result-object v1

    invoke-virtual {p0, p1}, Lp0/w;->b(Lp0/q;)Lp0/j;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lx0/e;->a(Lp0/r;Lp0/j;Ll0/j;)V

    return-void
.end method

.method public final b(Lp0/q;)Lp0/j;
    .locals 4

    invoke-static {}, Lp0/j;->a()Lp0/j$a;

    move-result-object v0

    iget-object v1, p0, Lp0/w;->a:LB0/a;

    invoke-interface {v1}, LB0/a;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lp0/j$a;->i(J)Lp0/j$a;

    move-result-object v0

    iget-object v1, p0, Lp0/w;->b:LB0/a;

    invoke-interface {v1}, LB0/a;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lp0/j$a;->k(J)Lp0/j$a;

    move-result-object v0

    invoke-virtual {p1}, Lp0/q;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lp0/j$a;->j(Ljava/lang/String;)Lp0/j$a;

    move-result-object v0

    new-instance v1, Lp0/i;

    invoke-virtual {p1}, Lp0/q;->b()Ll0/c;

    move-result-object v2

    invoke-virtual {p1}, Lp0/q;->d()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lp0/i;-><init>(Ll0/c;[B)V

    invoke-virtual {v0, v1}, Lp0/j$a;->h(Lp0/i;)Lp0/j$a;

    move-result-object v0

    invoke-virtual {p1}, Lp0/q;->c()Ll0/d;

    move-result-object p1

    invoke-virtual {p1}, Ll0/d;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lp0/j$a;->g(Ljava/lang/Integer;)Lp0/j$a;

    move-result-object p1

    invoke-virtual {p1}, Lp0/j$a;->d()Lp0/j;

    move-result-object p1

    return-object p1
.end method

.method public e()Ly0/s;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lp0/w;->d:Ly0/s;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ll0/i;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lp0/s;

    const/4 v1, 0x0

    invoke-static {v1}, Lp0/w;->d(Lp0/g;)Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Lp0/r;->a()Lp0/r$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lp0/r$a;->b(Ljava/lang/String;)Lp0/r$a;

    move-result-object p1

    invoke-virtual {p1}, Lp0/r$a;->a()Lp0/r;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lp0/s;-><init>(Ljava/util/Set;Lp0/r;Lp0/v;)V

    return-object v0
.end method

.method public h(Lp0/g;)Ll0/i;
    .locals 4

    new-instance v0, Lp0/s;

    invoke-static {p1}, Lp0/w;->d(Lp0/g;)Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Lp0/r;->a()Lp0/r$a;

    move-result-object v2

    invoke-interface {p1}, Lp0/g;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lp0/r$a;->b(Ljava/lang/String;)Lp0/r$a;

    move-result-object v2

    invoke-interface {p1}, Lp0/g;->getExtras()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lp0/r$a;->c([B)Lp0/r$a;

    move-result-object p1

    invoke-virtual {p1}, Lp0/r$a;->a()Lp0/r;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lp0/s;-><init>(Ljava/util/Set;Lp0/r;Lp0/v;)V

    return-object v0
.end method
