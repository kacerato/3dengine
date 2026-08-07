.class public interface abstract Lyg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyg/E;


# annotations
.annotation runtime LFf/o;
    level = .enum LFf/q;->WARNING:LFf/q;
    message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyg/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lyg/E<",
        "TE;>;"
    }
.end annotation

.annotation build Lwg/a1;
.end annotation


# virtual methods
.method public abstract a(Ljava/util/concurrent/CancellationException;)V
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract synthetic c(Ljava/lang/Throwable;)Z
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Binary compatibility only"
    .end annotation
.end method

.method public abstract v()Lyg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
