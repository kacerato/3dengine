.class public final LBg/e;
.super LCg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LCg/d<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/ChannelAsFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/ChannelAsFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile consumed:I
    .annotation runtime Ldg/x;
    .end annotation
.end field

.field public final e:Lyg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/D<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LBg/e;

    const-string v1, "consumed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, LBg/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lyg/D;ZLQf/j;ILyg/i;)V
    .locals 0
    .param p1    # Lyg/D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/D<",
            "+TT;>;Z",
            "LQf/j;",
            "I",
            "Lyg/i;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p3, p4, p5}, LCg/d;-><init>(LQf/j;ILyg/i;)V

    .line 5
    iput-object p1, p0, LBg/e;->e:Lyg/D;

    .line 6
    iput-boolean p2, p0, LBg/e;->f:Z

    const/4 p1, 0x0

    .line 7
    iput p1, p0, LBg/e;->consumed:I

    return-void
.end method

.method public synthetic constructor <init>(Lyg/D;ZLQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 1
    sget-object p3, LQf/l;->b:LQf/l;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, -0x3

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 2
    sget-object p5, Lyg/i;->SUSPEND:Lyg/i;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, LBg/e;-><init>(Lyg/D;ZLQf/j;ILyg/i;)V

    return-void
.end method


# virtual methods
.method public a(LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p1    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget v0, p0, LCg/d;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LBg/e;->n()V

    iget-object v0, p0, LBg/e;->e:Lyg/D;

    iget-boolean v1, p0, LBg/e;->f:Z

    invoke-static {p1, v0, v1, p2}, LBg/m;->a(LBg/j;Lyg/D;ZLQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, LCg/d;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LBg/e;->e:Lyg/D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Lyg/B;LQf/f;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lyg/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/B<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, LCg/w;

    invoke-direct {v0, p1}, LCg/w;-><init>(Lyg/E;)V

    iget-object p1, p0, LBg/e;->e:Lyg/D;

    iget-boolean v1, p0, LBg/e;->f:Z

    invoke-static {v0, p1, v1, p2}, LBg/m;->a(LBg/j;Lyg/D;ZLQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public g(LQf/j;ILyg/i;)LCg/d;
    .locals 7
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "I",
            "Lyg/i;",
            ")",
            "LCg/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, LBg/e;

    iget-object v1, p0, LBg/e;->e:Lyg/D;

    iget-boolean v2, p0, LBg/e;->f:Z

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LBg/e;-><init>(Lyg/D;ZLQf/j;ILyg/i;)V

    return-object v6
.end method

.method public h()LBg/i;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, LBg/e;

    iget-object v1, p0, LBg/e;->e:Lyg/D;

    iget-boolean v2, p0, LBg/e;->f:Z

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, LBg/e;-><init>(Lyg/D;ZLQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V

    return-object v8
.end method

.method public m(Lwg/S;)Lyg/D;
    .locals 2
    .param p1    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/S;",
            ")",
            "Lyg/D<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, LBg/e;->n()V

    iget v0, p0, LCg/d;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p0, LBg/e;->e:Lyg/D;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, LCg/d;->m(Lwg/S;)Lyg/D;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final n()V
    .locals 2

    iget-boolean v0, p0, LBg/e;->f:Z

    if-eqz v0, :cond_1

    sget-object v0, LBg/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ReceiveChannel.consumeAsFlow can be collected just once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
