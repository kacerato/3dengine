.class public abstract Lhf/o$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final l:J = 0x7ffc3440018b78e6L


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Ljf/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljf/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:LTe/J$c;

.field public f:LCi/d;

.field public volatile g:Z

.field public h:Ljava/lang/Throwable;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile j:Z

.field public k:I


# direct methods
.method public constructor <init>(ILjf/b;LTe/J$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljf/b<",
            "TT;>;",
            "LTe/J$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lhf/o$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    iput p1, p0, Lhf/o$a;->b:I

    iput-object p2, p0, Lhf/o$a;->d:Ljf/b;

    shr-int/lit8 p2, p1, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lhf/o$a;->c:I

    iput-object p3, p0, Lhf/o$a;->e:LTe/J$c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lhf/o$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhf/o$a;->g:Z

    invoke-virtual {p0}, Lhf/o$a;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhf/o$a;->e:LTe/J$c;

    invoke-virtual {v0, p0}, LTe/J$c;->b(Ljava/lang/Runnable;)LVe/c;

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lhf/o$a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhf/o$a;->j:Z

    iget-object v0, p0, Lhf/o$a;->f:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    iget-object v0, p0, Lhf/o$a;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhf/o$a;->d:Ljf/b;

    invoke-virtual {v0}, Ljf/b;->clear()V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lhf/o$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhf/o$a;->d:Ljf/b;

    invoke-virtual {v0, p1}, Ljf/b;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lhf/o$a;->f:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lhf/o$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lhf/o$a;->b()V

    return-void
.end method

.method public final i(J)V
    .locals 1

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhf/o$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lhf/o$a;->b()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lhf/o$a;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Lhf/o$a;->h:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lhf/o$a;->g:Z

    invoke-virtual {p0}, Lhf/o$a;->b()V

    return-void
.end method
