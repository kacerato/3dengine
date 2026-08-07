.class public final Lxg/d;
.super Lxg/e;
.source "SourceFile"

# interfaces
.implements Lwg/b0;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,217:1\n1#2:218\n17#3:219\n*S KotlinDebug\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n*L\n147#1:219\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,217:1\n1#2:218\n17#3:219\n*S KotlinDebug\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n*L\n147#1:219\n*E\n"
    }
.end annotation


# instance fields
.field private volatile _immediate:Lxg/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Z

.field public final e:Lxg/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lxg/d;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lxg/d;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lxg/e;-><init>(Lkotlin/jvm/internal/x;)V

    .line 2
    iput-object p1, p0, Lxg/d;->b:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lxg/d;->c:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lxg/d;->d:Z

    if-eqz p3, :cond_0

    move-object v0, p0

    .line 5
    :cond_0
    iput-object v0, p0, Lxg/d;->_immediate:Lxg/d;

    .line 6
    iget-object p3, p0, Lxg/d;->_immediate:Lxg/d;

    if-nez p3, :cond_1

    .line 7
    new-instance p3, Lxg/d;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lxg/d;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lxg/d;->_immediate:Lxg/d;

    .line 8
    :cond_1
    iput-object p3, p0, Lxg/d;->e:Lxg/d;

    return-void
.end method

.method public static synthetic A(Lxg/d;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lxg/d;->h0(Lxg/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic c0(Lxg/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lxg/d;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static final h0(Lxg/d;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lxg/d;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public dispatch(LQf/j;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lxg/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lxg/d;->e0(LQf/j;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final e0(LQf/j;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' was closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lwg/N0;->f(LQf/j;Ljava/util/concurrent/CancellationException;)V

    invoke-static {}, Lwg/j0;->c()Lwg/M;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lwg/M;->dispatch(LQf/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lxg/d;

    if-eqz v0, :cond_0

    check-cast p1, Lxg/d;

    iget-object p1, p1, Lxg/d;->b:Landroid/os/Handler;

    iget-object v0, p0, Lxg/d;->b:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f0()Lxg/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lxg/d;->e:Lxg/d;

    return-object v0
.end method

.method public g(JLwg/p;)V
    .locals 4
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

    new-instance v0, Lxg/d$a;

    invoke-direct {v0, p3, p0}, Lxg/d$a;-><init>(Lwg/p;Lxg/d;)V

    iget-object v1, p0, Lxg/d;->b:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Lng/u;->E(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lxg/d$b;

    invoke-direct {p1, p0, v0}, Lxg/d$b;-><init>(Lxg/d;Ljava/lang/Runnable;)V

    invoke-interface {p3, p1}, Lwg/p;->m(Leg/l;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3}, LQf/f;->getContext()LQf/j;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lxg/d;->e0(LQf/j;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lxg/d;->b:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDispatchNeeded(LQf/j;)Z
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-boolean p1, p0, Lxg/d;->d:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lxg/d;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public q(JLjava/lang/Runnable;LQf/j;)Lwg/m0;
    .locals 3
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

    iget-object v0, p0, Lxg/d;->b:Landroid/os/Handler;

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v1, v2}, Lng/u;->E(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lxg/c;

    invoke-direct {p1, p0, p3}, Lxg/c;-><init>(Lxg/d;Ljava/lang/Runnable;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p4, p3}, Lxg/d;->e0(LQf/j;Ljava/lang/Runnable;)V

    sget-object p1, Lwg/Y0;->b:Lwg/Y0;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lwg/V0;->y()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lxg/d;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lxg/d;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lxg/d;->d:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".immediate"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic v()Lwg/V0;
    .locals 1

    invoke-virtual {p0}, Lxg/d;->f0()Lxg/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic z()Lxg/e;
    .locals 1

    invoke-virtual {p0}, Lxg/d;->f0()Lxg/d;

    move-result-object v0

    return-object v0
.end method
