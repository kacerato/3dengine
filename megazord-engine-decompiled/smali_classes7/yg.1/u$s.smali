.class public final Lyg/u$s;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0x141,
        0x142,
        0x142
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "$this$produce",
        "$this$produce"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/u;->y(Lyg/D;LQf/j;Leg/p;)Lyg/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/p<",
        "Lyg/B<",
        "Ljava/lang/Object;",
        ">;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lyg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/D<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "Ljava/lang/Object;",
            "LQf/f<",
            "-",
            "Lyg/D<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyg/D;Leg/p;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/D<",
            "Ljava/lang/Object;",
            ">;",
            "Leg/p<",
            "Ljava/lang/Object;",
            "-",
            "LQf/f<",
            "-",
            "Lyg/D<",
            "Ljava/lang/Object;",
            ">;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "Lyg/u$s;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyg/u$s;->e:Lyg/D;

    iput-object p2, p0, Lyg/u$s;->f:Leg/p;

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

    new-instance v0, Lyg/u$s;

    iget-object v1, p0, Lyg/u$s;->e:Lyg/D;

    iget-object v2, p0, Lyg/u$s;->f:Leg/p;

    invoke-direct {v0, v1, v2, p2}, Lyg/u$s;-><init>(Lyg/D;Leg/p;LQf/f;)V

    iput-object p1, v0, Lyg/u$s;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lyg/B;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lyg/u$s;->invoke(Lyg/B;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lyg/B;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lyg/B;
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
            "Lyg/B<",
            "Ljava/lang/Object;",
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
    invoke-virtual {p0, p1, p2}, Lyg/u$s;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lyg/u$s;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lyg/u$s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v1, p0, Lyg/u$s;->c:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lyg/u$s;->b:Ljava/lang/Object;

    check-cast v1, Lyg/n;

    iget-object v5, p0, Lyg/u$s;->d:Ljava/lang/Object;

    check-cast v5, Lyg/B;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lyg/u$s;->b:Ljava/lang/Object;

    check-cast v1, Lyg/n;

    iget-object v5, p0, Lyg/u$s;->d:Ljava/lang/Object;

    check-cast v5, Lyg/B;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lyg/u$s;->b:Ljava/lang/Object;

    check-cast v1, Lyg/n;

    iget-object v5, p0, Lyg/u$s;->d:Ljava/lang/Object;

    check-cast v5, Lyg/B;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lyg/u$s;->d:Ljava/lang/Object;

    check-cast p1, Lyg/B;

    iget-object v1, p0, Lyg/u$s;->e:Lyg/D;

    invoke-interface {v1}, Lyg/D;->iterator()Lyg/n;

    move-result-object v1

    move-object v5, p1

    :cond_4
    :goto_0
    iput-object v5, p0, Lyg/u$s;->d:Ljava/lang/Object;

    iput-object v1, p0, Lyg/u$s;->b:Ljava/lang/Object;

    iput v4, p0, Lyg/u$s;->c:I

    invoke-interface {v1, p0}, Lyg/n;->b(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v1}, Lyg/n;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object v6, p0, Lyg/u$s;->f:Leg/p;

    iput-object v5, p0, Lyg/u$s;->d:Ljava/lang/Object;

    iput-object v1, p0, Lyg/u$s;->b:Ljava/lang/Object;

    iput v3, p0, Lyg/u$s;->c:I

    invoke-interface {v6, p1, p0}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    check-cast p1, Lyg/D;

    iput-object v5, p0, Lyg/u$s;->d:Ljava/lang/Object;

    iput-object v1, p0, Lyg/u$s;->b:Ljava/lang/Object;

    iput v2, p0, Lyg/u$s;->c:I

    invoke-static {p1, v5, p0}, Lyg/r;->e0(Lyg/D;Lyg/E;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_7
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
