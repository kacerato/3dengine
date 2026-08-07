.class public final Lcf/A$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/A$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/q<",
        "LTe/i;",
        ">;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final h:J = -0x1d42b216fe3a6372L


# instance fields
.field public final b:LTe/f;

.field public final c:I

.field public final d:Z

.field public final e:Lio/reactivex/internal/util/c;

.field public final f:LVe/b;

.field public g:LCi/d;


# direct methods
.method public constructor <init>(LTe/f;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcf/A$a;->b:LTe/f;

    iput p2, p0, Lcf/A$a;->c:I

    iput-boolean p3, p0, Lcf/A$a;->d:Z

    new-instance p1, LVe/b;

    invoke-direct {p1}, LVe/b;-><init>()V

    iput-object p1, p0, Lcf/A$a;->f:LVe/b;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

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

    iget-object v0, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcf/A$a;->b:LTe/f;

    iget-object v1, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcf/A$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcf/A$a$a;)V
    .locals 2

    iget-object v0, p0, Lcf/A$a;->f:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcf/A$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcf/A$a;->b:LTe/f;

    invoke-interface {p1}, LTe/f;->a()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcf/A$a;->c:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcf/A$a;->g:LCi/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Lcf/A$a$a;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcf/A$a;->f:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->a(LVe/c;)Z

    iget-boolean p1, p0, Lcf/A$a;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcf/A$a;->g:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    iget-object p1, p0, Lcf/A$a;->f:LVe/b;

    invoke-virtual {p1}, LVe/b;->dispose()V

    iget-object p1, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcf/A$a;->b:LTe/f;

    iget-object p2, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcf/A$a;->b:LTe/f;

    iget-object p2, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p2}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, p2}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcf/A$a;->c:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcf/A$a;->g:LCi/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcf/A$a;->f:LVe/b;

    invoke-virtual {v0}, LVe/b;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcf/A$a;->g:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    iget-object v0, p0, Lcf/A$a;->f:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    return-void
.end method

.method public e(LTe/i;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, Lcf/A$a$a;

    invoke-direct {v0, p0}, Lcf/A$a$a;-><init>(Lcf/A$a;)V

    iget-object v1, p0, Lcf/A$a;->f:LVe/b;

    invoke-virtual {v1, v0}, LVe/b;->b(LVe/c;)Z

    invoke-interface {p1, v0}, LTe/i;->b(LTe/f;)V

    return-void
.end method

.method public bridge synthetic g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LTe/i;

    invoke-virtual {p0, p1}, Lcf/A$a;->e(LTe/i;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Lcf/A$a;->g:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcf/A$a;->g:LCi/d;

    iget-object v0, p0, Lcf/A$a;->b:LTe/f;

    invoke-interface {v0, p0}, LTe/f;->e(LVe/c;)V

    iget v0, p0, Lcf/A$a;->c:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcf/A$a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcf/A$a;->f:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcf/A$a;->b:LTe/f;

    iget-object v0, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcf/A$a;->b:LTe/f;

    iget-object v0, p0, Lcf/A$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method
