.class public final Lgf/k0$c;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LVe/c;
.implements LTe/G;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LVe/c;",
        "LTe/G<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final k:J = -0x35762a4bbab31538L


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final c:Ljf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljf/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lgf/k0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/k0$a<",
            "*TK;TT;>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public volatile f:Z

.field public g:Ljava/lang/Throwable;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LTe/I<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILgf/k0$a;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lgf/k0$a<",
            "*TK;TT;>;TK;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lgf/k0$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lgf/k0$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lgf/k0$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljf/c;

    invoke-direct {v0, p1}, Ljf/c;-><init>(I)V

    iput-object v0, p0, Lgf/k0$c;->c:Ljf/c;

    iput-object p2, p0, Lgf/k0$c;->d:Lgf/k0$a;

    iput-object p3, p0, Lgf/k0$c;->b:Ljava/lang/Object;

    iput-boolean p4, p0, Lgf/k0$c;->e:Z

    return-void
.end method


# virtual methods
.method public a(ZZLTe/I;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "LTe/I<",
            "-TT;>;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lgf/k0$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lgf/k0$c;->c:Ljf/c;

    invoke-virtual {p1}, Ljf/c;->clear()V

    iget-object p1, p0, Lgf/k0$c;->d:Lgf/k0$a;

    iget-object p2, p0, Lgf/k0$c;->b:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgf/k0$a;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lgf/k0$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lgf/k0$c;->g:Ljava/lang/Throwable;

    iget-object p2, p0, Lgf/k0$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, LTe/I;->a()V

    :goto_0
    return v1

    :cond_2
    iget-object p1, p0, Lgf/k0$c;->g:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lgf/k0$c;->c:Ljf/c;

    invoke-virtual {p2}, Ljf/c;->clear()V

    iget-object p2, p0, Lgf/k0$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {p3, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lgf/k0$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {p3}, LTe/I;->a()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public b(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/k0$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    iget-object v0, p0, Lgf/k0$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p1, p0, Lgf/k0$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgf/k0$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgf/k0$c;->c()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one Observer allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, LYe/e;->h(Ljava/lang/Throwable;LTe/I;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 8

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgf/k0$c;->c:Ljf/c;

    iget-boolean v1, p0, Lgf/k0$c;->e:Z

    iget-object v2, p0, Lgf/k0$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LTe/I;

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    :goto_1
    iget-boolean v5, p0, Lgf/k0$c;->f:Z

    invoke-virtual {v0}, Ljf/c;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {p0, v5, v7, v2, v1}, Lgf/k0$c;->a(ZZLTe/I;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    return-void

    :cond_3
    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v2, v6}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_3
    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    if-nez v2, :cond_1

    iget-object v2, p0, Lgf/k0$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LTe/I;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/k0$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lgf/k0$c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/k0$c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lgf/k0$c;->d:Lgf/k0$a;

    iget-object v1, p0, Lgf/k0$c;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgf/k0$a;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/k0$c;->f:Z

    invoke-virtual {p0}, Lgf/k0$c;->c()V

    return-void
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lgf/k0$c;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/k0$c;->f:Z

    invoke-virtual {p0}, Lgf/k0$c;->c()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/k0$c;->c:Ljf/c;

    invoke-virtual {v0, p1}, Ljf/c;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lgf/k0$c;->c()V

    return-void
.end method
