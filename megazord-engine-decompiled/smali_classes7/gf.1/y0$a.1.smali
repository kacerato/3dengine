.class public final Lgf/y0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-",
            "LTe/G<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/G<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/G<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public f:LVe/c;


# direct methods
.method public constructor <init>(LTe/I;LXe/o;LXe/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/G<",
            "+TR;>;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LTe/G<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/G<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/y0$a;->b:LTe/I;

    iput-object p2, p0, Lgf/y0$a;->c:LXe/o;

    iput-object p3, p0, Lgf/y0$a;->d:LXe/o;

    iput-object p4, p0, Lgf/y0$a;->e:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lgf/y0$a;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onComplete ObservableSource returned is null"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lgf/y0$a;->b:LTe/I;

    invoke-interface {v1, v0}, LTe/I;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lgf/y0$a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lgf/y0$a;->b:LTe/I;

    invoke-interface {v1, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/y0$a;->f:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/y0$a;->f:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/y0$a;->f:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/y0$a;->f:LVe/c;

    iget-object p1, p0, Lgf/y0$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lgf/y0$a;->c:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The onNext ObservableSource returned is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lgf/y0$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lgf/y0$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgf/y0$a;->d:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onError ObservableSource returned is null"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lgf/y0$a;->b:LTe/I;

    invoke-interface {p1, v0}, LTe/I;->g(Ljava/lang/Object;)V

    iget-object p1, p0, Lgf/y0$a;->b:LTe/I;

    invoke-interface {p1}, LTe/I;->a()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lgf/y0$a;->b:LTe/I;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
