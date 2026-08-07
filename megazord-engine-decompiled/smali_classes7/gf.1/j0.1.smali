.class public final Lgf/j0;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/j0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final c:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "TS;",
            "LTe/k<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field public final d:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;LXe/c;LXe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LXe/c<",
            "TS;",
            "LTe/k<",
            "TT;>;TS;>;",
            "LXe/g<",
            "-TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lgf/j0;->b:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lgf/j0;->c:LXe/c;

    iput-object p3, p0, Lgf/j0;->d:LXe/g;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lgf/j0;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lgf/j0$a;

    iget-object v2, p0, Lgf/j0;->c:LXe/c;

    iget-object v3, p0, Lgf/j0;->d:LXe/g;

    invoke-direct {v1, p1, v2, v3, v0}, Lgf/j0$a;-><init>(LTe/I;LXe/c;LXe/g;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, LTe/I;->e(LVe/c;)V

    invoke-virtual {v1}, Lgf/j0$a;->h()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LYe/e;->h(Ljava/lang/Throwable;LTe/I;)V

    return-void
.end method
