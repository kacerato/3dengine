.class public final Lgf/L1$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/L1;
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
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final i:J = 0x15e3c5e57e438349L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
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

.field public final d:[Lgf/L1$c;

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
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lio/reactivex/internal/util/c;

.field public volatile h:Z


# direct methods
.method public constructor <init>(LTe/I;LXe/o;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/L1$b;->b:LTe/I;

    iput-object p2, p0, Lgf/L1$b;->c:LXe/o;

    new-array p1, p3, [Lgf/L1$c;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    new-instance v0, Lgf/L1$c;

    invoke-direct {v0, p0, p2}, Lgf/L1$c;-><init>(Lgf/L1$b;I)V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lgf/L1$b;->d:[Lgf/L1$c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lgf/L1$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/L1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lgf/L1$b;->g:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lgf/L1$b;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/L1$b;->h:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lgf/L1$b;->b(I)V

    iget-object v0, p0, Lgf/L1$b;->b:LTe/I;

    iget-object v1, p0, Lgf/L1$b;->g:Lio/reactivex/internal/util/c;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/k;->b(LTe/I;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lgf/L1$b;->d:[Lgf/L1$c;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    if-eq v1, p1, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lgf/L1$c;->b()V

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

    iput-boolean p2, p0, Lgf/L1$b;->h:Z

    invoke-virtual {p0, p1}, Lgf/L1$b;->b(I)V

    iget-object p1, p0, Lgf/L1$b;->b:LTe/I;

    iget-object p2, p0, Lgf/L1$b;->g:Lio/reactivex/internal/util/c;

    invoke-static {p1, p0, p2}, Lio/reactivex/internal/util/k;->b(LTe/I;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/L1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 4

    iget-object v0, p0, Lgf/L1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/L1$b;->d:[Lgf/L1$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lgf/L1$c;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/L1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public f(ILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/L1$b;->h:Z

    iget-object v0, p0, Lgf/L1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0, p1}, Lgf/L1$b;->b(I)V

    iget-object p1, p0, Lgf/L1$b;->b:LTe/I;

    iget-object v0, p0, Lgf/L1$b;->g:Lio/reactivex/internal/util/c;

    invoke-static {p1, p2, p0, v0}, Lio/reactivex/internal/util/k;->d(LTe/I;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/L1$b;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgf/L1$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    aput-object p1, v2, v3

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p1, p0, Lgf/L1$b;->c:LXe/o;

    invoke-interface {p1, v2}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "combiner returned a null value"

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lgf/L1$b;->b:LTe/I;

    iget-object v1, p0, Lgf/L1$b;->g:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->f(LTe/I;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lgf/L1$b;->dispose()V

    invoke-virtual {p0, p1}, Lgf/L1$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public h(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lgf/L1$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public i([LTe/G;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LTe/G<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/L1$b;->d:[Lgf/L1$c;

    iget-object v1, p0, Lgf/L1$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LVe/c;

    invoke-static {v3}, LYe/d;->b(LVe/c;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lgf/L1$b;->h:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, LTe/G;->b(LTe/I;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lgf/L1$b;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/L1$b;->h:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lgf/L1$b;->b(I)V

    iget-object v0, p0, Lgf/L1$b;->b:LTe/I;

    iget-object v1, p0, Lgf/L1$b;->g:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->d(LTe/I;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method
