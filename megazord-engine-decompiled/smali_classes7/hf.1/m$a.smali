.class public final Lhf/m$a;
.super Llf/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf/m;
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
        "Llf/h<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final t:J = 0x71ce22a1fe47cbf8L


# instance fields
.field public final q:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field public r:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public s:Z


# direct methods
.method public constructor <init>(LCi/c;Ljava/lang/Object;LXe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;TR;",
            "LXe/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Llf/h;-><init>(LCi/c;)V

    iput-object p2, p0, Lhf/m$a;->r:Ljava/lang/Object;

    iput-object p3, p0, Lhf/m$a;->q:LXe/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lhf/m$a;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhf/m$a;->s:Z

    iget-object v0, p0, Lhf/m$a;->r:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lhf/m$a;->r:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lmf/f;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, Llf/h;->cancel()V

    iget-object v0, p0, Llf/h;->n:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lhf/m$a;->s:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lhf/m$a;->q:LXe/c;

    iget-object v1, p0, Lhf/m$a;->r:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, LXe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lhf/m$a;->r:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lhf/m$a;->cancel()V

    invoke-virtual {p0, p1}, Lhf/m$a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Llf/h;->n:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Llf/h;->n:LCi/d;

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lhf/m$a;->s:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhf/m$a;->s:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lhf/m$a;->r:Ljava/lang/Object;

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
