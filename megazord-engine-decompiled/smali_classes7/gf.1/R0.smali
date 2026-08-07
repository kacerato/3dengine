.class public final Lgf/R0;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/R0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "LTe/B<",
            "Ljava/lang/Object;",
            ">;+",
            "LTe/G<",
            "*>;>;"
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
            "Ljava/lang/Object;",
            ">;+",
            "LTe/G<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/R0;->c:LXe/o;

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

    invoke-static {}, Ltf/e;->p8()Ltf/e;

    move-result-object v0

    invoke-virtual {v0}, Ltf/i;->n8()Ltf/i;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lgf/R0;->c:LXe/o;

    invoke-interface {v1, v0}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The handler returned a null ObservableSource"

    invoke-static {v1, v2}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LTe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lgf/R0$a;

    iget-object v3, p0, Lgf/a;->b:LTe/G;

    invoke-direct {v2, p1, v0, v3}, Lgf/R0$a;-><init>(LTe/I;Ltf/i;LTe/G;)V

    invoke-interface {p1, v2}, LTe/I;->e(LVe/c;)V

    iget-object p1, v2, Lgf/R0$a;->f:Lgf/R0$a$a;

    invoke-interface {v1, p1}, LTe/G;->b(LTe/I;)V

    invoke-virtual {v2}, Lgf/R0$a;->h()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LYe/e;->h(Ljava/lang/Throwable;LTe/I;)V

    return-void
.end method
