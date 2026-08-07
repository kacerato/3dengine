.class public final LEg/s;
.super Lwg/M;
.source "SourceFile"

# interfaces
.implements Lwg/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEg/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,134:1\n66#1,8:135\n66#1,8:143\n28#2,4:151\n28#2,4:156\n20#3:155\n20#3:160\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n48#1:135,8\n55#1:143,8\n79#1:151,4\n92#1:156,4\n79#1:155\n92#1:160\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,134:1\n66#1,8:135\n66#1,8:143\n28#2,4:151\n28#2,4:156\n20#3:155\n20#3:160\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n48#1:135,8\n55#1:143,8\n79#1:151,4\n92#1:156,4\n79#1:155\n92#1:160\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Lwg/M;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:I

.field public final synthetic d:Lwg/b0;

.field public final e:LEg/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LEg/z<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile runningWorkers:I
    .annotation runtime Ldg/x;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LEg/s;

    const-string v1, "runningWorkers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, LEg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lwg/M;I)V
    .locals 0
    .param p1    # Lwg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lwg/M;-><init>()V

    iput-object p1, p0, LEg/s;->b:Lwg/M;

    iput p2, p0, LEg/s;->c:I

    instance-of p2, p1, Lwg/b0;

    if-eqz p2, :cond_0

    check-cast p1, Lwg/b0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lwg/Y;->a()Lwg/b0;

    move-result-object p1

    :cond_1
    iput-object p1, p0, LEg/s;->d:Lwg/b0;

    new-instance p1, LEg/z;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LEg/z;-><init>(Z)V

    iput-object p1, p0, LEg/s;->e:LEg/z;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEg/s;->f:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic v(LEg/s;)Lwg/M;
    .locals 0

    iget-object p0, p0, LEg/s;->b:Lwg/M;

    return-object p0
.end method

.method public static final synthetic y(LEg/s;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, LEg/s;->A()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-object v0, p0, LEg/s;->e:LEg/z;

    invoke-virtual {v0}, LEg/z;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, LEg/s;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LEg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, LEg/s;->e:LEg/z;

    invoke-virtual {v2}, LEg/z;->c()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    return-object v0
.end method

.method public final c0()Z
    .locals 4

    iget-object v0, p0, LEg/s;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LEg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, LEg/s;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public dispatch(LQf/j;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, LEg/s;->e:LEg/z;

    invoke-virtual {p1, p2}, LEg/z;->a(Ljava/lang/Object;)Z

    sget-object p1, LEg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, LEg/s;->c:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, LEg/s;->c0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LEg/s;->A()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, LEg/s$a;

    invoke-direct {p2, p0, p1}, LEg/s$a;-><init>(LEg/s;Ljava/lang/Runnable;)V

    iget-object p1, p0, LEg/s;->b:Lwg/M;

    invoke-virtual {p1, p0, p2}, Lwg/M;->dispatch(LQf/j;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchYield(LQf/j;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lwg/F0;
    .end annotation

    iget-object p1, p0, LEg/s;->e:LEg/z;

    invoke-virtual {p1, p2}, LEg/z;->a(Ljava/lang/Object;)Z

    sget-object p1, LEg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, LEg/s;->c:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, LEg/s;->c0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LEg/s;->A()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, LEg/s$a;

    invoke-direct {p2, p0, p1}, LEg/s$a;-><init>(LEg/s;Ljava/lang/Runnable;)V

    iget-object p1, p0, LEg/s;->b:Lwg/M;

    invoke-virtual {p1, p0, p2}, Lwg/M;->dispatchYield(LQf/j;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(JLwg/p;)V
    .locals 1
    .param p3    # Lwg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lwg/p<",
            "-",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LEg/s;->d:Lwg/b0;

    invoke-interface {v0, p1, p2, p3}, Lwg/b0;->g(JLwg/p;)V

    return-void
.end method

.method public limitedParallelism(I)Lwg/M;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    invoke-static {p1}, LEg/t;->a(I)V

    iget v0, p0, LEg/s;->c:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lwg/M;->limitedParallelism(I)Lwg/M;

    move-result-object p1

    return-object p1
.end method

.method public q(JLjava/lang/Runnable;LQf/j;)Lwg/m0;
    .locals 1
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LEg/s;->d:Lwg/b0;

    invoke-interface {v0, p1, p2, p3, p4}, Lwg/b0;->q(JLjava/lang/Runnable;LQf/j;)Lwg/m0;

    move-result-object p1

    return-object p1
.end method

.method public r(JLQf/f;)Ljava/lang/Object;
    .locals 1
    .param p3    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LEg/s;->d:Lwg/b0;

    invoke-interface {v0, p1, p2, p3}, Lwg/b0;->r(JLQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final z(Ljava/lang/Runnable;Leg/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Leg/l<",
            "-",
            "LEg/s$a;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LEg/s;->e:LEg/z;

    invoke-virtual {v0, p1}, LEg/z;->a(Ljava/lang/Object;)Z

    sget-object p1, LEg/s;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, LEg/s;->c:I

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LEg/s;->c0()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, LEg/s;->A()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance v0, LEg/s$a;

    invoke-direct {v0, p0, p1}, LEg/s$a;-><init>(LEg/s;Ljava/lang/Runnable;)V

    invoke-interface {p2, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
