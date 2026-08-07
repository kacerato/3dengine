.class public Lf3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/g$b;,
        Lf3/g$a;,
        Lf3/g$c;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/String; = "FirebaseApp"

.field public static final l:Ljava/lang/String; = "[DEFAULT]"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final m:Ljava/lang/Object;

.field public static final n:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "LOCK"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf3/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lf3/p;

.field public final d:Lo3/s;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Lo3/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/y<",
            "LI3/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:LA3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA3/b<",
            "Lz3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf3/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf3/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf3/g;->m:Ljava/lang/Object;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lf3/g;->n:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lf3/p;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lf3/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lf3/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lf3/g;->i:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lf3/g;->j:Ljava/util/List;

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lf3/g;->a:Landroid/content/Context;

    invoke-static {p2}, LX0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lf3/g;->b:Ljava/lang/String;

    invoke-static {p3}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf3/p;

    iput-object p2, p0, Lf3/g;->c:Lf3/p;

    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->b()Lf3/r;

    move-result-object p2

    const-string v0, "Firebase"

    invoke-static {v0}, LO3/c;->b(Ljava/lang/String;)V

    const-string v0, "ComponentDiscovery"

    invoke-static {v0}, LO3/c;->b(Ljava/lang/String;)V

    const-class v0, Lcom/google/firebase/components/ComponentDiscoveryService;

    invoke-static {p1, v0}, Lo3/j;->d(Landroid/content/Context;Ljava/lang/Class;)Lo3/j;

    move-result-object v0

    invoke-virtual {v0}, Lo3/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {}, LO3/c;->a()V

    const-string v2, "Runtime"

    invoke-static {v2}, LO3/c;->b(Ljava/lang/String;)V

    sget-object v2, Lp3/N;->INSTANCE:Lp3/N;

    invoke-static {v2}, Lo3/s;->p(Ljava/util/concurrent/Executor;)Lo3/s$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo3/s$b;->d(Ljava/util/Collection;)Lo3/s$b;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {v2}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    invoke-virtual {v0, v2}, Lo3/s$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lo3/s$b;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/concurrent/ExecutorsRegistrar;

    invoke-direct {v2}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;-><init>()V

    invoke-virtual {v0, v2}, Lo3/s$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lo3/s$b;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {p1, v2, v3}, Lo3/g;->C(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lo3/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo3/s$b;->b(Lo3/g;)Lo3/s$b;

    move-result-object v0

    const-class v2, Lf3/g;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {p0, v2, v3}, Lo3/g;->C(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lo3/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo3/s$b;->b(Lo3/g;)Lo3/s$b;

    move-result-object v0

    const-class v2, Lf3/p;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {p3, v2, v3}, Lo3/g;->C(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lo3/g;

    move-result-object p3

    invoke-virtual {v0, p3}, Lo3/s$b;->b(Lo3/g;)Lo3/s$b;

    move-result-object p3

    new-instance v0, LO3/b;

    invoke-direct {v0}, LO3/b;-><init>()V

    invoke-virtual {p3, v0}, Lo3/s$b;->g(Lo3/m;)Lo3/s$b;

    move-result-object p3

    invoke-static {p1}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lf3/r;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p2, v0, v1}, Lo3/g;->C(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lo3/g;

    move-result-object p2

    invoke-virtual {p3, p2}, Lo3/s$b;->b(Lo3/g;)Lo3/s$b;

    :cond_0
    invoke-virtual {p3}, Lo3/s$b;->e()Lo3/s;

    move-result-object p2

    iput-object p2, p0, Lf3/g;->d:Lo3/s;

    invoke-static {}, LO3/c;->a()V

    new-instance p3, Lo3/y;

    new-instance v0, Lf3/e;

    invoke-direct {v0, p0, p1}, Lf3/e;-><init>(Lf3/g;Landroid/content/Context;)V

    invoke-direct {p3, v0}, Lo3/y;-><init>(LA3/b;)V

    iput-object p3, p0, Lf3/g;->g:Lo3/y;

    const-class p1, Lz3/g;

    invoke-interface {p2, p1}, Lo3/h;->j(Ljava/lang/Class;)LA3/b;

    move-result-object p1

    iput-object p1, p0, Lf3/g;->h:LA3/b;

    new-instance p1, Lf3/f;

    invoke-direct {p1, p0}, Lf3/f;-><init>(Lf3/g;)V

    invoke-virtual {p0, p1}, Lf3/g;->g(Lf3/g$a;)V

    invoke-static {}, LO3/c;->a()V

    return-void
.end method

.method public static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lf3/g;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lf3/g;->D(Z)V

    return-void
.end method

.method public static synthetic b(Lf3/g;Landroid/content/Context;)LI3/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf3/g;->C(Landroid/content/Context;)LI3/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lf3/g;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic d(Lf3/g;)V
    .locals 0

    invoke-virtual {p0}, Lf3/g;->v()V

    return-void
.end method

.method public static synthetic e(Lf3/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lf3/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic f(Lf3/g;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lf3/g;->F(Z)V

    return-void
.end method

.method public static j()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lf3/g;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf3/g;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lf3/g;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lf3/g;->n:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf3/g;

    invoke-virtual {v3}, Lf3/g;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static o(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lf3/g;",
            ">;"
        }
    .end annotation

    sget-object p0, Lf3/g;->m:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lf3/g;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static p()Lf3/g;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lf3/g;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf3/g;->n:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf3/g;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lf3/g;->h:LA3/b;

    invoke-interface {v2}, LA3/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz3/g;

    invoke-virtual {v2}, Lz3/g;->l()LQ1/k;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lk1/z;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static q(Ljava/lang/String;)Lf3/g;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lf3/g;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf3/g;->n:Ljava/util/Map;

    invoke-static {p0}, Lf3/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf3/g;

    if-eqz v1, :cond_0

    iget-object p0, v1, Lf3/g;->h:LA3/b;

    invoke-interface {p0}, LA3/b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz3/g;

    invoke-virtual {p0}, Lz3/g;->l()LQ1/k;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lf3/g;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available app names: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "FirebaseApp with name %s doesn\'t exist. %s"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static u(Ljava/lang/String;Lf3/p;)Ljava/lang/String;
    .locals 2
    .annotation build LT0/a;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lk1/c;->f([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lf3/p;->j()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lk1/c;->f([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Landroid/content/Context;)Lf3/g;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lf3/g;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf3/g;->n:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lf3/g;->p()Lf3/g;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lf3/p;->h(Landroid/content/Context;)Lf3/p;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "FirebaseApp"

    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p0, v1}, Lf3/g;->y(Landroid/content/Context;Lf3/p;)Lf3/g;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static y(Landroid/content/Context;Lf3/p;)Lf3/g;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lf3/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "[DEFAULT]"

    invoke-static {p0, p1, v0}, Lf3/g;->z(Landroid/content/Context;Lf3/p;Ljava/lang/String;)Lf3/g;

    move-result-object p0

    return-object p0
.end method

.method public static z(Landroid/content/Context;Lf3/p;Ljava/lang/String;)Lf3/g;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lf3/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lf3/g$b;->b(Landroid/content/Context;)V

    invoke-static {p2}, Lf3/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    sget-object v0, Lf3/g;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf3/g;->n:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FirebaseApp name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LX0/A;->y(ZLjava/lang/Object;)V

    const-string v2, "Application context cannot be null."

    invoke-static {p0, v2}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lf3/g;

    invoke-direct {v2, p0, p2, p1}, Lf3/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lf3/p;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lf3/g;->v()V

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public A()Z
    .locals 1
    .annotation build LT0/a;
    .end annotation

    invoke-virtual {p0}, Lf3/g;->i()V

    iget-object v0, p0, Lf3/g;->g:Lo3/y;

    invoke-virtual {v0}, Lo3/y;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI3/a;

    invoke-virtual {v0}, LI3/a;->b()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 2
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "[DEFAULT]"

    invoke-virtual {p0}, Lf3/g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic C(Landroid/content/Context;)LI3/a;
    .locals 4

    new-instance v0, LI3/a;

    invoke-virtual {p0}, Lf3/g;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lf3/g;->d:Lo3/s;

    const-class v3, Lx3/c;

    invoke-interface {v2, v3}, Lo3/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx3/c;

    invoke-direct {v0, p1, v1, v2}, LI3/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lx3/c;)V

    return-object v0
.end method

.method public final synthetic D(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lf3/g;->h:LA3/b;

    invoke-interface {p1}, LA3/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz3/g;

    invoke-virtual {p1}, Lz3/g;->l()LQ1/k;

    :cond_0
    return-void
.end method

.method public final F(Z)V
    .locals 2

    const-string v0, "FirebaseApp"

    const-string v1, "Notifying background state change listeners."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lf3/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf3/g$a;

    invoke-interface {v1, p1}, Lf3/g$a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 4

    iget-object v0, p0, Lf3/g;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf3/h;

    iget-object v2, p0, Lf3/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lf3/g;->c:Lf3/p;

    invoke-interface {v1, v2, v3}, Lf3/h;->a(Ljava/lang/String;Lf3/p;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H(Lf3/g$a;)V
    .locals 1
    .annotation build LT0/a;
    .end annotation

    invoke-virtual {p0}, Lf3/g;->i()V

    iget-object v0, p0, Lf3/g;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public I(Lf3/h;)V
    .locals 1
    .param p1    # Lf3/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    invoke-virtual {p0}, Lf3/g;->i()V

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lf3/g;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public J(Z)V
    .locals 2

    invoke-virtual {p0}, Lf3/g;->i()V

    iget-object v0, p0, Lf3/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->b()Lcom/google/android/gms/common/api/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/a;->d()Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lf3/g;->F(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lf3/g;->F(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public K(Ljava/lang/Boolean;)V
    .locals 1
    .annotation build LT0/a;
    .end annotation

    invoke-virtual {p0}, Lf3/g;->i()V

    iget-object v0, p0, Lf3/g;->g:Lo3/y;

    invoke-virtual {v0}, Lo3/y;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI3/a;

    invoke-virtual {v0, p1}, LI3/a;->e(Ljava/lang/Boolean;)V

    return-void
.end method

.method public L(Z)V
    .locals 0
    .annotation build LT0/a;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf3/g;->K(Ljava/lang/Boolean;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lf3/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lf3/g;->b:Ljava/lang/String;

    check-cast p1, Lf3/g;

    invoke-virtual {p1}, Lf3/g;->r()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(Lf3/g$a;)V
    .locals 1
    .annotation build LT0/a;
    .end annotation

    invoke-virtual {p0}, Lf3/g;->i()V

    iget-object v0, p0, Lf3/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->b()Lcom/google/android/gms/common/api/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lf3/g$a;->a(Z)V

    :cond_0
    iget-object v0, p0, Lf3/g;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Lf3/h;)V
    .locals 1
    .param p1    # Lf3/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    invoke-virtual {p0}, Lf3/g;->i()V

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lf3/g;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lf3/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lf3/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, LX0/A;->y(ZLjava/lang/Object;)V

    return-void
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lf3/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lf3/g;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf3/g;->n:Ljava/util/Map;

    iget-object v2, p0, Lf3/g;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lf3/g;->G()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public l(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lf3/g;->i()V

    iget-object v0, p0, Lf3/g;->d:Lo3/s;

    invoke-interface {v0, p1}, Lo3/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lf3/g;->i()V

    iget-object v0, p0, Lf3/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lf3/g;->i()V

    iget-object v0, p0, Lf3/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public s()Lf3/p;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lf3/g;->i()V

    iget-object v0, p0, Lf3/g;->c:Lf3/p;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 3
    .annotation build LT0/a;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf3/g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lk1/c;->f([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf3/g;->s()Lf3/p;

    move-result-object v1

    invoke-virtual {v1}, Lf3/p;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lk1/c;->f([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LX0/y;->d(Ljava/lang/Object;)LX0/y$a;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lf3/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LX0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LX0/y$a;

    move-result-object v0

    const-string v1, "options"

    iget-object v2, p0, Lf3/g;->c:Lf3/p;

    invoke-virtual {v0, v1, v2}, LX0/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)LX0/y$a;

    move-result-object v0

    invoke-virtual {v0}, LX0/y$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Lf3/g;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "FirebaseApp"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf3/g;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lf3/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lf3/g$c;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device unlocked: initializing all Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf3/g;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lf3/g;->d:Lo3/s;

    invoke-virtual {p0}, Lf3/g;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo3/s;->u(Z)V

    iget-object v0, p0, Lf3/g;->h:LA3/b;

    invoke-interface {v0}, LA3/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz3/g;

    invoke-virtual {v0}, Lz3/g;->l()LQ1/k;

    :goto_0
    return-void
.end method

.method public w()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lf3/g;->d:Lo3/s;

    invoke-virtual {v0}, Lo3/s;->t()V

    return-void
.end method
