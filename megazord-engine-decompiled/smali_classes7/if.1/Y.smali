.class public final Lif/Y;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/Y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TU;+",
            "LTe/Q<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final d:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TU;>;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "LXe/o<",
            "-TU;+",
            "LTe/Q<",
            "+TT;>;>;",
            "LXe/g<",
            "-TU;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/Y;->b:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lif/Y;->c:LXe/o;

    iput-object p3, p0, Lif/Y;->d:LXe/g;

    iput-boolean p4, p0, Lif/Y;->e:Z

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lif/Y;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v1, p0, Lif/Y;->c:LXe/o;

    invoke-interface {v1, v0}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The singleFunction returned a null SingleSource"

    invoke-static {v1, v2}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LTe/Q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v2, Lif/Y$a;

    iget-boolean v3, p0, Lif/Y;->e:Z

    iget-object v4, p0, Lif/Y;->d:LXe/g;

    invoke-direct {v2, p1, v0, v3, v4}, Lif/Y$a;-><init>(LTe/N;Ljava/lang/Object;ZLXe/g;)V

    invoke-interface {v1, v2}, LTe/Q;->a(LTe/N;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-boolean v2, p0, Lif/Y;->e:Z

    if-eqz v2, :cond_0

    :try_start_2
    iget-object v2, p0, Lif/Y;->d:LXe/g;

    invoke-interface {v2, v0}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v1, v2}, [Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v3, v1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object v1, v3

    :cond_0
    :goto_0
    invoke-static {v1, p1}, LYe/e;->i(Ljava/lang/Throwable;LTe/N;)V

    iget-boolean p1, p0, Lif/Y;->e:Z

    if-nez p1, :cond_1

    :try_start_3
    iget-object p1, p0, Lif/Y;->d:LXe/g;

    invoke-interface {p1, v0}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :catchall_3
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LYe/e;->i(Ljava/lang/Throwable;LTe/N;)V

    return-void
.end method
