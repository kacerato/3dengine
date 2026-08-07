.class public final Lcf/d$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/d$a$a;
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
.field public static final m:J = 0x7d58c452a57faa4cL


# instance fields
.field public final b:LTe/f;

.field public final c:I

.field public final d:I

.field public final e:Lcf/d$a$a;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:I

.field public h:I

.field public i:Laf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/o<",
            "LTe/i;",
            ">;"
        }
    .end annotation
.end field

.field public j:LCi/d;

.field public volatile k:Z

.field public volatile l:Z


# direct methods
.method public constructor <init>(LTe/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcf/d$a;->b:LTe/f;

    iput p2, p0, Lcf/d$a;->c:I

    new-instance p1, Lcf/d$a$a;

    invoke-direct {p1, p0}, Lcf/d$a$a;-><init>(Lcf/d$a;)V

    iput-object p1, p0, Lcf/d$a;->e:Lcf/d$a$a;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcf/d$a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lcf/d$a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcf/d$a;->k:Z

    invoke-virtual {p0}, Lcf/d$a;->b()V

    return-void
.end method

.method public b()V
    .locals 5

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcf/d$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcf/d$a;->l:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcf/d$a;->k:Z

    :try_start_0
    iget-object v1, p0, Lcf/d$a;->i:Laf/o;

    invoke-interface {v1}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LTe/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcf/d$a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcf/d$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    :cond_3
    return-void

    :cond_4
    if-nez v4, :cond_5

    iput-boolean v3, p0, Lcf/d$a;->l:Z

    iget-object v0, p0, Lcf/d$a;->e:Lcf/d$a$a;

    invoke-interface {v1, v0}, LTe/i;->b(LTe/f;)V

    invoke-virtual {p0}, Lcf/d$a;->i()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcf/d$a;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcf/d$a;->l:Z

    invoke-virtual {p0}, Lcf/d$a;->b()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcf/d$a;->e:Lcf/d$a$a;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcf/d$a;->j:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    iget-object v0, p0, Lcf/d$a;->e:Lcf/d$a$a;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcf/d$a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcf/d$a;->j:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    iget-object v0, p0, Lcf/d$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public f(LTe/i;)V
    .locals 1

    iget v0, p0, Lcf/d$a;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcf/d$a;->i:Laf/o;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1}, Lcf/d$a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcf/d$a;->b()V

    return-void
.end method

.method public bridge synthetic g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LTe/i;

    invoke-virtual {p0, p1}, Lcf/d$a;->f(LTe/i;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 6

    iget-object v0, p0, Lcf/d$a;->j:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p1, p0, Lcf/d$a;->j:LCi/d;

    iget v0, p0, Lcf/d$a;->c:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v2, v0

    :goto_0
    instance-of v0, p1, Laf/l;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Laf/l;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Laf/k;->m(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iput v4, p0, Lcf/d$a;->g:I

    iput-object v0, p0, Lcf/d$a;->i:Laf/o;

    iput-boolean v5, p0, Lcf/d$a;->k:Z

    iget-object p1, p0, Lcf/d$a;->b:LTe/f;

    invoke-interface {p1, p0}, LTe/f;->e(LVe/c;)V

    invoke-virtual {p0}, Lcf/d$a;->b()V

    return-void

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iput v4, p0, Lcf/d$a;->g:I

    iput-object v0, p0, Lcf/d$a;->i:Laf/o;

    iget-object v0, p0, Lcf/d$a;->b:LTe/f;

    invoke-interface {v0, p0}, LTe/f;->e(LVe/c;)V

    invoke-interface {p1, v2, v3}, LCi/d;->i(J)V

    return-void

    :cond_2
    iget v0, p0, Lcf/d$a;->c:I

    if-ne v0, v1, :cond_3

    new-instance v0, Ljf/c;

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-direct {v0, v1}, Ljf/c;-><init>(I)V

    iput-object v0, p0, Lcf/d$a;->i:Laf/o;

    goto :goto_1

    :cond_3
    new-instance v0, Ljf/b;

    iget v1, p0, Lcf/d$a;->c:I

    invoke-direct {v0, v1}, Ljf/b;-><init>(I)V

    iput-object v0, p0, Lcf/d$a;->i:Laf/o;

    :goto_1
    iget-object v0, p0, Lcf/d$a;->b:LTe/f;

    invoke-interface {v0, p0}, LTe/f;->e(LVe/c;)V

    invoke-interface {p1, v2, v3}, LCi/d;->i(J)V

    :cond_4
    return-void
.end method

.method public i()V
    .locals 4

    iget v0, p0, Lcf/d$a;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcf/d$a;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lcf/d$a;->d:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcf/d$a;->h:I

    iget-object v1, p0, Lcf/d$a;->j:LCi/d;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, LCi/d;->i(J)V

    goto :goto_0

    :cond_0
    iput v0, p0, Lcf/d$a;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcf/d$a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcf/d$a;->e:Lcf/d$a$a;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lcf/d$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
