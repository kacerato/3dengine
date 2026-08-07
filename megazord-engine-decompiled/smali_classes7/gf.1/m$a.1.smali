.class public final Lgf/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
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
            "-TU;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public f:I

.field public g:LVe/c;


# direct methods
.method public constructor <init>(LTe/I;ILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/m$a;->b:LTe/I;

    iput p2, p0, Lgf/m$a;->c:I

    iput-object p3, p0, Lgf/m$a;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lgf/m$a;->e:Ljava/util/Collection;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lgf/m$a;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lgf/m$a;->b:LTe/I;

    invoke-interface {v1, v0}, LTe/I;->g(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lgf/m$a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lgf/m$a;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Empty buffer supplied"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lgf/m$a;->e:Ljava/util/Collection;

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lgf/m$a;->e:Ljava/util/Collection;

    iget-object v1, p0, Lgf/m$a;->g:LVe/c;

    if-nez v1, :cond_0

    iget-object v1, p0, Lgf/m$a;->b:LTe/I;

    invoke-static {v0, v1}, LYe/e;->h(Ljava/lang/Throwable;LTe/I;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, LVe/c;->dispose()V

    iget-object v1, p0, Lgf/m$a;->b:LTe/I;

    invoke-interface {v1, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/m$a;->g:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/m$a;->g:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/m$a;->g:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/m$a;->g:LVe/c;

    iget-object p1, p0, Lgf/m$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

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

    iget-object v0, p0, Lgf/m$a;->e:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lgf/m$a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgf/m$a;->f:I

    iget v1, p0, Lgf/m$a;->c:I

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lgf/m$a;->b:LTe/I;

    invoke-interface {p1, v0}, LTe/I;->g(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput p1, p0, Lgf/m$a;->f:I

    invoke-virtual {p0}, Lgf/m$a;->b()Z

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lgf/m$a;->e:Ljava/util/Collection;

    iget-object v0, p0, Lgf/m$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
