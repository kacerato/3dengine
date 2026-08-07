.class public final Ldf/Q1;
.super LTe/K;
.source "SourceFile"

# interfaces
.implements Laf/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/Q1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "LTe/K<",
        "TU;>;",
        "Laf/b<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldf/Q1;-><init>(LTe/l;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public constructor <init>(LTe/l;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LTe/K;-><init>()V

    .line 3
    iput-object p1, p0, Ldf/Q1;->b:LTe/l;

    .line 4
    iput-object p2, p0, Ldf/Q1;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TU;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldf/Q1;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ldf/Q1;->b:LTe/l;

    new-instance v2, Ldf/Q1$a;

    invoke-direct {v2, p1, v0}, Ldf/Q1$a;-><init>(LTe/N;Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, LTe/l;->l6(LTe/q;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LYe/e;->i(Ljava/lang/Throwable;LTe/N;)V

    return-void
.end method

.method public f()LTe/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Ldf/P1;

    iget-object v1, p0, Ldf/Q1;->b:LTe/l;

    iget-object v2, p0, Ldf/Q1;->c:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1, v2}, Ldf/P1;-><init>(LTe/l;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method
