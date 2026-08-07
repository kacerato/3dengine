.class public final Ldf/Z1$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Laf/a;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/Z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Laf/a<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final j:J = 0x15e3c5e57e438349L


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation
.end field

.field public final d:[Ldf/Z1$c;

.field public final e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public final h:Lio/reactivex/internal/util/c;

.field public volatile i:Z


# direct methods
.method public constructor <init>(LCi/c;LXe/o;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ldf/Z1$b;->b:LCi/c;

    iput-object p2, p0, Ldf/Z1$b;->c:LXe/o;

    new-array p1, p3, [Ldf/Z1$c;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    new-instance v0, Ldf/Z1$c;

    invoke-direct {v0, p0, p2}, Ldf/Z1$c;-><init>(Ldf/Z1$b;I)V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ldf/Z1$b;->d:[Ldf/Z1$c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Ldf/Z1$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/Z1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/Z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Ldf/Z1$b;->h:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Ldf/Z1$b;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/Z1$b;->i:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ldf/Z1$b;->b(I)V

    iget-object v0, p0, Ldf/Z1$b;->b:LCi/c;

    iget-object v1, p0, Ldf/Z1$b;->h:Lio/reactivex/internal/util/c;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/k;->a(LCi/c;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Ldf/Z1$b;->d:[Ldf/Z1$c;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    if-eq v1, p1, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ldf/Z1$c;->b()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(IZ)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Ldf/Z1$b;->i:Z

    iget-object p2, p0, Ldf/Z1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p2}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0, p1}, Ldf/Z1$b;->b(I)V

    iget-object p1, p0, Ldf/Z1$b;->b:LCi/c;

    iget-object p2, p0, Ldf/Z1$b;->h:Lio/reactivex/internal/util/c;

    invoke-static {p1, p0, p2}, Lio/reactivex/internal/util/k;->a(LCi/c;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 4

    iget-object v0, p0, Ldf/Z1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Ldf/Z1$b;->d:[Ldf/Z1$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ldf/Z1$c;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(ILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/Z1$b;->i:Z

    iget-object v0, p0, Ldf/Z1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0, p1}, Ldf/Z1$b;->b(I)V

    iget-object p1, p0, Ldf/Z1$b;->b:LCi/c;

    iget-object v0, p0, Ldf/Z1$b;->h:Lio/reactivex/internal/util/c;

    invoke-static {p1, p2, p0, v0}, Lio/reactivex/internal/util/k;->c(LCi/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public e(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ldf/Z1$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public f([LCi/b;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/b<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/Z1$b;->d:[Ldf/Z1$c;

    iget-object v1, p0, Ldf/Z1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lmf/j;->CANCELLED:Lmf/j;

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, LCi/b;->l(LCi/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ldf/Z1$b;->p(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Ldf/Z1$b;->i:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ldf/Z1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCi/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/Z1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Ldf/Z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, Lmf/j;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;LCi/d;)Z

    return-void
.end method

.method public i(J)V
    .locals 2

    iget-object v0, p0, Ldf/Z1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Ldf/Z1$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lmf/j;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Ldf/Z1$b;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/Z1$b;->i:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ldf/Z1$b;->b(I)V

    iget-object v0, p0, Ldf/Z1$b;->b:LCi/c;

    iget-object v1, p0, Ldf/Z1$b;->h:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->c(LCi/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/Z1$b;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ldf/Z1$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    move p1, v1

    :goto_0
    if-ge p1, v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    aput-object v4, v3, p1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p1, p0, Ldf/Z1$b;->c:LXe/o;

    invoke-interface {p1, v3}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The combiner returned a null value"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldf/Z1$b;->b:LCi/c;

    iget-object v1, p0, Ldf/Z1$b;->h:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->e(LCi/c;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ldf/Z1$b;->cancel()V

    invoke-virtual {p0, p1}, Ldf/Z1$b;->onError(Ljava/lang/Throwable;)V

    return v1
.end method
