.class public final Ldf/n1$a;
.super Lmf/f;
.source "SourceFile"

# interfaces
.implements Ldf/n1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmf/f<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ldf/n1$b;"
    }
.end annotation


# static fields
.field public static final u:J = -0x55bcb3aaa8a061f8L


# instance fields
.field public final n:LXe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field public final o:Ldf/n1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/n1$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final p:Ldf/n1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/n1$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final q:Lio/reactivex/internal/util/c;

.field public final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCi/c;ILXe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "LXe/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmf/f;-><init>(LCi/c;)V

    iput-object p3, p0, Ldf/n1$a;->n:LXe/d;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ldf/n1$a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ldf/n1$c;

    invoke-direct {p1, p0, p2}, Ldf/n1$c;-><init>(Ldf/n1$b;I)V

    iput-object p1, p0, Ldf/n1$a;->o:Ldf/n1$c;

    new-instance p1, Ldf/n1$c;

    invoke-direct {p1, p0, p2}, Ldf/n1$c;-><init>(Ldf/n1$b;I)V

    iput-object p1, p0, Ldf/n1$a;->p:Ldf/n1$c;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldf/n1$a;->f()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, Lmf/f;->cancel()V

    iget-object v0, p0, Ldf/n1$a;->o:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->b()V

    iget-object v0, p0, Ldf/n1$a;->p:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->b()V

    iget-object v0, p0, Ldf/n1$a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldf/n1$a;->o:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    iget-object v0, p0, Ldf/n1$a;->p:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 10

    iget-object v0, p0, Ldf/n1$a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :cond_1
    iget-object v2, p0, Ldf/n1$a;->o:Ldf/n1$c;

    iget-object v2, v2, Ldf/n1$c;->f:Laf/o;

    iget-object v3, p0, Ldf/n1$a;->p:Ldf/n1$c;

    iget-object v3, v3, Ldf/n1$c;->f:Laf/o;

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    :goto_0
    invoke-virtual {p0}, Lmf/f;->q()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Ldf/n1$a;->o:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    iget-object v0, p0, Ldf/n1$a;->p:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    return-void

    :cond_2
    iget-object v4, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Ldf/n1$a;->u()V

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    iget-object v1, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-object v4, p0, Ldf/n1$a;->o:Ldf/n1$c;

    iget-boolean v4, v4, Ldf/n1$c;->g:Z

    iget-object v5, p0, Ldf/n1$a;->s:Ljava/lang/Object;

    if-nez v5, :cond_4

    :try_start_0
    invoke-interface {v2}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v5, p0, Ldf/n1$a;->s:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/n1$a;->u()V

    iget-object v1, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    iget-object v1, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_1
    const/4 v6, 0x0

    if-nez v5, :cond_5

    move v7, v0

    goto :goto_2

    :cond_5
    move v7, v6

    :goto_2
    iget-object v8, p0, Ldf/n1$a;->p:Ldf/n1$c;

    iget-boolean v8, v8, Ldf/n1$c;->g:Z

    iget-object v9, p0, Ldf/n1$a;->t:Ljava/lang/Object;

    if-nez v9, :cond_6

    :try_start_1
    invoke-interface {v3}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v9, p0, Ldf/n1$a;->t:Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/n1$a;->u()V

    iget-object v1, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    iget-object v1, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    :goto_3
    if-nez v9, :cond_7

    move v6, v0

    :cond_7
    if-eqz v4, :cond_8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    if-eqz v6, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lmf/f;->d(Ljava/lang/Object;)V

    return-void

    :cond_8
    if-eqz v4, :cond_9

    if-eqz v8, :cond_9

    if-eq v7, v6, :cond_9

    invoke-virtual {p0}, Ldf/n1$a;->u()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lmf/f;->d(Ljava/lang/Object;)V

    return-void

    :cond_9
    if-nez v7, :cond_e

    if-eqz v6, :cond_a

    goto :goto_4

    :cond_a
    :try_start_2
    iget-object v4, p0, Ldf/n1$a;->n:LXe/d;

    invoke-interface {v4, v5, v9}, LXe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v4, :cond_b

    invoke-virtual {p0}, Ldf/n1$a;->u()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lmf/f;->d(Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v4, 0x0

    iput-object v4, p0, Ldf/n1$a;->s:Ljava/lang/Object;

    iput-object v4, p0, Ldf/n1$a;->t:Ljava/lang/Object;

    iget-object v4, p0, Ldf/n1$a;->o:Ldf/n1$c;

    invoke-virtual {v4}, Ldf/n1$c;->d()V

    iget-object v4, p0, Ldf/n1$a;->p:Ldf/n1$c;

    invoke-virtual {v4}, Ldf/n1$c;->d()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/n1$a;->u()V

    iget-object v1, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    iget-object v1, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lmf/f;->q()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, p0, Ldf/n1$a;->o:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    iget-object v0, p0, Ldf/n1$a;->p:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    return-void

    :cond_d
    iget-object v2, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Ldf/n1$a;->u()V

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    iget-object v1, p0, Ldf/n1$a;->q:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_e
    :goto_4
    iget-object v2, p0, Ldf/n1$a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_1

    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Ldf/n1$a;->o:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->b()V

    iget-object v0, p0, Ldf/n1$a;->o:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    iget-object v0, p0, Ldf/n1$a;->p:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->b()V

    iget-object v0, p0, Ldf/n1$a;->p:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    return-void
.end method

.method public v(LCi/b;LCi/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "+TT;>;",
            "LCi/b<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/n1$a;->o:Ldf/n1$c;

    invoke-interface {p1, v0}, LCi/b;->l(LCi/c;)V

    iget-object p1, p0, Ldf/n1$a;->p:Ldf/n1$c;

    invoke-interface {p2, p1}, LCi/b;->l(LCi/c;)V

    return-void
.end method
