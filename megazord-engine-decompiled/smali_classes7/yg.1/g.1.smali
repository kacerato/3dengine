.class public Lyg/g;
.super Lwg/a;
.source "SourceFile"

# interfaces
.implements Lyg/B;
.implements Lyg/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lwg/a<",
        "LFf/P0;",
        ">;",
        "Lyg/B<",
        "TE;>;",
        "Lyg/d<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,202:1\n706#2,2:203\n706#2,2:205\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n*L\n152#1:203,2\n157#1:205,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,202:1\n706#2,2:203\n706#2,2:205\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastCoroutine\n*L\n152#1:203,2\n157#1:205,2\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lyg/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/j;Lyg/d;Z)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyg/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "Lyg/d<",
            "TE;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lwg/a;-><init>(LQf/j;ZZ)V

    iput-object p2, p0, Lyg/g;->e:Lyg/d;

    sget-object p2, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p1, p2}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p1

    check-cast p1, Lwg/K0;

    invoke-virtual {p0, p1}, Lwg/R0;->M0(Lwg/K0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic A1(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LFf/P0;

    invoke-virtual {p0, p1}, Lyg/g;->D1(LFf/P0;)V

    return-void
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

    iget-object v0, p0, Lyg/g;->e:Lyg/d;

    invoke-interface {v0, p1}, Lyg/E;->C(Leg/l;)V

    return-void
.end method

.method public final C1()Lyg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyg/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/g;->e:Lyg/d;

    return-object v0
.end method

.method public D1(LFf/P0;)V
    .locals 2
    .param p1    # LFf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lyg/g;->e:Lyg/d;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lyg/E$a;->a(Lyg/E;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
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

    iget-object v0, p0, Lyg/g;->e:Lyg/d;

    invoke-interface {v0, p1, p2}, Lyg/E;->H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public L(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lyg/g;->e:Lyg/d;

    invoke-interface {v0, p1}, Lyg/E;->L(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-virtual {p0}, Lwg/R0;->start()Z

    return p1
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lyg/g;->e:Lyg/d;

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

    if-nez p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lwg/R0;->O(Lwg/R0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lwg/K0;)V

    :cond_0
    invoke-virtual {p0, p1}, Lyg/g;->l0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic c(Ljava/lang/Throwable;)Z
    .locals 2
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lwg/R0;->O(Lwg/R0;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lwg/K0;)V

    :cond_0
    invoke-virtual {p0, p1}, Lyg/g;->l0(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getChannel()Lyg/E;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyg/E<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public isActive()Z
    .locals 1

    invoke-super {p0}, Lwg/a;->isActive()Z

    move-result v0

    return v0
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

    iget-object v0, p0, Lyg/g;->e:Lyg/d;

    invoke-interface {v0, p1}, Lyg/d;->a(Ljava/util/concurrent/CancellationException;)V

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

    iget-object v0, p0, Lyg/g;->e:Lyg/d;

    invoke-interface {v0, p1}, Lyg/E;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lyg/g;->e:Lyg/d;

    invoke-interface {v0}, Lyg/E;->r()LHg/i;

    move-result-object v0

    return-object v0
.end method

.method public v()Lyg/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/g;->e:Lyg/d;

    invoke-interface {v0}, Lyg/d;->v()Lyg/D;

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

    iget-object v0, p0, Lyg/g;->e:Lyg/d;

    invoke-interface {v0, p1}, Lyg/E;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z1(Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lyg/g;->e:Lyg/d;

    invoke-interface {v0, p1}, Lyg/E;->L(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lwg/a;->getContext()LQf/j;

    move-result-object p2

    invoke-static {p2, p1}, Lwg/O;->b(LQf/j;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
