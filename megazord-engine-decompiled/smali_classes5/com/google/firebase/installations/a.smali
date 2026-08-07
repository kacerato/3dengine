.class public Lcom/google/firebase/installations/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB3/j;


# static fields
.field public static final m:Ljava/lang/Object;

.field public static final n:Ljava/lang/String; = "generatefid.lock"

.field public static final o:Ljava/lang/String; = "CHIME_ANDROID_SDK"

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:J = 0x1eL

.field public static final s:Ljava/util/concurrent/ThreadFactory;

.field public static final t:Ljava/lang/String; = "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

.field public static final u:Ljava/lang/String; = "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

.field public static final v:Ljava/lang/String; = "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

.field public static final w:Ljava/lang/String; = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."


# instance fields
.field public final a:Lf3/g;

.field public final b:LG3/c;

.field public final c:LF3/c;

.field public final d:LB3/s;

.field public final e:Lo3/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/y<",
            "LF3/b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:LB3/q;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/concurrent/Executor;

.field public j:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public k:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "FirebaseInstallations.this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LC3/a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LB3/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/installations/a$a;

    invoke-direct {v0}, Lcom/google/firebase/installations/a$a;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/a;->s:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lf3/g;LA3/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 9
    .param p2    # LA3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf3/g;",
            "LA3/b<",
            "Lz3/j;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v4, LG3/c;

    .line 2
    invoke-virtual {p1}, Lf3/g;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p2}, LG3/c;-><init>(Landroid/content/Context;LA3/b;)V

    new-instance v5, LF3/c;

    invoke-direct {v5, p1}, LF3/c;-><init>(Lf3/g;)V

    .line 3
    invoke-static {}, LB3/s;->c()LB3/s;

    move-result-object v6

    new-instance v7, Lo3/y;

    new-instance p2, LB3/e;

    invoke-direct {p2, p1}, LB3/e;-><init>(Lf3/g;)V

    invoke-direct {v7, p2}, Lo3/y;-><init>(LA3/b;)V

    new-instance v8, LB3/q;

    invoke-direct {v8}, LB3/q;-><init>()V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/installations/a;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lf3/g;LG3/c;LF3/c;LB3/s;Lo3/y;LB3/q;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lf3/g;LG3/c;LF3/c;LB3/s;Lo3/y;LB3/q;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Executor;",
            "Lf3/g;",
            "LG3/c;",
            "LF3/c;",
            "LB3/s;",
            "Lo3/y<",
            "LF3/b;",
            ">;",
            "LB3/q;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/a;->k:Ljava/util/Set;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/List;

    .line 9
    iput-object p3, p0, Lcom/google/firebase/installations/a;->a:Lf3/g;

    .line 10
    iput-object p4, p0, Lcom/google/firebase/installations/a;->b:LG3/c;

    .line 11
    iput-object p5, p0, Lcom/google/firebase/installations/a;->c:LF3/c;

    .line 12
    iput-object p6, p0, Lcom/google/firebase/installations/a;->d:LB3/s;

    .line 13
    iput-object p7, p0, Lcom/google/firebase/installations/a;->e:Lo3/y;

    .line 14
    iput-object p8, p0, Lcom/google/firebase/installations/a;->f:LB3/q;

    .line 15
    iput-object p1, p0, Lcom/google/firebase/installations/a;->h:Ljava/util/concurrent/ExecutorService;

    .line 16
    iput-object p2, p0, Lcom/google/firebase/installations/a;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic D(Lf3/g;)LF3/b;
    .locals 1

    new-instance v0, LF3/b;

    invoke-direct {v0, p0}, LF3/b;-><init>(Lf3/g;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/google/firebase/installations/a;)Ljava/lang/Void;
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->l()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/firebase/installations/a;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->C(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/installations/a;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->A(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/installations/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->B()V

    return-void
.end method

.method public static synthetic g(Lf3/g;)LF3/b;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/a;->D(Lf3/g;)LF3/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/google/firebase/installations/a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/installations/a;->k:Ljava/util/Set;

    return-object p0
.end method

.method public static t()Lcom/google/firebase/installations/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lf3/g;->p()Lf3/g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/a;->u(Lf3/g;)Lcom/google/firebase/installations/a;

    move-result-object v0

    return-object v0
.end method

.method public static u(Lf3/g;)Lcom/google/firebase/installations/a;
    .locals 2
    .param p0    # Lf3/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Null is not a valid value of FirebaseApp."

    invoke-static {v0, v1}, LX0/A;->b(ZLjava/lang/Object;)V

    const-class v0, LB3/j;

    invoke-virtual {p0, v0}, Lf3/g;->l(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/installations/a;

    return-object p0
.end method


# virtual methods
.method public final synthetic A(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->m(Z)V

    return-void
.end method

.method public final synthetic B()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->n(Z)V

    return-void
.end method

.method public final synthetic C(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->n(Z)V

    return-void
.end method

.method public final E()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, LX0/A;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->y()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, LX0/A;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, LX0/A;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LB3/s;->h(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v1}, LX0/A;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LB3/s;->g(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v2}, LX0/A;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public final F(LF3/d;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Lf3/g;

    invoke-virtual {v0}, Lf3/g;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Lf3/g;

    invoke-virtual {v0}, Lf3/g;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, LF3/d;->m()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/installations/a;->f:LB3/q;

    invoke-virtual {p1}, LB3/q;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->s()LF3/b;

    move-result-object p1

    invoke-virtual {p1}, LF3/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/google/firebase/installations/a;->f:LB3/q;

    invoke-virtual {p1}, LB3/q;->a()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final G(LF3/d;)LF3/d;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    invoke-virtual {p1}, LF3/d;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LF3/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->s()LF3/b;

    move-result-object v0

    invoke-virtual {v0}, LF3/b;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/google/firebase/installations/a;->b:LG3/c;

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LF3/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, LG3/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LG3/d;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a$c;->a:[I

    invoke-virtual {v0}, LG3/d;->e()LG3/d$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    const-string v0, "BAD CONFIG"

    invoke-virtual {p1, v0}, LF3/d;->q(Ljava/lang/String;)LF3/d;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$a;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, LG3/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, LG3/d;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/firebase/installations/a;->d:LB3/s;

    invoke-virtual {v1}, LB3/s;->b()J

    move-result-wide v5

    invoke-virtual {v0}, LG3/d;->b()LG3/f;

    move-result-object v1

    invoke-virtual {v1}, LG3/f;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, LG3/d;->b()LG3/f;

    move-result-object v0

    invoke-virtual {v0}, LG3/f;->d()J

    move-result-wide v8

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, LF3/d;->s(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)LF3/d;

    move-result-object p1

    return-object p1
.end method

.method public final H(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB3/r;

    invoke-interface {v2, p1}, LB3/r;->onException(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final I(LF3/d;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LB3/r;

    invoke-interface {v2, p1}, LB3/r;->a(LF3/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized J(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/installations/a;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized K(LF3/d;LF3/d;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/a;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LF3/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, LF3/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/installations/a;->k:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC3/a;

    invoke-virtual {p2}, LF3/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LC3/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(LC3/a;)LC3/b;
    .locals 1
    .param p1    # LC3/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/a;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/firebase/installations/a$b;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/installations/a$b;-><init>(Lcom/google/firebase/installations/a;LC3/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Z)LQ1/k;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LQ1/k<",
            "LB3/n;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->E()V

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->i()LQ1/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/a;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, LB3/i;

    invoke-direct {v2, p0, p1}, LB3/i;-><init>(Lcom/google/firebase/installations/a;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public delete()LQ1/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/installations/a;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LB3/h;

    invoke-direct {v1, p0}, LB3/h;-><init>(Lcom/google/firebase/installations/a;)V

    invoke-static {v0, v1}, LQ1/n;->d(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)LQ1/k;

    move-result-object v0

    return-object v0
.end method

.method public getId()LQ1/k;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->E()V

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LQ1/n;->g(Ljava/lang/Object;)LQ1/k;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->j()LQ1/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/installations/a;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, LB3/g;

    invoke-direct {v2, p0}, LB3/g;-><init>(Lcom/google/firebase/installations/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final i()LQ1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "LB3/n;",
            ">;"
        }
    .end annotation

    new-instance v0, LQ1/l;

    invoke-direct {v0}, LQ1/l;-><init>()V

    new-instance v1, LB3/l;

    iget-object v2, p0, Lcom/google/firebase/installations/a;->d:LB3/s;

    invoke-direct {v1, v2, v0}, LB3/l;-><init>(LB3/s;LQ1/l;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/installations/a;->k(LB3/r;)V

    invoke-virtual {v0}, LQ1/l;->a()LQ1/k;

    move-result-object v0

    return-object v0
.end method

.method public final j()LQ1/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, LQ1/l;

    invoke-direct {v0}, LQ1/l;-><init>()V

    new-instance v1, LB3/m;

    invoke-direct {v1, v0}, LB3/m;-><init>(LQ1/l;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/installations/a;->k(LB3/r;)V

    invoke-virtual {v0}, LQ1/l;->a()LQ1/k;

    move-result-object v0

    return-object v0
.end method

.method public final k(LB3/r;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final l()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->J(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->v()LF3/d;

    move-result-object v1

    invoke-virtual {v1}, LF3/d;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/installations/a;->b:LG3/c;

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, LF3/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->y()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, LF3/d;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, LG3/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, LF3/d;->r()LF3/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/installations/a;->z(LF3/d;)V

    return-object v0
.end method

.method public final m(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->v()LF3/d;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, LF3/d;->i()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, LF3/d;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/installations/a;->d:LB3/s;

    invoke-virtual {p1, v0}, LB3/s;->f(LF3/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->o(LF3/d;)LF3/d;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->G(LF3/d;)LF3/d;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/firebase/installations/FirebaseInstallationsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->z(LF3/d;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/installations/a;->K(LF3/d;LF3/d;)V

    invoke-virtual {p1}, LF3/d;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, LF3/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->J(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, LF3/d;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    invoke-direct {p1, v0}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Lcom/google/firebase/installations/FirebaseInstallationsException$a;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->H(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, LF3/d;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->H(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->I(LF3/d;)V

    :goto_3
    return-void

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/firebase/installations/a;->H(Ljava/lang/Exception;)V

    return-void
.end method

.method public final n(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->x()LF3/d;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LF3/d;->p()LF3/d;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->I(LF3/d;)V

    iget-object v0, p0, Lcom/google/firebase/installations/a;->i:Ljava/util/concurrent/Executor;

    new-instance v1, LB3/f;

    invoke-direct {v1, p0, p1}, LB3/f;-><init>(Lcom/google/firebase/installations/a;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(LF3/d;)LF3/d;
    .locals 6
    .param p1    # LF3/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/FirebaseInstallationsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/installations/a;->b:LG3/c;

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LF3/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, LF3/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, LG3/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LG3/f;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a$c;->b:[I

    invoke-virtual {v0}, LG3/f;->b()LG3/f$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/a;->J(Ljava/lang/String;)V

    invoke-virtual {p1}, LF3/d;->r()LF3/d;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$a;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$a;

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$a;)V

    throw p1

    :cond_1
    const-string v0, "BAD CONFIG"

    invoke-virtual {p1, v0}, LF3/d;->q(Ljava/lang/String;)LF3/d;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0}, LG3/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LG3/f;->d()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/firebase/installations/a;->d:LB3/s;

    invoke-virtual {v0}, LB3/s;->b()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, LF3/d;->o(Ljava/lang/String;JJ)LF3/d;

    move-result-object p1

    return-object p1
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Lf3/g;

    invoke-virtual {v0}, Lf3/g;->s()Lf3/p;

    move-result-object v0

    invoke-virtual {v0}, Lf3/p;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Lf3/g;

    invoke-virtual {v0}, Lf3/g;->s()Lf3/p;

    move-result-object v0

    invoke-virtual {v0}, Lf3/p;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized r()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/a;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final s()LF3/b;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/installations/a;->e:Lo3/y;

    invoke-virtual {v0}, Lo3/y;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF3/b;

    return-object v0
.end method

.method public final v()LF3/d;
    .locals 3

    sget-object v0, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/a;->a:Lf3/g;

    invoke-virtual {v1}, Lf3/g;->n()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, LB3/d;->a(Landroid/content/Context;Ljava/lang/String;)LB3/d;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/a;->c:LF3/c;

    invoke-virtual {v2}, LF3/c;->e()LF3/d;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, LB3/d;->b()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LB3/d;->b()V

    :cond_1
    throw v2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public w()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Lf3/g;

    invoke-virtual {v0}, Lf3/g;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()LF3/d;
    .locals 5

    sget-object v0, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/a;->a:Lf3/g;

    invoke-virtual {v1}, Lf3/g;->n()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, LB3/d;->a(Landroid/content/Context;Ljava/lang/String;)LB3/d;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/a;->c:LF3/c;

    invoke-virtual {v2}, LF3/c;->e()LF3/d;

    move-result-object v2

    invoke-virtual {v2}, LF3/d;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/firebase/installations/a;->F(LF3/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/installations/a;->c:LF3/c;

    invoke-virtual {v2, v3}, LF3/d;->t(Ljava/lang/String;)LF3/d;

    move-result-object v2

    invoke-virtual {v4, v2}, LF3/c;->c(LF3/d;)LF3/d;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, LB3/d;->b()V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_1
    monitor-exit v0

    return-object v2

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, LB3/d;->b()V

    :cond_2
    throw v2

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public y()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Lf3/g;

    invoke-virtual {v0}, Lf3/g;->s()Lf3/p;

    move-result-object v0

    invoke-virtual {v0}, Lf3/p;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z(LF3/d;)V
    .locals 3

    sget-object v0, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/a;->a:Lf3/g;

    invoke-virtual {v1}, Lf3/g;->n()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, LB3/d;->a(Landroid/content/Context;Ljava/lang/String;)LB3/d;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/a;->c:LF3/c;

    invoke-virtual {v2, p1}, LF3/c;->c(LF3/d;)LF3/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, LB3/d;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LB3/d;->b()V

    :cond_1
    throw p1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
