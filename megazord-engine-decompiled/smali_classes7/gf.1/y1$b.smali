.class public final Lgf/y1$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;
.implements Lgf/y1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;",
        "Lgf/y1$d;"
    }
.end annotation


# static fields
.field public static final h:J = -0x6833286fc4dbe315L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:LYe/h;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public g:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/I;LXe/o;LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "*>;>;",
            "LTe/G<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/y1$b;->b:LTe/I;

    iput-object p2, p0, Lgf/y1$b;->c:LXe/o;

    new-instance p1, LYe/h;

    invoke-direct {p1}, LYe/h;-><init>()V

    iput-object p1, p0, Lgf/y1$b;->d:LYe/h;

    iput-object p3, p0, Lgf/y1$b;->g:LTe/G;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lgf/y1$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/y1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lgf/y1$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/y1$b;->d:LYe/h;

    invoke-virtual {v0}, LYe/h;->dispose()V

    iget-object v0, p0, Lgf/y1$b;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    iget-object v0, p0, Lgf/y1$b;->d:LYe/h;

    invoke-virtual {v0}, LYe/h;->dispose()V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 3

    iget-object v0, p0, Lgf/y1$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgf/y1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, Lgf/y1$b;->g:LTe/G;

    const/4 p2, 0x0

    iput-object p2, p0, Lgf/y1$b;->g:LTe/G;

    new-instance p2, Lgf/z1$a;

    iget-object v0, p0, Lgf/y1$b;->b:LTe/I;

    invoke-direct {p2, v0, p0}, Lgf/z1$a;-><init>(LTe/I;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p1, p2}, LTe/G;->b(LTe/I;)V

    :cond_0
    return-void
.end method

.method public c(JLjava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lgf/y1$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, Lgf/y1$b;->b:LTe/I;

    invoke-interface {p1, p3}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/y1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/y1$b;->d:LYe/h;

    invoke-virtual {v0}, LYe/h;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/y1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public f(LTe/G;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lgf/y1$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0}, Lgf/y1$a;-><init>(JLgf/y1$d;)V

    iget-object v1, p0, Lgf/y1$b;->d:LYe/h;

    invoke-virtual {v1, v0}, LYe/h;->a(LVe/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/y1$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-object v4, p0, Lgf/y1$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    invoke-virtual {v4, v0, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgf/y1$b;->d:LYe/h;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_1
    iget-object v0, p0, Lgf/y1$b;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lgf/y1$b;->c:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The itemTimeoutIndicator returned a null ObservableSource."

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lgf/y1$a;

    invoke-direct {v0, v5, v6, p0}, Lgf/y1$a;-><init>(JLgf/y1$d;)V

    iget-object v1, p0, Lgf/y1$b;->d:LYe/h;

    invoke-virtual {v1, v0}, LYe/h;->a(LVe/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lgf/y1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/y1$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    iget-object v0, p0, Lgf/y1$b;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lgf/y1$b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/y1$b;->d:LYe/h;

    invoke-virtual {v0}, LYe/h;->dispose()V

    iget-object v0, p0, Lgf/y1$b;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lgf/y1$b;->d:LYe/h;

    invoke-virtual {p1}, LYe/h;->dispose()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
