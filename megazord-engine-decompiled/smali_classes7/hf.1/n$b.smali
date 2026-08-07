.class public final Lhf/n$b;
.super Lmf/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmf/f<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final s:J = -0x4a8674a85e439ebdL


# instance fields
.field public final n:[Lhf/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhf/n$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final o:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lhf/n$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final r:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCi/c;ILXe/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;I",
            "LXe/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmf/f;-><init>(LCi/c;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lhf/n$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lhf/n$b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lhf/n$b;->r:Ljava/util/concurrent/atomic/AtomicReference;

    new-array p1, p2, [Lhf/n$a;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    new-instance v1, Lhf/n$a;

    invoke-direct {v1, p0, p3}, Lhf/n$a;-><init>(Lhf/n$b;LXe/c;)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lhf/n$b;->n:[Lhf/n$a;

    iput-object p3, p0, Lhf/n$b;->o:LXe/c;

    iget-object p1, p0, Lhf/n$b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lhf/n$b;->r:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhf/n$b;->cancel()V

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhf/n$b;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 4

    iget-object v0, p0, Lhf/n$b;->n:[Lhf/n$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lhf/n$a;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u(Ljava/lang/Object;)Lhf/n$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lhf/n$c<",
            "TT;>;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lhf/n$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf/n$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lhf/n$c;

    invoke-direct {v0}, Lhf/n$c;-><init>()V

    iget-object v2, p0, Lhf/n$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1, v0}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lhf/n$c;->b()I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lhf/n$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iput-object p1, v0, Lhf/n$c;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iput-object p1, v0, Lhf/n$c;->c:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v0}, Lhf/n$c;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lhf/n$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0

    :cond_3
    return-object v1
.end method

.method public v(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lhf/n$b;->u(Ljava/lang/Object;)Lhf/n$c;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lhf/n$b;->o:LXe/c;

    iget-object v1, p1, Lhf/n$c;->b:Ljava/lang/Object;

    iget-object p1, p1, Lhf/n$c;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, LXe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lhf/n$b;->c(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lhf/n$b;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lhf/n$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhf/n$c;

    iget-object v0, p0, Lhf/n$b;->p:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object p1, p1, Lhf/n$c;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmf/f;->d(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lmf/f;->c:LCi/c;

    invoke-interface {p1}, LCi/c;->a()V

    :cond_2
    :goto_1
    return-void
.end method
