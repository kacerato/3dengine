.class public LGg/e;
.super Lwg/w0;
.source "SourceFile"


# annotations
.annotation build LFf/f0;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1#2:214\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1#2:214\n*E\n"
    }
.end annotation


# instance fields
.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:LGg/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 8
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Binary compatibility for Ktor 1.0-beta"
    .end annotation

    .line 17
    sget-wide v3, LGg/o;->e:J

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, LGg/e;-><init>(IIJLjava/lang/String;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 14
    sget p1, LGg/o;->c:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 15
    sget p2, LGg/o;->d:I

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2}, LGg/e;-><init>(II)V

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lwg/w0;-><init>()V

    .line 4
    iput p1, p0, LGg/e;->c:I

    .line 5
    iput p2, p0, LGg/e;->d:I

    .line 6
    iput-wide p3, p0, LGg/e;->e:J

    .line 7
    iput-object p5, p0, LGg/e;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, LGg/e;->A()LGg/a;

    move-result-object p1

    iput-object p1, p0, LGg/e;->g:LGg/a;

    return-void
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;ILkotlin/jvm/internal/x;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 1
    const-string p5, "CoroutineScheduler"

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, LGg/e;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 13
    sget-wide v3, LGg/o;->e:J

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LGg/e;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 9
    sget p1, LGg/o;->c:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 10
    sget p2, LGg/o;->d:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 11
    sget-object p3, LGg/o;->a:Ljava/lang/String;

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2, p3}, LGg/e;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic z(LGg/e;IILjava/lang/Object;)Lwg/M;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    :cond_0
    invoke-virtual {p0, p1}, LGg/e;->y(I)Lwg/M;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: blocking"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()LGg/a;
    .locals 7

    new-instance v6, LGg/a;

    iget v1, p0, LGg/e;->c:I

    iget v2, p0, LGg/e;->d:I

    iget-wide v3, p0, LGg/e;->e:J

    iget-object v5, p0, LGg/e;->f:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LGg/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method

.method public final c0(Ljava/lang/Runnable;LGg/l;Z)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LGg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, LGg/e;->g:LGg/a;

    invoke-virtual {v0, p1, p2, p3}, LGg/a;->o(Ljava/lang/Runnable;LGg/l;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p3, Lwg/X;->h:Lwg/X;

    iget-object v0, p0, LGg/e;->g:LGg/a;

    invoke-virtual {v0, p1, p2}, LGg/a;->h(Ljava/lang/Runnable;LGg/l;)LGg/k;

    move-result-object p1

    invoke-virtual {p3, p1}, Lwg/X;->y0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, LGg/e;->g:LGg/a;

    invoke-virtual {v0}, LGg/a;->close()V

    return-void
.end method

.method public dispatch(LQf/j;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, LGg/e;->g:LGg/a;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, LGg/a;->p(LGg/a;Ljava/lang/Runnable;LGg/l;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lwg/X;->h:Lwg/X;

    invoke-virtual {v0, p1, p2}, Lwg/r0;->dispatch(LQf/j;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public dispatchYield(LQf/j;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, LGg/e;->g:LGg/a;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, LGg/a;->p(LGg/a;Ljava/lang/Runnable;LGg/l;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lwg/X;->h:Lwg/X;

    invoke-virtual {v0, p1, p2}, Lwg/M;->dispatchYield(LQf/j;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final e0(I)Lwg/M;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-lez p1, :cond_1

    iget v0, p0, LGg/e;->c:I

    if-gt p1, v0, :cond_0

    new-instance v0, LGg/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, LGg/g;-><init>(LGg/e;ILjava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected parallelism level lesser than core pool size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LGg/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), but have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected positive parallelism level, but have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lwg/M;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[scheduler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LGg/e;->g:LGg/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LGg/e;->g:LGg/a;

    return-object v0
.end method

.method public final y(I)Lwg/M;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-lez p1, :cond_0

    new-instance v0, LGg/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, LGg/g;-><init>(LGg/e;ILjava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected positive parallelism level, but have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
