.class public final Lgf/I0;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/I0$b;,
        Lgf/I0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/o<",
            "-",
            "LTe/B<",
            "TT;>;+",
            "LTe/G<",
            "TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/I0;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-static {}, Ltf/e;->p8()Ltf/e;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lgf/I0;->c:LXe/o;

    invoke-interface {v1, v0}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The selector returned a null ObservableSource"

    invoke-static {v1, v2}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LTe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lgf/I0$b;

    invoke-direct {v2, p1}, Lgf/I0$b;-><init>(LTe/I;)V

    invoke-interface {v1, v2}, LTe/G;->b(LTe/I;)V

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/I0$a;

    invoke-direct {v1, v0, v2}, Lgf/I0$a;-><init>(Ltf/e;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p1, v1}, LTe/G;->b(LTe/I;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LYe/e;->h(Ljava/lang/Throwable;LTe/I;)V

    return-void
.end method
