.class public final LCg/i$a;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3"
    f = "Merge.kt"
    i = {}
    l = {
        0x1b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCg/i;->s(LBg/j;LQf/f;)Ljava/lang/Object;
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

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LCg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCg/i<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic e:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LCg/i;LBg/j;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCg/i<",
            "TT;TR;>;",
            "LBg/j<",
            "-TR;>;",
            "LQf/f<",
            "-",
            "LCg/i$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LCg/i$a;->d:LCg/i;

    iput-object p2, p0, LCg/i$a;->e:LBg/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LTf/q;-><init>(ILQf/f;)V

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

    new-instance v0, LCg/i$a;

    iget-object v1, p0, LCg/i$a;->d:LCg/i;

    iget-object v2, p0, LCg/i$a;->e:LBg/j;

    invoke-direct {v0, v1, v2, p2}, LCg/i$a;-><init>(LCg/i;LBg/j;LQf/f;)V

    iput-object p1, v0, LCg/i$a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lwg/S;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, LCg/i$a;->invoke(Lwg/S;LQf/f;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, LCg/i$a;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, LCg/i$a;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, LCg/i$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, LCg/i$a;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LCg/i$a;->c:Ljava/lang/Object;

    check-cast p1, Lwg/S;

    new-instance v1, Lkotlin/jvm/internal/m0$h;

    invoke-direct {v1}, Lkotlin/jvm/internal/m0$h;-><init>()V

    iget-object v3, p0, LCg/i$a;->d:LCg/i;

    iget-object v4, v3, LCg/g;->e:LBg/i;

    new-instance v5, LCg/i$a$a;

    iget-object v6, p0, LCg/i$a;->e:LBg/j;

    invoke-direct {v5, v1, p1, v3, v6}, LCg/i$a$a;-><init>(Lkotlin/jvm/internal/m0$h;Lwg/S;LCg/i;LBg/j;)V

    iput v2, p0, LCg/i$a;->b:I

    invoke-interface {v4, v5, p0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
