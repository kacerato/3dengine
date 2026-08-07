.class public final Lyg/e$a;
.super Lyg/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyg/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyg/j<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n*L\n1#1,414:1\n15#2:415\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n*L\n362#1:415\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n*L\n1#1,414:1\n15#2:415\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$SubscriberBuffered\n*L\n362#1:415\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic n:Lyg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/e<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyg/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lyg/e$a;->n:Lyg/e;

    invoke-virtual {p1}, Lyg/e;->K1()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lyg/j;-><init>(ILeg/l;ILkotlin/jvm/internal/x;)V

    return-void
.end method


# virtual methods
.method public H1(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lyg/e$a;->n:Lyg/e;

    invoke-static {v0}, Lyg/e;->H1(Lyg/e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iget-object v1, p0, Lyg/e$a;->n:Lyg/e;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {v1, p0}, Lyg/e;->J1(Lyg/e;Lyg/D;)V

    invoke-super {p0, p1}, Lyg/j;->Q(Ljava/lang/Throwable;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public bridge synthetic Q(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lyg/e$a;->H1(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
