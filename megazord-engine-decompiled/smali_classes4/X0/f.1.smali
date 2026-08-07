.class public abstract LX0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LT0/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LX0/f$a;,
        LX0/f$b;,
        LX0/f$d;,
        LX0/f$c;,
        LX0/f$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final G:I = 0x1
    .annotation build LT0/a;
    .end annotation
.end field

.field public static final H:I = 0x4
    .annotation build LT0/a;
    .end annotation
.end field

.field public static final I:I = 0x5
    .annotation build LT0/a;
    .end annotation
.end field

.field public static final J:Ljava/lang/String; = "pendingIntent"
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final K:Ljava/lang/String; = "<<default account>>"
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final L:[Ljava/lang/String;
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final M:[LS0/e;


# instance fields
.field public volatile A:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile B:Lm1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public C:LS0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public D:Z

.field public volatile E:LX0/N0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public F:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public c:I

.field public d:J

.field public e:J

.field public f:I

.field public g:J

.field public volatile h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:LX0/Y0;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final j:Landroid/content/Context;

.field public final k:Landroid/os/Looper;

.field public final l:LX0/o;

.field public final m:LS0/i;

.field public final n:Landroid/os/Handler;

.field public final o:Ljava/lang/Object;

.field public final p:Ljava/lang/Object;

.field public q:LX0/u;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public r:LX0/f$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public s:Landroid/os/IInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final t:Ljava/util/ArrayList;

.field public u:LX0/H0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public v:I

.field public final w:LX0/f$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final x:LX0/f$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final y:I

.field public final z:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [LS0/e;

    sput-object v0, LX0/f;->M:[LS0/e;

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LX0/f;->L:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;LX0/o;LS0/i;ILX0/f$a;LX0/f$b;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LX0/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LS0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # LX0/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # LX0/f$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LX0/f;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LX0/f;->o:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LX0/f;->p:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LX0/f;->t:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, LX0/f;->v:I

    iput-object v0, p0, LX0/f;->C:LS0/c;

    const/4 v1, 0x0

    iput-boolean v1, p0, LX0/f;->D:Z

    iput-object v0, p0, LX0/f;->E:LX0/N0;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, LX0/f;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "Context must not be null"

    .line 3
    invoke-static {p1, v1}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LX0/f;->j:Landroid/content/Context;

    const-string p1, "Handler must not be null"

    .line 4
    invoke-static {p2, p1}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, LX0/f;->n:Landroid/os/Handler;

    .line 5
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, LX0/f;->k:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 6
    invoke-static {p3, p1}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, LX0/f;->l:LX0/o;

    const-string p1, "API availability must not be null"

    .line 7
    invoke-static {p4, p1}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, LX0/f;->m:LS0/i;

    iput p5, p0, LX0/f;->y:I

    iput-object p6, p0, LX0/f;->w:LX0/f$a;

    iput-object p7, p0, LX0/f;->x:LX0/f$b;

    iput-object v0, p0, LX0/f;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILX0/f$a;LX0/f$b;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LX0/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # LX0/f$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .line 8
    invoke-static {p1}, LX0/o;->e(Landroid/content/Context;)LX0/o;

    move-result-object v3

    .line 9
    invoke-static {}, LS0/i;->i()LS0/i;

    move-result-object v4

    .line 10
    invoke-static {p4}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p5}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 12
    invoke-direct/range {v0 .. v8}, LX0/f;-><init>(Landroid/content/Context;Landroid/os/Looper;LX0/o;LS0/i;ILX0/f$a;LX0/f$b;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LX0/o;LS0/i;ILX0/f$a;LX0/f$b;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LX0/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # LS0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # LX0/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # LX0/f$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LX0/f;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LX0/f;->o:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LX0/f;->p:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LX0/f;->t:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, LX0/f;->v:I

    iput-object v0, p0, LX0/f;->C:LS0/c;

    const/4 v1, 0x0

    iput-boolean v1, p0, LX0/f;->D:Z

    iput-object v0, p0, LX0/f;->E:LX0/N0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, LX0/f;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 15
    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LX0/f;->j:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 16
    invoke-static {p2, p1}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, LX0/f;->k:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 17
    invoke-static {p3, p1}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, LX0/f;->l:LX0/o;

    const-string p1, "API availability must not be null"

    .line 18
    invoke-static {p4, p1}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, LX0/f;->m:LS0/i;

    new-instance p1, LX0/E0;

    .line 19
    invoke-direct {p1, p0, p2}, LX0/E0;-><init>(LX0/f;Landroid/os/Looper;)V

    iput-object p1, p0, LX0/f;->n:Landroid/os/Handler;

    iput p5, p0, LX0/f;->y:I

    iput-object p6, p0, LX0/f;->w:LX0/f$a;

    iput-object p7, p0, LX0/f;->x:LX0/f$b;

    iput-object p8, p0, LX0/f;->z:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c0(LX0/f;)LS0/c;
    .locals 0

    iget-object p0, p0, LX0/f;->C:LS0/c;

    return-object p0
.end method

.method public static bridge synthetic d0(LX0/f;)LX0/f$a;
    .locals 0

    iget-object p0, p0, LX0/f;->w:LX0/f$a;

    return-object p0
.end method

.method public static bridge synthetic e0(LX0/f;)LX0/f$b;
    .locals 0

    iget-object p0, p0, LX0/f;->x:LX0/f$b;

    return-object p0
.end method

.method public static bridge synthetic f0(LX0/f;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LX0/f;->p:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic h0(LX0/f;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, LX0/f;->t:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic i0(LX0/f;LS0/c;)V
    .locals 0

    iput-object p1, p0, LX0/f;->C:LS0/c;

    return-void
.end method

.method public static bridge synthetic j0(LX0/f;LX0/u;)V
    .locals 0

    iput-object p1, p0, LX0/f;->q:LX0/u;

    return-void
.end method

.method public static bridge synthetic k0(LX0/f;ILandroid/os/IInterface;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, LX0/f;->r0(ILandroid/os/IInterface;)V

    return-void
.end method

.method public static bridge synthetic l0(LX0/f;LX0/N0;)V
    .locals 0

    iput-object p1, p0, LX0/f;->E:LX0/N0;

    invoke-virtual {p0}, LX0/f;->b0()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, LX0/N0;->e:LX0/j;

    invoke-static {}, LX0/C;->b()LX0/C;

    move-result-object p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LX0/j;->n0()LX0/D;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, LX0/C;->c(LX0/D;)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic m0(LX0/f;I)V
    .locals 2

    iget-object p1, p0, LX0/f;->o:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, LX0/f;->v:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LX0/f;->D:Z

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, LX0/f;->n:Landroid/os/Handler;

    iget-object p0, p0, LX0/f;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v1, 0x10

    invoke-virtual {v0, p1, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic o0(LX0/f;)Z
    .locals 0

    iget-boolean p0, p0, LX0/f;->D:Z

    return p0
.end method

.method public static bridge synthetic p0(LX0/f;IILandroid/os/IInterface;)Z
    .locals 2

    iget-object v0, p0, LX0/f;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LX0/f;->v:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2, p3}, LX0/f;->r0(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p0, 0x1

    :goto_0
    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic q0(LX0/f;)Z
    .locals 2

    iget-boolean v0, p0, LX0/f;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LX0/f;->N()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LX0/f;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, LX0/f;->N()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :goto_0
    return v1
.end method


# virtual methods
.method public A()Z
    .locals 1
    .annotation build LT0/a;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public B()Landroid/accounts/Account;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public C()[LS0/e;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LX0/f;->M:[LS0/e;

    return-object v0
.end method

.method public D()Lm1/a;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LX0/f;->B:Lm1/a;

    return-object v0
.end method

.method public E()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Landroid/os/Bundle;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final G()Landroid/content/Context;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LX0/f;->j:Landroid/content/Context;

    return-object v0
.end method

.method public H()I
    .locals 1
    .annotation build LT0/a;
    .end annotation

    iget v0, p0, LX0/f;->y:I

    return v0
.end method

.method public I()Landroid/os/Bundle;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final K()Landroid/os/Looper;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LX0/f;->k:Landroid/os/Looper;

    return-object v0
.end method

.method public L()Ljava/util/Set;
    .locals 1
    .annotation build LT0/a;
    .end annotation

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

.method public final M()Landroid/os/IInterface;
    .locals 3
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, LX0/f;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LX0/f;->v:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, LX0/f;->y()V

    iget-object v1, p0, LX0/f;->s:Landroid/os/IInterface;

    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract N()Ljava/lang/String;
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract O()Ljava/lang/String;
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public P()Ljava/lang/String;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public Q()LX0/j;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LX0/f;->E:LX0/N0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, LX0/N0;->e:LX0/j;

    return-object v0
.end method

.method public R()Z
    .locals 2
    .annotation build LT0/a;
    .end annotation

    invoke-virtual {p0}, LX0/f;->t()I

    move-result v0

    const v1, 0xc9e4920

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public S()Z
    .locals 1
    .annotation build LT0/a;
    .end annotation

    iget-object v0, p0, LX0/f;->E:LX0/N0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public T(Landroid/os/IInterface;)V
    .locals 2
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LX0/f;->e:J

    return-void
.end method

.method public U(LS0/c;)V
    .locals 2
    .param p1    # LS0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p1}, LS0/c;->B()I

    move-result p1

    iput p1, p0, LX0/f;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LX0/f;->g:J

    return-void
.end method

.method public V(I)V
    .locals 2
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iput p1, p0, LX0/f;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LX0/f;->d:J

    return-void
.end method

.method public W(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    new-instance v0, LX0/I0;

    invoke-direct {v0, p0, p1, p2, p3}, LX0/I0;-><init>(LX0/f;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, p0, LX0/f;->n:Landroid/os/Handler;

    const/4 p2, 0x1

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, LX0/f;->n:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public X(Lm1/a;)V
    .locals 0
    .param p1    # Lm1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    iput-object p1, p0, LX0/f;->B:Lm1/a;

    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    iput-object p1, p0, LX0/f;->A:Ljava/lang/String;

    return-void
.end method

.method public Z(I)V
    .locals 3
    .annotation build LT0/a;
    .end annotation

    iget-object v0, p0, LX0/f;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, LX0/f;->n:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, LX0/f;->n:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a()Z
    .locals 1
    .annotation build LT0/a;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public a0(LX0/f$c;ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1    # LX0/f$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LX0/f;->r:LX0/f$c;

    iget-object p1, p0, LX0/f;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget-object v0, p0, LX0/f;->n:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, LX0/f;->n:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b()Z
    .locals 1
    .annotation build LT0/a;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public b0()Z
    .locals 1
    .annotation build LT0/a;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    iput-object p1, p0, LX0/f;->h:Ljava/lang/String;

    invoke-virtual {p0}, LX0/f;->p()V

    return-void
.end method

.method public g(LX0/f$e;)V
    .locals 0
    .param p1    # LX0/f$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    invoke-interface {p1}, LX0/f$e;->a()V

    return-void
.end method

.method public final g0()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LX0/f;->z:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, LX0/f;->j:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public h()Z
    .locals 4
    .annotation build LT0/a;
    .end annotation

    iget-object v0, p0, LX0/f;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LX0/f;->v:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()Ljava/lang/String;
    .locals 2
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LX0/f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LX0/f;->i:LX0/Y0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX0/Y0;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnected()Z
    .locals 3
    .annotation build LT0/a;
    .end annotation

    iget-object v0, p0, LX0/f;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, LX0/f;->v:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k(LX0/f$c;)V
    .locals 1
    .param p1    # LX0/f$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LX0/f;->r:LX0/f$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LX0/f;->r0(ILandroid/os/IInterface;)V

    return-void
.end method

.method public l()Z
    .locals 1
    .annotation build LT0/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .locals 1
    .annotation build LT0/a;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public n()Landroid/os/IBinder;
    .locals 2
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LX0/f;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LX0/f;->q:LX0/u;

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n0(ILandroid/os/Bundle;I)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, LX0/J0;

    invoke-direct {v0, p0, p1, p2}, LX0/J0;-><init>(LX0/f;ILandroid/os/Bundle;)V

    iget-object p1, p0, LX0/f;->n:Landroid/os/Handler;

    const/4 p2, 0x7

    const/4 v1, -0x1

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, LX0/f;->n:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public p()V
    .locals 4
    .annotation build LT0/a;
    .end annotation

    iget-object v0, p0, LX0/f;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, LX0/f;->t:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LX0/f;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, LX0/f;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX0/F0;

    invoke-virtual {v3}, LX0/F0;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, LX0/f;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LX0/f;->p:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, LX0/f;->q:LX0/u;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, LX0/f;->r0(ILandroid/os/IInterface;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public q(LX0/r;Ljava/util/Set;)V
    .locals 20
    .param p1    # LX0/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX0/r;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, LX0/f;->I()Landroid/os/Bundle;

    move-result-object v2

    new-instance v15, LX0/m;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-ge v3, v4, :cond_0

    iget-object v3, v1, LX0/f;->A:Ljava/lang/String;

    :goto_0
    move-object/from16 v17, v3

    goto :goto_1

    :cond_0
    iget-object v3, v1, LX0/f;->B:Lm1/a;

    if-nez v3, :cond_1

    iget-object v3, v1, LX0/f;->A:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, v1, LX0/f;->B:Lm1/a;

    invoke-virtual {v3}, Lm1/a;->a()Landroid/content/AttributionSource;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, v1, LX0/f;->A:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {v3}, LX0/e;->a(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v3, v1, LX0/f;->A:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {v3}, LX0/e;->a(Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    iget v5, v1, LX0/f;->y:I

    sget v6, LS0/i;->a:I

    sget-object v9, LX0/m;->p:[Lcom/google/android/gms/common/api/Scope;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    sget-object v13, LX0/m;->q:[LS0/e;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v3, v15

    move-object v12, v13

    move-object/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v3 .. v17}, LX0/m;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[LS0/e;[LS0/e;ZIZLjava/lang/String;)V

    iget-object v3, v1, LX0/f;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v19

    iput-object v3, v4, LX0/m;->e:Ljava/lang/String;

    iput-object v2, v4, LX0/m;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v4, LX0/m;->g:[Lcom/google/android/gms/common/api/Scope;

    :cond_4
    invoke-virtual/range {p0 .. p0}, LX0/f;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, LX0/f;->B()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/accounts/Account;

    const-string v2, "<<default account>>"

    const-string v3, "com.google"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iput-object v0, v4, LX0/m;->i:Landroid/accounts/Account;

    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v4, LX0/m;->f:Landroid/os/IBinder;

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, LX0/f;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, LX0/f;->B()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, v4, LX0/m;->i:Landroid/accounts/Account;

    :cond_7
    :goto_2
    sget-object v0, LX0/f;->M:[LS0/e;

    iput-object v0, v4, LX0/m;->j:[LS0/e;

    invoke-virtual/range {p0 .. p0}, LX0/f;->C()[LS0/e;

    move-result-object v0

    iput-object v0, v4, LX0/m;->k:[LS0/e;

    invoke-virtual/range {p0 .. p0}, LX0/f;->b0()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, v4, LX0/m;->n:Z

    :cond_8
    :try_start_0
    iget-object v2, v1, LX0/f;->p:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, LX0/f;->q:LX0/u;

    if-eqz v0, :cond_9

    new-instance v3, LX0/G0;

    iget-object v5, v1, LX0/f;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v3, v1, v5}, LX0/G0;-><init>(LX0/f;I)V

    invoke-interface {v0, v3, v4}, LX0/u;->j1(LX0/t;LX0/m;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_9
    const-string v0, "GmsClient"

    const-string v3, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    monitor-exit v2

    return-void

    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :goto_5
    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, LX0/f;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, LX0/f;->W(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :goto_6
    throw v0

    :goto_7
    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, LX0/f;->Z(I)V

    return-void
.end method

.method public r(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    iget-object p2, p0, LX0/f;->o:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget p4, p0, LX0/f;->v:I

    iget-object v0, p0, LX0/f;->s:Landroid/os/IInterface;

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, LX0/f;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object p2, p0, LX0/f;->q:LX0/u;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mConnectState="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p4, v3, :cond_4

    if-eq p4, v2, :cond_3

    if-eq p4, v1, :cond_2

    const/4 v4, 0x4

    if-eq p4, v4, :cond_1

    const/4 v4, 0x5

    if-eq p4, v4, :cond_0

    const-string p4, "UNKNOWN"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p4, "DISCONNECTING"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p4, "CONNECTED"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p4, "LOCAL_CONNECTING"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p4, "REMOTE_CONNECTING"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p4, "DISCONNECTED"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string p4, " mService="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v0, :cond_5

    const-string p4, "null"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, LX0/f;->N()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v4, "@"

    invoke-virtual {p4, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_1
    const-string p4, " mServiceBroker="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez p2, :cond_6

    const-string p2, "null"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p4, "IGmsServiceBroker@"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p4, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v4, p0, LX0/f;->e:J

    const-wide/16 v6, 0x0

    cmp-long p4, v4, v6

    if-lez p4, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastConnectedTime="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v4, p0, LX0/f;->e:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    iget-wide v4, p0, LX0/f;->d:J

    cmp-long p4, v4, v6

    if-lez p4, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastSuspendedCause="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget p4, p0, LX0/f;->c:I

    if-eq p4, v3, :cond_a

    if-eq p4, v2, :cond_9

    if-eq p4, v1, :cond_8

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :cond_8
    const-string p4, "CAUSE_DEAD_OBJECT_EXCEPTION"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :cond_9
    const-string p4, "CAUSE_NETWORK_LOST"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :cond_a
    const-string p4, "CAUSE_SERVICE_DISCONNECTED"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_3
    const-string p4, " lastSuspendedTime="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v0, p0, LX0/f;->d:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    iget-wide v0, p0, LX0/f;->g:J

    cmp-long p4, v0, v6

    if-lez p4, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p4, "lastFailedStatus="

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget p4, p0, LX0/f;->f:I

    invoke-static {p4}, Lcom/google/android/gms/common/api/g;->a(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p1, " lastFailedTime="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-wide p3, p0, LX0/f;->g:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final r0(ILandroid/os/IInterface;)V
    .locals 12
    .param p2    # Landroid/os/IInterface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, LX0/A;->a(Z)V

    iget-object v0, p0, LX0/f;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, LX0/f;->v:I

    iput-object p2, p0, LX0/f;->s:Landroid/os/IInterface;

    const/4 v3, 0x0

    if-eq p1, v1, :cond_b

    const/4 v1, 0x2

    const/4 v4, 0x3

    if-eq p1, v1, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-static {p2}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/os/IInterface;

    invoke-virtual {p0, p2}, LX0/f;->T(Landroid/os/IInterface;)V

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_4
    iget-object v9, p0, LX0/f;->u:LX0/H0;

    if-eqz v9, :cond_5

    iget-object p1, p0, LX0/f;->i:LX0/Y0;

    if-eqz p1, :cond_5

    const-string p2, "GmsClient"

    invoke-virtual {p1}, LX0/Y0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LX0/Y0;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, LX0/f;->l:LX0/o;

    iget-object p1, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {p1}, LX0/Y0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {p1}, LX0/Y0;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, LX0/f;->g0()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {p1}, LX0/Y0;->c()Z

    move-result v11

    const/16 v8, 0x1081

    invoke-virtual/range {v5 .. v11}, LX0/o;->o(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iget-object p1, p0, LX0/f;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_5
    new-instance p1, LX0/H0;

    iget-object p2, p0, LX0/f;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, LX0/H0;-><init>(LX0/f;I)V

    iput-object p1, p0, LX0/f;->u:LX0/H0;

    iget p2, p0, LX0/f;->v:I

    if-ne p2, v4, :cond_6

    invoke-virtual {p0}, LX0/f;->J()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, LX0/Y0;

    invoke-virtual {p0}, LX0/f;->G()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, LX0/f;->J()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x1081

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, LX0/Y0;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_2

    :cond_6
    new-instance p2, LX0/Y0;

    invoke-virtual {p0}, LX0/f;->P()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, LX0/f;->O()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, LX0/f;->R()Z

    move-result v9

    const/4 v7, 0x0

    const/16 v8, 0x1081

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, LX0/Y0;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    :goto_2
    iput-object p2, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {p2}, LX0/Y0;->c()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, LX0/f;->t()I

    move-result p2

    const v1, 0x1110e58

    if-lt p2, v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {p2}, LX0/Y0;->b()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    iget-object p2, p0, LX0/f;->l:LX0/o;

    iget-object v1, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {v1}, LX0/Y0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {v2}, LX0/Y0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, LX0/f;->g0()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {v5}, LX0/Y0;->c()Z

    move-result v5

    invoke-virtual {p0}, LX0/f;->E()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, LX0/R0;

    const/16 v8, 0x1081

    invoke-direct {v7, v1, v2, v8, v5}, LX0/R0;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p2, v7, p1, v4, v6}, LX0/o;->m(LX0/R0;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)LS0/c;

    move-result-object p1

    invoke-virtual {p1}, LS0/c;->k0()Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "GmsClient"

    iget-object v1, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {v1}, LX0/Y0;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {v2}, LX0/Y0;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to connect to service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, LS0/c;->B()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_9

    const/16 p2, 0x10

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, LS0/c;->B()I

    move-result p2

    :goto_4
    invoke-virtual {p1}, LS0/c;->c0()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pendingIntent"

    invoke-virtual {p1}, LS0/c;->c0()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_a
    iget-object p1, p0, LX0/f;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {p0, p2, v3, p1}, LX0/f;->n0(ILandroid/os/Bundle;I)V

    goto :goto_5

    :cond_b
    iget-object v8, p0, LX0/f;->u:LX0/H0;

    if-eqz v8, :cond_c

    iget-object v4, p0, LX0/f;->l:LX0/o;

    iget-object p1, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {p1}, LX0/Y0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {p1}, LX0/Y0;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, LX0/f;->g0()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, LX0/f;->i:LX0/Y0;

    invoke-virtual {p1}, LX0/Y0;->c()Z

    move-result v10

    const/16 v7, 0x1081

    invoke-virtual/range {v4 .. v10}, LX0/o;->o(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iput-object v3, p0, LX0/f;->u:LX0/H0;

    :cond_c
    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t()I
    .locals 1
    .annotation build LT0/a;
    .end annotation

    sget v0, LS0/i;->a:I

    return v0
.end method

.method public final u()[LS0/e;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LX0/f;->E:LX0/N0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, LX0/N0;->c:[LS0/e;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LX0/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public w()Landroid/content/Intent;
    .locals 2
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public x()V
    .locals 3
    .annotation build LT0/a;
    .end annotation

    iget-object v0, p0, LX0/f;->m:LS0/i;

    iget-object v1, p0, LX0/f;->j:Landroid/content/Context;

    invoke-virtual {p0}, LX0/f;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LS0/i;->k(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LX0/f;->r0(ILandroid/os/IInterface;)V

    new-instance v1, LX0/f$d;

    invoke-direct {v1, p0}, LX0/f$d;-><init>(LX0/f;)V

    invoke-virtual {p0, v1, v0, v2}, LX0/f;->a0(LX0/f$c;ILandroid/app/PendingIntent;)V

    return-void

    :cond_0
    new-instance v0, LX0/f$d;

    invoke-direct {v0, p0}, LX0/f$d;-><init>(LX0/f;)V

    invoke-virtual {p0, v0}, LX0/f;->k(LX0/f$c;)V

    return-void
.end method

.method public final y()V
    .locals 2
    .annotation build LT0/a;
    .end annotation

    invoke-virtual {p0}, LX0/f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract z(Landroid/os/IBinder;)Landroid/os/IInterface;
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LT0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method
