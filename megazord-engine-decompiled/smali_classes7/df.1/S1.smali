.class public final Ldf/S1;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/S1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TD;>;"
        }
    .end annotation
.end field

.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TD;+",
            "LCi/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final e:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TD;>;"
        }
    .end annotation
.end field

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;LXe/o;LXe/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "LXe/o<",
            "-TD;+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/g<",
            "-TD;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/S1;->c:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Ldf/S1;->d:LXe/o;

    iput-object p3, p0, Ldf/S1;->e:LXe/g;

    iput-boolean p4, p0, Ldf/S1;->f:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldf/S1;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Ldf/S1;->d:LXe/o;

    invoke-interface {v1, v0}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The sourceSupplier returned a null Publisher"

    invoke-static {v1, v2}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCi/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v2, Ldf/S1$a;

    iget-object v3, p0, Ldf/S1;->e:LXe/g;

    iget-boolean v4, p0, Ldf/S1;->f:Z

    invoke-direct {v2, p1, v0, v3, v4}, Ldf/S1$a;-><init>(LCi/c;Ljava/lang/Object;LXe/g;Z)V

    invoke-interface {v1, v2}, LCi/b;->l(LCi/c;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    :try_start_2
    iget-object v2, p0, Ldf/S1;->e:LXe/g;

    invoke-interface {v2, v0}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v1, v0}, [Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void
.end method
