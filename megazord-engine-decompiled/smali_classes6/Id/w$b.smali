.class public interface abstract LId/w$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LId/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(JLId/z;LId/z;LId/A;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/AlertException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
