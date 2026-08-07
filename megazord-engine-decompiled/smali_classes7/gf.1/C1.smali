.class public final Lgf/C1;
.super LTe/K;
.source "SourceFile"

# interfaces
.implements Laf/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/C1$a;
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
        "Laf/d<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
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
.method public constructor <init>(LTe/G;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LTe/K;-><init>()V

    .line 2
    iput-object p1, p0, Lgf/C1;->b:LTe/G;

    .line 3
    invoke-static {p2}, LZe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p1

    iput-object p1, p0, Lgf/C1;->c:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(LTe/G;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, LTe/K;-><init>()V

    .line 5
    iput-object p1, p0, Lgf/C1;->b:LTe/G;

    .line 6
    iput-object p2, p0, Lgf/C1;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public c()LTe/B;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/B<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lgf/B1;

    iget-object v1, p0, Lgf/C1;->b:LTe/G;

    iget-object v2, p0, Lgf/C1;->c:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1, v2}, Lgf/B1;-><init>(LTe/G;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

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
    iget-object v0, p0, Lgf/C1;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lgf/C1;->b:LTe/G;

    new-instance v2, Lgf/C1$a;

    invoke-direct {v2, p1, v0}, Lgf/C1$a;-><init>(LTe/N;Ljava/util/Collection;)V

    invoke-interface {v1, v2}, LTe/G;->b(LTe/I;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LYe/e;->i(Ljava/lang/Throwable;LTe/N;)V

    return-void
.end method
