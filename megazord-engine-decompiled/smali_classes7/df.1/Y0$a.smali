.class public final Ldf/Y0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/Y0;
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
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
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

.field public e:LCi/d;


# direct methods
.method public constructor <init>(LTe/N;LXe/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TR;>;",
            "LXe/c<",
            "TR;-TT;TR;>;TR;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/Y0$a;->b:LTe/N;

    iput-object p3, p0, Ldf/Y0$a;->d:Ljava/lang/Object;

    iput-object p2, p0, Ldf/Y0$a;->c:LXe/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ldf/Y0$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Ldf/Y0$a;->d:Ljava/lang/Object;

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v1, p0, Ldf/Y0$a;->e:LCi/d;

    iget-object v1, p0, Ldf/Y0$a;->b:LTe/N;

    invoke-interface {v1, v0}, LTe/N;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Ldf/Y0$a;->e:LCi/d;

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Ldf/Y0$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/Y0$a;->e:LCi/d;

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/Y0$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Ldf/Y0$a;->c:LXe/c;

    invoke-interface {v1, v0, p1}, LXe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldf/Y0$a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ldf/Y0$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-virtual {p0, p1}, Ldf/Y0$a;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/Y0$a;->e:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/Y0$a;->e:LCi/d;

    iget-object v0, p0, Ldf/Y0$a;->b:LTe/N;

    invoke-interface {v0, p0}, LTe/N;->e(LVe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/Y0$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ldf/Y0$a;->d:Ljava/lang/Object;

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/Y0$a;->e:LCi/d;

    iget-object v0, p0, Ldf/Y0$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
