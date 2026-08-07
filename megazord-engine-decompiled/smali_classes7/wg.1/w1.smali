.class public final Lwg/w1;
.super LEg/O;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LEg/O<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,314:1\n1#2:315\n107#3,13:316\n*S KotlinDebug\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n269#1:316,13\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCoroutineContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,314:1\n1#2:315\n107#3,13:316\n*S KotlinDebug\n*F\n+ 1 CoroutineContext.kt\nkotlinx/coroutines/UndispatchedCoroutine\n*L\n269#1:316,13\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "LFf/Z<",
            "LQf/j;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(LQf/j;LQf/f;)V
    .locals 2
    .param p1    # LQf/j;
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
            "LQf/j;",
            "LQf/f<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, Lwg/x1;->b:Lwg/x1;

    invoke-interface {p1, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, p2}, LEg/O;-><init>(LQf/j;LQf/f;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lwg/w1;->f:Ljava/lang/ThreadLocal;

    invoke-interface {p2}, LQf/f;->getContext()LQf/j;

    move-result-object p2

    sget-object v0, LQf/g;->m0:LQf/g$b;

    invoke-interface {p2, v0}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p2

    instance-of p2, p2, Lwg/M;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p1, p2}, LEg/Z;->c(LQf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lwg/w1;->D1(LQf/j;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final C1()Z
    .locals 3

    iget-boolean v0, p0, Lwg/w1;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwg/w1;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lwg/w1;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/2addr v0, v1

    return v0
.end method

.method public final D1(LQf/j;Ljava/lang/Object;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwg/w1;->threadLocalIsSet:Z

    iget-object v0, p0, Lwg/w1;->f:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, LFf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)LFf/Z;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public x1(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lwg/w1;->threadLocalIsSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwg/w1;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFf/Z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LFf/Z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQf/j;

    invoke-virtual {v0}, LFf/Z;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lwg/w1;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1
    iget-object v0, p0, LEg/O;->e:LQf/f;

    invoke-static {p1, v0}, Lwg/I;->a(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LEg/O;->e:LQf/f;

    invoke-interface {v0}, LQf/f;->getContext()LQf/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, LEg/Z;->c(LQf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, LEg/Z;->a:LEg/T;

    if-eq v3, v4, :cond_2

    invoke-static {v0, v1, v3}, Lwg/L;->g(LQf/f;LQf/j;Ljava/lang/Object;)Lwg/w1;

    move-result-object v2

    :cond_2
    :try_start_0
    iget-object v0, p0, LEg/O;->e:LQf/f;

    invoke-interface {v0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, LFf/P0;->a:LFf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lwg/w1;->C1()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {v1, v3}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lwg/w1;->C1()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {v1, v3}, LEg/Z;->a(LQf/j;Ljava/lang/Object;)V

    :cond_6
    throw p1
.end method
