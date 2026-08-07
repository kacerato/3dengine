.class public final Lef/f$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/v;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/f;
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
        "LTe/v<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final j:J = 0x30dc8174e7c3966aL


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:LYe/h;

.field public final f:[LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LTe/y<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final g:Lio/reactivex/internal/util/c;

.field public h:I

.field public i:J


# direct methods
.method public constructor <init>(LCi/c;[LTe/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;[",
            "LTe/y<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lef/f$a;->b:LCi/c;

    iput-object p2, p0, Lef/f$a;->f:[LTe/y;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lef/f$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, LYe/h;

    invoke-direct {p1}, LYe/h;-><init>()V

    iput-object p1, p0, Lef/f$a;->e:LYe/h;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lef/f$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lef/f$a;->g:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lef/f$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lef/f$a;->c()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/f$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lef/f$a;->c()V

    return-void
.end method

.method public c()V
    .locals 9

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lef/f$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lef/f$a;->b:LCi/c;

    iget-object v2, p0, Lef/f$a;->e:LYe/h;

    :cond_1
    invoke-interface {v2}, LVe/c;->d()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    sget-object v5, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    if-eq v3, v5, :cond_3

    iget-wide v5, p0, Lef/f$a;->i:J

    iget-object v7, p0, Lef/f$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-eqz v7, :cond_6

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lef/f$a;->i:J

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, LCi/c;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :goto_0
    invoke-interface {v2}, LVe/c;->d()Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lef/f$a;->h:I

    iget-object v4, p0, Lef/f$a;->f:[LTe/y;

    array-length v5, v4

    if-ne v3, v5, :cond_5

    iget-object v0, p0, Lef/f$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lef/f$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v1}, LCi/c;->a()V

    :goto_1
    return-void

    :cond_5
    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lef/f$a;->h:I

    aget-object v3, v4, v3

    invoke-interface {v3, p0}, LTe/y;->d(LTe/v;)V

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lef/f$a;->e:LYe/h;

    invoke-virtual {v0}, LYe/h;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lef/f$a;->e:LYe/h;

    invoke-virtual {v0, p1}, LYe/h;->a(LVe/c;)Z

    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lef/f$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lef/f$a;->c()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lef/f$a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/util/p;->COMPLETE:Lio/reactivex/internal/util/p;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Lef/f$a;->g:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lef/f$a;->c()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
