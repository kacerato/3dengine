.class public Lyg/w;
.super Lyg/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lyg/j<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConflatedBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 5 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n*L\n1#1,119:1\n548#2,5:120\n514#2,6:125\n514#2,6:212\n548#2,5:218\n244#3:131\n269#3,10:132\n280#3,68:143\n3038#4:142\n269#5:211\n*S KotlinDebug\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n*L\n41#1:120,5\n53#1:125,6\n106#1:212,6\n109#1:218,5\n80#1:131\n80#1:132,10\n80#1:143,68\n80#1:142\n80#1:211\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nConflatedBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 5 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n*L\n1#1,119:1\n548#2,5:120\n514#2,6:125\n514#2,6:212\n548#2,5:218\n244#3:131\n269#3,10:132\n280#3,68:143\n3038#4:142\n269#5:211\n*S KotlinDebug\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n*L\n41#1:120,5\n53#1:125,6\n106#1:212,6\n109#1:218,5\n80#1:131\n80#1:132,10\n80#1:143,68\n80#1:142\n80#1:211\n*E\n"
    }
.end annotation


# instance fields
.field public final n:I

.field public final o:Lyg/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILyg/i;Leg/l;)V
    .locals 0
    .param p2    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lyg/i;",
            "Leg/l<",
            "-TE;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p3}, Lyg/j;-><init>(ILeg/l;)V

    .line 3
    iput p1, p0, Lyg/w;->n:I

    .line 4
    iput-object p2, p0, Lyg/w;->o:Lyg/i;

    .line 5
    sget-object p3, Lyg/i;->SUSPEND:Lyg/i;

    if-eq p2, p3, :cond_1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Buffered channel capacity must be at least 1, but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This implementation does not support suspension for senders, use "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lyg/j;

    invoke-static {p2}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(ILyg/i;Leg/l;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lyg/w;-><init>(ILyg/i;Leg/l;)V

    return-void
.end method

.method public static synthetic H1(Lyg/w;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/w<",
            "TE;>;TE;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lyg/w;->L1(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lyg/p$a;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lyg/p;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    iget-object p2, p0, Lyg/j;->c:Leg/l;

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, LEg/J;->d(Leg/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lyg/j;->n0()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, LFf/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-virtual {p0}, Lyg/j;->n0()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static synthetic I1(Lyg/w;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lyg/w<",
            "TE;>;TE;",
            "LQf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lyg/w;->L1(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lyg/p$c;

    if-nez p1, :cond_0

    check-cast p0, LFf/P0;

    invoke-static {p2}, LTf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, LTf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lyg/w;->H1(Lyg/w;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final J1(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-super {p0, p1}, Lyg/j;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyg/p;->m(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lyg/p;->k(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lyg/j;->c:Leg/l;

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, LEg/J;->d(Leg/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    throw p1

    :cond_2
    :goto_0
    sget-object p1, Lyg/p;->b:Lyg/p$b;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lyg/p$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final K1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v8, p0

    sget-object v9, Lyg/k;->f:LEg/T;

    invoke-static {}, Lyg/j;->j()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyg/q;

    :cond_0
    :goto_0
    invoke-static {}, Lyg/j;->k()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v10, v1, v3

    invoke-static {v8, v1, v2}, Lyg/j;->l(Lyg/j;J)Z

    move-result v12

    sget v13, Lyg/k;->b:I

    int-to-long v1, v13

    div-long v1, v10, v1

    int-to-long v3, v13

    rem-long v3, v10, v3

    long-to-int v14, v3

    iget-wide v3, v0, LEg/P;->d:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    invoke-static {v8, v1, v2, v0}, Lyg/j;->d(Lyg/j;JLyg/q;)Lyg/q;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v12, :cond_0

    sget-object v0, Lyg/p;->b:Lyg/p$b;

    invoke-virtual/range {p0 .. p0}, Lyg/j;->n0()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyg/p$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v15, v1

    goto :goto_1

    :cond_2
    move-object v15, v0

    :goto_1
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v14

    move-object/from16 v3, p1

    move-wide v4, v10

    move-object v6, v9

    move v7, v12

    invoke-static/range {v0 .. v7}, Lyg/j;->O(Lyg/j;Lyg/q;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, LEg/g;->b()V

    :goto_2
    move-object v0, v15

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lyg/j;->m0()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_5

    invoke-virtual {v15}, LEg/g;->b()V

    :cond_5
    sget-object v0, Lyg/p;->b:Lyg/p$b;

    invoke-virtual/range {p0 .. p0}, Lyg/j;->n0()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyg/p$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v15}, LEg/P;->r()V

    sget-object v0, Lyg/p;->b:Lyg/p$b;

    invoke-virtual/range {p0 .. p0}, Lyg/j;->n0()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyg/p$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    instance-of v0, v9, Lwg/y1;

    if-eqz v0, :cond_9

    check-cast v9, Lwg/y1;

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_a

    invoke-static {v8, v9, v15, v14}, Lyg/j;->t(Lyg/j;Lwg/y1;Lyg/q;I)V

    :cond_a
    iget-wide v0, v15, LEg/P;->d:J

    int-to-long v2, v13

    mul-long/2addr v0, v2

    int-to-long v2, v14

    add-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, Lyg/j;->Y(J)V

    sget-object v0, Lyg/p;->b:Lyg/p$b;

    sget-object v1, LFf/P0;->a:LFf/P0;

    invoke-virtual {v0, v1}, Lyg/p$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Lyg/p;->b:Lyg/p$b;

    sget-object v1, LFf/P0;->a:LFf/P0;

    invoke-virtual {v0, v1}, Lyg/p$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-virtual {v15}, LEg/g;->b()V

    sget-object v0, Lyg/p;->b:Lyg/p$b;

    sget-object v1, LFf/P0;->a:LFf/P0;

    invoke-virtual {v0, v1}, Lyg/p$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final L1(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lyg/w;->o:Lyg/i;

    sget-object v1, Lyg/i;->DROP_LATEST:Lyg/i;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lyg/w;->J1(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lyg/w;->K1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public g1(LHg/m;Ljava/lang/Object;)V
    .locals 1
    .param p1    # LHg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lyg/w;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lyg/p$c;

    if-nez v0, :cond_0

    check-cast p2, LFf/P0;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-interface {p1, p2}, LHg/m;->d(Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of v0, p2, Lyg/p$a;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lyg/p;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    invoke-static {}, Lyg/k;->z()LEg/T;

    move-result-object p2

    invoke-interface {p1, p2}, LHg/m;->d(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m1(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "LQf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lyg/w;->I1(Lyg/w;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lyg/w;->L1(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z0()Z
    .locals 2

    iget-object v0, p0, Lyg/w;->o:Lyg/i;

    sget-object v1, Lyg/i;->DROP_OLDEST:Lyg/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
