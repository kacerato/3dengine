.class public interface abstract LId/J;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(JLId/z;LId/z;LId/A;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/AlertException;,
            Ljava/lang/InterruptedException;,
            Lcom/lmax/disruptor/TimeoutException;
        }
    .end annotation
.end method
