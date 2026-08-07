.class public final Ldf/L$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/L;
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
        "LTe/q<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/A<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:LCi/d;


# direct methods
.method public constructor <init>(LCi/c;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/A<",
            "TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/L$a;->b:LCi/c;

    iput-object p2, p0, Ldf/L$a;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Ldf/L$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/L$a;->d:Z

    iget-object v0, p0, Ldf/L$a;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Ldf/L$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/L$a;->d:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, LTe/A;

    if-eqz v0, :cond_0

    check-cast p1, LTe/A;

    invoke-virtual {p1}, LTe/A;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LTe/A;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Ldf/L$a;->c:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The selector returned a null Notification"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/A;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, LTe/A;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldf/L$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-virtual {p1}, LTe/A;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldf/L$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LTe/A;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Ldf/L$a;->e:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    invoke-virtual {p0}, Ldf/L$a;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ldf/L$a;->b:LCi/c;

    invoke-virtual {p1}, LTe/A;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ldf/L$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-virtual {p0, p1}, Ldf/L$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 1

    iget-object v0, p0, Ldf/L$a;->e:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/L$a;->e:LCi/d;

    iget-object p1, p0, Ldf/L$a;->b:LCi/c;

    invoke-interface {p1, p0}, LCi/c;->h(LCi/d;)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, Ldf/L$a;->e:LCi/d;

    invoke-interface {v0, p1, p2}, LCi/d;->i(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Ldf/L$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/L$a;->d:Z

    iget-object v0, p0, Ldf/L$a;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
