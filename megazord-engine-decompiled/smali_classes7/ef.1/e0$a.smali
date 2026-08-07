.class public final Lef/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/v;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/e0;
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
        "LTe/v<",
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

.field public final c:Lef/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef/e0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:LVe/c;


# direct methods
.method public constructor <init>(LTe/v;Lef/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;",
            "Lef/e0<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/e0$a;->b:LTe/v;

    iput-object p2, p0, Lef/e0$a;->c:Lef/e0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lef/e0$a;->d:LVe/c;

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lef/e0$a;->c:Lef/e0;

    iget-object v0, v0, Lef/e0;->f:LXe/a;

    invoke-interface {v0}, LXe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lef/e0$a;->d:LVe/c;

    iget-object v0, p0, Lef/e0$a;->b:LTe/v;

    invoke-interface {v0}, LTe/v;->a()V

    invoke-virtual {p0}, Lef/e0$a;->c()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lef/e0$a;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/e0$a;->d:LVe/c;

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lef/e0$a;->c:Lef/e0;

    iget-object v0, v0, Lef/e0;->d:LXe/g;

    invoke-interface {v0, p1}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lef/e0$a;->d:LVe/c;

    iget-object v0, p0, Lef/e0$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lef/e0$a;->c()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lef/e0$a;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lef/e0$a;->c:Lef/e0;

    iget-object v0, v0, Lef/e0;->g:LXe/a;

    invoke-interface {v0}, LXe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lef/e0$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lef/e0$a;->c:Lef/e0;

    iget-object v0, v0, Lef/e0;->h:LXe/a;

    invoke-interface {v0}, LXe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lef/e0$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lef/e0$a;->d:LVe/c;

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lef/e0$a;->d:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lef/e0$a;->c:Lef/e0;

    iget-object v0, v0, Lef/e0;->c:LXe/g;

    invoke-interface {v0, p1}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lef/e0$a;->d:LVe/c;

    iget-object p1, p0, Lef/e0$a;->b:LTe/v;

    invoke-interface {p1, p0}, LTe/v;->e(LVe/c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1}, LVe/c;->dispose()V

    sget-object p1, LYe/d;->DISPOSED:LYe/d;

    iput-object p1, p0, Lef/e0$a;->d:LVe/c;

    iget-object p1, p0, Lef/e0$a;->b:LTe/v;

    invoke-static {v0, p1}, LYe/e;->g(Ljava/lang/Throwable;LTe/v;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lef/e0$a;->c:Lef/e0;

    iget-object v0, v0, Lef/e0;->e:LXe/g;

    invoke-interface {v0, p1}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lef/e0$a;->d:LVe/c;

    iget-object v0, p0, Lef/e0$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lef/e0$a;->c()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lef/e0$a;->d:LVe/c;

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lef/e0$a;->f(Ljava/lang/Throwable;)V

    return-void
.end method
