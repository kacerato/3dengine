.class public final Ldf/D0$a;
.super Llf/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/D0;
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
        "Llf/t<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final l:J = 0x2643427fa3e3e9fcL


# instance fields
.field public final i:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field public final j:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCi/c;LXe/o;LXe/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;",
            "LXe/o<",
            "-TT;+TR;>;",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Ljava/util/concurrent/Callable<",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Llf/t;-><init>(LCi/c;)V

    iput-object p2, p0, Ldf/D0$a;->i:LXe/o;

    iput-object p3, p0, Ldf/D0$a;->j:LXe/o;

    iput-object p4, p0, Ldf/D0$a;->k:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldf/D0$a;->k:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onComplete publisher returned is null"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Llf/t;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Llf/t;->b:LCi/c;

    invoke-interface {v1, v0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldf/D0$a;->i:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The onNext publisher returned is null"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v0, p0, Llf/t;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Llf/t;->e:J

    iget-object v0, p0, Llf/t;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Llf/t;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ldf/D0$a;->j:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The onError publisher returned is null"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Llf/t;->c(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Llf/t;->b:LCi/c;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
