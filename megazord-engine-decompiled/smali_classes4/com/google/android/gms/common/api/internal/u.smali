.class public final Lcom/google/android/gms/common/api/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l$b;
.implements Lcom/google/android/gms/common/api/l$c;
.implements LU0/Z0;


# instance fields
.field public final e:Ljava/util/Queue;

.field public final f:Lcom/google/android/gms/common/api/a$f;
    .annotation runtime LNh/c;
    .end annotation
.end field

.field public final g:LU0/c;

.field public final h:LU0/w;

.field public final i:Ljava/util/Set;

.field public final j:Ljava/util/Map;

.field public final k:I

.field public final l:LU0/B0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Z

.field public final n:Ljava/util/List;

.field public o:LS0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:I

.field public final synthetic q:Lcom/google/android/gms/common/api/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/k;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->i:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->n:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->o:LS0/c;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/common/api/internal/u;->p:I

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lcom/google/android/gms/common/api/k;->c0(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/u;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/k;->G()LU0/c;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    new-instance v2, LU0/w;

    invoke-direct {v2}, LU0/w;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/u;->h:LU0/w;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/k;->b0()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/common/api/internal/u;->k:I

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->n(Lcom/google/android/gms/common/api/internal/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/k;->d0(Landroid/content/Context;Landroid/os/Handler;)LU0/B0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->l:LU0/B0;

    return-void

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->l:LU0/B0;

    return-void
.end method

.method public static bridge synthetic A(Lcom/google/android/gms/common/api/internal/u;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->k()V

    return-void
.end method

.method public static bridge synthetic B(Lcom/google/android/gms/common/api/internal/u;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->l(I)V

    return-void
.end method

.method public static bridge synthetic C(Lcom/google/android/gms/common/api/internal/u;LU0/e0;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/u;->m:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->F()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->j()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static bridge synthetic D(Lcom/google/android/gms/common/api/internal/u;LU0/e0;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-static {p1}, LU0/e0;->a(LU0/e0;)LS0/e;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Ljava/util/Queue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU0/N0;

    instance-of v3, v2, LU0/k0;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, LU0/k0;

    invoke-virtual {v3, p0}, LU0/k0;->g(Lcom/google/android/gms/common/api/internal/u;)[LS0/e;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, p1}, Lk1/b;->d([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU0/N0;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/u;->e:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {v4, p1}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(LS0/e;)V

    invoke-virtual {v3, v4}, LU0/N0;->b(Ljava/lang/Exception;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static bridge synthetic O(Lcom/google/android/gms/common/api/internal/u;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/u;->m:Z

    return p0
.end method

.method public static bridge synthetic P(Lcom/google/android/gms/common/api/internal/u;Z)Z
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->r(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Lcom/google/android/gms/common/api/internal/u;)Lcom/google/android/gms/common/api/a$f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/google/android/gms/common/api/internal/u;)LU0/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/google/android/gms/common/api/internal/u;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->o:LS0/c;

    return-void
.end method

.method public final F()V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->w(Lcom/google/android/gms/common/api/internal/d;)LX0/c0;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->n(Lcom/google/android/gms/common/api/internal/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v2, v1, v3}, LX0/c0;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, LS0/c;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, LS0/c;-><init>(ILandroid/app/PendingIntent;)V

    const-string v1, "GoogleApiManager"

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The service for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not available: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/common/api/internal/u;->I(LS0/c;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    new-instance v4, LU0/g0;

    invoke-direct {v4, v1, v2, v3}, LU0/g0;-><init>(Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/a$f;LU0/c;)V

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->l:LU0/B0;

    invoke-static {v1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU0/B0;

    invoke-virtual {v1, v4}, LU0/B0;->k2(LU0/A0;)V

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1, v4}, Lcom/google/android/gms/common/api/a$f;->k(LX0/f$c;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v1

    new-instance v2, LS0/c;

    invoke-direct {v2, v0}, LS0/c;-><init>(I)V

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/common/api/internal/u;->I(LS0/c;Ljava/lang/Exception;)V

    return-void

    :goto_0
    new-instance v2, LS0/c;

    invoke-direct {v2, v0}, LS0/c;-><init>(I)V

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/common/api/internal/u;->I(LS0/c;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final G(LU0/N0;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->p(LU0/N0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->m()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->o:LS0/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LS0/c;->e0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->o:LS0/c;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/u;->I(LS0/c;Ljava/lang/Exception;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->F()V

    return-void
.end method

.method public final H()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/common/api/internal/u;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/u;->p:I

    return-void
.end method

.method public final I(LS0/c;Ljava/lang/Exception;)V
    .locals 5
    .param p1    # LS0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->l:LU0/B0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LU0/B0;->l2()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->E()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->w(Lcom/google/android/gms/common/api/internal/d;)LX0/c0;

    move-result-object v0

    invoke-virtual {v0}, LX0/c0;->c()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->d(LS0/c;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    instance-of v0, v0, La1/q;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LS0/c;->B()I

    move-result v0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/d;->E(Lcom/google/android/gms/common/api/internal/d;Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v3, 0x493e0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    invoke-virtual {p1}, LS0/c;->B()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/api/internal/d;->q()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->o:LS0/c;

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, LX0/A;->h(Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/common/api/internal/u;->h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/d;->d(Lcom/google/android/gms/common/api/internal/d;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/d;->r(LU0/c;LS0/c;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/gms/common/api/internal/u;->h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/u;->e:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->q(LS0/c;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    iget v0, p0, Lcom/google/android/gms/common/api/internal/u;->k:I

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/common/api/internal/d;->f(LS0/c;I)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, LS0/c;->B()I

    move-result p2

    const/16 v0, 0x12

    if-ne p2, v0, :cond_6

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/u;->m:Z

    :cond_6
    iget-boolean p2, p0, Lcom/google/android/gms/common/api/internal/u;->m:Z

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/d;->r(LU0/c;LS0/c;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->f(Lcom/google/android/gms/common/api/Status;)V

    :cond_8
    :goto_0
    return-void

    :cond_9
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/d;->r(LU0/c;LS0/c;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final J(LS0/c;)V
    .locals 5
    .param p1    # LS0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignInFailed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/u;->I(LS0/c;Ljava/lang/Exception;)V

    return-void
.end method

.method public final K(LU0/Q0;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final L()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/u;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->F()V

    :cond_0
    return-void
.end method

.method public final M()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    sget-object v0, Lcom/google/android/gms/common/api/internal/d;->r:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/u;->f(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->h:LU0/w;

    invoke-virtual {v0}, LU0/w;->f()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/common/api/internal/f$a;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/f$a;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    new-instance v4, Lcom/google/android/gms/common/api/internal/C;

    new-instance v5, LQ1/l;

    invoke-direct {v5}, LQ1/l;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/common/api/internal/C;-><init>(Lcom/google/android/gms/common/api/internal/f$a;LQ1/l;)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/api/internal/u;->G(LU0/N0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, LS0/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LS0/c;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/u;->d(LS0/c;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    new-instance v1, LU0/c0;

    invoke-direct {v1, p0}, LU0/c0;-><init>(Lcom/google/android/gms/common/api/internal/u;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->g(LX0/f$e;)V

    :cond_1
    return-void
.end method

.method public final N()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/u;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->o()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->p(Lcom/google/android/gms/common/api/internal/d;)LS0/h;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->n(Lcom/google/android/gms/common/api/internal/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, LS0/h;->j(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x15

    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x16

    const-string v2, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/u;->f(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    const-string v1, "Timing out connection while resuming."

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final Q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->m()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/u;->r(Z)Z

    move-result v0

    return v0
.end method

.method public final c([LS0/e;)LS0/e;
    .locals 9
    .param p1    # [LS0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->u()[LS0/e;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [LS0/e;

    :cond_1
    new-instance v3, Landroidx/collection/ArrayMap;

    array-length v4, v1

    invoke-direct {v3, v4}, Landroidx/collection/ArrayMap;-><init>(I)V

    move v4, v2

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, LS0/e;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, LS0/e;->b0()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v4, p1, v2

    invoke-virtual {v4}, LS0/e;->B()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, LS0/e;->b0()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    :goto_3
    return-object v0
.end method

.method public final d(LS0/c;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU0/Q0;

    sget-object v2, LS0/c;->E:LS0/c;

    invoke-static {p1, v2}, LX0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->i()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    invoke-virtual {v1, v3, p1, v2}, LU0/Q0;->c(LU0/c;LS0/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->i:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final e(LS0/c;)V
    .locals 1
    .param p1    # LS0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/u;->I(LS0/c;Ljava/lang/Exception;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/api/internal/u;->h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final f1(LS0/c;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->k()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, LU0/Z;

    invoke-direct {v0, p0}, LU0/Z;-><init>(Lcom/google/android/gms/common/api/internal/u;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU0/N0;

    if-eqz p3, :cond_3

    iget v2, v1, LU0/N0;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, LU0/N0;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p2}, LU0/N0;->b(Ljava/lang/Exception;)V

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->l(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LU0/a0;

    invoke-direct {v1, p0, p1}, LU0/a0;-><init>(Lcom/google/android/gms/common/api/internal/u;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->e:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU0/N0;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/api/internal/u;->p(LU0/N0;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/u;->e:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final k()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->E()V

    sget-object v0, LS0/c;->E:LS0/c;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/u;->d(LS0/c;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->o()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU0/s0;

    iget-object v2, v1, LU0/s0;->a:Lcom/google/android/gms/common/api/internal/h;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/h;->c()[LS0/e;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/u;->c([LS0/e;)LS0/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, v1, LU0/s0;->a:Lcom/google/android/gms/common/api/internal/h;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    new-instance v3, LQ1/l;

    invoke-direct {v3}, LQ1/l;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/h;->d(Lcom/google/android/gms/common/api/a$b;LQ1/l;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/u;->i(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    const-string v1, "DeadObjectException thrown while calling register listener method."

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->f(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->m()V

    return-void
.end method

.method public final l(I)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->E()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/u;->m:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->v()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->h:LU0/w;

    invoke-virtual {v1, p1, v0}, LU0/w;->e(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x9

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xb

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->w(Lcom/google/android/gms/common/api/internal/d;)LX0/c0;

    move-result-object p1

    invoke-virtual {p1}, LX0/c0;->c()V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU0/s0;

    iget-object v0, v0, LU0/s0;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->m(Lcom/google/android/gms/common/api/internal/d;)J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final n(LU0/N0;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->h:LU0/w;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->a()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, LU0/N0;->d(LU0/w;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, LU0/N0;->c(Lcom/google/android/gms/common/api/internal/u;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->i(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$f;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final o()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/u;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/u;->m:Z

    :cond_0
    return-void
.end method

.method public final p(LU0/N0;)Z
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    instance-of v0, p1, LU0/k0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->n(LU0/N0;)V

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, LU0/k0;

    invoke-virtual {v0, p0}, LU0/k0;->g(Lcom/google/android/gms/common/api/internal/u;)[LS0/e;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/internal/u;->c([LS0/e;)LS0/e;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->n(LU0/N0;)V

    return v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, LS0/e;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, LS0/e;->b0()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not execute call because it requires feature ("

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "GoogleApiManager"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->d(Lcom/google/android/gms/common/api/internal/d;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p0}, LU0/k0;->f(Lcom/google/android/gms/common/api/internal/u;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    new-instance v0, LU0/e0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v2, v1}, LU0/e0;-><init>(LU0/c;LS0/e;LU0/d0;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-wide/16 v2, 0x1388

    const/16 v4, 0xf

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LU0/e0;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v5, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p1

    const/16 v3, 0x10

    invoke-static {p1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, LS0/c;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, LS0/c;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/u;->q(LS0/c;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/u;->k:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/d;->f(LS0/c;I)Z

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(LS0/e;)V

    invoke-virtual {v0, p1}, LU0/N0;->b(Ljava/lang/Exception;)V

    return v1
.end method

.method public final q(LS0/c;)Z
    .locals 3
    .param p1    # LS0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/api/internal/d;->B()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->s(Lcom/google/android/gms/common/api/internal/d;)LU0/x;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->D(Lcom/google/android/gms/common/api/internal/d;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/u;->g:LU0/c;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->s(Lcom/google/android/gms/common/api/internal/d;)LU0/x;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/api/internal/u;->k:I

    invoke-virtual {v1, p1, v2}, LU0/U0;->t(LS0/c;I)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r(Z)Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->h:LU0/w;

    invoke-virtual {v0}, LU0/w;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/u;->m()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    const-string v0, "Timing out service connection."

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$f;->f(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/u;->k:I

    return v0
.end method

.method public final t()I
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/common/api/internal/u;->p:I

    return v0
.end method

.method public final u()LS0/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->q:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, LX0/A;->h(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->o:LS0/c;

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/common/api/a$f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->f:Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method

.method public final y()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->j:Ljava/util/Map;

    return-object v0
.end method
