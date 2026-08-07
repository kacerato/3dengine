.class public final Lcf/S;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/S$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/c;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TR;+",
            "LTe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TR;>;"
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
            "TR;>;",
            "LXe/o<",
            "-TR;+",
            "LTe/i;",
            ">;",
            "LXe/g<",
            "-TR;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/S;->b:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcf/S;->c:LXe/o;

    iput-object p3, p0, Lcf/S;->d:LXe/g;

    iput-boolean p4, p0, Lcf/S;->e:Z

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcf/S;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v1, p0, Lcf/S;->c:LXe/o;

    invoke-interface {v1, v0}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The completableFunction returned a null CompletableSource"

    invoke-static {v1, v2}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LTe/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v2, Lcf/S$a;

    iget-object v3, p0, Lcf/S;->d:LXe/g;

    iget-boolean v4, p0, Lcf/S;->e:Z

    invoke-direct {v2, p1, v0, v3, v4}, Lcf/S$a;-><init>(LTe/f;Ljava/lang/Object;LXe/g;Z)V

    invoke-interface {v1, v2}, LTe/i;->b(LTe/f;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-boolean v2, p0, Lcf/S;->e:Z

    if-eqz v2, :cond_0

    :try_start_2
    iget-object v2, p0, Lcf/S;->d:LXe/g;

    invoke-interface {v2, v0}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v1, v0}, [Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, LYe/e;->e(Ljava/lang/Throwable;LTe/f;)V

    return-void

    :cond_0
    :goto_0
    invoke-static {v1, p1}, LYe/e;->e(Ljava/lang/Throwable;LTe/f;)V

    iget-boolean p1, p0, Lcf/S;->e:Z

    if-nez p1, :cond_1

    :try_start_3
    iget-object p1, p0, Lcf/S;->d:LXe/g;

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

    invoke-static {v0, p1}, LYe/e;->e(Ljava/lang/Throwable;LTe/f;)V

    return-void
.end method
