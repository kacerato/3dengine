.class public final Ldf/n0;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/n0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
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
            "TS;>;"
        }
    .end annotation
.end field

.field public final d:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "TS;",
            "LTe/k<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field public final e:LXe/g;
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

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/n0;->c:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Ldf/n0;->d:LXe/c;

    iput-object p3, p0, Ldf/n0;->e:LXe/g;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldf/n0;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ldf/n0$a;

    iget-object v2, p0, Ldf/n0;->d:LXe/c;

    iget-object v3, p0, Ldf/n0;->e:LXe/g;

    invoke-direct {v1, p1, v2, v3, v0}, Ldf/n0$a;-><init>(LCi/c;LXe/c;LXe/g;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, LCi/c;->h(LCi/d;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void
.end method
