.class public Lyg/m;
.super Lwg/a;
.source "SourceFile"

# interfaces
.implements Lyg/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lwg/a<",
        "LFf/P0;",
        ">;",
        "Lyg/l<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,41:1\n706#2,2:42\n706#2,2:44\n706#2,2:46\n*S KotlinDebug\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n*L\n21#1:42,2\n26#1:44,2\n32#1:46,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nChannelCoroutine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,41:1\n706#2,2:42\n706#2,2:44\n706#2,2:46\n*S KotlinDebug\n*F\n+ 1 ChannelCoroutine.kt\nkotlinx/coroutines/channels/ChannelCoroutine\n*L\n21#1:42,2\n26#1:44,2\n32#1:46,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lyg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/l<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/j;Lyg/l;ZZ)V
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "Lyg/l<",
            "TE;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lwg/a;-><init>(LQf/j;ZZ)V

    iput-object p2, p0, Lyg/m;->e:Lyg/l;

    return-void
.end method


# virtual methods
.method public A(LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Deprecated in favor of \'receiveCatching\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'receiveOrNull\' did, for the detailed replacement please refer to the \'receiveOrNull\' documentation"
        replaceWith = .subannotation LFf/g0;
            expression = "receiveCatching().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build LWf/i;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0, p1}, Lyg/D;->A(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public C(Leg/l;)V
    .locals 1
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0, p1}, Lyg/E;->C(Leg/l;)V

    return-void
.end method

.method public final C1()Lyg/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyg/l<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    return-object v0
.end method

.method public E()LHg/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHg/g<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0}, Lyg/D;->E()LHg/g;

    move-result-object v0

    return-object v0
.end method

.method public F()LHg/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHg/g<",
            "Lyg/p<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0}, Lyg/D;->F()LHg/g;

    move-result-object v0

    return-object v0
.end method

.method public G()LHg/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHg/g<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0}, Lyg/D;->G()LHg/g;

    move-result-object v0

    return-object v0
.end method

.method public H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0, p1, p2}, Lyg/E;->H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public I()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0}, Lyg/D;->I()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public L(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0, p1}, Lyg/E;->L(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0}, Lyg/E;->M()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lwg/R0;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lwg/R0;->O(Lwg/R0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lwg/K0;)V

    :cond_1
    invoke-virtual {p0, p1}, Lyg/m;->l0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic c(Ljava/lang/Throwable;)Z
    .locals 2
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lwg/R0;->O(Lwg/R0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lwg/K0;)V

    invoke-virtual {p0, p1}, Lyg/m;->l0(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic cancel()V
    .locals 3
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lwg/R0;->O(Lwg/R0;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lwg/K0;)V

    invoke-virtual {p0, v0}, Lyg/m;->l0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "Lyg/p<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0, p1}, Lyg/D;->e(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    return-object p1
.end method

.method public final getChannel()Lyg/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyg/l<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0}, Lyg/D;->h()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0}, Lyg/D;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lyg/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyg/n<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0}, Lyg/D;->iterator()Lyg/n;

    move-result-object v0

    return-object v0
.end method

.method public l0(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lwg/R0;->q1(Lwg/R0;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0, p1}, Lyg/D;->a(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Lwg/R0;->j0(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation LFf/g0;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0, p1}, Lyg/E;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public p(LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0, p1}, Lyg/D;->p(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Deprecated in the favour of \'tryReceive\'. Please note that the provided replacement does not rethrow channel\'s close cause as \'poll\' did, for the precise replacement please refer to the \'poll\' documentation"
        replaceWith = .subannotation LFf/g0;
            expression = "tryReceive().getOrNull()"
            imports = {}
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0}, Lyg/D;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public r()LHg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHg/i<",
            "TE;",
            "Lyg/E<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0}, Lyg/E;->r()LHg/i;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lyg/m;->e:Lyg/l;

    invoke-interface {v0, p1}, Lyg/E;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
