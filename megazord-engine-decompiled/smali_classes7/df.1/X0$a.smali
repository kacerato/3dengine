.class public final Ldf/X0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/X0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/q<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/v<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:LCi/d;

.field public f:Z


# direct methods
.method public constructor <init>(LTe/v;LXe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;",
            "LXe/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/X0$a;->b:LTe/v;

    iput-object p2, p0, Ldf/X0$a;->c:LXe/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Ldf/X0$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/X0$a;->f:Z

    iget-object v0, p0, Ldf/X0$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ldf/X0$a;->b:LTe/v;

    invoke-interface {v1, v0}, LTe/v;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldf/X0$a;->b:LTe/v;

    invoke-interface {v0}, LTe/v;->a()V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Ldf/X0$a;->f:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Ldf/X0$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/X0$a;->f:Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/X0$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldf/X0$a;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    iput-object p1, p0, Ldf/X0$a;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Ldf/X0$a;->c:LXe/c;

    invoke-interface {v1, v0, p1}, LXe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldf/X0$a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ldf/X0$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-virtual {p0, p1}, Ldf/X0$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/X0$a;->e:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/X0$a;->e:LCi/d;

    iget-object v0, p0, Ldf/X0$a;->b:LTe/v;

    invoke-interface {v0, p0}, LTe/v;->e(LVe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Ldf/X0$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/X0$a;->f:Z

    iget-object v0, p0, Ldf/X0$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
