.class public final Ldf/g0;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/g0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(LTe/l;LXe/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/g0;->d:LXe/o;

    iput p3, p0, Ldf/g0;->e:I

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_1

    :try_start_0
    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    invoke-static {p1}, Lmf/g;->a(LCi/c;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Ldf/g0;->d:LXe/o;

    invoke-interface {v1, v0}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, v0}, Ldf/k0;->O8(LCi/c;Ljava/util/Iterator;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void

    :cond_1
    new-instance v1, Ldf/g0$a;

    iget-object v2, p0, Ldf/g0;->d:LXe/o;

    iget v3, p0, Ldf/g0;->e:I

    invoke-direct {v1, p1, v2, v3}, Ldf/g0$a;-><init>(LCi/c;LXe/o;I)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
