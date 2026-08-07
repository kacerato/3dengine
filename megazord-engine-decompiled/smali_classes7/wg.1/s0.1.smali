.class public abstract Lwg/s0;
.super Lwg/q0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lwg/q0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract p0()Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public q0(JLwg/r0$c;)V
    .locals 1
    .param p3    # Lwg/r0$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lwg/X;->h:Lwg/X;

    invoke-virtual {v0, p1, p2, p3}, Lwg/r0;->G0(JLwg/r0$c;)V

    return-void
.end method

.method public final s0()V
    .locals 2

    invoke-virtual {p0}, Lwg/s0;->p0()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_1

    invoke-static {}, Lwg/c;->b()Lwg/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lwg/b;->g(Ljava/lang/Thread;)V

    sget-object v1, LFf/P0;->a:LFf/P0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    return-void
.end method
