.class public final LCg/k$a$a;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1"
    f = "Combine.kt"
    i = {}
    l = {
        0x1f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCg/k$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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


# instance fields
.field public b:I

.field public final synthetic c:[LBg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f:Lyg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/l<",
            "LHf/d0<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([LBg/i;ILjava/util/concurrent/atomic/AtomicInteger;Lyg/l;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LBg/i<",
            "+TT;>;I",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lyg/l<",
            "LHf/d0<",
            "Ljava/lang/Object;",
            ">;>;",
            "LQf/f<",
            "-",
            "LCg/k$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LCg/k$a$a;->c:[LBg/i;

    iput p2, p0, LCg/k$a$a;->d:I

    iput-object p3, p0, LCg/k$a$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, LCg/k$a$a;->f:Lyg/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 6
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

    new-instance p1, LCg/k$a$a;

    iget-object v1, p0, LCg/k$a$a;->c:[LBg/i;

    iget v2, p0, LCg/k$a$a;->d:I

    iget-object v3, p0, LCg/k$a$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, LCg/k$a$a;->f:Lyg/l;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LCg/k$a$a;-><init>([LBg/i;ILjava/util/concurrent/atomic/AtomicInteger;Lyg/l;LQf/f;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lwg/S;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, LCg/k$a$a;->invoke(Lwg/S;LQf/f;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, LCg/k$a$a;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, LCg/k$a$a;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, LCg/k$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, LCg/k$a$a;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, LCg/k$a$a;->c:[LBg/i;

    iget v1, p0, LCg/k$a$a;->d:I

    aget-object p1, p1, v1

    new-instance v4, LCg/k$a$a$a;

    iget-object v5, p0, LCg/k$a$a;->f:Lyg/l;

    invoke-direct {v4, v5, v1}, LCg/k$a$a$a;-><init>(Lyg/l;I)V

    iput v3, p0, LCg/k$a$a;->b:I

    invoke-interface {p1, v4, p0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, LCg/k$a$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, LCg/k$a$a;->f:Lyg/l;

    invoke-static {p1, v2, v3, v2}, Lyg/E$a;->a(Lyg/E;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    :cond_3
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :goto_1
    iget-object v0, p0, LCg/k$a$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, LCg/k$a$a;->f:Lyg/l;

    invoke-static {v0, v2, v3, v2}, Lyg/E$a;->a(Lyg/E;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    :cond_4
    throw p1
.end method
