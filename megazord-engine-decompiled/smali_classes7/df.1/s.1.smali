.class public final Ldf/s;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TU;>;"
        }
    .end annotation
.end field

.field public final e:LXe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/b<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;Ljava/util/concurrent/Callable;LXe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "LXe/b<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/s;->d:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Ldf/s;->e:LXe/b;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TU;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldf/s;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initial value supplied is null"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ldf/a;->c:LTe/l;

    new-instance v2, Ldf/s$a;

    iget-object v3, p0, Ldf/s;->e:LXe/b;

    invoke-direct {v2, p1, v0, v3}, Ldf/s$a;-><init>(LCi/c;Ljava/lang/Object;LXe/b;)V

    invoke-virtual {v1, v2}, LTe/l;->l6(LTe/q;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void
.end method
