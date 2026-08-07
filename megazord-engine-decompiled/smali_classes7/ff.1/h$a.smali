.class public final Lff/h$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lff/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/h$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final l:J = -0x4af86f46b0766842L

.field public static final m:Lff/h$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff/h$a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Lio/reactivex/internal/util/c;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lff/h$a$a<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public h:LCi/d;

.field public volatile i:Z

.field public volatile j:Z

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lff/h$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lff/h$a$a;-><init>(Lff/h$a;)V

    sput-object v0, Lff/h$a;->m:Lff/h$a$a;

    return-void
.end method

.method public constructor <init>(LCi/c;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lff/h$a;->b:LCi/c;

    iput-object p2, p0, Lff/h$a;->c:LXe/o;

    iput-boolean p3, p0, Lff/h$a;->d:Z

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lff/h$a;->e:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lff/h$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lff/h$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lff/h$a;->i:Z

    invoke-virtual {p0}, Lff/h$a;->c()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lff/h$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lff/h$a;->m:Lff/h$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lff/h$a$a;

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lff/h$a$a;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 12

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lff/h$a;->b:LCi/c;

    iget-object v1, p0, Lff/h$a;->e:Lio/reactivex/internal/util/c;

    iget-object v2, p0, Lff/h$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lff/h$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v4, p0, Lff/h$a;->k:J

    const/4 v6, 0x1

    move v7, v6

    :cond_1
    :goto_0
    iget-boolean v8, p0, Lff/h$a;->j:Z

    if-eqz v8, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lff/h$a;->d:Z

    if-nez v8, :cond_3

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v8, p0, Lff/h$a;->i:Z

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lff/h$a$a;

    if-nez v9, :cond_4

    move v10, v6

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-eqz v8, :cond_6

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v0}, LCi/c;->a()V

    :goto_2
    return-void

    :cond_6
    if-nez v10, :cond_8

    iget-object v8, v9, Lff/h$a$a;->c:Ljava/lang/Object;

    if-eqz v8, :cond_8

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    cmp-long v8, v4, v10

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    invoke-static {v2, v9, v8}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v8, v9, Lff/h$a$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v8}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    goto :goto_0

    :cond_8
    :goto_3
    iput-wide v4, p0, Lff/h$a;->k:J

    neg-int v7, v7

    invoke-virtual {p0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lff/h$a;->j:Z

    iget-object v0, p0, Lff/h$a;->h:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-virtual {p0}, Lff/h$a;->b()V

    return-void
.end method

.method public d(Lff/h$a$a;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lff/h$a$a<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lff/h$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lff/h$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lff/h$a;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lff/h$a;->h:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    invoke-virtual {p0}, Lff/h$a;->b()V

    :cond_0
    invoke-virtual {p0}, Lff/h$a;->c()V

    return-void

    :cond_1
    invoke-static {p2}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lff/h$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lff/h$a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lff/h$a$a;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lff/h$a;->c:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null SingleSource"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lff/h$a$a;

    invoke-direct {v0, p0}, Lff/h$a$a;-><init>(Lff/h$a;)V

    :cond_1
    iget-object v1, p0, Lff/h$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lff/h$a$a;

    sget-object v2, Lff/h$a;->m:Lff/h$a$a;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lff/h$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1, v0}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, LTe/Q;->a(LTe/N;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lff/h$a;->h:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    iget-object v0, p0, Lff/h$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lff/h$a;->m:Lff/h$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lff/h$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Lff/h$a;->h:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lff/h$a;->h:LCi/d;

    iget-object v0, p0, Lff/h$a;->b:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, Lff/h$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lff/h$a;->c()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lff/h$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lff/h$a;->d:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lff/h$a;->b()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lff/h$a;->i:Z

    invoke-virtual {p0}, Lff/h$a;->c()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
