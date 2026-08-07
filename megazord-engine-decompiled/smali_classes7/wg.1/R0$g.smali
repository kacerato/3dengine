.class public final Lwg/R0$g;
.super LTf/l;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.JobSupport$children$1"
    f = "JobSupport.kt"
    i = {
        0x1,
        0x1,
        0x1
    }
    l = {
        0x3bc,
        0x3be
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "this_$iv",
        "cur$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwg/R0;->getChildren()Lpg/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/l;",
        "Leg/p<",
        "Lpg/o<",
        "-",
        "Lwg/K0;",
        ">;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1454:1\n341#2,6:1455\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n*L\n958#1:1455,6\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1454:1\n341#2,6:1455\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n*L\n958#1:1455,6\n*E\n"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lwg/R0;


# direct methods
.method public constructor <init>(Lwg/R0;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/R0;",
            "LQf/f<",
            "-",
            "Lwg/R0$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lwg/R0$g;->f:Lwg/R0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LTf/l;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 2
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

    new-instance v0, Lwg/R0$g;

    iget-object v1, p0, Lwg/R0$g;->f:Lwg/R0;

    invoke-direct {v0, v1, p2}, Lwg/R0$g;-><init>(Lwg/R0;LQf/f;)V

    iput-object p1, v0, Lwg/R0$g;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lpg/o;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lwg/R0$g;->invoke(Lpg/o;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lpg/o;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lpg/o;
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
            "Lpg/o<",
            "-",
            "Lwg/K0;",
            ">;",
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
    invoke-virtual {p0, p1, p2}, Lwg/R0$g;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lwg/R0$g;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lwg/R0$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v1, p0, Lwg/R0$g;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lwg/R0$g;->c:Ljava/lang/Object;

    check-cast v1, LEg/y;

    iget-object v3, p0, Lwg/R0$g;->b:Ljava/lang/Object;

    check-cast v3, LEg/w;

    iget-object v4, p0, Lwg/R0$g;->e:Ljava/lang/Object;

    check-cast v4, Lpg/o;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lwg/R0$g;->e:Ljava/lang/Object;

    check-cast p1, Lpg/o;

    iget-object v1, p0, Lwg/R0$g;->f:Lwg/R0;

    invoke-virtual {v1}, Lwg/R0;->J0()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lwg/w;

    if-eqz v4, :cond_3

    check-cast v1, Lwg/w;

    iget-object v1, v1, Lwg/w;->f:Lwg/x;

    iput v3, p0, Lwg/R0$g;->d:I

    invoke-virtual {p1, v1, p0}, Lpg/o;->a(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_3
    instance-of v3, v1, Lwg/D0;

    if-eqz v3, :cond_5

    check-cast v1, Lwg/D0;

    invoke-interface {v1}, Lwg/D0;->d()Lwg/W0;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LEg/y;->z()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, LEg/y;

    move-object v4, p1

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :goto_0
    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    instance-of p1, v1, Lwg/w;

    if-eqz p1, :cond_4

    move-object p1, v1

    check-cast p1, Lwg/w;

    iget-object p1, p1, Lwg/w;->f:Lwg/x;

    iput-object v4, p0, Lwg/R0$g;->e:Ljava/lang/Object;

    iput-object v3, p0, Lwg/R0$g;->b:Ljava/lang/Object;

    iput-object v1, p0, Lwg/R0$g;->c:Ljava/lang/Object;

    iput v2, p0, Lwg/R0$g;->d:I

    invoke-virtual {v4, p1, p0}, Lpg/o;->a(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    invoke-virtual {v1}, LEg/y;->D()LEg/y;

    move-result-object v1

    goto :goto_0

    :cond_5
    :goto_2
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
