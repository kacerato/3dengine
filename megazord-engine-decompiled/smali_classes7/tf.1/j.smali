.class public final Ltf/j;
.super Ltf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltf/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltf/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljf/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LTe/I<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public volatile f:Z

.field public volatile g:Z

.field public h:Ljava/lang/Throwable;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Lbf/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public k:Z


# direct methods
.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, p1, p2, v0}, Ltf/j;-><init>(ILjava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;Z)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ltf/i;-><init>()V

    .line 10
    new-instance v0, Ljf/c;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, LZe/b;->h(ILjava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Ljf/c;-><init>(I)V

    iput-object v0, p0, Ltf/j;->b:Ljf/c;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "onTerminate"

    invoke-static {p2, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ltf/j;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    iput-boolean p3, p0, Ltf/j;->e:Z

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ltf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Ltf/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance p1, Ltf/j$a;

    invoke-direct {p1, p0}, Ltf/j$a;-><init>(Ltf/j;)V

    iput-object p1, p0, Ltf/j;->j:Lbf/b;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ltf/i;-><init>()V

    .line 2
    new-instance v0, Ljf/c;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, LZe/b;->h(ILjava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Ljf/c;-><init>(I)V

    iput-object v0, p0, Ltf/j;->b:Ljf/c;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ltf/j;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-boolean p2, p0, Ltf/j;->e:Z

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ltf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Ltf/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Ltf/j$a;

    invoke-direct {p1, p0}, Ltf/j$a;-><init>(Ltf/j;)V

    iput-object p1, p0, Ltf/j;->j:Lbf/b;

    return-void
.end method

.method public static o8()Ltf/j;
    .locals 3
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ltf/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ltf/j;

    invoke-static {}, LTe/B;->V()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltf/j;-><init>(IZ)V

    return-object v0
.end method

.method public static p8(I)Ltf/j;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ltf/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ltf/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ltf/j;-><init>(IZ)V

    return-object v0
.end method

.method public static q8(ILjava/lang/Runnable;)Ltf/j;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Ltf/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ltf/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ltf/j;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static r8(ILjava/lang/Runnable;Z)Ltf/j;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            "Z)",
            "Ltf/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ltf/j;

    invoke-direct {v0, p0, p1, p2}, Ltf/j;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method

.method public static s8(Z)Ltf/j;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Ltf/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ltf/j;

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-direct {v0, v1, p0}, Ltf/j;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ltf/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltf/j;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltf/j;->j:Lbf/b;

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-object v0, p0, Ltf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-boolean p1, p0, Ltf/j;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ltf/j;->u8()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single observer allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, LYe/e;->h(Ljava/lang/Throwable;LTe/I;)V

    :goto_0
    return-void
.end method

.method public a()V
    .locals 1

    iget-boolean v0, p0, Ltf/j;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ltf/j;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltf/j;->g:Z

    invoke-virtual {p0}, Ltf/j;->t8()V

    invoke-virtual {p0}, Ltf/j;->u8()V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-boolean v0, p0, Ltf/j;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltf/j;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, LVe/c;->dispose()V

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Ltf/j;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ltf/j;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltf/j;->b:Ljf/c;

    invoke-virtual {v0, p1}, Ljf/c;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ltf/j;->u8()V

    :cond_1
    :goto_0
    return-void
.end method

.method public j8()Ljava/lang/Throwable;
    .locals 1
    .annotation build LUe/g;
    .end annotation

    iget-boolean v0, p0, Ltf/j;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltf/j;->h:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k8()Z
    .locals 1

    iget-boolean v0, p0, Ltf/j;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltf/j;->h:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l8()Z
    .locals 1

    iget-object v0, p0, Ltf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m8()Z
    .locals 1

    iget-boolean v0, p0, Ltf/j;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltf/j;->h:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Ltf/j;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ltf/j;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ltf/j;->h:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltf/j;->g:Z

    invoke-virtual {p0}, Ltf/j;->t8()V

    invoke-virtual {p0}, Ltf/j;->u8()V

    return-void

    :cond_1
    :goto_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public t8()V
    .locals 3

    iget-object v0, p0, Ltf/j;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ltf/j;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public u8()V
    .locals 2

    iget-object v0, p0, Ltf/j;->j:Lbf/b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ltf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTe/I;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Ltf/j;->k:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ltf/j;->v8(LTe/I;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Ltf/j;->w8(LTe/I;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Ltf/j;->j:Lbf/b;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Ltf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTe/I;

    goto :goto_0
.end method

.method public v8(LTe/I;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ltf/j;->b:Ljf/c;

    iget-boolean v1, p0, Ltf/j;->e:Z

    const/4 v2, 0x1

    :cond_0
    iget-boolean v3, p0, Ltf/j;->f:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object p1, p0, Ltf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljf/c;->clear()V

    return-void

    :cond_1
    iget-boolean v3, p0, Ltf/j;->g:Z

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0, p1}, Ltf/j;->y8(Laf/o;LTe/I;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    invoke-interface {p1, v4}, LTe/I;->g(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Ltf/j;->x8(LTe/I;)V

    return-void

    :cond_3
    iget-object v3, p0, Ltf/j;->j:Lbf/b;

    neg-int v2, v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method public w8(LTe/I;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ltf/j;->b:Ljf/c;

    iget-boolean v1, p0, Ltf/j;->e:Z

    const/4 v2, 0x1

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, Ltf/j;->f:Z

    if-eqz v5, :cond_1

    iget-object p1, p0, Ltf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {v0}, Laf/o;->clear()V

    return-void

    :cond_1
    iget-boolean v5, p0, Ltf/j;->g:Z

    iget-object v6, p0, Ltf/j;->b:Ljf/c;

    invoke-virtual {v6}, Ljf/c;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    if-eqz v5, :cond_5

    if-nez v1, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0, p1}, Ltf/j;->y8(Laf/o;LTe/I;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    move v3, v7

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {p0, p1}, Ltf/j;->x8(LTe/I;)V

    return-void

    :cond_5
    if-eqz v8, :cond_6

    iget-object v5, p0, Ltf/j;->j:Lbf/b;

    neg-int v4, v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_6
    invoke-interface {p1, v6}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public x8(LTe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ltf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Ltf/j;->h:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LTe/I;->a()V

    :goto_0
    return-void
.end method

.method public y8(Laf/o;LTe/I;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laf/o<",
            "TT;>;",
            "LTe/I<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ltf/j;->h:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ltf/j;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {p1}, Laf/o;->clear()V

    invoke-interface {p2, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
