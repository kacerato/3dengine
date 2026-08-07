.class public final Lhf/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf/a;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf/j;
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
        "Laf/a<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# instance fields
.field public final b:Laf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/a<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field public d:LCi/d;

.field public e:Z


# direct methods
.method public constructor <init>(Laf/a;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laf/a<",
            "-TR;>;",
            "LXe/o<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhf/j$a;->b:Laf/a;

    iput-object p2, p0, Lhf/j$a;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lhf/j$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhf/j$a;->e:Z

    iget-object v0, p0, Lhf/j$a;->b:Laf/a;

    invoke-interface {v0}, LCi/c;->a()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lhf/j$a;->d:LCi/d;

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

    iget-boolean v0, p0, Lhf/j$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lhf/j$a;->c:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null value"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lhf/j$a;->b:Laf/a;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lhf/j$a;->cancel()V

    invoke-virtual {p0, p1}, Lhf/j$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 1

    iget-object v0, p0, Lhf/j$a;->d:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lhf/j$a;->d:LCi/d;

    iget-object p1, p0, Lhf/j$a;->b:Laf/a;

    invoke-interface {p1, p0}, LTe/q;->h(LCi/d;)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, Lhf/j$a;->d:LCi/d;

    invoke-interface {v0, p1, p2}, LCi/d;->i(J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lhf/j$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhf/j$a;->e:Z

    iget-object v0, p0, Lhf/j$a;->b:Laf/a;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lhf/j$a;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lhf/j$a;->c:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null value"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lhf/j$a;->b:Laf/a;

    invoke-interface {v0, p1}, Laf/a;->p(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lhf/j$a;->cancel()V

    invoke-virtual {p0, p1}, Lhf/j$a;->onError(Ljava/lang/Throwable;)V

    return v1
.end method
