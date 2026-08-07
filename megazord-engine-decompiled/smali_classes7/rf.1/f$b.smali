.class public interface abstract Lrf/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrf/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method public abstract b()V
.end method

.method public abstract c(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract complete()V
.end method

.method public abstract d([Ljava/lang/Object;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation
.end method

.method public abstract e(Lrf/f$c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrf/f$c<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract getError()Ljava/lang/Throwable;
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation build LUe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isDone()Z
.end method

.method public abstract size()I
.end method
