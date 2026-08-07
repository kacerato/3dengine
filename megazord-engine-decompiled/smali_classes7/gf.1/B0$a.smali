.class public final Lgf/B0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/B0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/B0$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final k:J = -0x3fbd8a98db8e76f7L

.field public static final l:I = 0x1

.field public static final m:I = 0x2


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lgf/B0$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/B0$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lio/reactivex/internal/util/c;

.field public volatile f:Laf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile h:Z

.field public volatile i:Z

.field public volatile j:I


# direct methods
.method public constructor <init>(LTe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/B0$a;->b:LTe/I;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/B0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lgf/B0$a$a;

    invoke-direct {p1, p0}, Lgf/B0$a$a;-><init>(Lgf/B0$a;)V

    iput-object p1, p0, Lgf/B0$a;->d:Lgf/B0$a$a;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lgf/B0$a;->e:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/B0$a;->i:Z

    invoke-virtual {p0}, Lgf/B0$a;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgf/B0$a;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 9

    iget-object v0, p0, Lgf/B0$a;->b:LTe/I;

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lgf/B0$a;->h:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iput-object v4, p0, Lgf/B0$a;->g:Ljava/lang/Object;

    iput-object v4, p0, Lgf/B0$a;->f:Laf/n;

    return-void

    :cond_1
    iget-object v3, p0, Lgf/B0$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-object v4, p0, Lgf/B0$a;->g:Ljava/lang/Object;

    iput-object v4, p0, Lgf/B0$a;->f:Laf/n;

    iget-object v1, p0, Lgf/B0$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    iget v3, p0, Lgf/B0$a;->j:I

    const/4 v5, 0x2

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lgf/B0$a;->g:Ljava/lang/Object;

    iput-object v4, p0, Lgf/B0$a;->g:Ljava/lang/Object;

    iput v5, p0, Lgf/B0$a;->j:I

    invoke-interface {v0, v3}, LTe/I;->g(Ljava/lang/Object;)V

    move v3, v5

    :cond_3
    iget-boolean v6, p0, Lgf/B0$a;->i:Z

    iget-object v7, p0, Lgf/B0$a;->f:Laf/n;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Laf/n;->poll()Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_4
    move-object v7, v4

    :goto_1
    if-nez v7, :cond_5

    move v8, v1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v8, :cond_6

    if-ne v3, v5, :cond_6

    iput-object v4, p0, Lgf/B0$a;->f:Laf/n;

    invoke-interface {v0}, LTe/I;->a()V

    return-void

    :cond_6
    if-eqz v8, :cond_7

    neg-int v2, v2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_7
    invoke-interface {v0, v7}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/B0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/B0$a;->h:Z

    iget-object v0, p0, Lgf/B0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/B0$a;->d:Lgf/B0$a$a;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lgf/B0$a;->f:Laf/n;

    iput-object v0, p0, Lgf/B0$a;->g:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/B0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public f()Laf/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laf/n<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lgf/B0$a;->f:Laf/n;

    if-nez v0, :cond_0

    new-instance v0, Ljf/c;

    invoke-static {}, LTe/B;->V()I

    move-result v1

    invoke-direct {v0, v1}, Ljf/c;-><init>(I)V

    iput-object v0, p0, Lgf/B0$a;->f:Laf/n;

    :cond_0
    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/B0$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_0
    invoke-virtual {p0}, Lgf/B0$a;->f()Laf/n;

    move-result-object v0

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lgf/B0$a;->c()V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lgf/B0$a;->j:I

    invoke-virtual {p0}, Lgf/B0$a;->b()V

    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/B0$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lgf/B0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, Lgf/B0$a;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/B0$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    const/4 p1, 0x2

    iput p1, p0, Lgf/B0$a;->j:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lgf/B0$a;->g:Ljava/lang/Object;

    iput v1, p0, Lgf/B0$a;->j:I

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgf/B0$a;->c()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/B0$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lgf/B0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, Lgf/B0$a;->b()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
