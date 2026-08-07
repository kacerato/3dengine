.class public final Ldf/o1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LVe/c;
.implements Ldf/n1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/o1;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LVe/c;",
        "Ldf/n1$b;"
    }
.end annotation


# static fields
.field public static final i:J = -0x55bcb3aaa8a061f8L


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LXe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field public final d:Ldf/n1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/n1$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Ldf/n1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/n1$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Lio/reactivex/internal/util/c;

.field public g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/N;ILXe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "LXe/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ldf/o1$a;->b:LTe/N;

    iput-object p3, p0, Ldf/o1$a;->c:LXe/d;

    new-instance p1, Ldf/n1$c;

    invoke-direct {p1, p0, p2}, Ldf/n1$c;-><init>(Ldf/n1$b;I)V

    iput-object p1, p0, Ldf/o1$a;->d:Ldf/n1$c;

    new-instance p1, Ldf/n1$c;

    invoke-direct {p1, p0, p2}, Ldf/n1$c;-><init>(Ldf/n1$b;I)V

    iput-object p1, p0, Ldf/o1$a;->e:Ldf/n1$c;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldf/o1$a;->d:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->b()V

    iget-object v0, p0, Ldf/o1$a;->d:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    iget-object v0, p0, Ldf/o1$a;->e:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->b()V

    iget-object v0, p0, Ldf/o1$a;->e:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    return-void
.end method

.method public b(LCi/b;LCi/b;)V
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

    iget-object v0, p0, Ldf/o1$a;->d:Ldf/n1$c;

    invoke-interface {p1, v0}, LCi/b;->l(LCi/c;)V

    iget-object p1, p0, Ldf/o1$a;->e:Ldf/n1$c;

    invoke-interface {p2, p1}, LCi/b;->l(LCi/c;)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldf/o1$a;->f()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Ldf/o1$a;->d:Ldf/n1$c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Ldf/o1$a;->d:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->b()V

    iget-object v0, p0, Ldf/o1$a;->e:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldf/o1$a;->d:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    iget-object v0, p0, Ldf/o1$a;->e:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 10

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :cond_1
    iget-object v2, p0, Ldf/o1$a;->d:Ldf/n1$c;

    iget-object v2, v2, Ldf/n1$c;->f:Laf/o;

    iget-object v3, p0, Ldf/o1$a;->e:Ldf/n1$c;

    iget-object v3, v3, Ldf/n1$c;->f:Laf/o;

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    :goto_0
    invoke-virtual {p0}, Ldf/o1$a;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Ldf/o1$a;->d:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    iget-object v0, p0, Ldf/o1$a;->e:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    return-void

    :cond_2
    iget-object v4, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Ldf/o1$a;->a()V

    iget-object v0, p0, Ldf/o1$a;->b:LTe/N;

    iget-object v1, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-object v4, p0, Ldf/o1$a;->d:Ldf/n1$c;

    iget-boolean v4, v4, Ldf/n1$c;->g:Z

    iget-object v5, p0, Ldf/o1$a;->g:Ljava/lang/Object;

    if-nez v5, :cond_4

    :try_start_0
    invoke-interface {v2}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v5, p0, Ldf/o1$a;->g:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/o1$a;->a()V

    iget-object v1, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Ldf/o1$a;->b:LTe/N;

    iget-object v1, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/N;->onError(Ljava/lang/Throwable;)V

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
    iget-object v8, p0, Ldf/o1$a;->e:Ldf/n1$c;

    iget-boolean v8, v8, Ldf/n1$c;->g:Z

    iget-object v9, p0, Ldf/o1$a;->h:Ljava/lang/Object;

    if-nez v9, :cond_6

    :try_start_1
    invoke-interface {v3}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v9, p0, Ldf/o1$a;->h:Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/o1$a;->a()V

    iget-object v1, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Ldf/o1$a;->b:LTe/N;

    iget-object v1, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/N;->onError(Ljava/lang/Throwable;)V

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

    iget-object v0, p0, Ldf/o1$a;->b:LTe/N;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, LTe/N;->b(Ljava/lang/Object;)V

    return-void

    :cond_8
    if-eqz v4, :cond_9

    if-eqz v8, :cond_9

    if-eq v7, v6, :cond_9

    invoke-virtual {p0}, Ldf/o1$a;->a()V

    iget-object v0, p0, Ldf/o1$a;->b:LTe/N;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, LTe/N;->b(Ljava/lang/Object;)V

    return-void

    :cond_9
    if-nez v7, :cond_e

    if-eqz v6, :cond_a

    goto :goto_4

    :cond_a
    :try_start_2
    iget-object v4, p0, Ldf/o1$a;->c:LXe/d;

    invoke-interface {v4, v5, v9}, LXe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v4, :cond_b

    invoke-virtual {p0}, Ldf/o1$a;->a()V

    iget-object v0, p0, Ldf/o1$a;->b:LTe/N;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, LTe/N;->b(Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v4, 0x0

    iput-object v4, p0, Ldf/o1$a;->g:Ljava/lang/Object;

    iput-object v4, p0, Ldf/o1$a;->h:Ljava/lang/Object;

    iget-object v4, p0, Ldf/o1$a;->d:Ldf/n1$c;

    invoke-virtual {v4}, Ldf/n1$c;->d()V

    iget-object v4, p0, Ldf/o1$a;->e:Ldf/n1$c;

    invoke-virtual {v4}, Ldf/n1$c;->d()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/o1$a;->a()V

    iget-object v1, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Ldf/o1$a;->b:LTe/N;

    iget-object v1, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Ldf/o1$a;->d()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, p0, Ldf/o1$a;->d:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    iget-object v0, p0, Ldf/o1$a;->e:Ldf/n1$c;

    invoke-virtual {v0}, Ldf/n1$c;->c()V

    return-void

    :cond_d
    iget-object v2, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Ldf/o1$a;->a()V

    iget-object v0, p0, Ldf/o1$a;->b:LTe/N;

    iget-object v1, p0, Ldf/o1$a;->f:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_e
    :goto_4
    neg-int v1, v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_1

    return-void
.end method
