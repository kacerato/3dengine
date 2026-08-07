.class public final Lef/v$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/v;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lef/v$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef/v$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lef/v$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef/v$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:LXe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/N;LXe/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "LXe/d<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lef/v$a;->b:LTe/N;

    iput-object p2, p0, Lef/v$a;->e:LXe/d;

    new-instance p1, Lef/v$b;

    invoke-direct {p1, p0}, Lef/v$b;-><init>(Lef/v$a;)V

    iput-object p1, p0, Lef/v$a;->c:Lef/v$b;

    new-instance p1, Lef/v$b;

    invoke-direct {p1, p0}, Lef/v$b;-><init>(Lef/v$a;)V

    iput-object p1, p0, Lef/v$a;->d:Lef/v$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lef/v$a;->c:Lef/v$b;

    iget-object v0, v0, Lef/v$b;->c:Ljava/lang/Object;

    iget-object v1, p0, Lef/v$a;->d:Lef/v$b;

    iget-object v1, v1, Lef/v$b;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lef/v$a;->e:LXe/d;

    invoke-interface {v2, v0, v1}, LXe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lef/v$a;->b:LTe/N;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, LTe/N;->b(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lef/v$a;->b:LTe/N;

    invoke-interface {v1, v0}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v2, p0, Lef/v$a;->b:LTe/N;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, LTe/N;->b(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Lef/v$b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lef/v$b<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lef/v$a;->c:Lef/v$b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lef/v$a;->d:Lef/v$b;

    invoke-virtual {p1}, Lef/v$b;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lef/v$b;->c()V

    :goto_0
    iget-object p1, p0, Lef/v$a;->b:LTe/N;

    invoke-interface {p1, p2}, LTe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public c(LTe/y;LTe/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "+TT;>;",
            "LTe/y<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/v$a;->c:Lef/v$b;

    invoke-interface {p1, v0}, LTe/y;->d(LTe/v;)V

    iget-object p1, p0, Lef/v$a;->d:Lef/v$b;

    invoke-interface {p2, p1}, LTe/y;->d(LTe/v;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lef/v$a;->c:Lef/v$b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lef/v$a;->c:Lef/v$b;

    invoke-virtual {v0}, Lef/v$b;->c()V

    iget-object v0, p0, Lef/v$a;->d:Lef/v$b;

    invoke-virtual {v0}, Lef/v$b;->c()V

    return-void
.end method
