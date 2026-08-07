.class public final Lyg/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyg/n;
.implements Lwg/y1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyg/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyg/n<",
        "TE;>;",
        "Lwg/y1;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3055:1\n886#2,52:3056\n964#2,8:3112\n858#2:3120\n882#2,33:3121\n974#2:3154\n916#2,14:3155\n935#2,3:3170\n979#2,6:3173\n332#3,4:3108\n336#3,8:3179\n882#4:3169\n61#5,2:3187\n61#5,2:3190\n1#6:3189\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1590#1:3056,52\n1627#1:3112,8\n1627#1:3120\n1627#1:3121,33\n1627#1:3154\n1627#1:3155,14\n1627#1:3170,3\n1627#1:3173,6\n1625#1:3108,4\n1625#1:3179,8\n1627#1:3169\n1663#1:3187,2\n1708#1:3190,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3055:1\n886#2,52:3056\n964#2,8:3112\n858#2:3120\n882#2,33:3121\n974#2:3154\n916#2,14:3155\n935#2,3:3170\n979#2,6:3173\n332#3,4:3108\n336#3,8:3179\n882#4:3169\n61#5,2:3187\n61#5,2:3190\n1#6:3189\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1590#1:3056,52\n1627#1:3112,8\n1627#1:3120\n1627#1:3121,33\n1627#1:3154\n1627#1:3155,14\n1627#1:3170,3\n1627#1:3173,6\n1625#1:3108,4\n1625#1:3179,8\n1627#1:3169\n1663#1:3187,2\n1708#1:3190,2\n*E\n"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lwg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/q<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic d:Lyg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/j<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lyg/j$a;->d:Lyg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lyg/k;->m()LEg/T;

    move-result-object p1

    iput-object p1, p0, Lyg/j$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic c(Lyg/j$a;Lyg/q;IJLQf/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lyg/j$a;->g(Lyg/q;IJLQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lyg/j$a;)V
    .locals 0

    invoke-virtual {p0}, Lyg/j$a;->i()V

    return-void
.end method

.method public static final synthetic e(Lyg/j$a;Lwg/q;)V
    .locals 0

    iput-object p1, p0, Lyg/j$a;->c:Lwg/q;

    return-void
.end method

.method public static final synthetic f(Lyg/j$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lyg/j$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public synthetic a(LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.3.0, binary compatibility with versions <= 1.2.x"
    .end annotation

    .annotation build Ldg/j;
        name = "next"
    .end annotation

    invoke-static {p0, p1}, Lyg/n$a;->a(Lyg/n;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(LQf/f;)Ljava/lang/Object;
    .locals 13
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v6, p0, Lyg/j$a;->d:Lyg/j;

    invoke-static {}, Lyg/j;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyg/q;

    :goto_0
    invoke-virtual {v6}, Lyg/j;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lyg/j$a;->h()Z

    move-result p1

    invoke-static {p1}, LTf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_0
    invoke-static {}, Lyg/j;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    sget v1, Lyg/k;->b:I

    int-to-long v2, v1

    div-long v2, v10, v2

    int-to-long v4, v1

    rem-long v4, v10, v4

    long-to-int v9, v4

    iget-wide v4, v0, LEg/P;->d:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    invoke-static {v6, v2, v3, v0}, Lyg/j;->b(Lyg/j;JLyg/q;)Lyg/q;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, v0

    :goto_1
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v8

    move v2, v9

    move-wide v3, v10

    invoke-static/range {v0 .. v5}, Lyg/j;->N(Lyg/j;Lyg/q;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lyg/k;->r()LEg/T;

    move-result-object v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lyg/k;->h()LEg/T;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-virtual {v6}, Lyg/j;->o0()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_3

    invoke-virtual {v8}, LEg/g;->b()V

    :cond_3
    move-object v0, v8

    goto :goto_0

    :cond_4
    invoke-static {}, Lyg/k;->s()LEg/T;

    move-result-object v1

    if-ne v0, v1, :cond_5

    move-object v7, p0

    move-object v12, p1

    invoke-virtual/range {v7 .. v12}, Lyg/j$a;->g(Lyg/q;IJLQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v8}, LEg/g;->b()V

    iput-object v0, p0, Lyg/j$a;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1}, LTf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lyg/q;IJLQf/f;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/q<",
            "TE;>;IJ",
            "LQf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v6, p0, Lyg/j$a;->d:Lyg/j;

    invoke-static {p5}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v0

    invoke-static {v0}, Lwg/s;->b(LQf/f;)Lwg/q;

    move-result-object v7

    :try_start_0
    invoke-static {p0, v7}, Lyg/j$a;->e(Lyg/j$a;Lwg/q;)V

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lyg/j;->N(Lyg/j;Lyg/q;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lyg/k;->r()LEg/T;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {v6, p0, p1, p2}, Lyg/j;->s(Lyg/j;Lwg/y1;Lyg/q;I)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lyg/k;->h()LEg/T;

    move-result-object p2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v0, p2, :cond_a

    invoke-virtual {v6}, Lyg/j;->o0()J

    move-result-wide v0

    cmp-long p2, p3, v0

    if-gez p2, :cond_1

    invoke-virtual {p1}, LEg/g;->b()V

    :cond_1
    invoke-static {}, Lyg/j;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyg/q;

    :cond_2
    :goto_0
    invoke-virtual {v6}, Lyg/j;->h()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lyg/j$a;->d(Lyg/j$a;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lyg/j;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide p2

    sget p4, Lyg/k;->b:I

    int-to-long v0, p4

    div-long v0, p2, v0

    int-to-long v2, p4

    rem-long v2, p2, v2

    long-to-int p4, v2

    iget-wide v2, p1, LEg/P;->d:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    invoke-static {v6, v0, v1, p1}, Lyg/j;->b(Lyg/j;JLyg/q;)Lyg/q;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v0

    :cond_5
    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-wide v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lyg/j;->N(Lyg/j;Lyg/q;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lyg/k;->r()LEg/T;

    move-result-object v1

    if-ne v0, v1, :cond_6

    invoke-static {v6, p0, p1, p4}, Lyg/j;->s(Lyg/j;Lwg/y1;Lyg/q;I)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lyg/k;->h()LEg/T;

    move-result-object p4

    if-ne v0, p4, :cond_7

    invoke-virtual {v6}, Lyg/j;->o0()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-gez p2, :cond_2

    invoke-virtual {p1}, LEg/g;->b()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lyg/k;->s()LEg/T;

    move-result-object p2

    if-eq v0, p2, :cond_9

    invoke-virtual {p1}, LEg/g;->b()V

    invoke-static {p0, v0}, Lyg/j$a;->f(Lyg/j$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, Lyg/j$a;->e(Lyg/j$a;Lwg/q;)V

    invoke-static {v8}, LTf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, v6, Lyg/j;->c:Leg/l;

    if-eqz p2, :cond_8

    invoke-virtual {v7}, Lwg/q;->getContext()LQf/j;

    move-result-object p3

    invoke-static {p2, v0, p3}, LEg/J;->a(Leg/l;Ljava/lang/Object;LQf/j;)Leg/l;

    move-result-object v9

    :cond_8
    :goto_1
    invoke-virtual {v7, p1, v9}, Lwg/q;->z(Ljava/lang/Object;Leg/l;)V

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1}, LEg/g;->b()V

    invoke-static {p0, v0}, Lyg/j$a;->f(Lyg/j$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, Lyg/j$a;->e(Lyg/j$a;Lwg/q;)V

    invoke-static {v8}, LTf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, v6, Lyg/j;->c:Leg/l;

    if-eqz p2, :cond_8

    invoke-virtual {v7}, Lwg/q;->getContext()LQf/j;

    move-result-object p3

    invoke-static {p2, v0, p3}, LEg/J;->a(Leg/l;Ljava/lang/Object;LQf/j;)Leg/l;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v7}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_b

    invoke-static {p5}, LTf/h;->c(LQf/f;)V

    :cond_b
    return-object p1

    :goto_3
    invoke-virtual {v7}, Lwg/q;->S()V

    throw p1
.end method

.method public final h()Z
    .locals 1

    invoke-static {}, Lyg/k;->z()LEg/T;

    move-result-object v0

    iput-object v0, p0, Lyg/j$a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lyg/j$a;->d:Lyg/j;

    invoke-virtual {v0}, Lyg/j;->f0()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, LEg/S;->o(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lyg/j$a;->c:Lwg/q;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lyg/j$a;->c:Lwg/q;

    invoke-static {}, Lyg/k;->z()LEg/T;

    move-result-object v1

    iput-object v1, p0, Lyg/j$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lyg/j$a;->d:Lyg/j;

    invoke-virtual {v1}, Lyg/j;->f0()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, LFf/i0;->c:LFf/i0$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, LFf/i0;->c:LFf/i0$a;

    invoke-static {v1}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final j(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lyg/j$a;->c:Lwg/q;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lyg/j$a;->c:Lwg/q;

    iput-object p1, p0, Lyg/j$a;->b:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lyg/j$a;->d:Lyg/j;

    iget-object v3, v3, Lyg/j;->c:Leg/l;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lwg/q;->getContext()LQf/j;

    move-result-object v1

    invoke-static {v3, p1, v1}, LEg/J;->a(Leg/l;Ljava/lang/Object;LQf/j;)Leg/l;

    move-result-object v1

    :cond_0
    invoke-static {v0, v2, v1}, Lyg/k;->u(Lwg/p;Ljava/lang/Object;Leg/l;)Z

    move-result p1

    return p1
.end method

.method public k(LEg/P;I)V
    .locals 1
    .param p1    # LEg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEg/P<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lyg/j$a;->c:Lwg/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lwg/q;->k(LEg/P;I)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lyg/j$a;->c:Lwg/q;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lyg/j$a;->c:Lwg/q;

    invoke-static {}, Lyg/k;->z()LEg/T;

    move-result-object v1

    iput-object v1, p0, Lyg/j$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lyg/j$a;->d:Lyg/j;

    invoke-virtual {v1}, Lyg/j;->f0()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, LFf/i0;->c:LFf/i0$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, LFf/i0;->c:LFf/i0$a;

    invoke-static {v1}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lyg/j$a;->b:Ljava/lang/Object;

    invoke-static {}, Lyg/k;->m()LEg/T;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lyg/k;->m()LEg/T;

    move-result-object v1

    iput-object v1, p0, Lyg/j$a;->b:Ljava/lang/Object;

    invoke-static {}, Lyg/k;->z()LEg/T;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lyg/j$a;->d:Lyg/j;

    invoke-static {v0}, Lyg/j;->f(Lyg/j;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, LEg/S;->o(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`hasNext()` has not been invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
