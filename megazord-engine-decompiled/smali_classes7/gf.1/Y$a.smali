.class public final Lgf/Y$a;
.super Lbf/b;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/Y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/Y$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbf/b<",
        "TT;>;",
        "LTe/I<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final j:J = 0x752c1ce874ed53bfL


# instance fields
.field public final c:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:Lio/reactivex/internal/util/c;

.field public final e:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:LVe/b;

.field public h:LVe/c;

.field public volatile i:Z


# direct methods
.method public constructor <init>(LTe/I;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lbf/b;-><init>()V

    iput-object p1, p0, Lgf/Y$a;->c:LTe/I;

    iput-object p2, p0, Lgf/Y$a;->e:LXe/o;

    iput-boolean p3, p0, Lgf/Y$a;->f:Z

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lgf/Y$a;->d:Lio/reactivex/internal/util/c;

    new-instance p1, LVe/b;

    invoke-direct {p1}, LVe/b;-><init>()V

    iput-object p1, p0, Lgf/Y$a;->g:LVe/b;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgf/Y$a;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lgf/Y$a;->c:LTe/I;

    invoke-interface {v1, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgf/Y$a;->c:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lgf/Y$a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/Y$a<",
            "TT;>.a;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/Y$a;->g:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    invoke-virtual {p0}, Lgf/Y$a;->a()V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/Y$a;->h:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/Y$a;->i:Z

    iget-object v0, p0, Lgf/Y$a;->h:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/Y$a;->g:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/Y$a;->h:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/Y$a;->h:LVe/c;

    iget-object p1, p0, Lgf/Y$a;->c:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public f(Lgf/Y$a$a;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/Y$a<",
            "TT;>.a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lgf/Y$a;->g:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    invoke-virtual {p0, p2}, Lgf/Y$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lgf/Y$a;->e:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, Lgf/Y$a$a;

    invoke-direct {v0, p0}, Lgf/Y$a$a;-><init>(Lgf/Y$a;)V

    iget-boolean v1, p0, Lgf/Y$a;->i:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lgf/Y$a;->g:LVe/b;

    invoke-virtual {v1, v0}, LVe/b;->b(LVe/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, LTe/i;->b(LTe/f;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lgf/Y$a;->h:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0, p1}, Lgf/Y$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/Y$a;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lgf/Y$a;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lgf/Y$a;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    iget-object v0, p0, Lgf/Y$a;->c:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgf/Y$a;->dispose()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lgf/Y$a;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    iget-object v0, p0, Lgf/Y$a;->c:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation build LUe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
