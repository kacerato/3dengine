.class public final Lgf/a1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/a1;
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
        "Ljava/lang/Object;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public e:LVe/c;

.field public f:Z


# direct methods
.method public constructor <init>(LTe/I;LXe/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;",
            "LXe/c<",
            "TR;-TT;TR;>;TR;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/a1$a;->b:LTe/I;

    iput-object p2, p0, Lgf/a1$a;->c:LXe/c;

    iput-object p3, p0, Lgf/a1$a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lgf/a1$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/a1$a;->f:Z

    iget-object v0, p0, Lgf/a1$a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/a1$a;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/a1$a;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/a1$a;->e:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/a1$a;->e:LVe/c;

    iget-object p1, p0, Lgf/a1$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    iget-object p1, p0, Lgf/a1$a;->b:LTe/I;

    iget-object v0, p0, Lgf/a1$a;->d:Ljava/lang/Object;

    invoke-interface {p1, v0}, LTe/I;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/a1$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgf/a1$a;->d:Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lgf/a1$a;->c:LXe/c;

    invoke-interface {v1, v0, p1}, LXe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The accumulator returned a null value"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lgf/a1$a;->d:Ljava/lang/Object;

    iget-object v0, p0, Lgf/a1$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lgf/a1$a;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0, p1}, Lgf/a1$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lgf/a1$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/a1$a;->f:Z

    iget-object v0, p0, Lgf/a1$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
