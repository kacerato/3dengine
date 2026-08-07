.class public final Lgf/z1$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;
.implements Lgf/z1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/z1;
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
        "Lgf/z1$d;"
    }
.end annotation


# static fields
.field public static final j:J = 0x343e2a2afd6bc01eL


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J$c;

.field public final f:LYe/h;

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public i:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J$c;LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J$c;",
            "LTe/G<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/z1$b;->b:LTe/I;

    iput-wide p2, p0, Lgf/z1$b;->c:J

    iput-object p4, p0, Lgf/z1$b;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/z1$b;->e:LTe/J$c;

    iput-object p6, p0, Lgf/z1$b;->i:LTe/G;

    new-instance p1, LYe/h;

    invoke-direct {p1}, LYe/h;-><init>()V

    iput-object p1, p0, Lgf/z1$b;->f:LYe/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lgf/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/z1$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lgf/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/z1$b;->f:LYe/h;

    invoke-virtual {v0}, LYe/h;->dispose()V

    iget-object v0, p0, Lgf/z1$b;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    iget-object v0, p0, Lgf/z1$b;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 3

    iget-object v0, p0, Lgf/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgf/z1$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, Lgf/z1$b;->i:LTe/G;

    const/4 p2, 0x0

    iput-object p2, p0, Lgf/z1$b;->i:LTe/G;

    new-instance p2, Lgf/z1$a;

    iget-object v0, p0, Lgf/z1$b;->b:LTe/I;

    invoke-direct {p2, v0, p0}, Lgf/z1$a;-><init>(LTe/I;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p1, p2}, LTe/G;->b(LTe/I;)V

    iget-object p1, p0, Lgf/z1$b;->e:LTe/J$c;

    invoke-interface {p1}, LVe/c;->dispose()V

    :cond_0
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

    iget-object v0, p0, Lgf/z1$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/z1$b;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/z1$b;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public f(J)V
    .locals 4

    iget-object v0, p0, Lgf/z1$b;->f:LYe/h;

    iget-object v1, p0, Lgf/z1$b;->e:LTe/J$c;

    new-instance v2, Lgf/z1$e;

    invoke-direct {v2, p1, p2, p0}, Lgf/z1$e;-><init>(JLgf/z1$d;)V

    iget-wide p1, p0, Lgf/z1$b;->c:J

    iget-object v3, p0, Lgf/z1$b;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v3}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LYe/h;->a(LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgf/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-virtual {v2, v0, v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgf/z1$b;->f:LYe/h;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/z1$b;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lgf/z1$b;->f(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lgf/z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgf/z1$b;->f:LYe/h;

    invoke-virtual {v0}, LYe/h;->dispose()V

    iget-object v0, p0, Lgf/z1$b;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lgf/z1$b;->e:LTe/J$c;

    invoke-interface {p1}, LVe/c;->dispose()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
