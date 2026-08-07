.class public final Lkf/s$c;
.super LTe/J$c;
.source "SourceFile"

# interfaces
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkf/s$c$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lkf/s$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LTe/J$c;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lkf/s$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lkf/s$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lkf/s$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)LVe/c;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, LTe/J$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lkf/s$c;->f(Ljava/lang/Runnable;J)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, LTe/J$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    add-long/2addr v0, p2

    new-instance p2, Lkf/s$a;

    invoke-direct {p2, p1, p0, v0, v1}, Lkf/s$a;-><init>(Ljava/lang/Runnable;Lkf/s$c;J)V

    invoke-virtual {p0, p2, v0, v1}, Lkf/s$c;->f(Ljava/lang/Runnable;J)LVe/c;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lkf/s$c;->e:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkf/s$c;->e:Z

    return-void
.end method

.method public f(Ljava/lang/Runnable;J)LVe/c;
    .locals 1

    iget-boolean v0, p0, Lkf/s$c;->e:Z

    if-eqz v0, :cond_0

    sget-object p1, LYe/e;->INSTANCE:LYe/e;

    return-object p1

    :cond_0
    new-instance v0, Lkf/s$b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Lkf/s$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lkf/s$b;-><init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V

    iget-object p1, p0, Lkf/s$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkf/s$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    :cond_1
    :goto_0
    iget-boolean p2, p0, Lkf/s$c;->e:Z

    if-eqz p2, :cond_2

    iget-object p1, p0, Lkf/s$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    sget-object p1, LYe/e;->INSTANCE:LYe/e;

    return-object p1

    :cond_2
    iget-object p2, p0, Lkf/s$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkf/s$b;

    if-nez p2, :cond_3

    iget-object p2, p0, Lkf/s$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, LYe/e;->INSTANCE:LYe/e;

    return-object p1

    :cond_3
    iget-boolean p3, p2, Lkf/s$b;->e:Z

    if-nez p3, :cond_1

    iget-object p2, p2, Lkf/s$b;->b:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_4
    new-instance p1, Lkf/s$c$a;

    invoke-direct {p1, p0, v0}, Lkf/s$c$a;-><init>(Lkf/s$c;Lkf/s$b;)V

    invoke-static {p1}, LVe/d;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object p1

    return-object p1
.end method
