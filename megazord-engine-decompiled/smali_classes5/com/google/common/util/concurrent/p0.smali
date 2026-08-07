.class public interface abstract Lcom/google/common/util/concurrent/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/c;
.end annotation

.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation runtime Ld3/f;
    value = "Create an AbstractIdleService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/p0$a;,
        Lcom/google/common/util/concurrent/p0$b;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/common/util/concurrent/p0$a;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract b(JLjava/util/concurrent/TimeUnit;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract c(JLjava/util/concurrent/TimeUnit;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract d()V
.end method

.method public abstract e()Lcom/google/common/util/concurrent/p0;
    .annotation build Ld3/a;
    .end annotation
.end method

.method public abstract f()V
.end method

.method public abstract g()Ljava/lang/Throwable;
.end method

.method public abstract h()Lcom/google/common/util/concurrent/p0;
    .annotation build Ld3/a;
    .end annotation
.end method

.method public abstract isRunning()Z
.end method

.method public abstract state()Lcom/google/common/util/concurrent/p0$b;
.end method
