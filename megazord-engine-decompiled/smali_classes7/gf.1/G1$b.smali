.class public final Lgf/G1$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/G1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final l:J = 0x1efd47eb1fc2a3a0L

.field public static final m:Ljava/lang/Object;


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lgf/G1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/G1$a<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Ljf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljf/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lio/reactivex/internal/util/c;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile j:Z

.field public k:Ltf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgf/G1$b;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LTe/I;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/G1$b;->b:LTe/I;

    iput p2, p0, Lgf/G1$b;->c:I

    new-instance p1, Lgf/G1$a;

    invoke-direct {p1, p0}, Lgf/G1$a;-><init>(Lgf/G1$b;)V

    iput-object p1, p0, Lgf/G1$b;->d:Lgf/G1$a;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/G1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lgf/G1$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljf/a;

    invoke-direct {p1}, Ljf/a;-><init>()V

    iput-object p1, p0, Lgf/G1$b;->g:Ljf/a;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lgf/G1$b;->h:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lgf/G1$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lgf/G1$b;->d:Lgf/G1$a;

    invoke-virtual {v0}, Lof/e;->dispose()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/G1$b;->j:Z

    invoke-virtual {p0}, Lgf/G1$b;->b()V

    return-void
.end method

.method public b()V
    .locals 10

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgf/G1$b;->b:LTe/I;

    iget-object v1, p0, Lgf/G1$b;->g:Ljf/a;

    iget-object v2, p0, Lgf/G1$b;->h:Lio/reactivex/internal/util/c;

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    iget-object v5, p0, Lgf/G1$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljf/a;->clear()V

    iput-object v6, p0, Lgf/G1$b;->k:Ltf/j;

    return-void

    :cond_2
    iget-object v5, p0, Lgf/G1$b;->k:Ltf/j;

    iget-boolean v7, p0, Lgf/G1$b;->j:Z

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Ljf/a;->clear()V

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v5, :cond_3

    iput-object v6, p0, Lgf/G1$b;->k:Ltf/j;

    invoke-virtual {v5, v1}, Ltf/j;->onError(Ljava/lang/Throwable;)V

    :cond_3
    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    invoke-virtual {v1}, Ljf/a;->poll()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    move v9, v3

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    if-eqz v7, :cond_9

    if-eqz v9, :cond_9

    invoke-virtual {v2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v5, :cond_6

    iput-object v6, p0, Lgf/G1$b;->k:Ltf/j;

    invoke-virtual {v5}, Ltf/j;->a()V

    :cond_6
    invoke-interface {v0}, LTe/I;->a()V

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_8

    iput-object v6, p0, Lgf/G1$b;->k:Ltf/j;

    invoke-virtual {v5, v1}, Ltf/j;->onError(Ljava/lang/Throwable;)V

    :cond_8
    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_9
    if-eqz v9, :cond_a

    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_a
    sget-object v7, Lgf/G1$b;->m:Ljava/lang/Object;

    if-eq v8, v7, :cond_b

    invoke-virtual {v5, v8}, Ltf/j;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    if-eqz v5, :cond_c

    iput-object v6, p0, Lgf/G1$b;->k:Ltf/j;

    invoke-virtual {v5}, Ltf/j;->a()V

    :cond_c
    iget-object v5, p0, Lgf/G1$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lgf/G1$b;->c:I

    invoke-static {v5, p0}, Ltf/j;->q8(ILjava/lang/Runnable;)Ltf/j;

    move-result-object v5

    iput-object v5, p0, Lgf/G1$b;->k:Ltf/j;

    iget-object v6, p0, Lgf/G1$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-interface {v0, v5}, LTe/I;->g(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lgf/G1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/G1$b;->j:Z

    invoke-virtual {p0}, Lgf/G1$b;->b()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/G1$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lgf/G1$b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/G1$b;->d:Lgf/G1$a;

    invoke-virtual {v0}, Lof/e;->dispose()V

    iget-object v0, p0, Lgf/G1$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/G1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/G1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lgf/G1$b;->h()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/G1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/G1$b;->h:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/G1$b;->j:Z

    invoke-virtual {p0}, Lgf/G1$b;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/G1$b;->g:Ljf/a;

    invoke-virtual {v0, p1}, Ljf/a;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lgf/G1$b;->b()V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lgf/G1$b;->g:Ljf/a;

    sget-object v1, Lgf/G1$b;->m:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljf/a;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lgf/G1$b;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/G1$b;->d:Lgf/G1$a;

    invoke-virtual {v0}, Lof/e;->dispose()V

    iget-object v0, p0, Lgf/G1$b;->h:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/G1$b;->j:Z

    invoke-virtual {p0}, Lgf/G1$b;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lgf/G1$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/G1$b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method
