.class public final Lef/I;
.super LTe/s;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LXe/a;


# direct methods
.method public constructor <init>(LXe/a;)V
    .locals 0

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lef/I;->b:LXe/a;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lef/I;->b:LXe/a;

    invoke-interface {v0}, LXe/a;->run()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public t1(LTe/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {}, LVe/d;->b()LVe/c;

    move-result-object v0

    invoke-interface {p1, v0}, LTe/v;->e(LVe/c;)V

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lef/I;->b:LXe/a;

    invoke-interface {v1}, LXe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, LTe/v;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
