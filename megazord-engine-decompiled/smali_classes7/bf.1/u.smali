.class public final Lbf/u;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;
.implements Lof/g;


# annotations
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
        "Lof/g;"
    }
.end annotation


# static fields
.field public static final f:J = -0x64a12a8486b15cccL


# instance fields
.field public final b:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LXe/a;

.field public final e:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXe/g;LXe/g;LXe/a;LXe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LXe/a;",
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lbf/u;->b:LXe/g;

    iput-object p2, p0, Lbf/u;->c:LXe/g;

    iput-object p3, p0, Lbf/u;->d:LXe/a;

    iput-object p4, p0, Lbf/u;->e:LXe/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lbf/u;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lbf/u;->d:LXe/a;

    invoke-interface {v0}, LXe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lbf/u;->c:LXe/g;

    sget-object v1, LZe/a;->f:LXe/g;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lbf/u;->e:LXe/g;

    invoke-interface {v0, p0}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1}, LVe/c;->dispose()V

    invoke-virtual {p0, v0}, Lbf/u;->onError(Ljava/lang/Throwable;)V

    :cond_0
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

    invoke-virtual {p0}, Lbf/u;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lbf/u;->b:LXe/g;

    invoke-interface {v0, p1}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0, p1}, Lbf/u;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lbf/u;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lbf/u;->c:LXe/g;

    invoke-interface {v0, p1}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
