.class public final Lff/q$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lff/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/q$a$a;
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
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final j:J = -0x4af86f46b0766842L

.field public static final k:Lff/q$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff/q$a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
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

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lff/q$a$a<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public g:LVe/c;

.field public volatile h:Z

.field public volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lff/q$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lff/q$a$a;-><init>(Lff/q$a;)V

    sput-object v0, Lff/q$a;->k:Lff/q$a$a;

    return-void
.end method

.method public constructor <init>(LTe/I;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lff/q$a;->b:LTe/I;

    iput-object p2, p0, Lff/q$a;->c:LXe/o;

    iput-boolean p3, p0, Lff/q$a;->d:Z

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lff/q$a;->e:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lff/q$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lff/q$a;->h:Z

    invoke-virtual {p0}, Lff/q$a;->c()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lff/q$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lff/q$a;->k:Lff/q$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lff/q$a$a;

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lff/q$a$a;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 8

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lff/q$a;->b:LTe/I;

    iget-object v1, p0, Lff/q$a;->e:Lio/reactivex/internal/util/c;

    iget-object v2, p0, Lff/q$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    iget-boolean v5, p0, Lff/q$a;->i:Z

    if-eqz v5, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lff/q$a;->d:Z

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v5, p0, Lff/q$a;->h:Z

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lff/q$a$a;

    if-nez v6, :cond_4

    move v7, v3

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v0}, LTe/I;->a()V

    :goto_2
    return-void

    :cond_6
    if-nez v7, :cond_8

    iget-object v5, v6, Lff/q$a$a;->c:Ljava/lang/Object;

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    invoke-static {v2, v6, v5}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v5, v6, Lff/q$a$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v5}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    :goto_3
    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lff/q$a;->i:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lff/q$a;->i:Z

    iget-object v0, p0, Lff/q$a;->g:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0}, Lff/q$a;->b()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lff/q$a;->g:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lff/q$a;->g:LVe/c;

    iget-object p1, p0, Lff/q$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public f(Lff/q$a$a;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lff/q$a$a<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lff/q$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lff/q$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lff/q$a;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lff/q$a;->g:LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    invoke-virtual {p0}, Lff/q$a;->b()V

    :cond_0
    invoke-virtual {p0}, Lff/q$a;->c()V

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

    iget-object v0, p0, Lff/q$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lff/q$a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lff/q$a$a;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lff/q$a;->c:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null SingleSource"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lff/q$a$a;

    invoke-direct {v0, p0}, Lff/q$a$a;-><init>(Lff/q$a;)V

    :cond_1
    iget-object v1, p0, Lff/q$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lff/q$a$a;

    sget-object v2, Lff/q$a;->k:Lff/q$a$a;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lff/q$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1, v0}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, LTe/Q;->a(LTe/N;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lff/q$a;->g:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lff/q$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lff/q$a;->k:Lff/q$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lff/q$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lff/q$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lff/q$a;->d:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lff/q$a;->b()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lff/q$a;->h:Z

    invoke-virtual {p0}, Lff/q$a;->c()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
