.class public final Lyg/e$c;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.channels.BroadcastChannelImpl$registerSelectForSend$2"
    f = "BroadcastChannel.kt"
    i = {}
    l = {
        0x123
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/e;->g1(LHg/m;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/p<",
        "Lwg/S;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,414:1\n15#2:415\n1#3:416\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n*L\n304#1:415\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBroadcastChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,414:1\n15#2:415\n1#3:416\n*S KotlinDebug\n*F\n+ 1 BroadcastChannel.kt\nkotlinx/coroutines/channels/BroadcastChannelImpl$registerSelectForSend$2\n*L\n304#1:415\n*E\n"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lyg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/e<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:LHg/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHg/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyg/e;Ljava/lang/Object;LHg/m;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/e<",
            "TE;>;",
            "Ljava/lang/Object;",
            "LHg/m<",
            "*>;",
            "LQf/f<",
            "-",
            "Lyg/e$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyg/e$c;->c:Lyg/e;

    iput-object p2, p0, Lyg/e$c;->d:Ljava/lang/Object;

    iput-object p3, p0, Lyg/e$c;->e:LHg/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LQf/f<",
            "*>;)",
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lyg/e$c;

    iget-object v0, p0, Lyg/e$c;->c:Lyg/e;

    iget-object v1, p0, Lyg/e$c;->d:Ljava/lang/Object;

    iget-object v2, p0, Lyg/e$c;->e:LHg/m;

    invoke-direct {p1, v0, v1, v2, p2}, Lyg/e$c;-><init>(Lyg/e;Ljava/lang/Object;LHg/m;LQf/f;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lwg/S;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lyg/e$c;->invoke(Lwg/S;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lwg/S;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/S;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lyg/e$c;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lyg/e$c;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lyg/e$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lyg/e$c;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lyg/e$c;->c:Lyg/e;

    iget-object v1, p0, Lyg/e$c;->d:Ljava/lang/Object;

    iput v2, p0, Lyg/e$c;->b:I

    invoke-virtual {p1, v1, p0}, Lyg/e;->H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_3

    return-object v0

    :goto_0
    iget-object v0, p0, Lyg/e$c;->c:Lyg/e;

    invoke-virtual {v0}, Lyg/e;->M()Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, p1, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    if-nez v0, :cond_2

    iget-object v0, p0, Lyg/e$c;->c:Lyg/e;

    invoke-virtual {v0}, Lyg/j;->n0()Ljava/lang/Throwable;

    move-result-object v0

    if-ne v0, p1, :cond_6

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    iget-object p1, p0, Lyg/e$c;->c:Lyg/e;

    invoke-static {p1}, Lyg/e;->H1(Lyg/e;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    iget-object v0, p0, Lyg/e$c;->c:Lyg/e;

    iget-object v1, p0, Lyg/e$c;->e:LHg/m;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2
    invoke-static {v0}, Lyg/e;->I1(Lyg/e;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v2, :cond_4

    sget-object v2, LFf/P0;->a:LFf/P0;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    invoke-static {}, Lyg/k;->z()LEg/T;

    move-result-object v2

    :goto_2
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, LHg/l;

    move-object v2, v1

    check-cast v2, LHg/l;

    sget-object v3, LFf/P0;->a:LFf/P0;

    invoke-virtual {v2, v0, v3}, LHg/l;->j0(Ljava/lang/Object;Ljava/lang/Object;)LHg/r;

    move-result-object v2

    sget-object v4, LHg/r;->REREGISTER:LHg/r;

    if-eq v2, v4, :cond_5

    invoke-static {v0}, Lyg/e;->I1(Lyg/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v3

    :goto_3
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_6
    throw p1
.end method
