.class public final Lff/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lff/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/o$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final i:Lff/o$a$a;


# instance fields
.field public final b:LTe/f;

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Lio/reactivex/internal/util/c;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lff/o$a$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile g:Z

.field public h:LVe/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lff/o$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lff/o$a$a;-><init>(Lff/o$a;)V

    sput-object v0, Lff/o$a;->i:Lff/o$a$a;

    return-void
.end method

.method public constructor <init>(LTe/f;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/f;",
            "LXe/o<",
            "-TT;+",
            "LTe/i;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lff/o$a;->b:LTe/f;

    iput-object p2, p0, Lff/o$a;->c:LXe/o;

    iput-boolean p3, p0, Lff/o$a;->d:Z

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lff/o$a;->e:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lff/o$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lff/o$a;->g:Z

    iget-object v0, p0, Lff/o$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lff/o$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lff/o$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lff/o$a;->b:LTe/f;

    invoke-interface {v1, v0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lff/o$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lff/o$a;->i:Lff/o$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lff/o$a$a;

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lff/o$a$a;->b()V

    :cond_0
    return-void
.end method

.method public c(Lff/o$a$a;)V
    .locals 2

    iget-object v0, p0, Lff/o$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lff/o$a;->g:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lff/o$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lff/o$a;->b:LTe/f;

    invoke-interface {p1}, LTe/f;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lff/o$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lff/o$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lff/o$a;->i:Lff/o$a$a;

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

    iget-object v0, p0, Lff/o$a;->h:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0}, Lff/o$a;->b()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lff/o$a;->h:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lff/o$a;->h:LVe/c;

    iget-object p1, p0, Lff/o$a;->b:LTe/f;

    invoke-interface {p1, p0}, LTe/f;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public f(Lff/o$a$a;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lff/o$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lff/o$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lff/o$a;->d:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lff/o$a;->g:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lff/o$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    iget-object p2, p0, Lff/o$a;->b:LTe/f;

    invoke-interface {p2, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lff/o$a;->dispose()V

    iget-object p1, p0, Lff/o$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    sget-object p2, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lff/o$a;->b:LTe/f;

    invoke-interface {p2, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p2}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lff/o$a;->c:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTe/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lff/o$a$a;

    invoke-direct {v0, p0}, Lff/o$a$a;-><init>(Lff/o$a;)V

    :cond_0
    iget-object v1, p0, Lff/o$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lff/o$a$a;

    sget-object v2, Lff/o$a;->i:Lff/o$a$a;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lff/o$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1, v0}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lff/o$a$a;->b()V

    :cond_2
    invoke-interface {p1, v0}, LTe/i;->b(LTe/f;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lff/o$a;->h:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0, p1}, Lff/o$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lff/o$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lff/o$a;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lff/o$a;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lff/o$a;->b()V

    iget-object p1, p0, Lff/o$a;->e:Lio/reactivex/internal/util/c;

    invoke-virtual {p1}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lff/o$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
