.class public final Lcf/I$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/f;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:LTe/f;

.field public c:LVe/c;

.field public final synthetic d:Lcf/I;


# direct methods
.method public constructor <init>(Lcf/I;LTe/f;)V
    .locals 0

    iput-object p1, p0, Lcf/I$a;->d:Lcf/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcf/I$a;->b:LTe/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcf/I$a;->c:LVe/c;

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcf/I$a;->d:Lcf/I;

    iget-object v0, v0, Lcf/I;->e:LXe/a;

    invoke-interface {v0}, LXe/a;->run()V

    iget-object v0, p0, Lcf/I$a;->d:Lcf/I;

    iget-object v0, v0, Lcf/I;->f:LXe/a;

    invoke-interface {v0}, LXe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcf/I$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    invoke-virtual {p0}, Lcf/I$a;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcf/I$a;->b:LTe/f;

    invoke-interface {v1, v0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcf/I$a;->d:Lcf/I;

    iget-object v0, v0, Lcf/I;->g:LXe/a;

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

    iget-object v0, p0, Lcf/I$a;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcf/I$a;->d:Lcf/I;

    iget-object v0, v0, Lcf/I;->h:LXe/a;

    invoke-interface {v0}, LXe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcf/I$a;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcf/I$a;->d:Lcf/I;

    iget-object v0, v0, Lcf/I;->c:LXe/g;

    invoke-interface {v0, p1}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcf/I$a;->c:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcf/I$a;->c:LVe/c;

    iget-object p1, p0, Lcf/I$a;->b:LTe/f;

    invoke-interface {p1, p0}, LTe/f;->e(LVe/c;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {p1}, LVe/c;->dispose()V

    sget-object p1, LYe/d;->DISPOSED:LYe/d;

    iput-object p1, p0, Lcf/I$a;->c:LVe/c;

    iget-object p1, p0, Lcf/I$a;->b:LTe/f;

    invoke-static {v0, p1}, LYe/e;->e(Ljava/lang/Throwable;LTe/f;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcf/I$a;->c:LVe/c;

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcf/I$a;->d:Lcf/I;

    iget-object v0, v0, Lcf/I;->d:LXe/g;

    invoke-interface {v0, p1}, LXe/g;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcf/I$a;->d:Lcf/I;

    iget-object v0, v0, Lcf/I;->f:LXe/a;

    invoke-interface {v0}, LXe/a;->run()V
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
    iget-object v0, p0, Lcf/I$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcf/I$a;->b()V

    return-void
.end method
