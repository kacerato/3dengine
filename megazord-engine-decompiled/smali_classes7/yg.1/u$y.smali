.class public final Lyg/u$y;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x158,
        0x159,
        0x159
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "index",
        "$this$produce",
        "index",
        "$this$produce",
        "index"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/u;->G(Lyg/D;LQf/j;Leg/q;)Lyg/D;
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
        "-TR;>;",
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

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lyg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/D<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "Ljava/lang/Integer;",
            "TE;",
            "LQf/f<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyg/D;Leg/q;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/D<",
            "+TE;>;",
            "Leg/q<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "Lyg/u$y;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyg/u$y;->g:Lyg/D;

    iput-object p2, p0, Lyg/u$y;->h:Leg/q;

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

    new-instance v0, Lyg/u$y;

    iget-object v1, p0, Lyg/u$y;->g:Lyg/D;

    iget-object v2, p0, Lyg/u$y;->h:Leg/q;

    invoke-direct {v0, v1, v2, p2}, Lyg/u$y;-><init>(Lyg/D;Leg/q;LQf/f;)V

    iput-object p1, v0, Lyg/u$y;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lyg/B;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lyg/u$y;->invoke(Lyg/B;LQf/f;)Ljava/lang/Object;

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
            "-TR;>;",
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
    invoke-virtual {p0, p1, p2}, Lyg/u$y;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lyg/u$y;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lyg/u$y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lyg/u$y;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lyg/u$y;->d:I

    iget-object v5, p0, Lyg/u$y;->b:Ljava/lang/Object;

    check-cast v5, Lyg/n;

    iget-object v6, p0, Lyg/u$y;->f:Ljava/lang/Object;

    check-cast v6, Lyg/B;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lyg/u$y;->d:I

    iget-object v5, p0, Lyg/u$y;->c:Ljava/lang/Object;

    check-cast v5, Lyg/B;

    iget-object v6, p0, Lyg/u$y;->b:Ljava/lang/Object;

    check-cast v6, Lyg/n;

    iget-object v7, p0, Lyg/u$y;->f:Ljava/lang/Object;

    check-cast v7, Lyg/B;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget v1, p0, Lyg/u$y;->d:I

    iget-object v5, p0, Lyg/u$y;->b:Ljava/lang/Object;

    check-cast v5, Lyg/n;

    iget-object v6, p0, Lyg/u$y;->f:Ljava/lang/Object;

    check-cast v6, Lyg/B;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lyg/u$y;->f:Ljava/lang/Object;

    check-cast p1, Lyg/B;

    iget-object v1, p0, Lyg/u$y;->g:Lyg/D;

    invoke-interface {v1}, Lyg/D;->iterator()Lyg/n;

    move-result-object v1

    const/4 v5, 0x0

    move v9, v5

    move-object v5, v1

    move v1, v9

    :goto_0
    iput-object p1, p0, Lyg/u$y;->f:Ljava/lang/Object;

    iput-object v5, p0, Lyg/u$y;->b:Ljava/lang/Object;

    iput v1, p0, Lyg/u$y;->d:I

    iput v4, p0, Lyg/u$y;->e:I

    invoke-interface {v5, p0}, Lyg/n;->b(LQf/f;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    return-object v0

    :cond_4
    move-object v9, v6

    move-object v6, p1

    move-object p1, v9

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v5}, Lyg/n;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object v7, p0, Lyg/u$y;->h:Leg/q;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v1}, LTf/b;->f(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v6, p0, Lyg/u$y;->f:Ljava/lang/Object;

    iput-object v5, p0, Lyg/u$y;->b:Ljava/lang/Object;

    iput-object v6, p0, Lyg/u$y;->c:Ljava/lang/Object;

    iput v8, p0, Lyg/u$y;->d:I

    iput v3, p0, Lyg/u$y;->e:I

    invoke-interface {v7, v1, p1, p0}, Leg/q;->E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v7, v6

    move v1, v8

    move-object v6, v5

    move-object v5, v7

    :goto_2
    iput-object v7, p0, Lyg/u$y;->f:Ljava/lang/Object;

    iput-object v6, p0, Lyg/u$y;->b:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, p0, Lyg/u$y;->c:Ljava/lang/Object;

    iput v1, p0, Lyg/u$y;->d:I

    iput v2, p0, Lyg/u$y;->e:I

    invoke-interface {v5, p1, p0}, Lyg/E;->H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v5, v6

    move-object p1, v7

    goto :goto_0

    :cond_7
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
