.class public final Ldf/t;
.super LTe/K;
.source "SourceFile"

# interfaces
.implements Laf/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
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
            "+TU;>;"
        }
    .end annotation
.end field

.field public final d:LXe/b;
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

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Ldf/t;->b:LTe/l;

    iput-object p2, p0, Ldf/t;->c:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Ldf/t;->d:LXe/b;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TU;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldf/t;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initialSupplier returned a null value"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ldf/t;->b:LTe/l;

    new-instance v2, Ldf/t$a;

    iget-object v3, p0, Ldf/t;->d:LXe/b;

    invoke-direct {v2, p1, v0, v3}, Ldf/t$a;-><init>(LTe/N;Ljava/lang/Object;LXe/b;)V

    invoke-virtual {v1, v2}, LTe/l;->l6(LTe/q;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p1}, LYe/e;->i(Ljava/lang/Throwable;LTe/N;)V

    return-void
.end method

.method public f()LTe/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/l<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Ldf/s;

    iget-object v1, p0, Ldf/t;->b:LTe/l;

    iget-object v2, p0, Ldf/t;->c:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Ldf/t;->d:LXe/b;

    invoke-direct {v0, v1, v2, v3}, Ldf/s;-><init>(LTe/l;Ljava/util/concurrent/Callable;LXe/b;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method
