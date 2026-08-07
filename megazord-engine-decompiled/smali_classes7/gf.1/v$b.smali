.class public final Lgf/v$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/v$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final l:J = 0x7a85719c209ca572L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TU;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final d:Lgf/v$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/v$b$a<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public f:Laf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:LVe/c;

.field public volatile h:Z

.field public volatile i:Z

.field public volatile j:Z

.field public k:I


# direct methods
.method public constructor <init>(LTe/I;LXe/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TU;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/v$b;->b:LTe/I;

    iput-object p2, p0, Lgf/v$b;->c:LXe/o;

    iput p3, p0, Lgf/v$b;->e:I

    new-instance p2, Lgf/v$b$a;

    invoke-direct {p2, p1, p0}, Lgf/v$b$a;-><init>(LTe/I;Lgf/v$b;)V

    iput-object p2, p0, Lgf/v$b;->d:Lgf/v$b$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lgf/v$b;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/v$b;->j:Z

    invoke-virtual {p0}, Lgf/v$b;->b()V

    return-void
.end method

.method public b()V
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lgf/v$b;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgf/v$b;->f:Laf/o;

    invoke-interface {v0}, Laf/o;->clear()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lgf/v$b;->h:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lgf/v$b;->j:Z

    :try_start_0
    iget-object v1, p0, Lgf/v$b;->f:Laf/o;

    invoke-interface {v1}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iput-boolean v2, p0, Lgf/v$b;->i:Z

    iget-object v0, p0, Lgf/v$b;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    return-void

    :cond_3
    if-nez v3, :cond_4

    :try_start_1
    iget-object v0, p0, Lgf/v$b;->c:LXe/o;

    invoke-interface {v0, v1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null ObservableSource"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTe/G;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, p0, Lgf/v$b;->h:Z

    iget-object v1, p0, Lgf/v$b;->d:Lgf/v$b$a;

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lgf/v$b;->dispose()V

    iget-object v1, p0, Lgf/v$b;->f:Laf/o;

    invoke-interface {v1}, Laf/o;->clear()V

    iget-object v1, p0, Lgf/v$b;->b:LTe/I;

    invoke-interface {v1, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lgf/v$b;->dispose()V

    iget-object v1, p0, Lgf/v$b;->f:Laf/o;

    invoke-interface {v1}, Laf/o;->clear()V

    iget-object v1, p0, Lgf/v$b;->b:LTe/I;

    invoke-interface {v1, v0}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgf/v$b;->h:Z

    invoke-virtual {p0}, Lgf/v$b;->b()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lgf/v$b;->i:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/v$b;->i:Z

    iget-object v0, p0, Lgf/v$b;->d:Lgf/v$b$a;

    invoke-virtual {v0}, Lgf/v$b$a;->b()V

    iget-object v0, p0, Lgf/v$b;->g:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/v$b;->f:Laf/o;

    invoke-interface {v0}, Laf/o;->clear()V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 2

    iget-object v0, p0, Lgf/v$b;->g:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lgf/v$b;->g:LVe/c;

    instance-of v0, p1, Laf/j;

    if-eqz v0, :cond_1

    check-cast p1, Laf/j;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Laf/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lgf/v$b;->k:I

    iput-object p1, p0, Lgf/v$b;->f:Laf/o;

    iput-boolean v1, p0, Lgf/v$b;->j:Z

    iget-object p1, p0, Lgf/v$b;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    invoke-virtual {p0}, Lgf/v$b;->b()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lgf/v$b;->k:I

    iput-object p1, p0, Lgf/v$b;->f:Laf/o;

    iget-object p1, p0, Lgf/v$b;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    return-void

    :cond_1
    new-instance p1, Ljf/c;

    iget v0, p0, Lgf/v$b;->e:I

    invoke-direct {p1, v0}, Ljf/c;-><init>(I)V

    iput-object p1, p0, Lgf/v$b;->f:Laf/o;

    iget-object p1, p0, Lgf/v$b;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_2
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/v$b;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lgf/v$b;->k:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lgf/v$b;->f:Laf/o;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lgf/v$b;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lgf/v$b;->j:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/v$b;->j:Z

    invoke-virtual {p0}, Lgf/v$b;->dispose()V

    iget-object v0, p0, Lgf/v$b;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
